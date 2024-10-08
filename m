Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88335CEF173
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgGfU0K7YSYFzBnwXfudLr3kRQIYi2eWqxMPgrrZ7d0=; b=hfiVQBidv+fVyh
	830FB4Uz+XJWFg6up0wzZWGK4W6EpjgjA1CHWYXghKyz08s+EfYVGhMhS9fueUc1LefFlB9J568Qq
	M8zlGlRgI1bx9KBDMaCfOmx3wnrtac6/V0YBYNXn6xJTfh+RTaj2W9DviVqyVX8IQ0rWuLEc1wEl7
	TL3qWB1idUqBcg/g8kQI4GlAHoSPlzap0N2M3IZqgrppMUrWMj0EPozwGJO1z4LiG9M6AODXKKcgW
	Cg7uj90u2GjTpJ3JB7tbuaT/fBDs7yY0IAVRTsXPBDtKlbqH3ZsBzSVB5UrnihKLuJsGrw2BfPKKV
	2yahHusqZU0Fp0QbdSIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syAfs-000000064wU-2n8B;
	Tue, 08 Oct 2024 13:54:52 +0000
Received: from mail-yw1-f180.google.com ([209.85.128.180])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syAfq-000000064ua-0BB6;
	Tue, 08 Oct 2024 13:54:51 +0000
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6e25f3748e0so57073787b3.0;
        Tue, 08 Oct 2024 06:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728395688; x=1729000488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L3uCZskBH2tXjyYuhmNFj34NCuiW42SvvJ2N3l6bLtk=;
        b=VzZS2Du+mu1ZUB/RNu6outVHp7Mvp4Nv4SHkF1oMEvFRRL7C2M548qwg1ZnPKl3j2H
         mAtiJeCTIqPdYPFbmd623A3wizz+HSQgw08n/6X8IWJe2+RJhSVrZ68TXE6l1jn9u9x1
         NmV74ltgOouH1gk7S9RJUKtMrgBMk88937sNp1/oWUwcCb30LYc6wSdToBLWjYpL2Iuy
         162KMh7azkw0Ju2HFtwq31f08xFojxIXeP/alFDAvzR6PLb49HxzbxR+7INawnQHgqbX
         5i9o+fWr6XXursdpYck32AskuZqQC/uk9qa7a9OFq/YSmXx4HI3hAIh9Z4xoo/6TJx4l
         B8gg==
X-Forwarded-Encrypted: i=1; AJvYcCVH7drO/JRIF9oJyX5L2P04RaP3YHUICNmlFIznaVGit0EkYzRYWhuAcLq1gGC//Vhu3+Cc0HWqqfa5@lists.infradead.org, AJvYcCVveVrEB2f+E6tpGxZF5ZW2He1oUHlO5I5YyWSMqmL1o5kLjKbjvIh4aFRFO/z6hAPmBBuWbN/DiOn/u3hQEoex@lists.infradead.org
X-Gm-Message-State: AOJu0YwBWLSwk16HzGxxg4T129X7O3t7tE+k5G6dlsLRjkPpJKq9VAto
	aX/q8SKw+WFdDBBX1rDlWT800mHEeGTQ4Y6M2jyFEY1T87iFDtl2T7zWEXTh
X-Google-Smtp-Source: AGHT+IGv3vOgCfCHUhzRAUTaiUco2o9H7xLzWzARxQXbc0/+vOZq+5hFy4aI1zQ4fgjwDICRVPuy4A==
X-Received: by 2002:a05:690c:92:b0:6e2:f1d9:38eb with SMTP id 00721157ae682-6e2f1d93bc3mr68434517b3.30.1728395687735;
        Tue, 08 Oct 2024 06:54:47 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d93f7d31sm14289477b3.135.2024.10.08.06.54.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 06:54:46 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6e25f3748e0so57072877b3.0;
        Tue, 08 Oct 2024 06:54:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUVr+Z38SQ32SxKaRxdX06+wFR1L+7VgPt7lOaBTuSgPNM79KInOp2irc170EEfLjhAoKsM3if3wNmseYfuTY4z@lists.infradead.org, AJvYcCXUpQwlbq5YgFLwJ95rIhHbxaTAu03fnW2nYJzoj1f9O2Nt1C7hRJTtq9BaERktg29H0415UI5n66dR@lists.infradead.org
