   M S B A M L   `   `   `  ���� J  FEvent_Scheduler, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Event_SchedulerEvent_Scheduler      Event_Scheduler.AddEvent   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:Event_Scheduler       � Title$  AddEvent��$��632.833��$��512.617��.��� ���#6fa8dc.+��� -    ��Name$ 	lblBanner��$��	Add Event��$
��Left=�$��
197,10,0,0q�$	��Top=�$��Arial)�$��24(�$
��Bold"��� -   $ lblStartDate��$��Start Date*:��$
��Left=�$��	74,69,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"�(  "System.Windows.Controls.DatePicker  -   $��dpStartDate��$
��Left=�$��
177,69,0,0q�$	��Top=�$��36��$	��270�� � 	Resources :  4System.Windows.Controls.Primitives.DatePickerTextBox �� 
TargetType �� Property �� Value��%6   '        �� "  .���  �@��
IsReadOnly . �� -   $ lblStartTime��$��Start Time*:��$
��Left=�$��
74,106,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"��� -    ��Name$ cbStartHour��$
��Left=�$��177,110,0,0q�$	��Top=�$��80���� -   $ cbStartMinute��$
��Left=�$��272,110,0,0q�$	��Top=�$��80�� J� RenderTransformOrigin$ 
1.32,0.523&��� -   $ cbStartAMPM��$
��Left=�$��367,110,0,0q�$	��Top=�$��80��$ 0.828,0.672&��� -   $ 
lblEndTime��$��
End Time*:��$
��Left=�$��
74,176,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"��� -	   $ 	cbEndHour��$
��Left=�$��177,180,0,0q�$	��Top=�$��80���� -
   $ cbEndMinute��$
��Left=�$��272,180,0,0q�$	��Top=�$��80��$ 
1.32,0.523&��� -   $ 	cbEndAMPM��$
��Left=�$��367,180,0,0q�$	��Top=�$��80���� -   $ lblTitle��$��Title*:��$
��Left=�$��
74,218,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"��� -    ��Name$ txtTitle��$
��Left=�$��23��$��177,218,0,0q�	 �� TextWrapping$
	 Wrap=�$�� ��$	��Top=�$	��270���� -   $ lblNotes��$��Notes:��$
��Left=�$��
74,249,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"��� -   $ txtNotes��$
��Left=�$	��126��$��177,253,0,0q�$�� ��$	��Top=�$	��270��$
	 Wrap=�
 �� AcceptsReturn
 . �� -    ��Name$ btnSave��$��
Save Event��$
��Left=�$��218,454,0,0q�$	��Top=�$��96�����	#FF72F19E$��Arial)�$��14(�$
��Bold"�$ 
-0.1,9.635&��� -   $ 
lblEndDate��$��
End Date*:��$
��Left=�$��
74,142,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"�  -     Name$ 	dpEndDate��$
��Left=�$��177,142,0,0q�$	��Top=�$��36��$	��270�� ��%6   '        �� "  .���  �@��
IsReadOnly . �� -   $ lblCategory��$��
Category*:��$
��Left=�$��
74,403,0,0q�$	��Top=�$��Arial)�$��14(�$
��Bold"��� -   $ 
cbCategory��$
��Left=�$��177,407,0,0q�$	��Top=�$	��137���� -   $ lblCategoryColor��$�� ��$
��Left=�$��327,403,0,0q�$	��Top=�$ -0.565,0.42&�$��50��