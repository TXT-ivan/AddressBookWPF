using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace AddressBoook
{
    public class Address: INotifyPropertyChanged
    {
        private int _id;
        public int Id
        {
            get { return _id; }
            set { _id = value; OnPropertyChanged(nameof(Id)); }
        }

        private string _name;
        public string Fio
        {
            get { return _name; }
            set { _name = value; OnPropertyChanged(nameof(Fio)); }
        }

        private string _telephoneNumber;
        public string TelephoneNumber
        {
            get { return _telephoneNumber; }
            set { _telephoneNumber = value; OnPropertyChanged(nameof(TelephoneNumber)); }
        }

        private Brush _telephoneBrush;
        public Brush TelephoneBrush
        {
            get { return _telephoneBrush; }
            set { _telephoneBrush = value; OnPropertyChanged(nameof(TelephoneBrush)); }
        }

        private Brush _fioBrush;
        public Brush FioBrush
        {
            get { return _fioBrush; }
            set { _fioBrush = value; OnPropertyChanged(nameof(FioBrush)); }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
    }
}
