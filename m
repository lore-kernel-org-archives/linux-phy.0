Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F97C46CD2
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 16:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAgyL3TRgPWe0cj2SlKkxckSXNxg1xiSVHjDiaWMvAU=; b=GercBQ00fdn13e
	66PE9NdBObvHHvtf+MnxXxONyQvGkanqahC9jrPaHZfuj4rliA2JOVrWsf/S7vQHRgRrhummYeKrl
	LMXEg/ye4PxL+ONe2i1RdJuPWDpI23OLgKnJSaVIBSppslYr4p9LVZXdtsmj+RXOnxxnUEnFoIOzN
	2hmA0AGseWBsRZKolmcfwzlGlOGATjtiH5DgtpT3+PIv9LufhNbasDgVuPQebxVYvUycUmAyxj1Z3
	1PIrfUR/WiSjMa37+eF05+zybVhqb1ClGbpKj1ZgXLyr4Nt05fMgEMUIKvRKfSbJAeR82/icF6t34
	EDXNielG+M7edRkUV0wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUr7q-0000000HPR0-1Zc2;
	Tue, 30 Jan 2024 16:38:18 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUr7n-0000000HPQE-0HHF;
	Tue, 30 Jan 2024 16:38:16 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7C932FF802;
	Tue, 30 Jan 2024 16:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706632690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TplrVwlT1KQQSHzhl19fkElU89ykPDWXpM5Ja8kRAJg=;
	b=WJnGlYvsLktLg5YVEN9Gc1gRr1+qFsRheBxrdMHtKhX0EhYL6k098CAcruxMCEhyHXGutn
	vFpG6qz/d4LOwRUl4ySVuhnkRWEaRDVB/weY8qLcaLhH4lVfe59poYOcxtBCfQLdIsQgsT
	cr+TW103IMpfivL5fTtM6wDz2VB0cl1yixDpo0WKESic98lfwYdjvkOMTFxJCEyKvUEabW
	mteGb4Ee6jVAsVdMafL7bmIXSQRjTkhrB4gIDXJQJNMh68dL2595yEmPLQCqqJYohbIpan
	ibg0KXyFQrPgV/3vESu7rY8nQo9lUZ651P006nibWUVpZ+tGeyoBDKzZMv5Lvg==
Message-ID: <3fa57200-4218-4ac8-86b9-3f86723d5cd8@bootlin.com>
Date: Tue, 30 Jan 2024 17:38:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/15] mux: add mux_chip_resume() function
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
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
 <CAHp75Ve2K=v=OrNPH0q+K6vp2283HSMBYYSh0hYbw56snGd+xg@mail.gmail.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CAHp75Ve2K=v=OrNPH0q+K6vp2283HSMBYYSh0hYbw56snGd+xg@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_083815_263631_CC31220D 
X-CRM114-Status: GOOD (  11.46  )
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

T24gMS8yNi8yNCAyMjoyOCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIEZyaSwgSmFuIDI2
LCAyMDI0IGF0IDQ6MzfigK9QTSBUaG9tYXMgUmljaGFyZAo+IDx0aG9tYXMucmljaGFyZEBib290
bGluLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZSBtdXhfY2hpcF9yZXN1bWUoKSBmdW5jdGlvbiByZXN0
b3JlcyBhIG11eF9jaGlwIHVzaW5nIHRoZSBjYWNoZWQgc3RhdGUKPj4gb2YgZWFjaCBtdXguCj4g
Cj4gLi4uCj4gCj4+ICtpbnQgbXV4X2NoaXBfcmVzdW1lKHN0cnVjdCBtdXhfY2hpcCAqbXV4X2No
aXApCj4+ICt7Cj4+ICsgICAgICAgaW50IHJldCwgaTsKPj4gKwo+PiArICAgICAgIGZvciAoaSA9
IDA7IGkgPCBtdXhfY2hpcC0+Y29udHJvbGxlcnM7ICsraSkgewo+PiArICAgICAgICAgICAgICAg
c3RydWN0IG11eF9jb250cm9sICptdXggPSAmbXV4X2NoaXAtPm11eFtpXTsKPiAKPj4gKyAgICAg
ICAgICAgICAgIGlmIChtdXgtPmNhY2hlZF9zdGF0ZSAhPSBNVVhfQ0FDSEVfVU5LTk9XTikgewo+
IAo+ICAgaWYgKF9zdGF0ZSA9PSAuLi4pCj4gICAgIGNvbnRpbnVlOwo+IAo+ID8KClllcyBpdCBt
YWtlcyB0aGUgY29kZSBlYXNpZXIgdG8gcmVhZC4KRml4ZWQgaW4gbmV4dCBpdGVyYXRpb24uCgot
LSAKVGhvbWFzIFJpY2hhcmQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
