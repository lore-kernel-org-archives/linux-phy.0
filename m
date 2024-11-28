Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D2DD69113
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 15:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtOzQ/ijRo1YYfycL0Xw6UDulD8j1463URDnfdVMZu4=; b=jClo0L66vaYuhS
	1ge9BwdK86+tblHYjp1K7MbLWymeq4kf/fwgWpiZEpRFBpeD0jH8DfSRsWbPuS1p7U5v0rx4Vd9wt
	UWTCuaUSyPtAbwb8MF0lTSEOMzMXKd+x8lbj7KnZSMAQtofDyq/y3e/AuQQD2pYd0MDCBvoog+lhK
	E0C+YhIss0ZO5QUWe46xpj55+oip+0bP29kDgVm4dvblAUZHtJwVvLePWmhpYgheTTVa2vXJg2RAc
	n6pTkLsW6A57YzUrMKAVBNGuQ3pOVgSBX1lwdvrzS+yvwWtTsv+UZfThSeSG6oqcVuos9CaD13/+Y
	iyTNQ6QqJB5+Nff5fZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGg7R-0000000Fpaw-3FXa;
	Thu, 28 Nov 2024 15:07:49 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGg7P-0000000Fpa5-3GEi
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 15:07:48 +0000
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71d4fceec9aso361748a34.3
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 07:07:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732806464; x=1733411264;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/yzWTFKVKmP/Yu30XBr6QDu1Y/pRbzSvABTgewzd4OE=;
        b=k0ib03nZPpoIUgian1x9q2H/zJLj06Taog8mddtzKYZnZyM1SC0SlImI2JNisJpZJ5
         oS7vnv7FU1ypma4cdUuqtY9gVArl6Chu2TTLQy5R3V+dpIRE+rfmiA8Wgpf9F6rlNzkY
         fjJXVj6KMv/OWVfxYcemBF32TkqApbjv9/S4QlSahV4fEN74wOOMeran0/F8ZwPVI6kw
         /uNcG/HyU41Y/10llHNpxYyHLk3rLxyu5cNR95xZBd3w9ovxRZzRknFKKWEa/Bu814DR
         qVS8s8Pyz3rDz0M1wSMYQsjmIpHlqoXOGHDrX5mq3embFVf6pb4zCdBE6NUyMUgpeId2
         rkRA==
X-Forwarded-Encrypted: i=1; AJvYcCVBirsJoARcloZrAYQTFrIw4V7wZQFanD7/do0eas9v8rJnX6NwFEx0FXhKS7L3I8xH/Ds18c4OTLU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPtNwzFuvqVbSGPdbVBa+P9g1q4FBWG6ZMab+HVhb8jrmwP6lR
	3WVHRyNidM3W28fiBZU9KEPVZgDu/Va7WSrvzws7xJ8jk53xoFBPPisLOuELbSI=
X-Gm-Gg: ASbGnctlr+dubNiyYpT/AxAtjw6wvKBKoM4YiUNJmkgdJAm3GDCPwDNkiJtdFMOgg+E
	QZ1Slbl+bDMMs4V5vwc9mNaRF8vh00HR2Exi/zUsMqW26YMf+JTVqvjuWLPJw/nriQZLw3h5MNI
	G4UvevHgQwURjG1dWL45h7UwNn/N8jiHWOmV2L2Mn1SqzT7CywxQ1y31Q3LJu6G2amHm6n1JMCv
	v3dw1subnWBCaVdwTjiVOayaSkH7JUhHm0QVDMUzLyBR2qajZwzQWcURsIZQCY0OYQ7ForzEIZ0
	Xs12ZfGG2i1g
