## Copyright (C) 2018 zxl12
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} draw (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: zxl12 <zxl12@DESKTOP-ZXL>
## Created: 2018-08-16

function retval = draw (data,w,color)
  
hold on;

if(color=='r')
   plot(data(51:100,1),data(51:100,2),'ko','MarkerFaceColor','r','MarkerSize',7);
   plot(data(1:50,1),data(1:50,2),'k+','LineWidth',2,'MarkerSize',7);
 else 
   plot(data(51:100,1),data(51:100,2),'ko','MarkerFaceColor','k','MarkerSize',7);
   plot(data(1:50,1),data(1:50,2),'g+','LineWidth',2,'MarkerSize',7);
   endif;
plot(1500*[0,-w(2,1)],1500*[0,-w(1,1)]);

endfunction
