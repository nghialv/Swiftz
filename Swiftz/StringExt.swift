//
//  StringExt.swift
//  swiftz
//
//  Created by Maxwell Swadling on 8/06/2014.
//  Copyright (c) 2014 Maxwell Swadling. All rights reserved.
//

extension String {
	/// Returns an array of strings at newlines.
	public func lines() -> [String] {
		return self.componentsSeparatedByString("\n")
	}

	/// Concatenates an array of strings into a single string containing newlines between each
	/// element.
	public static func unlines(xs : [String]) -> String {
		return xs.reduce("", combine: { "\($0)\($1)\n" })
	}

	/// Returns a Lens that targets the newline-seperated sections of a String
	public static func lines() -> Iso<String, String, [String], [String]> {
		return Iso(get: { $0.lines() }, inject: unlines)
	}
}