X-Received: by 2002:a05:690c:6ac8:b0:6de:a3:a7ca with SMTP id
 00721157ae682-6e2c728a25fmr119511907b3.32.1728395685683; Tue, 08 Oct 2024
 06:54:45 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVQsHx0nC3xwQWVRWyWMnbXd1=RokNn8rkJv3bfG_0p-A@mail.gmail.com> <23531a70-cf50-4b32-a9fd-81e6cfcbcf9d@tuxon.dev>
In-Reply-To: <23531a70-cf50-4b32-a9fd-81e6cfcbcf9d@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 15:54:33 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWakggcbrBetKht+JHB5F+fxoi9U-oJMMq=ythUOqtYkA@mail.gmail.com>
Message-ID: <CAMuHMdWakggcbrBetKht+JHB5F+fxoi9U-oJMMq=ythUOqtYkA@mail.gmail.com>
Subject: Re: [PATCH 04/16] soc: renesas: Add SYSC driver for Renesas RZ/G3S
To: claudiu beznea <claudiu.beznea@tuxon.dev>
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
X-CRM114-CacheID: sfid-20241008_065450_109629_2776C6B7 
X-CRM114-Status: GOOD (  25.97  )
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

SGkgQ2xhdWRpdSwKCk9uIFdlZCwgU2VwIDI1LCAyMDI0IGF0IDk6NTDigK9BTSBjbGF1ZGl1IGJl
em5lYSA8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiBPbiAyNC4wOS4yMDI0IDE0
OjMyLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBUaHUsIEF1ZyAyMiwgMjAyNCBh
dCA1OjI44oCvUE0gQ2xhdWRpdSA8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiA+
PiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+
Cj4gPj4KPiA+PiBUaGUgUlovRzNTIFNZUyBDb250cm9sbGVyIGhhcyAyIHJlZ2lzdGVycyAob25l
IGZvciBQQ0lFIG9uZSBmb3IgVVNCKSB0aGF0Cj4gPj4gbmVlZCB0byBiZSBjb25maWd1cmVkIGJl
Zm9yZS9hZnRlciBwb3dlcmluZyBvZmYvb24gdGhlIFBDSSBvciBVU0IKPiA+PiBhcmVzLiBUaGUg
Yml0cyBpbiB0aGVzZSByZWdpc3RlcnMgY29udHJvbCBzaWduYWxzIHRvIFBDSUUgYW5kIFVTQiB0
aGF0Cj4gPj4gbmVlZCB0byBiZSBkZS1hc3NlcnRlZC9hc3NlcnRlZCBhZnRlci9iZWZvcmUgcG93
ZXIgb24vb2ZmIGV2ZW50LiBGb3IgdGhpcwo+ID4+IGFkZCBTWVNDIGNvbnRyb2xsZXIgZHJpdmVy
IHRoYXQgcmVnaXN0ZXJzIGEgcmVzZXQgY29udHJvbGxlciBkcml2ZXIgb24KPiA+PiBhdXhpbGlh
cnkgYnVzIHdoaWNoIGFsbG93cyBVU0IsIFBDSUUgZHJpdmVycyB0byBjb250cm9sIHRoZXNlIHNp
Z25hbHMuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5i
ZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHBhdGNoIQo+
ID4KPiA+PiAtLS0gL2Rldi9udWxsCj4gPj4gKysrIGIvZHJpdmVycy9yZXNldC9yZXNldC1yemcz
cy1zeXNjLmMKPiA+PiBAQCAtMCwwICsxLDE0MCBAQAo+ID4+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMAo+ID4+ICsvKgo+ID4+ICsgKiBSZW5lc2FzIFJaL0czUyBTWVNDIHJl
c2V0IGRyaXZlcgo+ID4+ICsgKgo+ID4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjQgUmVuZXNhcyBF
bGVjdHJvbmljcyBDb3JwLgo+ID4+ICsgKi8KPiA+PiArCj4gPj4gKyNpbmNsdWRlIDxsaW51eC9h
dXhpbGlhcnlfYnVzLmg+Cj4gPgo+ID4gVXNpbmcgdGhlIEF1eGlsaWFyeSBCdXMgcmVxdWlyZXMg
c2VsZWN0aW5nIEFVWElMSUFSWV9CVVMuCj4KPiBUaGFuayB5b3UgZm9yIHBvaW50aW5nIGl0LiBJ
J2xsIGFkanVzdCBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLCBpZiBpdCB3aWxsCj4gYmUgb25lLgoK
VGhhbmtzLCB0aGUgcmVzdCBMR1RNLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAg
ICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMg
b2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFs
IGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFj
a2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9n
cmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
