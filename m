Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B903DE7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFReqageXZWtBzYIlf8rYmCeRaMZbkOn9mN3/FeGTyc=; b=wjr3wETXOc4v/2
	jjU+U0Rgbc6/MyWHBOQ3A4/SvsvBKFxfgorF94+P8LC+MAqzOhTYRze04fx0GF18L/p4i88lyZa0U
	BxKUP/+IRhK/kquE8w+c1PRnq8ivqG6A1aVbxO1+wIKBbZYhNdkVMcujfSRAdK+oOz2rJtiihNRXG
	m+yu7f+rxUBYbHvQj38rwxeBm2oADNZdsx+E8Fzi7GlXafQH1wP4IiD3JdP+TcbWs5YonoCX6nHjv
	V1L/4h3TW3W28CDbUtazCrwrOJAsW301toBPEGSSqyEJb4hmHZ6UkQxpxteQ4k7TsuYvBdyDtJlbJ
	F+CHL8AeKH0vuSQea7Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2Cb-0000000BxFF-280R;
	Tue, 10 Dec 2024 15:31:09 +0000
Received: from mail-vs1-f41.google.com ([209.85.217.41])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2BX-0000000Bx1f-0AkB
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:30:04 +0000
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-4afecb2731dso823003137.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:30:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733844600; x=1734449400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nows2fY7KpTxx9Yz85WglsRNdxHW6s0rEzYJK1Gzq/4=;
        b=SnrkwNN3xvWkToYNANh8uKCHxORLN6ZHRdmDABSCKYHg0itJp3mi9R+HXLHxErisYt
         I+duxTsivHDe3RwtYVglXz3AU3cyqDoIChNWUCnvpm6+Ft31Y+g8czEpnnu4CI5Htkvm
         nwvccHgIhWwY8SzPh+BuWJ+934yK9gUa6Sotl8kqrNlkwQL9/Z/N/wxnhAOclaovQ976
         uG7Xqa+yN3u8XgxBLLXC1JYfTR/MTlTfCllrJQBLtQexfEl8igOtGXm9L1bmZn79jZ1/
         apcd+j+TQNiN8Slwp6Rd/z511aW4HiMLHvG+OfZTfNU9m48o+szJB1XB6yfmOHNPRfkR
         LbUg==
X-Forwarded-Encrypted: i=1; AJvYcCVZEn1N+fOkXfzLb6GJBksqPzPJQfWpgUvXpK1bpk+9pF5472Ju/2npqZ8vMitP8rRQcqWAcxyTzx8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3KDTwYYkFhJiA/T3OsGOyvmPI7nk2BEnTNsJJDdslkBTiuaKt
	+XZlXEJeD2xdJVaDhMYUx3wy8VT5O2OZkVbg869Xaik7kbiPuhOW7ZX8UA54
X-Gm-Gg: ASbGncv+5+3XVhoPdXlNcDDpuG2TX50QUa0TXt2eXsWvc/l1yMe/IUwjBe/VXdL+Wv6
	IDa3Uvp+9+kjQFRWRLgxgHiDB/Zx4cqhryaOIjw/f+MfmgAxvorDVmR7vTK92YLyiC59O7n4nvE
	1hvUgRExHmO745PJmF0vDjzj4OAzS6gT+XQinDjBg+gusBUBBs+aqCpDexqo+oxlIGfohtHJY8w
	J196XJhg4V2L7em3NhA6ew93JyLPqRb8xnlUEVbtugWeiVDFOfXdGsAzKPlXkUdyUdHJqeRKx1l
	dUfzCZOuaqgqwQdz
X-Google-Smtp-Source: AGHT+IEJF52p83aMOFGkeIcUaqNVOA6aUJh7dCmkRGRNa5Rb6+Sgc2igPkcZprRCeStDxn4S0qKhgg==
X-Received: by 2002:a05:6102:290c:b0:4af:f630:7224 with SMTP id ada2fe7eead31-4b116252db5mr5470678137.18.1733844600626;
        Tue, 10 Dec 2024 07:30:00 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-85c2bd4fc5asm1436420241.30.2024.12.10.07.30.00
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:30:00 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-4afe1009960so977663137.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:30:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWIhDy6srzx7j6LTZUrx+c7yVWAXfCvjj/oBFAiKPfOY4OwtIjrR7sLIsOXotCEuIvANweW0YzgKIk=@lists.infradead.org
X-Received: by 2002:a05:6102:418c:b0:4b1:101f:a5a0 with SMTP id
 ada2fe7eead31-4b1160c1b5cmr5478389137.5.1733844600027; Tue, 10 Dec 2024
 07:30:00 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-13-claudiu.beznea.uj@bp.renesas.com> <CAMuHMdWadox27_HYhijdOCdd==4P=-C0moFFAFUmCKupcSBjGA@mail.gmail.com>
In-Reply-To: <CAMuHMdWadox27_HYhijdOCdd==4P=-C0moFFAFUmCKupcSBjGA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:29:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV_jSMeP9OAj5Z9HvP6_7Yd7b=JvEj+-LOVHXj0TQxHsA@mail.gmail.com>
Message-ID: <CAMuHMdV_jSMeP9OAj5Z9HvP6_7Yd7b=JvEj+-LOVHXj0TQxHsA@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] arm64: dts: renesas: Add #renesas,sysc-signal-cells
 to system controller node
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_073003_083434_66BE9E13 
X-CRM114-Status: GOOD (  16.84  )
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

T24gVGh1LCBOb3YgMjgsIDIwMjQgYXQgNDoxN+KAr1BNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+IE9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0IDEwOjIx
4oCvQU0gQ2xhdWRpdSA8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiA+IEZyb206
IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPiA+Cj4g
PiBUaGUgc3lzdGVtIGNvbnRyb2xsZXIgb24gUlovRzNTIGNhbiBwcm92aWRlIGNvbnRyb2wgYWNj
ZXNzIHRvIGl0cyBzaWduYWxzLgo+Cj4gQWN0dWFsbHkgYWxsIFNvQ3MgZnJvbSB0aGUgIlJaL0cy
TCIgZmFtaWx5Li4uCj4KPiA+IFRvIGVuYWJsZSB0aGlzLCBhZGQgdGhlICNyZW5lc2FzLHN5c2Mt
c2lnbmFsLWNlbGxzIERUIHByb3BlcnR5LiBDb25zdW1lcnMKPiA+IGNhbiB1c2UgdGhlIHJlbmVz
YXMsc3lzYy1zaWduYWwgRFQgcHJvcGVydHkgdG8gcmVmZXJlbmNlIHRoZSBzcGVjaWZpYyBTWVND
Cj4gPiBzaWduYWwgdGhhdCBuZWVkcyB0byBiZSBjb250cm9sbGVkLgo+ID4KPiA+IFNpZ25lZC1v
ZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4K
CldpdGggdGhlIHBhdGNoIGRlc2NyaXB0aW9uIHVwZGF0ZWQ6ClJldmlld2VkLWJ5OiBHZWVydCBV
eXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKR3J7b2V0amUsZWV0aW5nfXMs
CgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAt
LSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5v
cmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNh
bGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJ
IGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
