Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F5DFC48BEB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 11:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4JN/Bv7zoEjos7phmczp1ltPtiF3FE3wwSeuwCfJrI=; b=iaUrbOIeOF82nV
	NWRmSVuD4WF/wonhGWK25zIfIQopWPTv6P54TVAlrduKYxPBKRdrwTgj5YunKGjWKgsUfaOpThDN4
	RxvKSf7mMKmKigFqChiuAF+GeHvNY+7vntwgUqxCoqhxiabxZDOKgcYmMlBPamwgZt09h2ki5WBF3
	shnvtnUa00SmIu87xAooD5+0I/T5awkoL1G40bWAkVIQOz/1YsE0lSOjFlUpqAkQQbWuaUp83Jogn
	Ro8eHMFiW2wF3a8wvueID4Lj6Tyb6ceWJSI2F7AOaz/aDUKEdfDIIas5uqfX9JPOtRY58m0zcHZRX
	IdkpP3Z+S+Ad+u+UWpvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raw5t-000000025yF-3SO7;
	Fri, 16 Feb 2024 11:09:25 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raw5p-000000025x9-3JiH;
	Fri, 16 Feb 2024 11:09:23 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id C1D3EFF807;
	Fri, 16 Feb 2024 11:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708081759;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VoIm7bG7xdxeX1Ve84YA5mgH1w68YbeyVDn/kcEb2Ns=;
	b=pu19fIindWoyvl+UGjcMcq0t+6LJjVczMtqO7ZZb4KGzFo4HYYZa89THhOrO2/5B+ftg7b
	YjSeimNZDgnx7EQscGzkSBZcYAS6+CezQS8UgDZiuHuaOnObzJBP20rocAZNF8IomgpHA2
	Av5ymPoGLmO4ztX+HCX1kn3h9Bkg26z1b6omSa6oJlDiQafr7OX2mSBONtWifEX8frY17p
	yHiYMKESalbmWEcskaoL+yv2hXLk6GWqU3RsrzopcgLnCFiBa/mEPgJD5GaD1mHTQtatb7
	VRK1dcwRCRGRgUVjrrMGy7jr3GNvaLoGb1imMlWSxUCstw1pmHELoBGOiNulnA==
Mime-Version: 1.0
Date: Fri, 16 Feb 2024 12:09:17 +0100
Message-Id: <CZ6GG6OQUJTX.2OM5TC9YLOAXV@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v3 18/18] PCI: j721e: add suspend and resume support
Cc: "Linus Walleij" <linus.walleij@linaro.org>, "Bartosz Golaszewski"
 <brgl@bgdev.pl>, "Andy Shevchenko" <andy@kernel.org>, "Tony Lindgren"
 <tony@atomide.com>, "Haojian Zhuang" <haojian.zhuang@linaro.org>, "Vignesh
 R" <vigneshr@ti.com>, "Aaro Koskinen" <aaro.koskinen@iki.fi>, "Janusz
 Krzysztofik" <jmkrzyszt@gmail.com>, "Andi Shyti" <andi.shyti@kernel.org>,
 "Peter Rosin" <peda@axentia.se>, "Vinod Koul" <vkoul@kernel.org>, "Kishon
 Vijay Abraham I" <kishon@kernel.org>, "Philipp Zabel"
 <p.zabel@pengutronix.de>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>,
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, "Rob Herring"
 <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>,
 <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-pci@vger.kernel.org>, <gregory.clement@bootlin.com>,
 <thomas.petazzoni@bootlin.com>, <u-kumar1@ti.com>
To: "Siddharth Vadapalli" <s-vadapalli@ti.com>, "Thomas Richard"
 <thomas.richard@bootlin.com>
X-Mailer: aerc 0.15.2
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-18-5c2e4a3fac1f@bootlin.com>
 <aa791703-81d8-420c-ba35-c8fd08bc3f07@ti.com>
In-Reply-To: <aa791703-81d8-420c-ba35-c8fd08bc3f07@ti.com>
X-GND-Sasl: theo.lebrun@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_030922_013521_9427C366 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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

SGVsbG8sCgpPbiBGcmkgRmViIDE2LCAyMDI0IGF0IDExOjQ4IEFNIENFVCwgU2lkZGhhcnRoIFZh
ZGFwYWxsaSB3cm90ZToKPiBPbiAyNC8wMi8xNSAwNDoxOFBNLCBUaG9tYXMgUmljaGFyZCB3cm90
ZToKPiA+IEZyb206IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Cj4gPiAK
PiA+IEFkZCBzdXNwZW5kIGFuZCByZXN1bWUgc3VwcG9ydC4gT25seSB0aGUgcmMgbW9kZSBpcyBz
dXBwb3J0ZWQuCj4gPiAKPiA+IER1cmluZyB0aGUgc3VzcGVuZCBzdGFnZSBQRVJTVCMgaXMgYXNz
ZXJ0ZWQsIHRoZW4gZGVhc3NlcnRlZCBkdXJpbmcgdGhlCj4gPiByZXN1bWUgc3RhZ2UuCj4KPiBX
b3VsZG4ndCB0aGlzIGltcGx5IHRoYXQgdGhlIEVuZHBvaW50IGRldmljZSB3aWxsIGJlIHJlc2V0
IGFuZCB0aGVyZWZvcmUKPiBsb3NlIGNvbnRleHQ/IE9yIGlzIGl0IGV4cGVjdGVkIHRoYXQgdGhl
IGRyaXZlciBjb3JyZXNwb25kaW5nIHRvIHRoZQo+IEVuZHBvaW50IEZ1bmN0aW9uIGluIExpbnV4
IHdpbGwgcmVzdG9yZSB0aGUgc3RhdGUgb24gcmVzdW1lLCBwb3N0IHJlc2V0PwoKVGhpcyBkb2Vz
IGltcGx5IGV4YWN0bHkgdGhhdC4gRW5kcG9pbnQgZHJpdmVyIG11c3QgYmUgYWJsZSB0byByZXN0
b3JlCmNvbnRleHQgYW55d2F5LCBhcyBzeXN0ZW0td2lkZSBzdXNwZW5kIGNvdWxkIG1lYW4gbG9z
dCBwb3dlciB0byBQQ0kgUkMKY29udHJvbGxlciAoZWcgc3VzcGVuZC10by1SQU0pIG9yIFBDSSBy
YWlscyAoZGVwZW5kZW50IG9uIGhhcmR3YXJlKS4KClRoYW5rcywKCi0tClRow6lvIExlYnJ1biwg
Qm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9v
dGxpbi5jb20KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
