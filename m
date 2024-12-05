Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F58E77170
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 10:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NCG9ppJ65ZW1EkiFhmBms8xBi+sSNxHOEke85QKlKdQ=; b=0ClI/3s6O4Ges2
	LHWOm3TYOrmr89Oi7Bg24Xkq5z9bS035w31zSJOQBIRWvckmvWNoqKixrPCvnQne5I0Ai/OB7wLuO
	N6zrXGnVEXhCe1sM3vQcvucOJcgSmjO1zQ0rbgI9U+0Br/9mp4Gcnexo+bjiCD21AgdFJK/+DxXMr
	urrUY9Uzs85PhUTEm2Bjmj3lYcSjEw77/hMCifY+Xi2s8O/x9U/nnTkQj5AA9MY0ycUnEgcL/eAqy
	rs29Gte7nrsA6VmmC/TMUK7eJpN33PnsoHZADCHxfR9ZSfnO6+JN0PQ/wBvw2b6XVoZcbL643py9E
	yhZrO/h60qEger9MFhgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8zl-0000000FUfW-3jjK;
	Thu, 05 Dec 2024 10:22:05 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8zi-0000000FUeR-1Ulm
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 10:22:04 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-aa530a94c0eso143842666b.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 02:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733394121; x=1733998921; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C2qCz2oyAWXcySnvC/YTGdboyjGwCf8uvEh34M5NQ1w=;
        b=wF17t4K4IftoUAXPknb5x8rNCjdBBerbbAuNenYo5VxXXsDpy7sJT6WCl4vnbh7VGj
         mYHOfBx9AR5kPs61CjA75Mk0JAMjvRXPG0ZGpWmnLYHUeHgk1vt+gwqyPKtUZeNYOOJ3
         IpHcuQ+HJTnfPrkw2b3rdJNwb98ME/YSSZwrZjSGlI3e0LkNdWtQ2EBKbu4lvnuA0UHA
         2uVMpdV/u5bt/YqcY/cfct8EJ6lvmEA10Weel5Xc7Psaqs0NEPvMo1hZK6hi6Fh5WlUp
         /+HT+KFkEhGSFy3mpgEu3hbCzQ/V8WTTJONJqWEwOlJeAv2ulHiQaG9Vs6OollyC4wHf
         c3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733394121; x=1733998921;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C2qCz2oyAWXcySnvC/YTGdboyjGwCf8uvEh34M5NQ1w=;
        b=AgNzvMaArf9oemF1u1bEIqsxl4+yOmKllakKvzElS3ZGmFbiBso32ogmRdBw+IvW6u
         wgIRzl7PtQWHJDhfHcHqdUdcwSrH/u3fi55o+VKoeG460qeEilR0m34rvFMZLsnjmpAJ
         7B1KBRB/4mhxa4p0gIgiI8599oSC2ig863TW3MqpngSUYrvtb4Fl0JBJhmK1Mn4kS3gN
         65+pHBrSReohI32hKUEn6jfUt03Gcd8fpXwUVhcjz4KdcQ26/p1dnHFscQBptirKAVli
         Sigcte52hC1G5ZBAgy6IgPDjDEfpjFRvP0y1kL7fFUp4xIx0YbeEe5p58bJoVu17KXFs
         05Kg==
X-Forwarded-Encrypted: i=1; AJvYcCX3OGjBF6eKWCbkn49CiW5p1rcxOm/3kmcDyRAMQ4aFXX+KPl6hiehI239vnuae+k7MB8c6vCFNF8E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4f0DM2r/9kNcvJfYnYMWIHqAUP3YWHFFBhIAT/trxK6ClUwLc
	AJKByy0c1KIWHmTyhp7pfm55V86CF6MHXjgSWjsZIjIQEowFDO7OPW1J+Rdgp94=
X-Gm-Gg: ASbGnctMC7ZQHdUKcDI36MY9j28N+lcbkTAt9k/+2lNvvaTxl3mwyIaxs1oirkUAwPd
	NPsqtNk4sSyY4cof6Ybd/P3KSrWvRBhRX5cbx/5wqW+tWuPNoysSSoKy/yvtTh2nlp2dt9+rgOU
	G5IxhJXw2tCZ1Y0JO/Lbz66svt+On9o1FCHUXNz7bIjkBZypFPGht9NUx7E9s6EQZgWwQXHmwm9
	Htb860vXMK0uF3UDqzfN2TwxMgnV7b15fGKfHVXegvfTe969oZ/Lhext3RKRYDGCDdKBLv5qVep
	FmAanr7kVNsEoSjsMgcZcHpjNkNYyXGPdA==
X-Google-Smtp-Source: AGHT+IGIzS6w8nmzLwTehZGRCWLb5o+CLPa7VmxDEuLmOqo4b1mzG0cAAJu2wok4wnlPx8fiTWLtkA==
X-Received: by 2002:a17:906:3d31:b0:aa5:41b2:e23e with SMTP id a640c23a62f3a-aa5f7da9717mr766598566b.30.1733394120780;
        Thu, 05 Dec 2024 02:22:00 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa62608f57fsm71606166b.146.2024.12.05.02.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 02:22:00 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 10:22:00 +0000
