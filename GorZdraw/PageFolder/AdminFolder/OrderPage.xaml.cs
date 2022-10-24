using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для OrderPage.xaml
    /// </summary>
    public partial class OrderPage : Page
    {
        public OrderPage()
        {
            InitializeComponent();
            OrderDG.ItemsSource = DBEntities.Getcontext().Order.ToList()
                .OrderBy(c => c.IdOrder);
        }
        private void Ref()
        {
            OrderDG.ItemsSource = DBEntities.Getcontext().Order.ToList()
                .OrderBy(c => c.IdOrder);
        }
        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (OrderDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите заказ для удаления");
            }
            else
            {
                try
                {
                    Order order = OrderDG.SelectedItem as Order;
                    if (MBClass.QestionMB($"Удалить выбранный заказ?"))
                    {
                        DBEntities.Getcontext().Order.Remove(order);
                        DBEntities.Getcontext().SaveChanges();
                        Ref();
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }
    }
}