X-Google-Smtp-Source: AGHT+IHABCA1twmo5B/jTFqarTk4NrXkcn2dcRSLuTG60RnJkB+maGOU6Jc08/RS/eKNQfJFB1pNGw==
X-Received: by 2002:a05:6830:dc7:b0:71d:57e9:1d9b with SMTP id 46e09a7af769-71d65c8a4a3mr9042534a34.8.1732806464144;
        Thu, 28 Nov 2024 07:07:44 -0800 (PST)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com. [209.85.160.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71d72428797sm346169a34.1.2024.11.28.07.07.42
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 07:07:42 -0800 (PST)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2965e10da1bso514876fac.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 07:07:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXPFU5yuxA8Eb9olRBe8n6KgtINuMT3FiRER2eHExj+KdhTKXxr7sA33ohzyqmRDp+/pBAPoXFQQ4Q=@lists.infradead.org
X-Received: by 2002:a05:6358:d39c:b0:1ca:9660:67db with SMTP id
 e5c5f4694b2df-1cab1692c19mr572203255d.23.1732806462023; Thu, 28 Nov 2024
 07:07:42 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-11-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-11-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 28 Nov 2024 16:07:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX9ZB5ec4g+Gs37U+oH4XPDv8DLoA63oxh4o8gj-N+sNw@mail.gmail.com>
Message-ID: <CAMuHMdX9ZB5ec4g+Gs37U+oH4XPDv8DLoA63oxh4o8gj-N+sNw@mail.gmail.com>
Subject: Re: [PATCH v2 10/15] phy: renesas: rcar-gen3-usb2: Add support for PWRRDY
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_070747_814659_910457AF 
X-CRM114-Status: GOOD (  25.24  )
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

SGkgQ2xhdWRpdSwKCk9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0IDEwOjIx4oCvQU0gQ2xhdWRpdSA8
Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8
Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4KPiBPbiB0aGUgUmVuZXNhcyBSWi9H
M1MgU29DLCB0aGUgVVNCIFBIWSBoYXMgYW4gaW5wdXQgc2lnbmFsIGNhbGxlZCBQV1JSRFkuCj4g
VGhpcyBzaWduYWwgaXMgbWFuYWdlZCBieSB0aGUgc3lzdGVtIGNvbnRyb2xsZXIgYW5kIG11c3Qg
YmUgZGUtYXNzZXJ0ZWQKPiBhZnRlciBwb3dlcmluZyBvbiB0aGUgYXJlYSB3aGVyZSBVU0IgUEhZ
IHJlc2lkZXMgYW5kIGFzc2VydGVkIGJlZm9yZQo+IHBvd2VyaW5nIGl0IG9mZi4KPgo+IFRoZSBj
b25uZWN0aW9uIGIvdyB0aGUgc3lzdGVtIGNvbnRyb2xsZXIgYW5kIHRoZSBVU0IgUEhZIGlzIGlt
cGxlbWVudGVkCj4gdGhyb3VnaCB0aGUgcmVuZXNhcyxzeXNjLXNpZ25hbCBkZXZpY2UgdHJlZSBw
cm9wZXJ0eS4gVGhpcyBwcm9wZXJ0eQo+IHNwZWNpZmllcyB0aGUgcmVnaXN0ZXIgb2Zmc2V0IGFu
ZCB0aGUgYml0bWFzayByZXF1aXJlZCB0byBjb250cm9sIHRoZQo+IHNpZ25hbC4gVGhlIHN5c3Rl
bSBjb250cm9sbGVyIGV4cG9ydHMgdGhlIHN5c2NvbiByZWdtYXAsIGFuZCB0aGUgcmVhZC93cml0
ZQo+IGFjY2VzcyB0byB0aGUgbWVtb3J5IGFyZWEgb2YgdGhlIFBXUlJEWSBzaWduYWwgaXMgcmVm
ZXJlbmNlLWNvdW50ZWQsIGFzIHRoZQo+IHNhbWUgc3lzdGVtIGNvbnRyb2xsZXIgc2lnbmFsIGlz
IGNvbm5lY3RlZCB0byBib3RoIFJaL0czUyBVU0IgUEhZcy4KPgo+IEFkZCBzdXBwb3J0IGZvciB0
aGUgUFdSUkRZIHNpZ25hbCBjb250cm9sLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpu
ZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgoKVGhhbmtzIGZvciB5b3VyIHBh
dGNoIQoKPiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4g
KysrIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+IEBAIC03MDcs
NiArNzE4LDU1IEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX2luaXRfYnVzKHN0cnVj
dCByY2FyX2dlbjNfY2hhbiAqY2hhbm5lbCkKPiAgICAgICAgIHJldHVybiByZXQ7Cj4gIH0KPgo+
ICtzdGF0aWMgdm9pZCByY2FyX2dlbjNfcGh5X3VzYjJfc2V0X3B3cnJkeShzdHJ1Y3QgcmNhcl9n
ZW4zX2NoYW4gKmNoYW5uZWwsIGJvb2wgcG93ZXJfb24pCj4gK3sKPiArICAgICAgIHN0cnVjdCBy
Y2FyX2dlbjNfcHdycmR5ICpwd3JyZHkgPSBjaGFubmVsLT5wd3JyZHk7Cj4gKwo+ICsgICAgICAg
LyogTi9BIG9uIHRoaXMgcGxhdGZvcm0uICovCj4gKyAgICAgICBpZiAoIXB3cnJkeSkKPiArICAg
ICAgICAgICAgICAgcmV0dXJuOwoKVGhpcyBjYW5ub3QgaGFwcGVuPwoKPiArCj4gKyAgICAgICBy
ZWdtYXBfdXBkYXRlX2JpdHMocHdycmR5LT5yZWdtYXAsIHB3cnJkeS0+b2Zmc2V0LCBwd3JyZHkt
Pm1hc2ssICFwb3dlcl9vbik7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHJjYXJfZ2VuM19waHlf
dXNiMl9wd3JyZHlfb2ZmKHZvaWQgKmRhdGEpCj4gK3sKPiArICAgICAgIHJjYXJfZ2VuM19waHlf
dXNiMl9zZXRfcHdycmR5KGRhdGEsIGZhbHNlKTsKPiArfQo+ICsKPiArc3RhdGljIGludCByY2Fy
X2dlbjNfcGh5X3VzYjJfaW5pdF9wd3JyZHkoc3RydWN0IHJjYXJfZ2VuM19jaGFuICpjaGFubmVs
KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBjaGFubmVsLT5kZXY7Cj4gKyAg
ICAgICBzdHJ1Y3QgcmNhcl9nZW4zX3B3cnJkeSAqcHdycmR5Owo+ICsgICAgICAgc3RydWN0IG9m
X3BoYW5kbGVfYXJncyBhcmdzOwo+ICsgICAgICAgaW50IHJldDsKPiArCj4gKyAgICAgICBwd3Jy
ZHkgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnB3cnJkeSksIEdGUF9LRVJORUwpOwo+ICsg
ICAgICAgaWYgKCFwd3JyZHkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ICsK
PiArICAgICAgIHJldCA9IG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKGRldi0+b2Zfbm9kZSwg
InJlbmVzYXMsc3lzYy1zaWduYWwiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIiNyZW5lc2FzLHN5c2Mtc2lnbmFsLWNlbGxzIiwgMCwgJmFyZ3MpOwo+ICsgICAg
ICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4gKyAgICAgICBw
d3JyZHktPnJlZ21hcCA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChhcmdzLm5wKTsKPiArICAgICAg
IHB3cnJkeS0+b2Zmc2V0ID0gYXJncy5hcmdzWzBdOwo+ICsgICAgICAgcHdycmR5LT5tYXNrID0g
YXJncy5hcmdzWzFdOwo+ICsKPiArICAgICAgIG9mX25vZGVfcHV0KGFyZ3MubnApOwo+ICsKPiAr
ICAgICAgIGlmIChJU19FUlIocHdycmR5LT5yZWdtYXApKQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gUFRSX0VSUihwd3JyZHktPnJlZ21hcCk7Cj4gKwo+ICsgICAgICAgY2hhbm5lbC0+cHdycmR5
ID0gcHdycmR5Owo+ICsKPiArICAgICAgIC8qIFBvd2VyIGl0IE9OLiAqLwo+ICsgICAgICAgcmNh
cl9nZW4zX3BoeV91c2IyX3NldF9wd3JyZHkoY2hhbm5lbCwgdHJ1ZSk7Cj4gKwo+ICsgICAgICAg
cmV0dXJuIGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChkZXYsIHJjYXJfZ2VuM19waHlfdXNiMl9w
d3JyZHlfb2ZmLCBjaGFubmVsKTsKPiArfQoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAg
ICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxv
dHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNv
bmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEg
aGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJw
cm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
