package com.my.controller;

import java.util.UUID;

public class Tset {
	public static void main(String[] args) {
		for (int i = 0; i < 100; i++) {
			String uuid = UUID.randomUUID().toString().replace("-", "").toLowerCase();
			System.out.println(uuid);
		}
	}

}
