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

namespace GorZdraw.PageFolder.DirectorFolder
{
    /// <summary>
    /// Логика взаимодействия для AddStaffPage.xaml
    /// </summary>
    public partial class AddStaffPage : Page
    {
        public AddStaffPage()
        {
            InitializeComponent();
            RoleCb.ItemsSource = DBEntities.Getcontext()
                .Role.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            DBEntities.Getcontext().User.Add(new User()
            {
               LoginUser  = LoginTb.Text,               
               PasswordUser  = PasswordTb.Text,
               IdRole = Int32.Parse(RoleCb.SelectedValue.ToString())

        });
            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Успешно");
            NavigationService.Navigate(new ListStaffDirectorPage());
        }
    }
}
