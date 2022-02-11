using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace AddressBoook
{
    /// <summary>
    /// Логика взаимодействия для ChangeWindow.xaml
    /// </summary>
    public partial class ChangeWindow : Window, INotifyPropertyChanged
    {
        public ChangeWindow(Address address)
        {
            InitializeComponent();
            DataContext = this;

            Fio = address.Fio;
            TelephoneNumber = address.TelephoneNumber;

            CurrentAddress = address;

            Controller.EmptyFieldFio += HighlightFioFild;
            Controller.EmptyFieldTelephoneNumber += HighlightTelephoneNumberFild;
        }

        private Address CurrentAddress;

        private string _fio;
        public string Fio
        {
            get { return _fio; }
            set 
            { 
                _fio = value;
                OnPropertyChanged(nameof(Fio));

                if (value != null && value != "")
                {
                    DefaultFioFild();
                }
            }
        }

        private string _telephoneNumber;
        public string TelephoneNumber
        {
            get { return _telephoneNumber; }
            set 
            { 
                _telephoneNumber = value;
                OnPropertyChanged(nameof(TelephoneNumber));

                if (value != null && value != "")
                {
                    DefaultTelephoneNumberFild();
                }
            }
        }

        private Brush _fioBrush;
        public Brush FioBrush
        {
            get { return _fioBrush; }
            set { _fioBrush = value; OnPropertyChanged(nameof(FioBrush)); }
        }

        private Brush _telephoneBrush;
        public Brush TelephoneBrush
        {
            get { return _telephoneBrush; }
            set { _telephoneBrush = value; OnPropertyChanged(nameof(TelephoneBrush)); }
        }

        #region AdditionalMethods

        private void HighlightFioFild()
        {
            FioBrush = Controller.Painter(false);
        }

        private void HighlightTelephoneNumberFild()
        {
            TelephoneBrush = Controller.Painter(false);
        }

        private void DefaultFioFild()
        {
            FioBrush = Controller.Painter(true);
        }
        private void DefaultTelephoneNumberFild()
        {
            TelephoneBrush = Controller.Painter(true);
        }

        #endregion AdditionalMethods

        #region Commands

        public ICommand ChangeConfirm
        {
            get { return new DelegateCommand((obj) => { Controller.ChangeContactInBase(Controller.CreateAddress(Fio, TelephoneNumber, false, CurrentAddress), this); }); }
        }

        public ICommand Cancel
        {
            get { return new DelegateCommand((obj) => { Controller.CloseWindow(this); }); }
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
