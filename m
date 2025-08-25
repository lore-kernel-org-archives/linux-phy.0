Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40233CA0FEB
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 19:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mbw46mQNDEMAbAL4Lb3oq4LR0/8L9OI1QIiMW95P+w=; b=YRwixIdEqT0HQu
	dR9r4dMOWE6bqsR4Orn8FnbYKVUu0I92OJ10bzjRkJFbG2dbaTQhlCGNANLa/srRAgqiEH4flFmtP
	e+sTESizefTkpR1GlIpoNjh1CJB/qKoLpl/5+4XbD3adKrtbqO3xBaPTv7AuxT1GPR3jIw/jeaALU
	GIhinamarLd5uYT9mFwBTv0BhaUPsCCFB3oL4YyFhBe1W/WHars1hL4N1tZozWQj38gaLk9yQ909x
	KY9keoivkaLgl8WkASPw+7XFwaP78IMSqCfo9lmWQmzCCTNsAdOAB2jdkNae4m0cAC+BKkrUj98yH
	/wGOctHBKyPvLPZXOYpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqcY7-00000009AgP-04sj;
	Mon, 25 Aug 2025 19:08:11 +0000
Received: from mail-lf1-f54.google.com ([209.85.167.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqZK8-00000008YAb-1wPU;
	Mon, 25 Aug 2025 15:41:33 +0000
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-55f474af957so877006e87.1;
        Mon, 25 Aug 2025 08:41:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756136488; x=1756741288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lf0SerB/BddtiPRZt6oTCzK0uyEGO4TRGC1HhfQpBU4=;
        b=MzpSnoSCb2c3awzqLSzVATIihLmNMhzUzAb73CQ2fyVxtmBxSDXB8FxsKPr79Yc7U0
         nzxSCbxQUbrgOLptJv9wUeUIKxtT6qRvVaPG2OujoEu211eB8LFf1l3/EQddfhNWXWE3
         ComLM8YOR3kibAM6RbzIQvRTUsQyhIBC1eqWYEXguiAIvvJLmf2UHo0dQA3T+v0EWeeH
         swy25rb3EHub5zgjfGKzzm3H+PaMYxpTkgBg613YGL3vmmq0tVOCAYkQ++o9mWw9oykX
         gvhwppqBjvxlSWH+LQz/7uBsrDYFfWWUcInFI6ZpN/rxdgpdK/bpp0cLnPWuZXwkzXzB
         wOWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAwnOCggWxXjAH8k7p7GtK/H/KA2RE9ulrNVsWXR7Qz6Inzhelkmjf38uc6/A+AXlnbCAfveu+kieH@lists.infradead.org, AJvYcCWE8krUHpSEo8ZbWOkFPyxt01J9rB6EwRUpCvXQ0KGlK6yIamF4Uck/uwdarEJoQ6ioHdf3h5M6aw5sWQuxcM+E@lists.infradead.org
X-Gm-Message-State: AOJu0YwiXB2MaF8L07up9L6Ww9OO9CroIRXLSlzx7DUjfbqckBp5r6pi
	Rhx9c8It17o32aj0jChfd/0QIlCNxmcPA1hMOmQfJZacFxai3Mc9a8IURDe3i3xkHZs=
X-Gm-Gg: ASbGncsSEaf2TwcWwG/UfqvZa9rwjE2CPI6wn0hfiGTgeFsOpsJm6aIrCT5de3lkJCI
	h9SEXEAmzCC0SnslSWctIaY8H6Y3TpidABzuN/DXsF+YBkfcg+KDturP5OUkKX60t0/+zNF4Why
	FAVaOacSk7Bfxdb92gwOZFewJUaR4qwP258LFZqlUftCbuFTECGOW2IXEtam6khjnP//ckMsIYH
	WkaLbEo9rYcNaKed9SZVooVlIEkjFqWnbeLTsjlpe3aH4SS8YHYMBJPj/joZnflOcFLYvIlc3Xr
	Cqia8ZBiaBl94WEqfHtAYpotc+6mRLHgI22tDNmxys0zM+UjrtiC7pNbMetEejDTEIrHGJJukTh
	/tY87l+L0CaAmqqxlp4bLazYs7zSePOHq2O87NxH8GQavWGDuj3tUky71gcYgmBchFQ==
X-Google-Smtp-Source: AGHT+IG8158U2K9Ozy3WV6WZwFe7PtbroYoB3Nd5ASdb6zhCw8TXMYk7xHi1mJPEMFGtGSgGbEKsig==
X-Received: by 2002:a05:6512:6506:b0:55b:8f9d:4d00 with SMTP id 2adb3069b0e04-55f0c6a09f2mr3635185e87.3.1756136487908;
        Mon, 25 Aug 2025 08:41:27 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c8bc72sm1686165e87.79.2025.08.25.08.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 08:41:24 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-33670e8c975so9674501fa.3;
        Mon, 25 Aug 2025 08:41:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUOYEP8gV3efo3prY6Ij1fLTKPb3Dr7ycwB1Q/GNe/MgYf6k7r+bOJU+Fkx62rXMWclmz4izlYPhadn@lists.infradead.org, AJvYcCW/LgcAqQpR6QqlI9i5gok8/qlagdjgSRR5fZm7Appgyo7jmpf7GZ3k9ZzqIz+TE8GzFc1sBujKV7yhaMoA9PaP@lists.infradead.org
X-Received: by 2002:a05:651c:31c5:b0:333:b656:a685 with SMTP id
 38308e7fff4ca-33650e3812dmr36899791fa.1.1756136484611; Mon, 25 Aug 2025
 08:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250816084700.569524-1-iuncuim@gmail.com> <20250816084700.569524-6-iuncuim@gmail.com>
 <20250816144936.3f2738cc@minigeek.lan>
In-Reply-To: <20250816144936.3f2738cc@minigeek.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 25 Aug 2025 17:41:12 +0200
X-Gmail-Original-Message-ID: <CAGb2v64vMvs+UN4AJWZAGnU+ZQRBQBheqnRKzbMmd10UMdOxCw@mail.gmail.com>
X-Gm-Features: Ac12FXyXTRSXu5z7cM1Z4ILcGzs0omRgBCqYp8gycWr1OzOdi7Cz8MsXeBWG_GU
Message-ID: <CAGb2v64vMvs+UN4AJWZAGnU+ZQRBQBheqnRKzbMmd10UMdOxCw@mail.gmail.com>
Subject: Re: [PATCH 5/7] arm64: dts: allwinner: a523: add USB3.0 phy node
To: Andre Przywara <andre.przywara@arm.com>
Cc: iuncuim <iuncuim@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_084132_506282_C2167E8F 
X-CRM114-Status: GOOD (  24.91  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBBdWcgMTYsIDIwMjUgYXQgMzo1MuKAr1BNIEFuZHJlIFByenl3YXJhIDxhbmRyZS5w
cnp5d2FyYUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIFNhdCwgMTYgQXVnIDIwMjUgMTY6NDY6NTgg
KzA4MDAKPiBpdW5jdWltIDxpdW5jdWltQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+ID4g
RnJvbTogTWlraGFpbCBLYWxhc2huaWtvdiA8aXVuY3VpbUBnbWFpbC5jb20+Cj4gPgo+ID4gQWZ0
ZXIgYWRkaW5nIHRoZSBwaHkgZHJpdmVyLCB3ZSBjYW4gYWxzbyBhZGQgcGh5IG5vZGUuIEluIGFk
ZGl0aW9uIHRvIHRoZQo+ID4gY2xrIGFuZCByZXNldCBsaW5lcywgdGhlIHBvd2VyIGRvbWFpbiBQ
RF9QQ0lFIGlzIGRlY2xhcmVkIGluIHRoaXMgbm9kZQo+ID4gYWNjb3JkaW5nIHRvIHRoZSBic3Ag
ZHRiLiBTbyBsZXQncyBtZW50aW9uIGl0Lgo+ID4gQ3VycmVudGx5LCBwaHkgZHJpdmVyIGRvZXMg
bm90IHN1cHBvcnQgcm9sZSBzZWxlY3Rpb24gYW5kIG9ubHkgd29ya3MgaW4KPiA+IFVTQjMuMCBt
b2RlLgo+Cj4gVGhhdCdzIHRoZSBjdXJyZW50IGxpbWl0YXRpb24gb2YgdGhlIHByb3Bvc2VkIExp
bnV4IGRyaXZlciwgYnV0IHNob3VsZAo+IG5vdCBhZmZlY3QgdGhlIGJpbmRpbmcgb3IgRFQ6Cj4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWtoYWlsIEthbGFzaG5pa292IDxpdW5jdWltQGdtYWls
LmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjU1aS1h
NTIzLmR0c2kgfCAxMCArKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTVpLWE1MjMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjU1aS1h
NTIzLmR0c2kKPiA+IGluZGV4IGU0ZWQ0ZmE4Mi4uMjMzMzY1NDk2IDEwMDY0NAo+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTVpLWE1MjMuZHRzaQo+ID4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTVpLWE1MjMuZHRzaQo+ID4gQEAgLTYw
Niw2ICs2MDYsMTYgQEAgbWRpbzA6IG1kaW8gewo+ID4gICAgICAgICAgICAgICAgICAgICAgIH07
Cj4gPiAgICAgICAgICAgICAgIH07Cj4gPgo+ID4gKyAgICAgICAgICAgICBjb21ib3BoeTogcGh5
QDRmMDAwMDAgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lu
bmVyLHN1bjU1aS1hNTIzLXVzYjMtcGNpZS1waHkiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHJlZyA9IDwweDA0ZjAwMDAwIDB4MTAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBj
bG9ja3MgPSA8JmNjdSBDTEtfVVNCMz47Cj4KPiBXaWxsIHdlIG5lZWQgbW9yZSBjbG9ja3MgKG9y
IHJlc2V0cykgd2hlbiBzdXBwb3J0aW5nIFBDSWUgbGF0ZXI/IElmCj4geWVzLCB3ZSBzaG91bGQg
YWRkIHRoZW0gYWxyZWFkeSBub3csIGV2ZW4gaWYgdGhleSBhcmUgbm90IHVzZWQgYnkgdGhlCj4g
Y3VycmVudCBkcml2ZXIuCj4KPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8JmNj
dSBSU1RfQlVTX1BDSUVfVVNCMz47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgI3BoeS1jZWxs
cyA9IDwwPjsKPgo+IEkgdGhpbmsgd2Ugc2hvdWxkIHVzZSBvbmUgUEhZIGNlbGwgaGVyZSwgdG8g
YWxsb3cgdXNlcnMgdG8gc2VsZWN0IHRoZQo+IFBIWSBwYXRoIHRoZXkgbmVlZC4gQSBVU0IzLjAt
b25seSBkcml2ZXIgaW1wbGVtZW50YXRpb24gY291bGQgY2hvb3NlIHRvCj4gaWdub3JlIGl0LCBv
ciByZXF1aXJlIHRoZSBudW1iZXIgdG8gYmUgMCBvbmx5LCByZWplY3RpbmcgYW55dGhpbmcgZWxz
ZS4KPiBCdXQgdGhpcyB3YXkgd2Uga2VlcCBjb21wYXRpYmlsaXR5IHdpdGggbmV3ZXIgRFRzLgoK
QWdyZWVkLiBJdCBzZWVtcyB0aGlzIGlzIHRoZSBjb21tb24gY2FzZSBmb3IgY29tYmluZWQgUEhZ
cy4gVGhlIGxhc3QKY2VsbCB0ZWxscyB3aGljaCB0eXBlIG9mIFBIWSBpcyB0byBiZSB1c2VkLgoK
Q2hlbll1Cgo+IENoZWVycywKPiBBbmRyZQo+Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcG93
ZXItZG9tYWlucyA9IDwmcGNrNjAwIFBEX1BDSUU+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiArICAgICAgICAgICAgIH07Cj4gPiArCj4gPiAgICAg
ICAgICAgICAgIHBwdTogcG93ZXItY29udHJvbGxlckA3MDAxNDAwIHsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41NWktYTUyMy1wcHUiOwo+ID4g
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDA3MDAxNDAwIDB4NDAwPjsKPgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
