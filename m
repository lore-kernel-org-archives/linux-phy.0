Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E88CC83F17
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 05:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cti5w1sVIqtWOtstm5rnRlRMxR+TX1fCLIRVvDLd3h4=; b=3Fk4OBc+vZk/S2
	mwNLhiZwOs/E7lUFQjhEL1hQQPeN1H4bWHzDF0kjcHMvIKru8a4i2Q4aplvItZbVhj27EYHiCwE5T
	8haNrIibAm5hKo+GAaDiLxMYrnBI5PX4SdHapuZT2mfOSZxydz0vzg5GEV6bsL9zTZpPeYUjUAnKa
	xExRdIkjkCknSgW7qtXg5S6rgBjRfASj3TulzEjPBDbK2i6DQttkjdJ69PBV6EfZLSXAyi+4WKcl1
	i58bxpMDLCl6uzGrkODW6UzsosqZCEBfT+yG/JZ1ybP54hixgHa7CGdKsHLYKc+oL2pksf8hUr4Z9
	JE3YXiWxnRncPX1t2nRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueRpy-000000042lY-010m;
	Wed, 23 Jul 2025 05:16:18 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueRmC-000000042UQ-1puB
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 05:12:29 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250723051215epoutp042cd579b9156179f0d6884ec0bc681e3b~UyVhC16tS0932009320epoutp04t
	for <linux-phy@lists.infradead.org>; Wed, 23 Jul 2025 05:12:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250723051215epoutp042cd579b9156179f0d6884ec0bc681e3b~UyVhC16tS0932009320epoutp04t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1753247535;
	bh=IoOtrbeFHn5e1/Xtu2aEuqosP9/5TZJzgfaIJ8FAwVw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=YzpXVGaeKBdahD4O1K7MxAae0WhiCSSMJ/4EqEiCWru/oOvUNtko+rgHcnJNA03hr
	 94UXec9t3f7jWjVE0bpi72c6E5bY6BEY8VYztjvTqTpZcCapc4O83DDy5T6wWkvpdf
	 tgcTdTJpoSP4byk6Y9GIFVEj0AvOSnPbA40pBn3k=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250723051215epcas5p212e2b5380f798498c5c80f442874a239~UyVgY52qc2028920289epcas5p2l;
	Wed, 23 Jul 2025 05:12:15 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.92]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bn2Lj5rTmz6B9m4; Wed, 23 Jul
	2025 05:12:13 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250723051134epcas5p13eb4eedb2beb180423c5237f4a272f06~UyU66C8CP1233212332epcas5p1N;
	Wed, 23 Jul 2025 05:11:34 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250723051131epsmtip2df639fe0e527bf88b1c968e311ad775e~UyU3yq7j60675706757epsmtip2K;
	Wed, 23 Jul 2025 05:11:31 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<neil.armstrong@linaro.org>, <kauschluss@disroot.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <9a97cc9e-2221-44d6-83e9-25b1bec10a6f@kernel.org>
Subject: RE: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Wed, 23 Jul 2025 10:41:30 +0530
Message-ID: <000901dbfb90$42873060$c7959120$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJAgQZ9LFXBZrDskwNBYris6jFv1AKCX9A9Aa5wAf0Bi5UAqwCML2yKAWUlSf8CRPacEQIi1iyNAmb2xVkCD/Nw+7Lxui8Q
Content-Language: en-in
X-CMS-MailID: 20250723051134epcas5p13eb4eedb2beb180423c5237f4a272f06
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_221225_920740_76433BEB 
X-CRM114-Status: GOOD (  18.65  )
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
> Sent: 22 July 2025 11:37 AM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; 'Krzysztof Kozlowski'
> <krzysztof.kozlowski@linaro.org>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; neil.armstrong@linaro.org;
> kauschluss@disroot.org; ivo.ivanov.ivanov1@gmail.com;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com; linux-
> phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> On 22/07/2025 06:34, Pritam Manohar Sutar wrote:
> >>>> Nothing is explained in changelog/cover letter. You claim you only
> >>>> added Rb
> >> tag.
> >>>> This is an entirely silent change while keeping the review.
> >>>
> >>> Will add more explanations in cover letter/changelog why this block is
> added.
> >>>
> >>>> Combined with not even following DTS style!
> >>>
> >>> Ok got it. Will change supplies name as below avdd075_usb =>
> >>> avdd075-usb
> >>> avdd18_usb20 => avdd18-usb20
> >>> avdd33_usb20 => avdd33-usb20
> >>>
> >>> Confirm the above change that is meant in terms of DTS style.
> >> Yes. I have doubts that actual supplies have suffix usb20. Are there
> >> more than one avdd18 for this block?
> >>
> >
> > Yes, there are more than one vdd18 supplies for this block.
> 
> And their names are?
> 
> >
> > Re-analysed your comment on adding new supplies.
> > Going to re-use existing supplies as mentioned below, rather than
> > introducing new supplies
> >
> >   dvdd-usb20-supply   => for 0.75v
> >   vddh-usb20-supply   => for 1.8v
> >   vdd33-usb20-supply => for 3.3v
> 
> 
> You just expect us to guess whether this is correct...

Sorry about not being clear so far. 

V920 needs three supplies, 0.75v, 1.8v and 3.3v for USB PHY
The naming convention used in the schematic are
avdd075-usb, 
avdd18_usb20, 
avdd33_usb20.

However, PHY's user manual just mentions DVDD, VDD33 and VDD18.
Since GS101 binding already using supply names similar to what is mentioned in the PHY user manual.
I thought of using the same instead of earlier naming conventions (which was as per v920 schematic).

Let me know if this make sense or we should be just using as per schematic?

> 
> Best regards,
> Krzysztof

Regards,
Pritam



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
