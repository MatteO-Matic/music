/*-
 * Copyright (c) 2011       Scott Ringwelski <sgringwe@mtu.edu>
 *
 * Originally Written by Scott Ringwelski for BeatBox Music Player
 * BeatBox Music Player: http://www.launchpad.net/beat-box
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

public class BeatBox.SmartQuery : Object {
	// form a sql query as so:
	// WHERE `_field` _comparator _search
	private int _rowid;
	private string _field; 
	private string _comparator;
	private string _value; //internally this often holds numbers, but that's ok.
	
	public SmartQuery() {
		_field = "album";
		_comparator = "=";
		_value = "";
	}
	
	public SmartQuery.with_info(string field, string comparator, string value) {
		_field = field;
		_comparator = comparator;
		_value = value;
	}
	
	public int rowid {
		get { return _rowid; }
		set { _rowid = value; }
	}
	
	public string field {
		get { return _field; }
		set { _field = value; } // i should check this
	}
	
	public string comparator {
		get { return _comparator; }
		set { _comparator = value; } // i should check this
	}
	
	public string value {
		get { return _value; }
		set { _value = value; }
	}
}
