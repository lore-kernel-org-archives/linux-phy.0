Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 514E9CA0FE9
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 08:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baZjmz9rp/qyoLDeGmGutlGCiwAix1GZSSWN3IM5GBY=; b=aS+nVz9Sj7yAbi
	bxEIZBxU4ppOEdwbDwj8ENt9u8qno8cc883QxwlIfJq0o2GiaYV+3dTrageEGCfJMQ4GJcDTC0szm
	oED4WU8hJqM9eZ0kDkQ63AZCivEkozkOkzyT91ep3Z9Sn1tmFVjhsp51lXTmD3X2ZZBpnLX419KEp
	8qE+IAOzzlnM8nL7hPTXFbNJM5ZCYMumWoak5q3sMwMYxPl16NNVpS4F2A5Dn3BwSw4azc4MrouNA
	7q8lExPBhLQsN/65hJYyCvU4FxSE1OK1ZNwSDtYllGGa59Qgzn1PJ7HroHKefO3qrY4g3Vk9B37bu
	WwQpmMlwGO3xPsJBpisw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqoj3-0000000AxS5-4ADh;
	Tue, 26 Aug 2025 08:08:18 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqnJJ-0000000Aiws-3oM8
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:37:40 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250826063729epoutp042ae72d022396663c80520ba6f9956ad4~fPbo607-F0456504565epoutp04-
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:37:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250826063729epoutp042ae72d022396663c80520ba6f9956ad4~fPbo607-F0456504565epoutp04-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756190249;
	bh=WmUdeog4n43JlLPwLzabcivOP3kzq6u9GqxXjjFJfy4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=NwpRV8dpQsXrqhS60KikOY7MaGduMakQQ8G758Cf91IqQBwawro5WSiQV3XUXOZf6
	 GqgMDm/pStaDHR9tmWMjcNHJFiV4euJAk6f0xaeV6JIfPTxnRHh1bzOROBGeV8LGIG
	 Vg27PkGrpBYUCMJ9UhXcHhzbXQdtc0BTMdLfj3Ms=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250826063728epcas5p35aa5aa8be589c61f897a378fe0a9d6f7~fPboM9AQb0070300703epcas5p3T;
	Tue, 26 Aug 2025 06:37:28 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.94]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4c9ydM5YS8z2SSKf; Tue, 26 Aug
	2025 06:37:27 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250826063727epcas5p27b42d9103a77296440ed5f47a9dc9b6c~fPbmaKZFJ0989209892epcas5p2_;
	Tue, 26 Aug 2025 06:37:27 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250826063723epsmtip2624718a1eacb328a03895f36f45a703d~fPbjWQ0-82085020850epsmtip2R;
	Tue, 26 Aug 2025 06:37:23 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<igor.belwon@mentallysanemainliners.org>, <johan@kernel.org>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250824-rough-fresh-orangutan-eecb2f@kuoka>
Subject: RE: [PATCH v7 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Tue, 26 Aug 2025 12:07:22 +0530
Message-ID: <007501dc1653$e36c3b50$aa44b1f0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGSd8blfqR9gZc/NH28iGAFaSn12QHbdVSHAGa/K48CXY/t+7Tit6wg
Content-Language: en-in
X-CMS-MailID: 20250826063727epcas5p27b42d9103a77296440ed5f47a9dc9b6c
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250822093022epcas5p42d8c16c851769dab0e1da9d45743ab1f
References: <20250822093845.1179395-1-pritam.sutar@samsung.com>
	<CGME20250822093022epcas5p42d8c16c851769dab0e1da9d45743ab1f@epcas5p4.samsung.com>
	<20250822093845.1179395-6-pritam.sutar@samsung.com>
	<20250824-rough-fresh-orangutan-eecb2f@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_233738_735717_C004CA34 
X-CRM114-Status: GOOD (  23.20  )
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
> Sent: 24 August 2025 02:26 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> johan@kernel.org; m.szyprowski@samsung.com; s.nawrocki@samsung.com;
> linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v7 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 combo ssphy
> 
> On Fri, Aug 22, 2025 at 03:08:44PM +0530, Pritam Manohar Sutar wrote:
> > This phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
> > compatible to the USB3.0 SS(5Gbps). It requires two clocks, named
> > "phy" and "ref". The required supplies for USB3.1 are named as
> > vdd075_usb30(0.75v), vdd18_usb30(1.8v).
> 
> Please do not describe the schema, but hardware. This sentence does not help
> me in my question further.

This is a combo phy having Synopsys usb20 and usb30 phys (these 2 phys are totally different). 
One PHY only supports usb2.0 and data rates whereas another one does usb3.1 ssp+ and usb3.1 ssp
	
This patch only explains about usb30 (since these are two different phys) phy and omitted inclusion of usb20 reference (added separate patch for this patch no 3). 
	
Hope this is clear.

> 
> >
> > Add schemas for combo ssphy found on this SoC.
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> >  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 23 +++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > index f0cfca5736b8..96e5bbb2e42c 100644
> > --- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > @@ -34,6 +34,7 @@ properties:
> >        - samsung,exynos7870-usbdrd-phy
> >        - samsung,exynos850-usbdrd-phy
> >        - samsung,exynos990-usbdrd-phy
> > +      - samsung,exynosautov920-usb31drd-combo-ssphy
> >        - samsung,exynosautov920-usbdrd-combo-hsphy
> >        - samsung,exynosautov920-usbdrd-phy
> >
> > @@ -118,6 +119,12 @@ properties:
> >    vdd18-usb20-supply:
> >      description: 1.8V power supply for the USB 2.0 phy.
> >
> > +  dvdd075-usb30-supply:
> > +    description: 0.75V power supply for the USB 3.0 phy.
> > +
> > +  vdd18-usb30-supply:
> > +    description: 1.8V power supply for the USB 3.0 phy.
> > +
> >  required:
> >    - compatible
> >    - clocks
> > @@ -227,6 +234,7 @@ allOf:
> >                - samsung,exynos7870-usbdrd-phy
> >                - samsung,exynos850-usbdrd-phy
> >                - samsung,exynos990-usbdrd-phy
> > +              - samsung,exynosautov920-usb31drd-combo-ssphy
> >                - samsung,exynosautov920-usbdrd-combo-hsphy
> >                - samsung,exynosautov920-usbdrd-phy
> >      then:
> > @@ -262,6 +270,21 @@ allOf:
> >        properties:
> >          dvdd075-usb20-supply: false
> >          vdd18-usb20-supply: false
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - samsung,exynosautov920-usb31drd-combo-ssphy
> > +    then:
> > +      required:
> > +        - dvdd075-usb30-supply
> > +        - vdd18-usb30-supply
> 
> Why are you adding usb20 and usb30 suffixes to the supplies? These are
> separate devices, so they do not have both variants at the same time.

This is a combo phy consisting of usb2 and usb3 phys combined. 
To drive these separate phys, added suffixes for these supplies respectively.

Moreover, gs101 is also using similar convention for its usb20 and dp supplies. 
Added suffix for usb2 and usb3 as per our last communication https://lore.kernel.org/linux-phy/6e1c67d2-9bfa-442a-9d53-8c5970a2a9ef@kernel.org/

> 
> From this device point of view, the supply is called dvdd075 or vdd18.
> If you open device datasheet (not SoC datasheet), that's how it will be called,
> most likely.

Yes, Agree. In device datasheet, suffixes are not mentioned, but in our board schematic it is mentioned. 
Let me know your suggestion about adding suffixes?

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
