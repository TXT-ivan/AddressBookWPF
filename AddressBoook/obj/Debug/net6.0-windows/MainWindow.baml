   M S B A M L   `   `   `  ����G  CAddressBoook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AddressBoookAddressBoook  5   	       AddressBoook.MainWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AddressBoook     5   	     � Title$!  Адресная книга��5   	   $	��450��5	   	   $	��400��5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � Icon$ Images/Book.png��5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $��* �6#   .+�5      �� $��0��6   $��5,5,0,5q�6&    �� Orientation$ 
Horizontal=�67   .+�5      �� $��Images/Magnifier.png��6   $��20��66   $��20��6A   �� 5      $��Поиск:��6   5      �� 5      $��1��6   $��0,5,5,5q�6&   $��Center=�67   ��6Y   �� *
SearchText+ �� UpdateSourceTrigger$ PropertyChanged=�5      &   System.Windows.Controls.DataGrid  5    
   $��5q�5!      $��1��5"         AutoGenerateColumns$ False��5$         CanUserAddRows$ False��5%      
���������5#      �� *AddressCollection+$ PropertyChanged=�	 �� SelectedItem	 5'      �� *SelectedAddress+
   Columns
 5)      0  *System.Windows.Controls.DataGridTextColumn  5*      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6%      Header$ ID��60      
IsReadOnly$
 True��6S   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6<   �� *Id+6S     5,      $ * 6%   $ ФИО��6/   $
 True��6y    6<   �� *Fio+$ PropertyChanged=�   	CellStyle 5-      �� 5.       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    �5/      �� 50   "    �� Property � �� �� Value 6?   �� *
FioBrush+ �� Triggers 52      P� 53   "    P� Property �@ 
IsSelected P� Value$
 True��6@   . �54   &   ��  � ��
 �   �6C   55   #   57      59        5;      $ * 6%   $ Телефон��6/   $
 True��6�    6@   �� *TelephoneNumber+$ PropertyChanged=� 5<      �� 5=      "  6    �5>      �� 5?   "    � �� 6?   �� *TelephoneBrush+ 5A      P� 5B   "    �@ 
IsSelected$
 True��6@   . �5C   &   ��  � ��
 �   �6C   5D   #   5F      5H       � ContextMenu 5K      �� 5L      .@�5M      m� $%��Добавить контакт��6    m� Command 69   �� *
AddContact+m� 5N      $%��Изменить контакт��6    69   �� *ChangeContact+m� 5O      $#��Удалить контакт��6    68   �� *DeleteContact+5P      5R      5T      5U      