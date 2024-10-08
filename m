Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDF10CEFC21
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 15:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFLWkzXW5/byHoH+3ixzsVNjRN90hUMKYA7HIVVlOuI=; b=ivVC3hR4MS2jx0
	WoJ2b0RlEOel18gPzduJhttZyi4rxW+E4mzA5tlqs79U35XkwPM088mQ0NHRjbboAhI51tcTaEfg4
	zqNEbMLAKFj1t+mOL8F0ZDCq5tGeZE6wl4fgoTfRU/8srqdzXXhAoLZ+bZiqA6WIf9onIuYyCJNcH
	HweYCud0m6RmsVkH1EftskYXjSW023qBnfw6BPnhLSyMlpy6dgKlxc0CRs5hOKr748zxSMVp+AQUE
	dnZTO0PlQ/MD/PHP+/0WCZ7ni7fL5weBVqkDXkr9Rsu68Bv+AWP4NyI++dhgBHShUHDgU4PVrTIVK
	ooHz9Sxzv/j1N/8TFPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBm1-00000006Iqi-2UUA;
	Tue, 08 Oct 2024 15:05:17 +0000
Received: from mail-yw1-f180.google.com ([209.85.128.180])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBfp-00000006HAh-23jL;
	Tue, 08 Oct 2024 14:58:54 +0000
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6e23aa29408so61269287b3.0;
        Tue, 08 Oct 2024 07:58:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728399532; x=1729004332;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jxaihGwbTtAV9yGq87IxyRn8GIrOBfrfil37CC7c/NQ=;
        b=p2NCX7M2f29grGQZJOtIxZSS4oV27H4i+atXYVEg5QdSuUTvvCBZYlTN6F1vPOpI43
         JN7K8SDbZAKK9FbYfcb4W5FY9VB3/5SIh3qYFsaHRoH+TjoODYjE5U815CiRVh951sp9
         DK6vC/STrsFF8pZ0NyYI+sHZ4nvTcGQraaKp6dd+7/+ylFW0M2Tq0h5VqzDcrOiQGLmu
         Z/9YT65/WiwGxcoG8SfYPaJZ18vgGENHf6b//G7Novpv0V7R0t3SxcaTvNZDqtOcWrMf
         qXAJTwZy1Uo5+5WtYvm7oP+pdw5sMUTbXXbV708QlVx7OJ+2JsbwwG2uX+TTbKWyigJ1
         sqUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRQwA60xAi741FCDYiTD7tyLaZWDdVoLB2t2w8qZ9DEVOvGO+tRjFQZbSmKStgpdukv/YdSXblowhz@lists.infradead.org, AJvYcCVct6mLYGdUPwt8c/1+AjTj8oYyjv8St9dBjXIcHnwmhBJyTQTaZil5fcQIx7uhynxHENB4s7qM8cuHZqWTrxCj@lists.infradead.org
X-Gm-Message-State: AOJu0YwWDGSS7+I3jIf3H6rwid3qa+3Npf+iU5/wm6aof8Easbpnxe+m
	YHmDwSkHke3Y+R5b8Wk5WGWZIRSY2wPAEhfiOwOLFEaJwAVOUkG2ViRAVklP
X-Google-Smtp-Source: AGHT+IEi4HWlDwYGMsFKZwe2r0qmj1QlZFKQg4wS+R/3kVBRGG2MHfNh36MzeqylG3GebaULrlLEkw==
X-Received: by 2002:a05:690c:d05:b0:6e3:ceb:9e49 with SMTP id 00721157ae682-6e30dface7cmr30117417b3.16.1728399532216;
        Tue, 08 Oct 2024 07:58:52 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d926ad11sm14673697b3.1.2024.10.08.07.58.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 07:58:50 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6dbc5db8a31so42416877b3.1;
        Tue, 08 Oct 2024 07:58:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUEu7MwQ6ov0BGCneO15JM46cX+h8mSfRp6YDZ4YAspif/Yo1E/f8EtM+uuLdZUi+g52n4zK/S56sN3pnCaNIpS@lists.infradead.org, AJvYcCXCrEio3zbI+pmNfBUSaqcSnHgPUspmh/sKn56tinJk6OEeN2Lc4CJXwyXypa5ZhFjgxudSUKOIlf81@lists.infradead.org
X-Received: by 2002:a05:690c:a88:b0:664:74cd:5548 with SMTP id
 00721157ae682-6e30de97175mr30204477b3.1.1728399529367; Tue, 08 Oct 2024
 07:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 16:58:37 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWTxeE1SRKrUatjZ7VE=4JHs_OrFZJ85VsdVanewc1-Tw@mail.gmail.com>
Message-ID: <CAMuHMdWTxeE1SRKrUatjZ7VE=4JHs_OrFZJ85VsdVanewc1-Tw@mail.gmail.com>
Subject: Re: [PATCH 11/16] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S
 phy bindings
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_075853_548377_BC4ED159 
X-CRM114-Status: GOOD (  15.37  )
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

T24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENsYXVkaXUgPGNsYXVkaXUuYmV6bmVh
QHR1eG9uLmRldj4gd3JvdGU6Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVh
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gRG9jdW1lbnQgdGhlIFJaL0czUyBQSFkgYmluZGluZ3Mu
IFRoZSBSWi9HM1MgVVNCIFBIWSBpcyBhbG1vc3QgaWRlbnRpY2FsCj4gd2l0aCB0aGUgUlovRzJM
IFVTQiBQSFkuIFRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgdGhlcmUgaXMgYSBoYXJkd2FyZQo+IGxp
bWl0YXRpb24gb24gdGhlIG1heCBidXJzdCBzaXplIHVzZWQgd2hlbiB0aGUgQlVTIG1hc3RlciBp
bnRlcmZhY2UKPiBpc3N1ZXMgYSB0cmFuc2ZlciByZXF1ZXN0IGZvciBSWi9HM1MgdGhhdCBpcyBj
b25maWd1cmVkIHRob3VnaCBQSFkKPiByZWdpc3RlcnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1
ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+CgpSZXZpZXdlZC1i
eTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGpl
LGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0
ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxp
bnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBl
b3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
