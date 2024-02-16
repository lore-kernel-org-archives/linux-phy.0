Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42815C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 10:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9mr6RCQujFDwuz8eaScNyyp6ZM03qCU+Bl7uxpstPs=; b=0nVt5EPhiqHCSG
	IpPVltbIh8cX1tCzARft+SjbVml5Ptv9W2oroW42/DelzhOf/Z8ggBtWc7SmTxHa0ZCrfo/JHxDRj
	hv/gcNWk0GGygYGTgG1DWCRPHX0dQqiy88h3s8jfdFJ2s5tJ2lzJ9qbbOa2NJyr/HAs6tqVXiemn6
	wtIu6V8QyLHldl93b1+cbPgoXphHMqYyACXN7HHJDkv7fniOQXyc9BqcRTO6Bf1vPinuSGrHxgsvR
	Y6KWeJuAhKvnJezl9RKr4I9Lo30OvdDfYVm5j1D9SDJIZ4Gj/rUhUZzciPlQlOsGGJUq2gJI9U+zr
	bWfGQUbFoEiaAF9JTnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ravlz-000000021FK-3kZf;
	Fri, 16 Feb 2024 10:48:51 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ravlw-000000021Ec-22ra;
	Fri, 16 Feb 2024 10:48:49 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 41GAmR9B056970;
	Fri, 16 Feb 2024 04:48:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1708080507;
	bh=wBeXLUFC5b4/8RGzmyvF89yYPd110y8htQLDdX2WYTc=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=H7s8TSq/72OiEAd3rL2BUZa9KNNyAB7Wr+7vrd0Mo1gM6SSozbZDMkhsVVnB649xU
	 AQ1kVHY38XBAREf1YPaI6jqt0jNuzg1bIqCtGX7rJo3Mr9eLWMGUPDmgecIYB6MLES
	 Sz0EVyu19IuvkIeSFdvq3ht/39IJUFW8kOKph+kU=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 41GAmR5L129001
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Feb 2024 04:48:27 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 16
 Feb 2024 04:48:27 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 16 Feb 2024 04:48:27 -0600
Received: from localhost (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 41GAmQcT020589;
	Fri, 16 Feb 2024 04:48:27 -0600
Date: Fri, 16 Feb 2024 16:18:26 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Thomas Richard <thomas.richard@bootlin.com>
CC: Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
	<brgl@bgdev.pl>,
        Andy Shevchenko <andy@kernel.org>, Tony Lindgren
	<tony@atomide.com>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Vignesh R
	<vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
        Janusz Krzysztofik
	<jmkrzyszt@gmail.com>,
        Andi Shyti <andi.shyti@kernel.org>, Peter Rosin
	<peda@axentia.se>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
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
        <theo.lebrun@bootlin.com>, <thomas.petazzoni@bootlin.com>,
        <u-kumar1@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v3 18/18] PCI: j721e: add suspend and resume support
Message-ID: <aa791703-81d8-420c-ba35-c8fd08bc3f07@ti.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-18-5c2e4a3fac1f@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v3-18-5c2e4a3fac1f@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_024848_630287_672E9734 
X-CRM114-Status: UNSURE (   8.44  )
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

T24gMjQvMDIvMTUgMDQ6MThQTSwgVGhvbWFzIFJpY2hhcmQgd3JvdGU6Cj4gRnJvbTogVGjDqW8g
TGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KPiAKPiBBZGQgc3VzcGVuZCBhbmQgcmVz
dW1lIHN1cHBvcnQuIE9ubHkgdGhlIHJjIG1vZGUgaXMgc3VwcG9ydGVkLgo+IAo+IER1cmluZyB0
aGUgc3VzcGVuZCBzdGFnZSBQRVJTVCMgaXMgYXNzZXJ0ZWQsIHRoZW4gZGVhc3NlcnRlZCBkdXJp
bmcgdGhlCj4gcmVzdW1lIHN0YWdlLgoKV291bGRuJ3QgdGhpcyBpbXBseSB0aGF0IHRoZSBFbmRw
b2ludCBkZXZpY2Ugd2lsbCBiZSByZXNldCBhbmQgdGhlcmVmb3JlCmxvc2UgY29udGV4dD8gT3Ig
aXMgaXQgZXhwZWN0ZWQgdGhhdCB0aGUgZHJpdmVyIGNvcnJlc3BvbmRpbmcgdG8gdGhlCkVuZHBv
aW50IEZ1bmN0aW9uIGluIExpbnV4IHdpbGwgcmVzdG9yZSB0aGUgc3RhdGUgb24gcmVzdW1lLCBw
b3N0IHJlc2V0PwoKUmVnYXJkcywKU2lkZGhhcnRoLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
