Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9533C10F1B
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 09:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94iBE8RTUpS4VHO2xhSY4b0nGt/2a/794+pFFey7ZCU=; b=KKZ96IX1CSPnN4
	Fqo4Mp9vKR3+49kOrqpxmn8IgjQYxG4WBHlQdc2yUvfvPyloVHCc4jIVW66Vc88iFxJYC1Hg9w6I7
	wwyvWcqUtgKVZxtXiwkw2r9FZ51f7en942AI3mteSRakF45MnFwNcEZludP6OGNxSEamSylDCwB+0
	aZrQS+6R8QkIePO7B72U+1mUw+u9+Zvu2AHD4s/f2Yd+oa+84cUTQfvzbnbd3lqO8Obzea1f1Zrkz
	YH3F7c+nnRoJ7F2MshmtNoQqpA/t/J4VWccRgBdvsC1Fz7BVjH8ItBHAxh+1xJkZtos2Ox7X9dZz1
	5aALGaL0YICq4/Prx9wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA6VN-00BqG9-6q; Tue, 27 Dec 2022 09:44:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA6VL-00BqEf-FE; Tue, 27 Dec 2022 09:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:References:
	In-Reply-To:Date:Content-Type:Subject:Cc:To:From:Message-ID:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=iT74Ugf9qWXCSq5LbcRrqQXdUHkhwBEuf7Rk8kqMwn0=; b=AA+upkqcb4K3Uw2JlaINAvT+Vl
	aejGfIDFpHkqm9bN495/qsIWTD4gXI3ZCAn8C1emfbLzwRlXzpJ/626ElirHCBnjxzhSPIiRmX0g+
	6ni+i4jKw2c+3h4RPnnlvMjUNG5oyGMmp/p/VtKQnFIPN8Xef3UR47WT7RCWigtxKUXM4LH3uWVg2
	PdLsKBEiXLxCePTDUW4vJBg3Ffy1ZRu8FifdHtEr7DCzKThmcMLih5PXUuPXHWJRE3hbOOIWSc5ZV
	TlRSWqZVDlleS5iyvqWBLEoTQRe448uyHYw0uffSPpRRMds4cZGoiOIsqr2mWkPgEfTeO8SYkJ/+Z
	KccKi6tg==;
Received: from mout.gmx.net ([212.227.17.20])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pA6VD-00FbQd-1q;
	Tue, 27 Dec 2022 09:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1672134220;
	bh=YTCy4JEIxOF81L2tkx2q9iUbicPXUbuTb5BUmkJ6Svk=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Wh5879NVfovwfw6MPcWgTOF9m3eH52aFbDRk39uA3E/Ad8jO78miYBrYzLlJF5pMU
	 Z/UdSo+F+IVHBl4CwgqCHGrr01zACXS6fv/QbFvG3momTUWkqdfdyx4si1efPaw9MC
	 DnEq8H1/ZSxxSyssbOlQHKPaHX8WdiEWupzDlpgm4ZZQ+SxdbRBsvVZhRNQmcgY67N
	 xFlyatiBM4/v74Klw4ZNdSwdnBDXnT37cPlmpvRc73Y/LndBRfGihBJq1CUwRf9wde
	 pTg0E8Vuf68U2J6P9402diqrE70zLoUY26yyzQTnLuVbKBg+9Fn6nwrBGwG/sPwzES
	 YeJJ13pXhrFBg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [217.61.153.252] ([217.61.153.252]) by web-mail.gmx.net
 (3c-app-gmx-bap27.server.lan [172.19.172.97]) (via HTTP); Tue, 27 Dec 2022
 10:43:40 +0100
MIME-Version: 1.0
Message-ID: <trinity-256904b6-bbb5-4424-9686-50ec7fa14f26-1672134220733@3c-app-gmx-bap27>
From: Frank Wunderlich <frank-w@public-files.de>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Lorenzo
 Pieralisi <lpieralisi@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Jianjun Wang <jianjun.wang@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 linux-usb@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-pci@vger.kernel.org, Bjorn
 Helgaas <bhelgaas@google.com>, devicetree@vger.kernel.org
