Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90D4FC47DD9
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jan 2024 15:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=offT7FClOMkXNUhqgsOI+1nT7ldytzFY6/QoDcAjViE=; b=pQQnKp8GuTIi8l
	eknaWUZEYDPT+VXN2ROhzCYvYZdiaehJjA+08FJBpnVIGzqa57MNElRVCy20/5fZc2olVHos52d8X
	Z3Sk8Sa7f5IFa4Z9M7So+YpdL2SJ5Xk681DRmsjYCh0LTHKpJqCPOBmuwwGAtOu1uB7SumrUyVt1d
	EAKOGzsOwc/VcmEU+TDBFtxPTi8P9fDhmd53qrGpCaxXqu/cKUn23mQDirMyz+w6m/Mh1E8yNM09w
	MIoKtne/iruw3va+Src1vqqotVIEPy31zlYAc6JyuY8IRV7GzqHVX+ni44FRUOJR2UJWizhJopI/J
	nyLh7VQuX62IgPdRFwcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRwFz-00CjJD-0U;
	Mon, 22 Jan 2024 15:30:39 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRwFt-00CjFI-1Y;
	Mon, 22 Jan 2024 15:30:36 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id E11E740005;
	Mon, 22 Jan 2024 15:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705937428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ad8iZ7cAOLjC59VsXGmNvP0Dte+iZHPsXSv80mGa8CY=;
	b=aVCff82cAuUdGWnH6XJ5zxRCCb74hOkkbM+j+P+f8CkTkim32vuf+HKFY9Kt2/sX+1eDq1
	3s/POnlwJJi2GuKXxbTIMbWYpV/NbIqDQBnJ4zlAaMiyVmVn+eqSpBsrMxnYcSX2zvNW3k
	3N5pReSGFlppvUTmwSqQxqa1kXzcXd+ErnfpGawcUR4dvFZIJjjwoOyrTuluKifAAp1BNx
	HvdRodBSQRvBf3KlAenpmTj6amh/BRx3m5fsVT8T95utZkNphW4e1R2MINb4jt+L0hVCN7
	vzwZ9lmNs1zn5a1nWyNnE6oYFbm2hZUkfOYNsOfddRAWok8+bjtjY5uUNSOVRA==
Message-ID: <9cb47f37-bd98-4136-b844-33cf2be593df@bootlin.com>
Date: Mon, 22 Jan 2024 16:30:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/14] PCI: j721e: add suspend and resume support
Content-Language: en-US
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-14-84e55da52400@bootlin.com>
 <CAHp75VfPQz4PWdzFUU_n+R=XohBjyXM0zsjD-bUD2jmb42ds8Q@mail.gmail.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CAHp75VfPQz4PWdzFUU_n+R=XohBjyXM0zsjD-bUD2jmb42ds8Q@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_073033_949383_5BACB7D1 
X-CRM114-Status: GOOD (  16.53  )
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

