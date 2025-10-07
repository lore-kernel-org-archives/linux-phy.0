Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62873CCA476
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 18:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGrSLOdeKiXVj8a13uBSU3qBq2TT+3t8kMSTmTSWzmQ=; b=xM7RtP8WEY5N14
	Wi4SovgpY/YcO3vwXTV5xhW2QEhWyV9TQV5aRzol1TOEgPgtXAllDzvTAdkKjq7dR9iZHqmKrnWVO
	FXTDmfGRpZuUv1EQEUmP+XNLc98usXWiJLUjnf+xD+a8jWAs4p1w8bj0ifDz1Iq11aMGLB66Oisvp
	zm7ANa/DTOmOQPs5xv93KLuMuHCZ9OLeZ0rRDDVzHib2NUhThSNy/sJ2Mtk0kf4tOzdDyJoLLP3h0
	8VHa3Pl9PCzQlIH9Xwj3Bacu+6NsmTaungrMgPboGHY8qyeLB3Ld7ZPbouFuhtoZfw3BvFYotQqLE
	NGUn2wL1wE2ZSTIThqng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CtQ-00000002dfO-0SRC;
	Tue, 07 Oct 2025 18:58:36 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CtN-00000002deM-2JzZ
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 18:58:34 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-78f30dac856so62432816d6.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 11:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759863512; x=1760468312; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JE/QqWs7NstXUoklYPWJg7vwj5OuQDSlnmUz+8GLmcA=;
        b=RW2bRbwxwFm7Bghm8MKgAgtTAOIy5ZV/wOkvk8+DUNzl4EdGahXXRhWYL2t69Sz77B
         Nv5uKlR3Xkoxkeen3TjA/pFb+cpB22JeYYXKyuE38pbkF8T6lcFPTOd2jKw0Z1lw+N5o
         AJSG0Fz08e4ZzNsXYMfCnW9dPoPVtFbD9LwS3PI1JWtpwlfmE3harpfbf0KIEMACUJhE
         wcIk7NZIz9PmuvQ3ylvrFW3LbXSagNqdvSaAuWyjCkZgdgLTQeAk9V8e4TaHmbb/XN9Q
         WATmwCVwENsjIQzK5S6Btsuoh7wPoLTKOJCu38xtxaacH0DelTKCLWkJU76onL2LNRYT
         IUEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759863512; x=1760468312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JE/QqWs7NstXUoklYPWJg7vwj5OuQDSlnmUz+8GLmcA=;
        b=H1RfZGIAk8aC/VQBQ0nfAFQHRQcHGE9W03JIioOSAg9SsE7X+FxncUPEuQBQqaB2Zg
         V4oQuTl0jPI3vQ3OAtMWGRLMJZuJHFamyuLRSpdOHuiA16i24eyATQhx3tJfmE5TsrOB
         OABzuWdF/yB0+wwepypLJWWnZ7i25uMU/+sDHnBOibOBv08P6J57S7AQ0GSpm6J/lgAp
         MMZOiWmyMox505bvzb/DDqXHiEXweyyamPr4GpE2fq7GPZIRnAINFJR3q/jSkGfLbsKX
         2nGH2N1AsPp4y5bKz10uRiBacN7bCDlAU1yyfpp4bEW/XUAbgv5p1a1qKcAqEpDRAbIk
         jJMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCLTI3N5pMO2VR6aTew2DfkbWylCXVeMfcEPtFzOZ/4EykP3SRup9lv3dBVBHua4GLLXCSEADs2zQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7CihXEhgQkESBnYfdt8ZxKwVr9HF9xSVcf7Cc7bzWnrcaZ2Qx
	uuPXRRbbwvRtS6lkv4pt4DRj5+mzvBSDlVqOhq94DuBKyt8aVqu4howJKo17VMCHcgRIX1EsTuV
	EFM3Ks0QYIR5Eay3563LYZULLlQnE/QY6ayOGzao9
X-Gm-Gg: ASbGncsLG2hB8VhSCJlhzaeGFN+K0i1KpEFrv7cMKh2SJ2JEXDfikIjDh/yXVSDywhl
	zu61L0XWLCZmX9AyK0Y0Q8pvjZXeorcN5HesaTSXgfTV3wTVwFyiAuwfOX4F1IAxZMa2BaqwUai
	q+CdA3yDhhjHqvRAwF/i/HJAOVBghxNmq/j9P+5MnCtvyV0kEpRmGrreBM6Fj25eyh1EhTPnP2o
	YkBcDTjHDAkv00rAvFrAP9h7VSKGQR+j5xnCfB69s55vqHyvd/8uLodnNLnJslLA3DIHE6Qvayn
	XfI=
X-Google-Smtp-Source: AGHT+IFJCSvibVVpHo9SVA1MQuL2njqF7Hz3TZEHv6SusAWE3ZVPz/ickNfrrHhzv+YbaQGGtkgTfVD3qAa0FKJd9d4=
X-Received: by 2002:a05:6214:21a1:b0:786:5ae7:7846 with SMTP id
 6a1803df08f44-87b2efb9e09mr7131866d6.32.1759863511911; Tue, 07 Oct 2025
 11:58:31 -0700 (PDT)
