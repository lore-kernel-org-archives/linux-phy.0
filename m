Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA014C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 09:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9mMxQ5PDcv6+zu9W/Aj5LEUH8UrKfO7MbfOW+xIe7M=; b=Zu2mDVXzjcIkGd
	PWC6ve3BT9feBAVwR45nAb95FvZIQcwYypGPAj0mgl6um9zAkPBjKRxAPNz8odNC/S2g/zUm02tX7
	ps87w1dWdlvNpXjsQ6kupqBIji6WUClY4joukzHI30URxq1VedRI0uCWkog+IyEDbAcDsZs06zpL5
	J5Ln9Nlqlx7TNN+4ZuKFLxqXQv+ysk8HPUOln8gZbXDEuVgey7RvEcBsu34u2+eCRJiP67vbPNoAf
	LsoOXGFy/IlMBVgZ4R00WpvhDtnp4s2u2np+u3LepsQ2evWej2ian4iE8c38VJ+7ACgkRtLI7ZLqd
	ZUHNYsrm64dssJMdRIog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZSSy-00000004eX8-2Jhe;
	Thu, 01 Aug 2024 09:51:24 +0000
Received: from mout.web.de ([212.227.17.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZSSU-00000004eP9-0ZDC;
	Thu, 01 Aug 2024 09:50:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1722505850; x=1723110650; i=markus.elfring@web.de;
	bh=EFFvQxWL9UNPrZdUueU7uIPciWCNAv23KL3vjaoAAf4=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=aTAXlb+VTk8ZdINVugmOnqa27Adn01TFqCyDyWKJ+OtVvTTteYJ1OPU0pzIZFx2+
	 P2zqneB5xL54ueDlDc83gQWJk/IStBH4uSnHw8LjmJ+Qo9Yj05r2RwlCpsB0QlBdu
	 qyruFfHmX/EcNDjy3O1OG3U+73qc30p+SFuKNuxphAbN/4d5oguBqPcP2pAHWcVDu
	 AnIRLRnnUdjBONwXmN3NduacPB1s9sA8XwJk03nCgQPFme+N5/rGB04yjLklArX1k
	 jVQXRRaYYkTISA0n4xdAw7efCBrB85kFTsCrjTrbFlXL0ZNWs/uxeKJqeul3qGudt
	 AD3cdzH1+7/fic6/iA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.88.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1M6HK6-1sbdFC2gxs-006BAr; Thu, 01
 Aug 2024 11:50:50 +0200
Message-ID: <9cca717a-c7e9-4bf7-8cde-3a90fcfb1df5@web.de>
Date: Thu, 1 Aug 2024 11:50:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Hui-Ping Chen <hpchen0nvt@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20240801053744.807884-3-hpchen0nvt@gmail.com>
Subject: Re: [PATCH v3 2/2] phy: nuvoton: add new driver for the Nuvoton MA35
 SoC USB 2.0 PHY
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240801053744.807884-3-hpchen0nvt@gmail.com>
X-Provags-ID: V03:K1:NL4YA0BqmCCKVmCStnA88TsGOKJr0NvMWCWg9dMsDE+euFc6uye
 Vwb/9EDvPhIZfs2jFv7kQRlziw8MpwPLagO/rEfeZ+9UqYs9uROp0Q8piUyDc2f5cvBcOr6
 oGM8ElBBQZTcVL9AvIIaq60dPxOkmjq4Kjur74wKP8gNr44F4zy8oCTvRpbfbCXjcFYS48y
 m27ZMjf8TqlLatBS+NSrg==
UI-OutboundReport: notjunk:1;M01:P0:0kpx8SitMVQ=;MY7MjGHQ2O0KQx0HM5VwKw19C52
 BqICda3DxB9yEOhGRif8D1Js4d3DXe2/cZgiy/8MlzVdgPOgXBbBD13bC3O5cXWCl5eX+/pQz
 z4lVUtXJrrxDGBPWe7xAXOdZ3Q1myOWxPss+pOXMhOP22Q5xyyEg+n5armDq+7QheW0L7QF9h
 qH48z85a+QKPSCabyRbkOZkmlsLDOZpyN4ZToaApCwN66YSka3X8WHk9qc9nsfMPtbmYvDw88
 ESQ/1HSAl/LY5uhXZimEGbvDzzjqd6To2HS6AUerwDCQ2nOFMwVGBkeOy/fASl3+3EZKrH2Oo
 ssgXnRkJb7r8VIvq1xKW4y6v1GYJTsWop/t+BtjbEJ/Okx9fuClPU3uzNDWNKLG1vBldteTAZ
 xxoPjdse0s82czOx6KmsZjB12fnte3xggnhum6H5+1yvUkLB0mYBWI11UCfqrhFuIb4XNHIgm
 qoyutw95ncdRYu2t71q/2UVeyaZhooMQ2a8DTDjzMLxpZcADdH5UPQFaSME1V+pFKAgJZla0O
 QvdgoPh1nQZIs7h2fyrpP6Rm82jE8Q0AgPrT5XqmFdOwFcfO3TbsnNYJT2338etivGQqjhJcE
 eDg4ypcEfdNUTgnGMHWLpvSzgCQKKPL4hHoe7qTOrUfp5JC31eK7LuHprwCNHOMCH5ge1Bphf
 PrzOP3B5S2KFyWoyp7SyBO44DwirtkSMHYALgiKhbrOyDdO7+MmgwsYz+6rlh8QQmkx0uBaQH
 vkm5GQegyM8719ncMBzYhRur7MLx9G0QDceDJ4t3rQ4YGurn5HP43mvsryqpbCrAG/GVLK5pw
 /k7NrgtUScs0b/2iV2obGepQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_025054_563418_59D1344F 
X-CRM114-Status: UNSURE (   6.61  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYwo+IEBAIC0w
LDAgKzEsMTQ2IEBACuKApgo+ICtNT0RVTEVfREVTQ1JJUFRJT04oIk51dm90b24gbWEzNWQxIFVT
QjIuMCBQSFkgZHJpdmVyIik7Cj4gK01PRFVMRV9BVVRIT1IoImhwY2hlbjBudnRAZ21haWwuY29t
Iik7CuKApgoKSG93IGRvIHlvdSB0aGluayBhYm91dCB0byBhZGQgYSBwZXJzb25hbCBuYW1lIHRv
IHN1Y2ggYW4gZW1haWwgYWRkcmVzcz8KClJlZ2FyZHMsCk1hcmt1cwoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
