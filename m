Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20E35C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lc5xgGCsGlEM7iLBCjKVR2IqqngNJHWxaTaKOSHVJTc=; b=A5ak3Nm3PKt6dU
	5IAZuEwtZJlPfVgFlPFPurkT99aCORziARvHG/adsorbo6RtEYxDXNXm/UJ4GtNivmDhyBOpovXLp
	7dauFDjKRqijOYJrs3eeWcddL8BKxUHUllie1e3obVasgennTWqqzd45NXThUAIO4ffsI2UAfaYyv
	LoG22TWpemS30u3tSj5DlASVSa9h3gDA16sTCuk7wBIj8bKJe6Hgykj/AqOqE3YYF2Mv7jthWZHr+
	nWuRWmEPqmdnTj/S90xv6IoJXs+llaa7c5OS+IOTVNOt/Ug2h2PIam9OqG5ojCPxoeNpLoYIJuklx
	f19fvPdUsB4UNpFhRClw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawDI-000000027IT-3KGV;
	Fri, 16 Feb 2024 11:17:04 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawDE-000000027H8-3XzI;
	Fri, 16 Feb 2024 11:17:02 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 41GBGYwO083346;
	Fri, 16 Feb 2024 05:16:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1708082194;
	bh=nDk2WfWJt2aWSEBbueJOkQd7RmDzKK1+hpo9/zydDDU=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=xnjqB70RZei0K4O+rcT6eO2ST3qLKTEhl14fwgXrQ/PjR0cJd047YBlktyZiFMTxN
	 kaE6WnDRU2uoAy6LBBf/cW5JbWMlYDuJH/sXEI9mWo/1w5XolypGO7ih9/EjTw5e3d
	 lmijIfCRv+JCRF+uEubu2vehX1u8irFGHmRiYRwA=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 41GBGYBh004264
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Feb 2024 05:16:34 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 16
 Feb 2024 05:16:34 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 16 Feb 2024 05:16:34 -0600
Received: from localhost (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 41GBGXf7110209;
	Fri, 16 Feb 2024 05:16:33 -0600
Date: Fri, 16 Feb 2024 16:46:32 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>,
        Thomas Richard
	<thomas.richard@bootlin.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
        Tony
 Lindgren <tony@atomide.com>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
        Janusz
 Krzysztofik <jmkrzyszt@gmail.com>,
        Andi Shyti <andi.shyti@kernel.org>, Peter
 Rosin <peda@axentia.se>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham
 I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lorenzo
 Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>,
        <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
        <linux-i2c@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-pci@vger.kernel.org>, <gregory.clement@bootlin.com>,
        <thomas.petazzoni@bootlin.com>, <u-kumar1@ti.com>
Subject: Re: [PATCH v3 18/18] PCI: j721e: add suspend and resume support
Message-ID: <8d47e1d0-69a3-475e-8dd8-64514872e026@ti.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-18-5c2e4a3fac1f@bootlin.com>
 <aa791703-81d8-420c-ba35-c8fd08bc3f07@ti.com>
 <CZ6GG6OQUJTX.2OM5TC9YLOAXV@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CZ6GG6OQUJTX.2OM5TC9YLOAXV@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_031701_090006_8ECCB100 
X-CRM114-Status: GOOD (  12.54  )
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

T24gMjQvMDIvMTYgMTI6MDlQTSwgVGjDqW8gTGVicnVuIHdyb3RlOgo+IEhlbGxvLAo+IAo+IE9u
IEZyaSBGZWIgMTYsIDIwMjQgYXQgMTE6NDggQU0gQ0VULCBTaWRkaGFydGggVmFkYXBhbGxpIHdy
b3RlOgo+ID4gT24gMjQvMDIvMTUgMDQ6MThQTSwgVGhvbWFzIFJpY2hhcmQgd3JvdGU6Cj4gPiA+
IEZyb206IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Cj4gPiA+IAo+ID4g
PiBBZGQgc3VzcGVuZCBhbmQgcmVzdW1lIHN1cHBvcnQuIE9ubHkgdGhlIHJjIG1vZGUgaXMgc3Vw
cG9ydGVkLgo+ID4gPiAKPiA+ID4gRHVyaW5nIHRoZSBzdXNwZW5kIHN0YWdlIFBFUlNUIyBpcyBh
c3NlcnRlZCwgdGhlbiBkZWFzc2VydGVkIGR1cmluZyB0aGUKPiA+ID4gcmVzdW1lIHN0YWdlLgo+
ID4KPiA+IFdvdWxkbid0IHRoaXMgaW1wbHkgdGhhdCB0aGUgRW5kcG9pbnQgZGV2aWNlIHdpbGwg
YmUgcmVzZXQgYW5kIHRoZXJlZm9yZQo+ID4gbG9zZSBjb250ZXh0PyBPciBpcyBpdCBleHBlY3Rl
ZCB0aGF0IHRoZSBkcml2ZXIgY29ycmVzcG9uZGluZyB0byB0aGUKPiA+IEVuZHBvaW50IEZ1bmN0
aW9uIGluIExpbnV4IHdpbGwgcmVzdG9yZSB0aGUgc3RhdGUgb24gcmVzdW1lLCBwb3N0IHJlc2V0
Pwo+IAo+IFRoaXMgZG9lcyBpbXBseSBleGFjdGx5IHRoYXQuIEVuZHBvaW50IGRyaXZlciBtdXN0
IGJlIGFibGUgdG8gcmVzdG9yZQo+IGNvbnRleHQgYW55d2F5LCBhcyBzeXN0ZW0td2lkZSBzdXNw
ZW5kIGNvdWxkIG1lYW4gbG9zdCBwb3dlciB0byBQQ0kgUkMKPiBjb250cm9sbGVyIChlZyBzdXNw
ZW5kLXRvLVJBTSkgb3IgUENJIHJhaWxzIChkZXBlbmRlbnQgb24gaGFyZHdhcmUpLgoKVGhhbmsg
eW91IGZvciBjb25maXJtaW5nLgoKUmVnYXJkcywKU2lkZGhhcnRoLgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
