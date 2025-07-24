Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 282DDC83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrXkpJRlC6Cfo6n/WMw6vj6I2GRpuKwYtqDXs9eIdLs=; b=sfJuFWUzVPzudD
	qRqdIL7Zt//Ed6BLhGpWAGmTkJFafX6xJ/HQcka4HS1OBtaq+aZ8zSZWAHX0Z3tgToIddvSsdmhfY
	gWl+R3tyrElSZ4gJBJZQ4icmq4A1AxE2fPeMC6s+5nqtqpPuVt0lNo0B0LC7rgAMyV1Y/bFbOiIz/
	i5g2beisNOKKMK1ZU16/faULh6KtrzuYcKVuJdyt5AKQM3vGl/0Xwc6o/T0FGMNf3PThgENdrIzYN
	RCUi+30jvWLIgyKAh/B2ZMR/jtPEz2j3AkEFWGX6jPTQq0U+vtM2Jv7zwEMwXMZiy3rjbXlOR+7c9
	kOuaI1ENPt4MazGRBvnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewMg-00000007YWH-2BXF;
	Thu, 24 Jul 2025 13:52:06 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesgT-000000078Iv-3dh6
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:56:20 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250724095610epoutp02337325238c204cb8f9bd8053a7903d96~VJ2sEQNgv0970509705epoutp02T
	for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 09:56:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250724095610epoutp02337325238c204cb8f9bd8053a7903d96~VJ2sEQNgv0970509705epoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1753350970;
	bh=u9kGzbP2QPnTerojC0M6PdIstHffL6YDLYBkr55PnyQ=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=tXkLFpum7mpat6+Q/fQl/+zWboM7qSTARv5MQ60rP2NgdQh2zREwk5x/OgwCJm5al
	 W+xnSoXjkNWYQYILSlCmiVs99fZHCMVTnvRJm0+q8WftqcM/JbEifzuPxwUWhUKSfK
	 zTMAgiRRiw42zoNAp9+92fd9twRtNQrgHaxIWP/U=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250724095609epcas5p1f59c0b9b75b092d4b53af00a59df9b79~VJ2rY0ILh1609716097epcas5p1e;
	Thu, 24 Jul 2025 09:56:09 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.93]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4bnmbr5q6pz6B9mJ; Thu, 24 Jul
	2025 09:56:08 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250724095412epcas5p36b38fe9e1b835e731abdbcaf64be1174~VJ0_IgfWj0680206802epcas5p30;
	Thu, 24 Jul 2025 09:54:12 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250724095409epsmtip2c71016c48766841f9a06c5d7f2a181f8~VJ069jbaJ1922819228epsmtip2E;
	Thu, 24 Jul 2025 09:54:08 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Alim Akhtar'" <alim.akhtar@samsung.com>, "'Krzysztof Kozlowski'"
	<krzk@kernel.org>, "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <andre.draszik@linaro.org>,
	<peter.griffin@linaro.org>, <neil.armstrong@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <2a1901dbfbcf$a21b45e0$e651d1a0$@samsung.com>
Subject: RE: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Thu, 24 Jul 2025 15:24:07 +0530
Message-ID: <000001dbfc80$e85fd690$b91f83b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJAgQZ9LFXBZrDskwNBYris6jFv1AKCX9A9Aa5wAf0Bi5UAqwCML2yKAWUlSf8CRPacEQIi1iyNAmb2xVkCD/Nw+wC0VRd5AgU5TrgBzoneLbLPVtqQ
Content-Language: en-in
X-CMS-MailID: 20250724095412epcas5p36b38fe9e1b835e731abdbcaf64be1174
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
	<CGME20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63@epcas5p3.samsung.com>
	<20250701120706.2219355-2-pritam.sutar@samsung.com>
	<20250706-fresh-meaty-cougar-5af170@krzk-bin>
	<07d301dbf0ae$0658cbe0$130a63a0$@samsung.com>
	<9a2d0ad7-cb1f-473d-a91a-3a1b59b71280@kernel.org>
	<000c01dbf70b$ccdbf630$6693e290$@samsung.com>
	<a43cfe4f-8ff9-4dbd-b7f4-07ccc3d8e01b@kernel.org>
	<00ff01dbfac1$ee528860$caf79920$@samsung.com>
	<9a97cc9e-2221-44d6-83e9-25b1bec10a6f@kernel.org>
	<000901dbfb90$42873060$c7959120$@samsung.com>
	<6e1c67d2-9bfa-442a-9d53-8c5970a2a9ef@kernel.org>
	<2a1901dbfbcf$a21b45e0$e651d1a0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_025618_554434_240D2D08 
