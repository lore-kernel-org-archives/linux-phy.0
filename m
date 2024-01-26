Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CCC4C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+v2iRba2Pd2gjhZuw/rGvWEug64z3PlJawxqx7I+Fg=; b=uZz3DuTBr6Bye2
	MrAZUvxqfDDpkxnnO7ELvh3wP/gyBuuiOhapjjS7VQWIoYeilwwEKUYJTCpLFdRrGd6iOS8BvzwKe
	zP3yCh++JIPiO/O3D/FBu0uHbTev5xbuccpUraHu5uAWRSebG3leAvFayYdEEB/vYjRsKvVNdsl0C
	pWDA2WPQHU2l73NKHRVCB2hJh7jqiip/NwwPvEtuEcjWZt+uOX7Ub1P6mNm8oJpn0VjdzwrK9Bgxl
	DjzSTK++j/u2HlL5T/dIdEyXbgKNC4KmVUVaCMjTKfgAwaUZwVFUcRE3giLEvTqhUMoxZG8q6kdnX
	EVo1JxT6/YUpNhr305Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU6d-00000005Vr5-0Et3;
	Fri, 26 Jan 2024 21:51:23 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU6Z-00000005Vod-2ZAF;
	Fri, 26 Jan 2024 21:51:20 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a277339dcf4so76102066b.2;
        Fri, 26 Jan 2024 13:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706305875; x=1706910675; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPXH5dNeVfIUenTMK/gwVMJ0/0KNORIs3DkEAIv1Sig=;
        b=CFwDVK1KS+WoFl1OaaZ+TCIPG9Y86W/s0hVspcYxfaq0K7+e9K9eIISKpPrhvflOIK
         DXTwQ8aJyUwJKvbQxG8J1Wn4paptw0+vtTNpmdqfJ9H1trJkuM2AyjFLD0jWPABWuTGE
         CxETol/8uhyaMqnjQ3TvUfID/ArdVS/J+idEtwpRip/xrH8f/M0QcVPgPY2X9RMMkH+0
         eAiss4/OKwKrS4OCYMD1UOjUqe1POA/3jJX4s+RKvRfAvhtKSDS2t6Zs0grGflxU0CLR
         eCPOJ6IsZHcVOqlGkYBGnIJUyren2vt+lTVbkpU95QmWJKHGjduIhIeFe00zhbc+DCw6
         2gMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706305875; x=1706910675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YPXH5dNeVfIUenTMK/gwVMJ0/0KNORIs3DkEAIv1Sig=;
        b=aaQA8JKdRfQ/AgFiDXM6KjmUaa0h0tFJZwhXRJ/Yjs/hhkZjsGXhE++i6mADpqvGpw
         Wae6bL3t/aJP4OGIRqUba1qytT5IXmLhEEnTi8aRSfTv/pTdoqQNBY20Iyb/aMaK+QKR
         9ZA6uydOcyAU+pXOynis1VdJ00sCfBpPxcP0ahoB2VMPjRcEjmDdIcf+mDTVZQmjMiRQ
         8B6YrhwcER0F7UiA3wzLB8MFJnxrj1ZO/NCCiHW+/NF6rgI6MlHh8gQnrad/YtQt04j/
         VZcO0OqZn/ypPsEeZfUKTcRT6rHp1lKEWVqVxJWb+3TFqP21PHAa4Yux1P3T5iC4VX6S
         OLcg==
X-Gm-Message-State: AOJu0YzpyABadMe8tQDnzMG85tcZE6ano4lMxsHPCxBrZe+KXPtRI0dA
	rd3GaY0Svscm7ywdXJTd2WvNi3SqkYESFl1oVMcR/F/eTrts9o6282+IOcnErhxr+ELjso9gFlM
	LM/fF+lOyd3Pi2ZqvEGcQOdkVqas=
X-Google-Smtp-Source: AGHT+IFI7f8zRnUFHL//+7Q91/XGXBBaPplGw9xgtWCKwMk1l/Cp5jaXJJoZ2ImepjESxtuomso0X+FvryVl+x8j934=
X-Received: by 2002:a17:906:190f:b0:a31:24ba:1f73 with SMTP id
 a15-20020a170906190f00b00a3124ba1f73mr191929eje.45.1706305875256; Fri, 26 Jan
 2024 13:51:15 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-13-8e4f7d228ec2@bootlin.com> <20240126214336.GA453589@bhelgaas>
In-Reply-To: <20240126214336.GA453589@bhelgaas>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:50:39 +0200
Message-ID: <CAHp75VcR_K-QYrkd1j_pW8_F3wjJx6s8a1DAT5gNci1P7_pkPA@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] PCI: cadence: add resume support to cdns_pcie_host_setup()
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Thomas Richard <thomas.richard@bootlin.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_135119_682457_7142E515 
X-CRM114-Status: GOOD (  10.26  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgMTE6NDPigK9QTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFz
QGtlcm5lbC5vcmc+IHdyb3RlOgo+IE9uIEZyaSwgSmFuIDI2LCAyMDI0IGF0IDAzOjM2OjU1UE0g
KzAxMDAsIFRob21hcyBSaWNoYXJkIHdyb3RlOgoKLi4uCgo+IEl0J2QgYmUgc3VwZXIgbmljZSB0
byBoYXZlIHRoZW0gdGhlIHNhbWUuICBQYXNzaW5nIGluIGEgInByb2JlIiBmbGFnCj4gd29ya3Mg
YnV0IHNlZW1zIGEgbGl0dGxlIGhhcmRlciB0byByZWFkIGluIGNkbnNfcGNpZV9ob3N0X3NldHVw
KCkgYW5kCj4geW91IGhhdmUgdG8ga2VlcCB0cmFjayBvZiB3aGF0IGl0IG1lYW5zIGluIHRoZSBj
YWxsZXJzLgoKRldJVywgaW4gYW5vdGhlciBwYXRjaCB3aXRoIGEgc2ltaWxhciBhcHByb2FjaCBJ
IGZvdW5kIGl0ICh0aGUKYXBwcm9hY2gpIGEgYml0IHVnbHkgYW5kIHVubWFpbnRhaW5hYmxlLiBJ
IHdvdWxkIHN1Z2dlc3QgcHJvcGVybHkKcmVmYWN0b3JpbmcgdG8gY3JlYXRlIDIrIGZ1bmN0aW9u
cyBhbmQgdXNlIGFzIG5lZWRlZC4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hl
bmtvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
