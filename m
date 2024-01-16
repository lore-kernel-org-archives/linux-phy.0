Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0297AC47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 18:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=g5lLN/xTGhJbSk4smCSiO2Hmj8MllZ2R6mh1It511Ts=; b=3z3gkBWC3itESk
	A+xkYGYt32fB46W/5/KaSG3QRXR2GO831EDlBeC0xtcFMLBlWOrWempx1k3yeJ2oT8GTAFhYMY+ki
	GQDvTQcRHaf2T0rM+VrZYXggxoNgZCWUja41LUoWSFDsYeOLpDDsDmkn8puw49KMR2pkpKrCENZ6L
	QZsb6ziQvNfwhn66AKgqlF/swn1+6rIkNjmcIxzXqVedYYOl3P5ZegNwZffpmPfly1OkuELl5CtGJ
	phuvQhk0hUzoMIwBaXo3VPtzGP7DBDsb/oGWac8FTAmObSka10vsvEoaR6+vVEmh/jBmluKxXHJTg
	DIjm/XTLmPLhqCGXwrfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPo2q-00CxVX-2E;
	Tue, 16 Jan 2024 18:20:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPo2n-00CxT3-01;
	Tue, 16 Jan 2024 18:20:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DD0B36132A;
	Tue, 16 Jan 2024 18:19:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4490FC433F1;
	Tue, 16 Jan 2024 18:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705429181;
	bh=cK0uK7R2+gEbjOCsenY8rYIQosqscpXTCp6F+qM8Pd8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=DsPYcpVqeSMaQVwap6TSM10XjoOPuojT6s+DQLUtOv+G5QecnwOOLG/Btd30B9sKD
	 sPLkDVnjb3Ujys/qaKlj6P/2Q2Q976Ex1Qvf1/GH+yU1SiUnOC2LJ6MwMU6A0kkb4b
	 laB0h0Yy1fmCV5dvcsLx+/XtcTFLtVXXPReiJfAINVpuOKuFIX3CfdDb/k7vHjTyE8
	 EpnyMDv5x9RZhgd0oSGVD9/8ujhuWDfhz67X1nUEGE7Q2EVz0/eU202+tc6yopwHJk
	 mlhOdTwzbhGv1kssB7mJQ3FfHQgC/qjiMsfFWtIYbEVwdvWBzJM/I/6Y3PGVRbGwm5
	 BA2iB9BUFtu6Q==
Date: Tue, 16 Jan 2024 12:19:39 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH 13/14] PCI: j721e: move reset GPIO to device struct
Message-ID: <20240116181939.GA101049@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v1-13-84e55da52400@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_102013_112682_041F1240 
X-CRM114-Status: GOOD (  12.50  )
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

T24gTW9uLCBKYW4gMTUsIDIwMjQgYXQgMDU6MTQ6NTRQTSArMDEwMCwgVGhvbWFzIFJpY2hhcmQg
d3JvdGU6Cj4gRnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KPiAK
PiBNb3ZlIHJlc2V0IEdQSU8gdG8gZGV2aWNlIHN0cnVjdCwgc28gaXQgY2FuIGJlIHVzZWQgYXQg
c3VzcGVuZCBhbmQKPiByZXN1bWUgc3RhZ2VzLgoKcy9Nb3ZlL0FkZC8gc2luY2Ugd2UncmUgbm90
IG1vdmluZyBpdCBmcm9tIG9uZSBzdHJ1Y3QgdG8gYW5vdGhlci4gIChJbgpzdWJqZWN0IGFsc28u
KQoKcy9kZXZpY2Ugc3RydWN0L3N0cnVjdCBqNzIxZV9wY2llLyBzaW5jZSAiZGV2aWNlIHN0cnVj
dCIgY291bGQgYWxzbwpyZWZlciB0byB0aGUgInN0cnVjdCBkZXZpY2UiLCB3aGljaCBpcyBvYnZp
b3VzbHkgbm90IHJlbGV2YW50IGhlcmUuCgpCVFcsIGlmIHlvdSBjYXBpdGFsaXplIHRoZSBQQ0kg
c3ViamVjdCBsaW5lcyB0byBtYXRjaCBwcmV2aW91cwpoaXN0b3J5LCBpdCB3aWxsIHNhdmUgc29t
ZSB3b3JrIHdoZW4gYXBwbHlpbmcgdGhpcyBzZXJpZXMuCgpBbHNvIHJld3JhcCBjb21taXQgbG9n
cyB0byBmaWxsIDc1IGNvbHVtbnMgYW5kIGFkZCBibGFuayBsaW5lcyBiZXR3ZWVuCnBhcmFncmFw
aHMgKG5vdGljZWQgaW4gcGF0Y2ggMTIvMTQpLgoKPiBAQCAtNTQsNiArNTQsNyBAQCBzdHJ1Y3Qg
ajcyMWVfcGNpZSB7Cj4gIAlzdHJ1Y3QgY2xrCQkqcmVmY2xrOwo+ICAJdTMyCQkJbW9kZTsKPiAg
CXUzMgkJCW51bV9sYW5lczsKPiArCXN0cnVjdCBncGlvX2Rlc2MJKnJlc2V0X2dwaW87Cj4gIAl2
b2lkIF9faW9tZW0JCSp1c2VyX2NmZ19iYXNlOwo+ICAJdm9pZCBfX2lvbWVtCQkqaW50ZF9jZmdf
YmFzZTsKPiAgCXUzMgkJCWxpbmtkb3duX2lycV9yZWdmaWVsZDsKPiBAQCAtMzU5LDcgKzM2MCw2
IEBAIHN0YXRpYyBpbnQgajcyMWVfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ICAJc3RydWN0IGo3MjFlX3BjaWUgKnBjaWU7Cj4gIAlzdHJ1Y3QgY2Ruc19wY2llX3Jj
ICpyYyA9IE5VTEw7Cj4gIAlzdHJ1Y3QgY2Ruc19wY2llX2VwICplcCA9IE5VTEw7Cj4gLQlzdHJ1
Y3QgZ3Bpb19kZXNjICpncGlvZDsKPiAgCXZvaWQgX19pb21lbSAqYmFzZTsKPiAgCXN0cnVjdCBj
bGsgKmNsazsKPiAgCXUzMiBudW1fbGFuZXM7CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