SGVsbG8gQW5keSwKCk9uIDEvMTUvMjQgMjE6MTMsIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiBP
biBNb24sIEphbiAxNSwgMjAyNCBhdCA2OjE24oCvUE0gVGhvbWFzIFJpY2hhcmQKPiA8dGhvbWFz
LnJpY2hhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+Pgo+PiBGcm9tOiBUaMOpbyBMZWJydW4gPHRo
ZW8ubGVicnVuQGJvb3RsaW4uY29tPgo+Pgo+PiBBZGQgc3VzcGVuZCBhbmQgcmVzdW1lIHN1cHBv
cnQgZm9yIHJjIG1vZGUuCj4gCj4gU2FtZSBjb21tZW50cyBhcyBmb3IgZWFybGllciBwYXRjaGVz
Lgo+IFNpbmNlIGl0J3Mgd2lkZSwgcGxlYXNlLCBjaGVjayB0aGUgd2hvbGUgc2VyaWVzIGZvciB0
aGUgc2FtZSBpc3N1ZXMKPiBhbmQgYWRkcmVzcyB0aGVtLgo+IAo+IC4uLgo+IAo+PiArICAgICAg
ICAgICAgICAgaWYgKHBjaWUtPnJlc2V0X2dwaW8pCj4gCj4gRHVwLCB3aHk/CgpUaGlzIHBjaWUt
PnJlc2V0X2dwaW8gY29ycmVzcG9uZHMgdG8gUEVSU1QjIG9mIFBDSWUgZW5kcG9pbnRzLgpJIGFz
c2VydCBpdCBkdXJpbmcgc3VzcGVuZCwgYmVjYXVzZSBJIGhhdmUgdG8gZGVhc3NlcnQgaXQgKHdp
dGggYSBkZWxheSkKZHVyaW5nIHJlc3VtZSBzdGFnZSBbMV0uCgo+IAo+PiArICAgICAgICAgICAg
ICAgICAgICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGNpZS0+cmVzZXRfZ3BpbywgMCk7
Cj4gCj4gLi4uCj4gCj4+ICsgICAgICAgICAgICAgICBpZiAocGNpZS0+cmVzZXRfZ3Bpbykgewo+
PiArICAgICAgICAgICAgICAgICAgICAgICB1c2xlZXBfcmFuZ2UoMTAwLCAyMDApOwo+IAo+IGZz
bGVlcCgpID8KPiBCdHcsIHdoeSBpcyBpdCBuZWVkZWQgaGVyZSwgcGVyaGFwcyBhIGNvbW1lbnQ/
CgpUaGUgY29tbWVudCBzaG91bGQgYmUgdGhlIHNhbWUgdGhhbiBpbiB0aGUgcHJvYmUgWzFdLgpT
aG91bGQgSSBjb3B5IGl0PyBPciBzaG91bGQgSSBqdXN0IGFkZCBhIHJlZmVyZW5jZSB0byB0aGUg
cHJvYmU/CgpbMV0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuOC1yYzEvc291
cmNlL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYyNMNTM1Cgo+IAo+
PiArICAgICAgICAgICAgICAgICAgICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGNpZS0+
cmVzZXRfZ3BpbywgMSk7Cj4+ICsgICAgICAgICAgICAgICB9Cj4gCj4gLi4uCj4gCj4+ICsgICAg
ICAgICAgICAgICByZXQgPSBjZG5zX3BjaWVfaG9zdF9zZXR1cChyYywgZmFsc2UpOwo+PiArICAg
ICAgICAgICAgICAgaWYgKHJldCA8IDApIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xr
X2Rpc2FibGVfdW5wcmVwYXJlKHBjaWUtPnJlZmNsayk7Cj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PREVWOwo+IAo+IFdoeSBpcyB0aGUgZXJyb3IgY29kZSBiZWluZyBzaGFk
b3dlZD8KClllcyBJIHNob3VsZCByZXR1cm4gcmV0IGluc3RlYWQuCgo+IAo+PiArICAgICAgICAg
ICAgICAgfQo+IAo+IC4uLgo+IAo+PiArI2RlZmluZSBjZG5zX3BjaWVfdG9fcmMocCkgY29udGFp
bmVyX29mKHAsIHN0cnVjdCBjZG5zX3BjaWVfcmMsIHBjaWUpCj4gCj4gSXMgY29udGFpbmVyX29m
LmggaW5jbHVkZWQgaW4gdGhpcyBmaWxlPwoKbGludXgvY29udGFpbmVyX29mLmggaXMgaW5jbHVk
ZWQgaW4gbGludXgva2VybmVsLmguCkFuZCBsaW51eC9rZXJuZWwuaCBpcyBpbmNsdWRlZCBpbiBw
Y2llLWNhZGVuY2UuaAooaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuOC1yYzEv
c291cmNlL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2llLWNhZGVuY2UuaCNMOSku
CgpSZWdhcmRzLAoKLS0gClRob21hcyBSaWNoYXJkLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFu
ZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
