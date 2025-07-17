Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BD6C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jul 2025 12:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OScZutn9YzSm8DknBX5S0BFpHlqXBhcEQ28f5Bz2WNU=; b=IqTmPfaM+ZTvFI
	FLvg4f7nVF/Ghb0fL5lyl7O+NKKD9UTqjDdEs+nomlcpK74/xdDO8q97w90B4ekLKvdo4T79jXGnu
	9IR93G192phmz0UHv5AEGu9e0yEo8KuQPKTeVKwkMURhuWhwVK9yg/9LjeNr4QCM8kFJ8ncEOAauT
	9+qoibLJBOipjzO2C2y76m2DsIrxjfDY5AEHvgW2i4OGfS7wMmKGU0UpriZIBFp1sHiTdSfrI8ftf
	W66K2cQLqJJQvfKgB3+IUYA/4Dc2rDW0iPm+9iUiHkP53ulx24UVrAS/yAWo8mn65sxr0qUcdQ3im
	cbDbQYRx4NSWce/rWcJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucO3X-0000000AA9j-2B42;
	Thu, 17 Jul 2025 12:49:47 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucMeL-00000009xjj-44FO
	for linux-phy@lists.infradead.org;
	Thu, 17 Jul 2025 11:19:45 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250717111935epoutp026fb2b341a5a9ed8ec6900d33e8970b27~TBehwCnHa1409614096epoutp02L
	for <linux-phy@lists.infradead.org>; Thu, 17 Jul 2025 11:19:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250717111935epoutp026fb2b341a5a9ed8ec6900d33e8970b27~TBehwCnHa1409614096epoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1752751175;
	bh=iVJvMorr9e4gO7pUnO5sm7M1f1+TEwB413ip1IEG1+U=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=m0WSaaEnrPcYoyHXonwaCJPC5O1DJXYPSMbaJ1NNTjFy5dHNcw2/kZUPptSoj/9x4
	 ZL2aSxPpbzSkvWGplDV4gi0v8Xx4UiB+aDQsc+2k0gwbjxNLq/Dx7GW0cNGwsAo7fw
	 JdZBZ/EA1wJsiHudXmwUfCc0Z5x3OaL+YmIBHIa8=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250717111934epcas5p2c6c599d499f95a22472d5c1d136da103~TBeg8yiOm1560515605epcas5p21;
	Thu, 17 Jul 2025 11:19:34 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.89]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bjVnL0D8mz6B9m4; Thu, 17 Jul
	2025 11:19:34 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250717111319epcas5p2966882346d4b080ee66304c282244b04~TBZDCzSPL2396823968epcas5p2f;
	Thu, 17 Jul 2025 11:13:19 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250717111316epsmtip2442ee3e177e39afa1ddecb88214d4136~TBZAAUg0_2779927799epsmtip2O;
	Thu, 17 Jul 2025 11:13:15 +0000 (GMT)
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
In-Reply-To: <9a2d0ad7-cb1f-473d-a91a-3a1b59b71280@kernel.org>
Subject: RE: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Thu, 17 Jul 2025 16:43:14 +0530
Message-ID: <000c01dbf70b$ccdbf630$6693e290$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-in
Thread-Index: AQJAgQZ9LFXBZrDskwNBYris6jFv1AKCX9A9Aa5wAf0Bi5UAqwCML2yKAWUlSf+zL6XGYA==
X-CMS-MailID: 20250717111319epcas5p2966882346d4b080ee66304c282244b04
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_041942_646797_235D5447 
X-CRM114-Status: GOOD (  24.12  )
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
> Sent: 12 July 2025 01:44 PM
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
> On 09/07/2025 10:46, Pritam Manohar Sutar wrote:
> > Hi Krzysztof,
> >
> >> -----Original Message-----
> >> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Sent: 06 July 2025 03:11 PM
> >> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> >> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> >> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> >> andre.draszik@linaro.org; peter.griffin@linaro.org;
> >> neil.armstrong@linaro.org; kauschluss@disroot.org;
> >> ivo.ivanov.ivanov1@gmail.com; m.szyprowski@samsung.com;
> >> s.nawrocki@samsung.com; linux- phy@lists.infradead.org;
> >> devicetree@vger.kernel.org; linux- kernel@vger.kernel.org;
> >> linux-arm-kernel@lists.infradead.org; linux-samsung-
> >> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> >> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> >> selvarasu.g@samsung.com
> >> Subject: Re: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy:
> >> add
> >> ExynosAutov920 HS phy compatible
> >>
> >> On Tue, Jul 01, 2025 at 05:37:01PM +0530, Pritam Manohar Sutar wrote:
> >>> Add a dedicated compatible string for USB HS phy found in this SoC.
> >>> The SoC requires two clocks, named "phy" and "ref" (same as clocks
> >>> required by Exynos850).
> >>>
> >>> It also requires various power supplies (regulators) for the
> >>> internal circuitry to work. The required voltages are:
> >>> * avdd075_usb - 0.75v
> >>> * avdd18_usb20 - 1.8v
> >>> * avdd33_usb20 - 3.3v
> >>>
> >>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> No, really. Look:
> >>
> >>> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> >>> ---
> >>>  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 37 +++++++++++++++++++
> >>>  1 file changed, 37 insertions(+)
> >>>
> >>> diff --git
> >>> a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> index e906403208c0..2e29ff749bba 100644
> >>> ---
> >>> a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yam
> >>> +++ l
> >>> @@ -34,6 +34,7 @@ properties:
> >>>        - samsung,exynos7870-usbdrd-phy
> >>>        - samsung,exynos850-usbdrd-phy
> >>>        - samsung,exynos990-usbdrd-phy
> >>> +      - samsung,exynosautov920-usbdrd-phy
> >>>
> >>>    clocks:
> >>>      minItems: 1
> >>> @@ -110,6 +111,15 @@ properties:
> >>>    vddh-usbdp-supply:
> >>>      description: VDDh power supply for the USB DP phy.
> >>>
> >>> +  avdd075_usb-supply:
> >>> +    description: 0.75V power supply for USB phy
> >>> +
> >>> +  avdd18_usb20-supply:
> >>> +    description: 1.8V power supply for USB phy
> >>> +
> >>> +  avdd33_usb20-supply:
> >>> +    description: 3.3V power supply for USB phy
> >>> +
> >>
> >> None of these were here. Follow DTS coding style... but why are you
> >> adding completely new supplies?
> >
> > Digital supplies were here. Need Analog supplies for exynosautov920,
> > hence added new Analog supplies; 'a'vdd075_usb, 'a'vdd18_usb20,
> > 'a'vdd33_usb20
> >
> > Will add "full stops" for DTS coding style in description.
> 
> You cannot grow one line change into 50 line change and retain the review.

