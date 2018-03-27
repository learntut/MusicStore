import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule, Routes  } from '@angular/router';

import { AppRoutingModule } from './app.routing';

import { AppComponent } from './app.component';
import { HeaderComponent } from './components/header/header.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { FooterComponent } from './components/footer/footer.component';
import { HomeComponent } from './pages/home/home.component';
import { SignupComponent } from './pages/signup/signup.component';
import { LoginComponent } from './pages/login/login.component';
import { CartComponent } from './pages/cart/cart.component';
import { AlbumdetailsComponent } from './pages/albumdetails/albumdetails.component';
import { NotfoundComponent } from './pages/notfound/notfound.component';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { AddgenreComponent } from './admin/addgenre/addgenre.component';
import { GenrelistsComponent } from './admin/genrelists/genrelists.component';
import { AlbumlistsComponent } from './admin/albumlists/albumlists.component';
import { AddalbumComponent } from './admin/addalbum/addalbum.component';
import { OrderlistsComponent } from './admin/orderlists/orderlists.component';
import { VieworderdetailComponent } from './admin/vieworderdetail/vieworderdetail.component';
import { ArtistComponent } from './pages/artist/artist.component';
import { AlbumComponent } from './components/album/album.component';
import { AdminheaderComponent } from './components/adminheader/adminheader.component';
import { AdminfooterComponent } from './components/adminfooter/adminfooter.component';
import { AdminnavbarComponent } from './components/adminnavbar/adminnavbar.component';
import { AdminsidebarComponent } from './components/adminsidebar/adminsidebar.component';
import { AdminpageComponent } from './admin/adminpage/adminpage.component';
import { DashboardComponent } from './admin/dashboard/dashboard.component';

import { SidebarService } from './services/sidebar.service';

const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'albumdetails/:Id', component: AlbumdetailsComponent },
  { path: 'cart', component: CartComponent },
  { path: 'login', component: LoginComponent },
  { path: 'signup', component: SignupComponent },
  { path: '**', component: NotfoundComponent },
];


@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    NavbarComponent,
    FooterComponent,
    HomeComponent,
    SignupComponent,
    LoginComponent,
    CartComponent,
    AlbumdetailsComponent,
    NotfoundComponent,
    SidebarComponent,
    AddgenreComponent,
    GenrelistsComponent,
    AlbumlistsComponent,
    AddalbumComponent,
    OrderlistsComponent,
    VieworderdetailComponent,
    ArtistComponent,
    AlbumComponent,
    AdminheaderComponent,
    AdminfooterComponent,
    AdminnavbarComponent,
    AdminsidebarComponent,
    AdminpageComponent,
    DashboardComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    RouterModule,
    AppRoutingModule,
    RouterModule.forRoot(routes)
  ],
  providers: [SidebarService],
  bootstrap: [AppComponent]
})
export class AppModule { }
