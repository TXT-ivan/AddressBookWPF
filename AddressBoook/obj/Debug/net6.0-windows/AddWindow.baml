   M S B A M L   `   `   `  ����G  CAddressBoook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AddressBoookAddressBoook  5   	       AddressBoook.AddWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AddressBoook     5   	     � Title$+  %Добавление контакта��5   	   $	��200��5	   	   $	��300��5
   	    � WindowStartupLocation$ CenterOwner=�5   	    � 
ResizeMode$ NoResize=�5   	    � Icon$ Images/Book.png��5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��5,0,5,0q�6   $��ФИО:��6.   �� 5   
   $��1��6   $��5,0,5,0q�6   $��25��60   ��6<   �� *Fio+ �� UpdateSourceTrigger$ PropertyChanged=���6v   �� *
FioBrush+$ PropertyChanged=��� 5   
   $��2��6   $��5,0,5,0q�6   $��Телефон:��6.   �� 5   
   $��3��6   $��5,0,5,0q�6   $��25��60   ��6<   �� *TelephoneNumber+$ PropertyChanged=���6�   �� *TelephoneBrush+$ PropertyChanged=��� 5   
   $��4��6   $��5q�6"   $��25��6-   $��Center=�69    �� Orientation$ 
Horizontal=�6V   .+�5      �� $	��100��6   $��0,0,5,0q�6!   $��Добавить��62   ��6E   �� *
AddConfirm+$ PropertyChanged=��� 5       $	��100��6   $��5,0,0,0q�6!   $��Отмена��62   ��6C   �� *Cancel+$ PropertyChanged=�5!      5"      5#      