Subject: Aw: Re: [next v7 8/8] arm64: dts: mt7986: add Bananapi R3
Date: Tue, 27 Dec 2022 10:43:40 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <Y6dMWFy7gChG88j0@makrotopia.org>
References: <20221127114142.156573-1-linux@fw-web.de>
 <20221127114142.156573-9-linux@fw-web.de> <Y6dMWFy7gChG88j0@makrotopia.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:bFXzqV914PcH77ozsLVgYaS5I0Vqyn3RZhEoaWQjT7lE8jUeDSGhl7uuTVF9Ur9aotjQ0
 kJ2zzC2KY87PZVu/kmymoEKe35/OcBtOMhCh69+CaSU97Q9IEwbEKdPDdi/4klIWCuVChTeJcIkj
 hNsZM0Mk1Pfs9vpZZDPsUz9DoYXK9kS1qRfMMLvmCZPLC+4Lg7e58vZ42EilOMyj+xsYwdzqZSLK
 J90OlPs5STS14EAJX6MQoYcvaIcSTZQ03+8S8dvHZIAn5qg8LuC3GTwkABj7y/Yk0/0CSu38KfiW
 d4=
UI-OutboundReport: notjunk:1;M01:P0:6NV/Op75bNk=;g9hXBa/jc9i8FeIMnr5EwLzU8mP
 pXy4CNgfhS7gmAFE0ch8bzzVD4MlzuFhtB3o+MMaWTQLz2nPUUmFrJlFzSta1yOb8PU7iyKU5
 OXisXe7c1ZvK5X1CAp4UfhyKjzW9fMULB7hwrMdnb/k3+VUATHoTV3l7/KPVpqAfQSaURykhF
 ipfIzASaFOKmYQnmCBC4AxLKWd53ooLwStPuXeLKOtiPVevdUo3UEI4/lz+p8o2Y3X+vIROQE
 ZfoVuEA0iRmK4a1gWvKnGxv7qbNJEbKnLYNgUWgOjecdxhIFjw2KTSxk0mFMDYU5/YYSsU0aU
 F8+G0W5mOzeDcZqnvelHmfLFjoey6M+9dhZWnZ9o7zpEM1ejDSmLXKsqHtWgkKYxVZ7N2caG9
 m+XTEc/j83X71YCecqGZJmpw7AtbLBtSByXOOSYfdwiTNaCdNFjHsRwXNc4Ea05X+7gJWttRr
 YNN8cWsLINNoA4WR7SujssEI/iW28LJjQeLyStTd+lAy0S8v7LMBGUs0+UZCM5S5ehpMgXr/l
 N2640kTns3x2PLA1AqqpTsHmQquIryxs+UWYJuoGQDL9GtMIEtonpvMH6TYsssBBqC/WRSs7d
 9igluMBSsF/x+U/YR9n5VtcttsmzHP6mVawxBOuKxgmb8G1sP7dBKz2ibbPzZbzm0PyS/soEx
 uDGzKN7P9Cav1VO8e9MfFgLeX5/MGVD6BKkWKRiAlsCccIJqWZ4Cxh5ORwCRHwy51F/Gy3p28
 dV9CToPtm7wPOJ4yoFykebIIKFKlw7gZMlz4mt5nfUPlMGvHeqe0bv+dlcBNWpTUvT7c3yPer
 arRA4ipNplPCK3LO4coyP2Lgq/Y0w57gR5GD3RAHFdFdU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_094407_844436_7A481CDB 
X-CRM114-Status: GOOD (  10.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


> Gesendet: Samstag, 24. Dezember 2022 um 20:00 Uhr
> Von: "Daniel Golle" <daniel@makrotopia.org>

> > +++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts

> > +&spi0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&spi_flash_pins>;
> > +	cs-gpios = <0>, <0>;
>
> I don't think those bogus cs-gpios here and for spi1 below are needed.

at first look it seems it is needed...as i get this trace with 6.2:

[    2.145931] pc : mtk_spi_can_dma+0x0/0x34
[    2.155212] lr : mtk_spi_interrupt+0x74/0x360

[    2.091801] mtk-spi 1100a000.spi: spi-mem transfer timeout
[    2.097310] spi-nor: probe of spi0.0 failed with error -110
[    2.102930] Unable to handle kernel read from unreadable memory at virtual address 0000000000000010

but i get the same trace when reverting the cs-gpios change....seems something is broken in 6.2-rc1

6.1 works without the bogus cs-gpios (and the mt7531 interrupt-change)...

have tried reverting this commit, but it does not fix the issue:

8330e9e8269b 2022-12-07 spi: spi-mtk-nor: Add recovery mechanism for dma read timeout

any idea without doing a bisect?

regards Frank

> > +	status = "okay";
> > +};
> > +
> > +&spi1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&spic_pins>;
> > +	cs-gpios = <0>, <0>;
> > +	status = "okay";
> > +};


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
