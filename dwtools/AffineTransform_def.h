/* AffineTransform_def.h
 * 
 * Copyright (C) 1993-2008,2015 David Weenink
 * 
 * This code is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This code is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this work. If not, see <http://www.gnu.org/licenses/>.
 */


#define ooSTRUCT AffineTransform
oo_DEFINE_CLASS (AffineTransform, Daata)

	oo_INTEGER (n)
	oo_DOUBLE_VECTOR (t, n)
	oo_DOUBLE_MATRIX (r, n, n)

	#if oo_DECLARING
		virtual void v_transform (double **in, long nrows, double **out);
		virtual autoAffineTransform v_invert ();
	#endif

oo_END_CLASS(AffineTransform)
#undef ooSTRUCT


/* End of file AffineTransform_def.h */