MIME-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com> <20251006232125.1833979-4-royluo@google.com>
 <2025100735-gulf-error-2ce2@gregkh>
In-Reply-To: <2025100735-gulf-error-2ce2@gregkh>
From: Roy Luo <royluo@google.com>
Date: Tue, 7 Oct 2025 11:57:55 -0700
X-Gm-Features: AS18NWCmw4sozhJ6PiheC0IEychcx5yjcq3OEgXWnrhYT0U6wZ0e0y1txxXckvE
Message-ID: <CA+zupgz-RQ=vNCBTy5yaaP9xJFpeFw+xLJYuvtjct6iuh6zD2g@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] usb: dwc3: Add Google SoC USB PHY driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_115833_597259_7B4DD204 
X-CRM114-Status: GOOD (  16.42  )
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

T24gTW9uLCBPY3QgNiwgMjAyNSBhdCAxMDo1MeKAr1BNIEdyZWcgS3JvYWgtSGFydG1hbgo8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBPY3QgMDYsIDIwMjUg
YXQgMTE6MjE6MjRQTSArMDAwMCwgUm95IEx1byB3cm90ZToKPiA+IFN1cHBvcnQgdGhlIFVTQiBQ
SFkgZm91bmQgb24gR29vZ2xlIFRlbnNvciBTb0NzLgo+Cj4gVGhhdCdzIGdyZWF0LCBidXQgdGhh
dCdzIG5vdCB3aGF0IHlvdXIgc3ViamVjdCBsaW5lIHNheXMgKGl0IHNheXMgInVzYjoKPiBkd2Mz
IikKCldpbGwgY2hhbmdlIHRoZSB0aXRsZSBwcmVmaXggdG8gcGh5IGluIHRoZSBuZXh0IHBhdGNo
c2V0LgoKPgo+ID4gVGhpcyBwYXJ0aWN1bGFyIFVTQiBQSFkgc3VwcG9ydHMgYm90aCBoaWdoLXNw
ZWVkIGFuZCBzdXBlci1zcGVlZAo+ID4gb3BlcmF0aW9ucywgYW5kIGlzIHBhaXJlZCB3aXRoIHRo
ZSBTTlBTIERXQzMgY29udHJvbGxlciB0aGF0J3MgYWxzbwo+ID4gaW50ZWdyYXRlZCBvbiB0aGUg
U29Dcy4KPiA+IFRoaXMgaW5pdGlhbCBwYXRjaCBzcGVjaWZpY2FsbHkgYWRkcyBmdW5jdGlvbmFs
aXR5IGZvciBoaWdoLXNwZWVkLgo+ID4KPiA+IENvLWRldmVsb3BlZC1ieTogSm95IENoYWtyYWJv
cnR5IDxqb3ljaGFrckBnb29nbGUuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogSm95IENoYWtyYWJv
cnR5IDxqb3ljaGFrckBnb29nbGUuY29tPgo+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBOYXZlZW4gS3Vt
YXIgPG1ua3VtYXJAZ29vZ2xlLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE5hdmVlbiBLdW1hciA8
bW5rdW1hckBnb29nbGUuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogUm95IEx1byA8cm95bHVvQGdv
b2dsZS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9LY29uZmlnICAgICAgICAgICAgICAg
ICB8ICAgMSArCj4gPiAgZHJpdmVycy9waHkvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAgIDEg
Kwo+ID4gIGRyaXZlcnMvcGh5L2dvb2dsZS9LY29uZmlnICAgICAgICAgIHwgIDE1ICsrCj4gPiAg
ZHJpdmVycy9waHkvZ29vZ2xlL01ha2VmaWxlICAgICAgICAgfCAgIDIgKwo+ID4gIGRyaXZlcnMv
cGh5L2dvb2dsZS9waHktZ29vZ2xlLXVzYi5jIHwgMjg2ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPgo+IEFuZCBhcyBvdGhlcnMgc2FpZCwgeW91IGRvbid0IG5lZWQgYSB3aG9sZSBuZXcg
ZGlyZWN0b3J5IGZvciBvbmUgc2luZ2xlCj4gLmMgZmlsZS4KPgo+IHRoYW5rcywKPgo+IGdyZWcg
ay1oCgpUaGUgVVNCIHBoeSBvbiBHb29nbGUgVGVuc29yIEc1IGlzIG5vIGxvbmdlciBiYXNlZCBv
biBTYW1zdW5nL0V4eW5vcwpJUCwgaGVuY2Ugd2UgbmVlZCBhIG5ldyBkcml2ZXIgZm9yIGl0LgpB
Y2tub3dsZWRnZSB0aGF0IHdlIGRvbid0IG5lZWQgYSBuZXcgZGlyZWN0b3J5IGp1c3QgZm9yIG9u
ZSBmaWxlLCB3aWxsIG1vdmUKaXQgdG8gdGhlIGRyaXZlcnMvcGh5IGRpcmVjdG9yeSBpbiB0aGUg
bmV4dCBwYXRjaHNldC4KClRoYW5rcywKUm95IEx1bwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