X-CRM114-Status: GOOD (  23.74  )
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

Hi, 

> -----Original Message-----
> From: Alim Akhtar <alim.akhtar@samsung.com>
> Sent: 23 July 2025 06:15 PM
> To: 'Krzysztof Kozlowski' <krzk@kernel.org>; 'Pritam Manohar Sutar'
> <pritam.sutar@samsung.com>; 'Krzysztof Kozlowski'
> <krzysztof.kozlowski@linaro.org>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; andre.draszik@linaro.org;
> peter.griffin@linaro.org; neil.armstrong@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; m.szyprowski@samsung.com;
> s.nawrocki@samsung.com; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org;
> rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: RE: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> 
> 
> > -----Original Message-----
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: Wednesday, July 23, 2025 2:13 PM
> > To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; 'Krzysztof
> > Kozlowski' <krzysztof.kozlowski@linaro.org>
> > Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> [snip]
> > >>>>> Ok got it. Will change supplies name as below avdd075_usb =>
> > >>>>> avdd075-usb
> > >>>>> avdd18_usb20 => avdd18-usb20
> > >>>>> avdd33_usb20 => avdd33-usb20
> > >>>>>
> > >>>>> Confirm the above change that is meant in terms of DTS style.
> > >>>> Yes. I have doubts that actual supplies have suffix usb20. Are
> > >>>> there more than one avdd18 for this block?
> > >>>>
> > >>>
> > >>> Yes, there are more than one vdd18 supplies for this block.
> > >>
> > >> And their names are?
> > >>
> > >>>
> > >>> Re-analysed your comment on adding new supplies.
> > >>> Going to re-use existing supplies as mentioned below, rather than
> > >>> introducing new supplies
> > >>>
> > >>>   dvdd-usb20-supply   => for 0.75v
> > >>>   vddh-usb20-supply   => for 1.8v
> > >>>   vdd33-usb20-supply => for 3.3v
> > >>
> > >>
> > >> You just expect us to guess whether this is correct...
> > >
> > > Sorry about not being clear so far.
> > >
> > > V920 needs three supplies, 0.75v, 1.8v and 3.3v for USB PHY The
> > > naming convention used in the schematic are avdd075-usb,
> > > avdd18_usb20, avdd33_usb20.
> > >
> > > However, PHY's user manual just mentions DVDD, VDD33 and VDD18.
> >
> >
> > Then dvdd, vdd33 and vdd18.
> >
> > > Since GS101 binding already using supply names similar to what is
> > mentioned in the PHY user manual.
> >
> >
> > GS101 has USB 2.0 and DP, thus the suffix made some sense. I think you
> > have only USB 2.0, that's why I question the suffix.
> >
> I cross checked the schematic of v920 SADK, this is a combo PHY which
> support USB-3.0 as well.
> @ Pritam
> Schema should capture all the supplies including USB-3.0, similar to GS101
> (which has USB2.0 and DP combo).
> So that would be as below:
> dvdd075-usb20-supply
> vdd18-usb20-supply
> vdd33-usb20-supply
> dvdd075-usb30-supply
> vdd18-usb30-supply
> please cross check the supply at your end and do the needful.
> 

Yes, we have a combo PHY that supports USB20 and USB30 and 
need these supplies. Will update the binding accordingly.

> >
> > Best regards,
> > Krzysztof

Thank you.

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