Subject: [PATCH v4] phy: exynos5-usbdrd: gs101: ensure power is gated to SS
 phy in phy_exit()
MIME-Version: 1.0
Message-Id: <20241205-gs101-usb-phy-fix-v4-1-0278809fb810@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMd+UWcC/x2MQQqAMAzAviI9W9iqA/Ur4mFq3XpRWVEU8e8Oj
 wkkDygnYYWueCDxKSrbmqEuC5iiXwOjzJmBDNWWjMOg1lg8dMQ93rjIhTQ513hvqpY85G5PnPX
 /7If3/QBAd16DYwAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_022202_403001_35D8F854 
X-CRM114-Status: GOOD (  11.16  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

V2UgY3VycmVudGx5IGRvbid0IGdhdGUgdGhlIHBvd2VyIHRvIHRoZSBTUyBwaHkgaW4gcGh5X2V4
aXQoKS4KClNodWZmbGUgdGhlIGNvZGUgc2xpZ2h0bHkgdG8gZW5zdXJlIHRoZSBwb3dlciBpcyBn
YXRlZCB0byB0aGUgU1MgcGh5IGFzCndlbGwuCgpGaXhlczogMzIyNjdjMjliYzdkICgicGh5OiBl
eHlub3M1LXVzYmRyZDogc3VwcG9ydCBFeHlub3MgVVNCRFJEIDMuMSBjb21ibyBwaHkgKEhTICYg
U1MpIikKQ0M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyA2LjExKwpSZXZpZXdlZC1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgpSZXZpZXdl
ZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpTaWduZWQtb2Zm
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KQ2hhbmdl
cyBpbiB2NDoKLSBzZXBhcmF0ZSB0aGlzIHBhdGNoIG91dCBmcm9tIG9yaWdpbmFsIHNlcmllcwot
IExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTIwNS1nczEwMS1w
aHktbGFuZXMtb3JpZW50YXRpb24tcGh5LXYzLTUtMzJmNzIxYmVkMjE5QGxpbmFyby5vcmcvCgpD
aGFuZ2VzIGluIHYzOgotIG5vbmUKLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNDEyMDMtZ3MxMDEtcGh5LWxhbmVzLW9yaWVudGF0aW9uLXBoeS12Mi01LTQwZGNm
MWI3NjcwZEBsaW5hcm8ub3JnLwoKQ2hhbmdlcyBpbiB2MjoKLSBhZGQgY2Mtc3RhYmxlIGFuZCBm
aXhlcyB0YWdzIHRvIHBvd2VyIGdhdGluZyBwYXRjaCAoS3J6eXN6dG9mKQotIExpbmsgdG8gdjE6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTEyNy1nczEwMS1waHktbGFuZXMtb3Jp
ZW50YXRpb24tcGh5LXYxLTYtMWI3ZmNlMjQ5NjBiQGxpbmFyby5vcmcvCi0tLQogZHJpdmVycy9w
aHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDEzICsrKysrKysrLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKaW5kZXggYzQyMWI0OTVlYjBmLi5lNDY5OWQ0ZTgw
NzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMK
KysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwpAQCAtMTI5Niwx
NCArMTI5NiwxNyBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX2dzMTAxX3BoeV9leGl0KHN0
cnVjdCBwaHkgKnBoeSkKIAlzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkID0gdG9f
dXNiZHJkX3BoeShpbnN0KTsKIAlpbnQgcmV0OwogCisJaWYgKGluc3QtPnBoeV9jZmctPmlkID09
IEVYWU5PUzVfRFJEUEhZX1VUTUkpIHsKKwkJcmV0ID0gZXh5bm9zODUwX3VzYmRyZF9waHlfZXhp
dChwaHkpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKwl9CisKKwlleHlub3M1X3VzYmRy
ZF9waHlfaXNvbChpbnN0LCB0cnVlKTsKKwogCWlmIChpbnN0LT5waHlfY2ZnLT5pZCAhPSBFWFlO
T1M1X0RSRFBIWV9VVE1JKQogCQlyZXR1cm4gMDsKIAotCXJldCA9IGV4eW5vczg1MF91c2JkcmRf
cGh5X2V4aXQocGh5KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JZXh5bm9zNV91c2Jk
cmRfcGh5X2lzb2woaW5zdCwgdHJ1ZSk7CiAJcmV0dXJuIHJlZ3VsYXRvcl9idWxrX2Rpc2FibGUo
cGh5X2RyZC0+ZHJ2X2RhdGEtPm5fcmVndWxhdG9ycywKIAkJCQkgICAgICBwaHlfZHJkLT5yZWd1
bGF0b3JzKTsKIH0KCi0tLQpiYXNlLWNvbW1pdDogYzI0NWE3YTc5NjAyY2NiZWU3ODBjMDA0YzFl
NGFiY2RhNjZhZWMzMgpjaGFuZ2UtaWQ6IDIwMjQxMjA1LWdzMTAxLXVzYi1waHktZml4LTJjNTU4
YWEwMzkyYQoKQmVzdCByZWdhcmRzLAotLSAKQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtA
bGluYXJvLm9yZz4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
