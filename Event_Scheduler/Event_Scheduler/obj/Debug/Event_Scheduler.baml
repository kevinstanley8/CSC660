   M S B A M L   `   `   `  ����J  FEvent_Scheduler, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Event_SchedulerEvent_Scheduler  5   	        Event_Scheduler.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Event_Scheduler     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $��1096.386��6)   .��5      � ���#6fa8dc � ColumnDefinitions 5   
   �� 5      $��7* �6   �� 5      $	��61* �6   .+�5   
   �� -   5         ��Name$ 	lblBanner��5      $��Daily Planner��6#   $
��Left=�6;   $��321.337,13,0,0q�6V   $	��Top=�6n   $��Arial)�6�   $��24(�6�   $
��Bold"�6�   $��1��6�   �� 5   
   -   5         ��Name$ btnAdd��5      $
��Left=�6    $��822.337,45,0,0q�6;   $	��Top=�6S   $��40��6k   $��40��6v   $��Images/add.png��6�   $��1��6�   �� 5   
   -   5        $ btnPrint��5      $
��Left=�6"   $��885.337,45,0,0q�6=   $	��Top=�6U   $��40��6m   $��40��6x   $��Images/print.png��6�    J� RenderTransformOrigin$ 0.065,0.563&�6�   $��1��6�   (  "System.Windows.Controls.DatePicker  5   
   -   5        $��dpDate��5      $
��Left=�6#   $��340.337,56,0,0q�6>   $	��Top=�6V   $��36��6n   $	��130��6z   $��1��6�    � 	Resources 5      :  4System.Windows.Controls.Primitives.DatePickerTextBox �� 
TargetType �� Property �� Value��%[   '        �� 5      "  6   .�5      ��  �@��
IsReadOnly . 63   5      5      5      �� 5   
   -   5        $ btnLeft��5      $
��Left=�6!   $��264.337,45,0,0q�6<   $	��Top=�6T   $��40��6l   $��40��6w   $��Images/left.png��6�   $��1��6�   �� 5   
   -   5        $ btnRight��5      $
��Left=�6"   $��504.337,45,0,0q�6=   $	��Top=�6U   $��40��6m   $��40��6x   $��Images/right.png��6�   $��1��6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��	eventGrid��5      	   AutoGenerateColumns	 .  $	��226��5   /   $
��Left=�5      $��
67,112,0,0q�6&   $	��Top=�5      $	��970��64   
   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 * 6@      AlternatingRowBackground �	#FF72F19E   RowBackground �	#FFCCCCCC   CanUserAddRows .     CanUserDeleteRows . $��2��6�      Columns 5!      4  .System.Windows.Controls.DataGridTemplateColumn  5"      ,  &System.Windows.Controls.DataGridColumn   Header$ Delete��6)      
IsReadOnly .    Width$ 50 6K      CellTemplate 5#      �� 5$      .R�5%      �� -	   5        $��/Images/delete.png��5%   $   $��20��6@   $��20��6L    � ToolTip 6s   �� *id+5&      5(      0  *System.Windows.Controls.DataGridTextColumn  5)      $ ID��6<    . -
   5        id��$ 50 5)   f   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *id+5*        5+      $ Title��6?    . -   5        	title�� 5+   %   �� *title+5-        5.      $ 
Start Date��6C    . -   5        	startdate�� 5.   %   �� *	startdate+50        51      $ End Date��6A    . -   5        enddate�� 51   %   �� *	enddate+53        54      $ Notes��6?    . -   5        	notes�� 54   %   �� *notes+56        57      $ Category��6F    . -   5        categoryname�� 57   %   �� *categoryname+59        5:      $
 Edit��6)    . $ 40 6I    5;      �� 5<      .R�5=      �� -   5        $��/Images/edit.png��5=   $   $��20��6>   $��20��6J    6o   �� *id+5>      5@      5B      5D      5F      