   M S B A M L   `   `   `  ���� G  CAddressBoook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AddressBoookAddressBoook      AddressBoook.MainWindow   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:AddressBoook       � Title$!  Адресная книга��$	��450��$	��400�� � WindowStartupLocation$ CenterScreen=� � Icon$ Images/Book.png��.���  � RowDefinitions �� $
��auto ��� $��* �.+�� $��0�� � ColumnDefinitions �� $
��auto ��� $��* �.+��� $��0��$��5,5,0,5q� �� Orientation$ 
Horizontal=�.+��� $��Images/Magnifier.png��$��20��$��20���� $��Поиск:���� $��1��$��0,5,5,5q�$��Center=����� *
SearchText+ �� UpdateSourceTrigger$ PropertyChanged=�&   System.Windows.Controls.DataGrid  $��5q�$��1��   AutoGenerateColumns$ False��   CanUserAddRows$ False��
����������� *AddressCollection+$ PropertyChanged=�	 �� SelectedItem	 �� *SelectedAddress+
   Columns
 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 30    Header$ ID��   
IsReadOnly$
 True��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Id+  $ * $ ФИО��$
 True�� �� *Fio+$ PropertyChanged=�   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  ���  �� Property � �� �� Value �� *
FioBrush+ �� Triggers P�  P� Property �@ 
IsSelected P� Value$
 True��. ���  � ��
 �   �  $ * $ Телефон��$
 True�� �� *TelephoneNumber+$ PropertyChanged=� �� "  ���  � �� �� *TelephoneBrush+ P�  �@ 
IsSelected$
 True��. ���  � ��
 �   � � ContextMenu �� .@�m� $%��Добавить контакт�� m� Command �� *
AddContact+m� $%��Изменить контакт�� �� *ChangeContact+m� $#��Удалить контакт�� �� *DeleteContact+