Yes agreed. Will remove "Reviewed-by" tag and requesting you to review the 
patches again and provide your valuable comments.

> >
> >>
> >>
> >>>  required:
> >>>    - compatible
> >>>    - clocks
> >>> @@ -235,6 +245,33 @@ allOf:
> >>>
> >>>          reg-names:
> >>>            maxItems: 1
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            enum:
> >>> +              - samsung,exynosautov920-usbdrd-phy
> >>> +    then:
> >>> +      properties:
> >>> +        clocks:
> >>> +          minItems: 2
> >>> +          maxItems: 2
> >>> +
> >>> +        clock-names:
> >>> +          items:
> >>> +            - const: phy
> >>> +            - const: ref
> >>> +
> >>> +        reg:
> >>> +          maxItems: 1
> >>> +
> >>> +        reg-names:
> >>> +          maxItems: 1
> >>> +
> >>> +      required:
> >>> +        - avdd075_usb-supply
> >>> +        - avdd18_usb20-supply
> >>> +        - avdd33_usb20-supply
> >>
> >> Neither was this entire diff hunk here.
> >>
> >> This was part of other block for a reason.
> >
> > Added regulators in driver. This block is added for regulators (other
> > block does not have "required" field for power supplies) if excluded
> > this block, "make ARCH=arm64 dtbs_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/samsung,usb3-
> drd
> > -phy.yaml" will fail as mentioned below
> 
> 
> Nothing is explained in changelog/cover letter. You claim you only added Rb tag.
> This is an entirely silent change while keeping the review.

Will add more explanations in cover letter/changelog why this block is added.

> Combined with not even following DTS style!

Ok got it. Will change supplies name as below 
avdd075_usb => avdd075-usb
avdd18_usb20 => avdd18-usb20
avdd33_usb20 => avdd33-usb20
   
Confirm the above change that is meant in terms of DTS style.

> 
> It's not acceptable.
> 
> Best regards,
> Krzysztof

Thank you.

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
