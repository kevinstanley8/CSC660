   M S B A M L   `   `   `  ���� J  FEvent_Scheduler, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Event_SchedulerEvent_Scheduler       Event_Scheduler.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:Event_Scheduler     -     � Title$  
MainWindow��$	��450��$��1096.386��.��� ���#6fa8dc � ColumnDefinitions �� $��7* ��� $	��61* �.+��� -    ��Name$ 	lblBanner��$��Daily Planner��$
��Left=�$��321.337,13,0,0q�$	��Top=�$��Arial)�$��24(�$
��Bold"�$��1���� -    ��Name$ btnAdd��$
��Left=�$��822.337,45,0,0q�$	��Top=�$��40��$��40��$��Images/add.png��$��1���� -   $ btnPrint��$
��Left=�$��885.337,45,0,0q�$	��Top=�$��40��$��40��$��Images/print.png�� J� RenderTransformOrigin$ 0.065,0.563&�$��1��(  "System.Windows.Controls.DatePicker  -   $��dpDate��$
��Left=�$��340.337,56,0,0q�$	��Top=�$��36��$	��130��$��1�� � 	Resources :  4System.Windows.Controls.Primitives.DatePickerTextBox �� 
TargetType �� Property �� Value��%6   '        �� "  .���  �@��
IsReadOnly . �� -   $ btnLeft��$
��Left=�$��264.337,45,0,0q�$	��Top=�$��40��$��40��$��Images/left.png��$��1���� -   $ btnRight��$
��Left=�$��504.337,45,0,0q�$	��Top=�$��40��$��40��$��Images/right.png��$��1��&   System.Windows.Controls.DataGrid  -   $��	eventGrid��	   AutoGenerateColumns	 .  $	��226��$
��Left=�$��
67,112,0,0q�$	��Top=�$	��970��
   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 *    AlternatingRowBackground �	#FF72F19E   RowBackground �	#FFCCCCCC   CanUserAddRows .     CanUserDeleteRows . $��2��   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Delete��   
IsReadOnly .    Width$ 50    CellTemplate �� .R��� -	   $��/Images/delete.png��$��20��$��20�� � ToolTip �� *id+0  *System.Windows.Controls.DataGridTextColumn  $ ID�� . -
   id��$ 50 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *id+  $ Title�� . -   	title�� �� *title+  $ 
Start Date�� . -   	startdate�� �� *	startdate+  $ End Date�� . -   enddate�� �� *	enddate+  $ Notes�� . -   	notes�� �� *notes+  $ Category�� . -   categoryname�� �� *categoryname+  $
 Edit�� . $ 40  �� .R��� -   $��/Images/edit.png��$��20��$��20�� �� *id+