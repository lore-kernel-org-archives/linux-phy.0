Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A59AC02185
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 08:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXAKTH6nk2fBVNfayebS7cYBKD1fG4TxgRTQ8J5ioXM=; b=VMR7QefiIYun64
	nhToe2ilHE4AJU41oLgH3ef2xBH2JQ5x3QnPxihiMatKoFUGDBXDL8cd0ttS3qjfnFK9pWIr28W9K
	OIQdG41hSExP+zJrFgfdqmqlC90aJ+8rnazB64LzWYECjdUGtSaS0AIh20kI255fTDjxBwentV3bA
	hSNklXRe84Rcsj+FVOFR/nEF6aNNiMVxYhCUnoZA97Jt3c6mmtf8hbAFwP29ovM0Gp5UBa5pOwEXf
	qpEM6FnDj4Yps2Ez4VwcMbxn5xupnr41I0tuaHLZRHWApG6pTNrGvKqwPXC4jKOCTY5BZOMCszSOK
	EdDiSeK96Yg4oGwoZE4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZn28-0000000510D-1vSG;
	Mon, 20 Jan 2025 08:21:20 +0000
Received: from mail-vs1-f42.google.com ([209.85.217.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZn25-000000050zD-00bB
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 08:21:19 +0000
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4affbb7ef2dso2994753137.0
        for <linux-phy@lists.infradead.org>; Mon, 20 Jan 2025 00:21:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737361274; x=1737966074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wi7GVIKAmX5N79TKymkXsEKjdH2sMcAjyDCD5NQnmms=;
        b=rpWMyPbyR7BE5nQ/cace6hbYye3rpgD+wDfb/PeINYkAbDcY7fDNOp1tPtleDWBCOD
         UjkSg4SpWCNahSjZrXYdJowIaa14Gko4eBeZUHdSZqDv16zCHxZkP1nViKIAjZ7EXc4F
         nuWEBdSi8kTufMX1jAChAjRRQ/Aq/u5kZQXVxdZGYcKxuno8LY4hChr5NubbWCkw1UuZ
         fuBYCYUII1P21xP3sFnMbw5IDd5mC+tYNDQlaKWyIVwxFuZIkKmO/9JVMrXP7MKSoD4M
         VYyAZfmqBd08E72fUz4TyRrXg4NfAUOp53zu8AgREhkTnApHx7IXNhZtO3AntGZkUtd7
         IxFg==
X-Forwarded-Encrypted: i=1; AJvYcCXEwSTD/g9ytyXeYB99VodWHOM1hzzA6wdZWv2VJfJAQwOgqVOeI3WW5RLN3U5Wd6OfcdLTa7GEPHA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywn9A/w3zv3pPUvDC0V9iYb9AeHoQlH0Jlidzhf+gqBKVv00lgR
	oF49KcLDkdyuYT7CLZdeEhHlCzDXngX9835YgUCx4XthzNxEMmvTH6xlfTaS
X-Gm-Gg: ASbGncuFuwXCH/4IFuUP4sJLPmZ7NiWVNDkOuCjGhTTceXzraN1MRtlCiNw8tMK1JLR
	jGDvoEcqMHF6lASyc3u3wTONvd3AlwQAybkOZkKRljRB7T6RxQU3J9pYQ+Pfqk5gKUEv6td88XA
	tCNoFWXJvmWoafzIhdfoC3VcSG4z+/tnvXXuyifMlh/pcMtq8w1a36fZyMZeE3mopxeMr8oxVSL
	0st7JyPdkE8MgqlP2V+QzVZ6Z7xdOJyabhhImFlapi4T0HArzoXqEZ6Ec3kQJEHM4y1WhvmGjfW
	BCsj6FwQTzHta6ST43UN4/8qzrEFe6pF
X-Google-Smtp-Source: AGHT+IHdhvxFfz1uM+Wko5/i8LwSe4qZqRvgc7Rg4RhMgW5mWQo8swJYj25QGB/0J/hLqJIUa6Vgqg==
X-Received: by 2002:a05:6102:3f03:b0:4b2:7534:f26e with SMTP id ada2fe7eead31-4b690c77e52mr8896054137.16.1737361274329;
        Mon, 20 Jan 2025 00:21:14 -0800 (PST)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8642cab2dbcsm1750718241.5.2025.01.20.00.21.14
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2025 00:21:14 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4b63d564e13so2612705137.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jan 2025 00:21:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWeeChOT9JJkcmcD4p6kYxsK39Q2P1jxM4TBamje07Klxhve3i8eCiBtL6TyFItxWUUcjpbSwO81sU=@lists.infradead.org
X-Received: by 2002:a05:6102:dce:b0:4b2:5c4b:55e9 with SMTP id
 ada2fe7eead31-4b690b7bfa1mr10157443137.3.1737361273885; Mon, 20 Jan 2025
 00:21:13 -0800 (PST)
MIME-Version: 1.0
References: <cover.1737118595.git.geert+renesas@glider.be> <0c7116ca03997fff04faf59fdcd4c97820685b64.1737118595.git.geert+renesas@glider.be>
 <20250120090715.17473c2d@bootlin.com>
In-Reply-To: <20250120090715.17473c2d@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Jan 2025 09:21:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV+60U_FCB52xzjh4BCUsQ+qEqHre=2h6FDKnUtT15b9A@mail.gmail.com>
X-Gm-Features: AbW1kvbf9TF12i9HMV867gkLf1lyeRnV2tnUVEJQtRvIs1uznH7i6Xt4dZ5j338
Message-ID: <CAMuHMdV+60U_FCB52xzjh4BCUsQ+qEqHre=2h6FDKnUtT15b9A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] phy: PHY_LAN966X_SERDES should depend on
 SOC_LAN966 || MCHP_LAN966X_PCI
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_002117_201775_D1579004 
X-CRM114-Status: GOOD (  18.76  )
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

SGkgSGVydsOpLAoKT24gTW9uLCBKYW4gMjAsIDIwMjUgYXQgOTowN+KAr0FNIEhlcnZlIENvZGlu
YSA8aGVydmUuY29kaW5hQGJvb3RsaW4uY29tPiB3cm90ZToKPiBPbiBGcmksIDE3IEphbiAyMDI1
IDE0OjA0OjM4ICswMTAwCj4gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRl
ci5iZT4gd3JvdGU6Cj4gPiBUaGUgTWljcm9jaGlwIExBTjk2NlggU2VyRGVzIFBIWSBpcyBvbmx5
IHByZXNlbnQgb24gTWljcm9jaGlwIExBTjk2NngKPiA+IFNvQ3MuICBIb3dldmVyLCB3aGVuIHVz
ZWQgYXMgYSBQQ0kgZW5kcG9pbnQsIGFsbCBwZXJpcGhlcmFscyBvZiB0aGUKPiA+IExBTjk2Nngg
U29DIGNhbiBiZSBhY2Nlc3NlZCBieSB0aGUgUENJIGhvc3QuICBIZW5jZSBhZGQgZGVwZW5kZW5j
aWVzIG9uCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5e
IFR3byBzcGFjZXMKClRoYXQncyBpbnRlbnRpb25hbDogbW9yZSBzcGFjZSBhZnRlciBhIHBlcmlv
ZCB0ZXJtaW5hdGluZyBhIHNlbnRlbmNlLi4uCgo+ID4gU09DX0xBTjk2NiBhbmQgTUZEX0xBTjk2
NlhfUENJLCB0byBwcmV2ZW50IGFza2luZyB0aGUgdXNlciBhYm91dCB0aGlzCj4KPiBzL01GRF9M
QU45NjZYX1BDSS9NQ0hQX0xBTjk2NlhfUENJLwoKQnVtbWVyLCBob3cgZGlkIEkgbWlzcyB0aGF0
PwoKPiA+IGRyaXZlciB3aGVuIGNvbmZpZ3VyaW5nIGEga2VybmVsIHdpdGhvdXQgTWljcm9jaGlw
IExBTjk2NnggU29DIGFuZCBQQ0llCj4gPiBzdXBwb3J0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6
IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4KPiBXaXRoIHRo
b3NlIG1pbm9yIHRoaW5ncyBmaXhlZCwKPgo+IEFja2VkLWJ5OiBIZXJ2ZSBDb2RpbmEgPGhlcnZl
LmNvZGluYUBib290bGluLmNvbT4KClRoYW5rcyEKCkdye29ldGplLGVldGluZ31zLAoKICAgICAg
ICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUn
cyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBw
ZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2Vs
ZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNh
eSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
