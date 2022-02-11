using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;

namespace AddressBoook
{
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;

            Controller.LoaodFromXML();
            Controller.AddressCollectionChanged += RefreshCoollection;
            Controller.ClearSearchText += ClearSearchText;
        }

        public ObservableCollection<Address> AddressCollection
        {
            get { return Controller.AddressCollection; }
            set { Controller.AddressCollection = value; OnPropertyChanged(nameof(AddressCollection)); }
        }

        private Address _selectedAddress;
        public Address SelectedAddress
        {
            get { return _selectedAddress; }
            set { _selectedAddress = value; OnPropertyChanged(nameof(SelectedAddress)); }
        }

        private string _searchText;
        public string SearchText
        {
            get { return _searchText; }
            set 
            { 
                _searchText = value; 
                OnPropertyChanged(nameof(SearchText));
                Controller.SearchContacts(value);
            }
        }

        #region AdditionalMethods

        private void RefreshCoollection()
        {
            OnPropertyChanged(nameof(AddressCollection));
        }

        private void ClearSearchText()
        {
            SearchText = "";
        }

        #endregion AdditionalMethods

        #region Commands

        public ICommand AddContact
        {
            get { return new DelegateCommand((obj) => { Controller.OpenAddContactWindow(this); }); }
        }

        public ICommand ChangeContact
        {
            get { return new DelegateCommand((obj) => { Controller.OpenChangeContactWindow(SelectedAddress, this); }); }
        }

        public ICommand DeleteContact
        {
            get { return new DelegateCommand((obj) => { Controller.DeleteContactFromBase(SelectedAddress); }); }
        }

        #endregion Commands

        #region PropertyChangedEventHandler

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }

        #endregion PropertyChangedEventHandler
    }
}
