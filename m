Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B395C71157
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 01:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQp00Yn30zkyPm7guVyzyD3gl2lhR1hmBZ28d2mOYYM=; b=wv9Lo+rHPfj6FV
	X+i8tpQmaMdmMtC9h2fv6FXHJckt7W8Vk4tjYI9E6MvuUGYKiM//x+oXPqXX8CsATkqRgZM0pPLXO
	SEcObf0a2TVjyKsISNDiHlDb9gah58BKBe2J71L848dSm46GCE1qi+P/aw9V1omsZIzE5+KR0cDN4
	xoqPctv/uh5gqao3vlmPIrcxV9MgpxajwmXr+F0HvpynX6/BL/T/zDUWe21MpxmLDKNB3U6+lvhaF
	OLFhtzpGn4cREFpOP2eNob1OkRURhUDOeUkkdcrt2KB2PJE10g9+KRUGbuyDmB5H6pakTIEl3sJiu
	/BvDVOHq19NiGr1j3q8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhUN-00000008kCA-0TcE;
	Wed, 18 Jun 2025 01:21:19 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRhQA-00000008jYK-1JYF
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 01:16:59 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250618011655epoutp04c479bc8dcc0a85f6d5dc4229181cf4d3~J-jCg5B0f1820818208epoutp04e
	for <linux-phy@lists.infradead.org>; Wed, 18 Jun 2025 01:16:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250618011655epoutp04c479bc8dcc0a85f6d5dc4229181cf4d3~J-jCg5B0f1820818208epoutp04e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750209415;
	bh=kJtuG8LEDcYSFAfIXOntrtk20/ZtcCaun/G8S26fAFA=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=SZSwcp6VAVJCuEGMrd9h3aywaQNCUxF18jr/iWIqWA/5LRbB6ybEXuQm6foqLvtDk
	 Qf8gq2tncGDg74cjACfxyXFT/4e1uJDGutJdh3C4nJ4X9dqI+9cJknXcaTwDbMlhcm
	 Q1FsUkmfEZd+LRGgJugOsB3qVkpn/JR2QkdbB2eI=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250618011654epcas5p49a82be1ea2581070ed7fff72bda51313~J-jB9rluI2305723057epcas5p4q;
	Wed, 18 Jun 2025 01:16:54 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.178]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bMQnJ47DHz3hhTG; Wed, 18 Jun
	2025 01:16:52 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250617172501epcas5p24ed02011139817ab0a947cf24dbac464~J5HBkVc0u0301503015epcas5p23;
	Tue, 17 Jun 2025 17:25:01 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250617172458epsmtip2fbf57099ebaa2954678ed528a0d39971~J5G_prIYN3172131721epsmtip2P;
	Tue, 17 Jun 2025 17:24:58 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Neil Armstrong'"
	<neil.armstrong@linaro.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250616-perfect-fervent-robin-a1bc3c@kuoka>
Subject: RE: [PATCH v3 9/9] arm64: dts: exynos: ExynosAutov920: add USB and
 USB SS combo phy nodes
Date: Tue, 17 Jun 2025 22:54:57 +0530
Message-ID: <000101dbdfac$c1a35f40$44ea1dc0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNTkACKxnsdZBPuyPiYuNftoBZF1gGRKuf5ApVTYEcCparjMQJvpOKesM5XFRA=
Content-Language: en-in
X-CMS-MailID: 20250617172501epcas5p24ed02011139817ab0a947cf24dbac464
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055106epcas5p46a2e5e2d6f0e8811644643f6282fd9ca
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055106epcas5p46a2e5e2d6f0e8811644643f6282fd9ca@epcas5p4.samsung.com>
	<20250613055613.866909-10-pritam.sutar@samsung.com>
	<9455a4e1-6352-4832-ac9f-2816f889c3a4@linaro.org>
	<20250616-perfect-fervent-robin-a1bc3c@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_181658_660907_BAD9B2CA 
X-CRM114-Status: GOOD (  11.94  )
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

Hi Krzysztof,

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 16 June 2025 01:39 PM
> To: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Pritam Manohar Sutar <pritam.sutar@samsung.com>; vkoul@kernel.org;
> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; m.szyprowski@samsung.com;
> s.nawrocki@samsung.com; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org;
> rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v3 9/9] arm64: dts: exynos: ExynosAutov920: add USB
> and USB SS combo phy nodes
> 
> On Fri, Jun 13, 2025 at 11:12:26AM GMT, neil.armstrong@linaro.org wrote:
> > On 13/06/2025 07:56, Pritam Manohar Sutar wrote:
> > >   		usbdrd31_hsphy: phy@16490000 {
> > >   			compatible = "samsung,exynosautov920-usbdrd-
> hsphy";
> > >   			reg = <0x16490000 0x0200>;
> > > @@ -1109,8 +1120,8 @@ usbdrd31_dwc3: usb@0 {
> > >   					 <&cmu_hsi1
> CLK_MOUT_HSI1_USBDRD>;
> > >   				clock-names = "ref", "susp_clk";
> > >   				interrupts = <GIC_SPI 491
> IRQ_TYPE_LEVEL_HIGH>;
> > > -				phys = <&usbdrd31_hsphy 0>;
> > > -				phy-names = "usb2-phy";
> > > +				phys = <&usbdrd31_hsphy 0>,
> <&usbdrd31_ssphy 0>;
> > > +				phy-names = "usb2-phy", "usb3-phy";
> > >   				snps,has-lpm-erratum;
> > >   				snps,dis_u2_susphy_quirk;
> > >   				snps,dis_u3_susphy_quirk;
> >
> > I think at least patch 6 & 9 should be squashed.
> 
> Yes. Changing lines which were just added is a strong hint, that patchset is
> incorrectly organized.

we will squash these 2 patches in next version of the patch-set (v4).

> 
> >
> > Neil

Thank you.

Regards,
Pritam




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
