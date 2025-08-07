Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D020C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 13:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQhmxJx1bgrkNmQidjXVZVftbjUxxdo3+L6xgFaqc6k=; b=l4VnSkRohP8vOI
	xXahO7VChLibzOQO/cM/xqdKWjLWcgqTTieQcY5jfYoq/DccEmmUoKsCNC+njdlsV+yXbE/lFW11R
	VaQA6zS1WMtDv/MWv2caGhxzAtK9xM7CxzN9/ueNrCkl0bsOFAFNfd8ka1yLl/9tfToI/Qv+J/SiW
	vSoYRtE1iAcf4SvKwOo0Dw3E4HArnGHI4Y3CpyfVN5spNOsINivXZAzluWCy7CyBm6aPXJWlVrFO/
	VezZudgQSPwMpKuQsFE3e4C5HyhYPurohpZ/z8mYaTdCixgMnmwtPqz/E+q7/wL3S1Oa3f5dOw/dv
	EfthTPo410P/BpOupsAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk0Eo-00000000d2o-3OHQ;
	Thu, 07 Aug 2025 13:00:54 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk08I-00000000bwq-1i6a
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 12:54:11 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250807125408epoutp0315955ba40968c775e1ff89e838897dd2~ZfUEKiKi-2050120501epoutp03X
	for <linux-phy@lists.infradead.org>; Thu,  7 Aug 2025 12:54:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250807125408epoutp0315955ba40968c775e1ff89e838897dd2~ZfUEKiKi-2050120501epoutp03X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754571248;
	bh=I7mb2jIbUh0JiJnEyqZvPWnQq89a45lYPc+Vw9PnUkQ=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=riD+zuYPQ8FMAYHqyVWVoIVckw9fUxPWmsqyJwBu/tNFxfbZREjBb53BTrmH+zd7+
	 EYcYJGpUCHNTJwHb4vptQSPFciJ0cQNSHHwCLhm8xrUcoA8gizupYYN6K3niUNa2aU
	 8iL/ZXvA6Rg9huEgoHaxiUpuC8Lj0ufXAsbvvMQ8=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250807125407epcas5p35e4cd40e01599ed1499d270c002fba5e~ZfUDKUl9m0574505745epcas5p3v;
	Thu,  7 Aug 2025 12:54:07 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.89]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4byRtj5Pnyz6B9m4; Thu,  7 Aug
	2025 12:54:05 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250807123301epcas5p1a3fbda824228f6723950c0207141e282~ZfBoRl6Kc1848318483epcas5p1q;
	Thu,  7 Aug 2025 12:33:01 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250807123258epsmtip17d549f336ff5d3b7aad36c60d56f06ae~ZfBleqNA-0496104961epsmtip1Q;
	Thu,  7 Aug 2025 12:32:58 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Rob Herring'" <robh@kernel.org>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<igor.belwon@mentallysanemainliners.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250806234309.GA2032999-robh@kernel.org>
Subject: RE: [PATCH v5 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Thu, 7 Aug 2025 18:02:57 +0530
Message-ID: <000101dc0797$69cb0080$3d610180$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ+ZgWj3OwstM5ZbwFL0KmcSzrOlQD+pBMSAdNyF8MCWOIs27LpCJrA
Content-Language: en-in
X-CMS-MailID: 20250807123301epcas5p1a3fbda824228f6723950c0207141e282
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250805114320epcas5p3968288f8d01944d3d730b3094a7befe4
References: <20250805115216.3798121-1-pritam.sutar@samsung.com>
	<CGME20250805114320epcas5p3968288f8d01944d3d730b3094a7befe4@epcas5p3.samsung.com>
	<20250805115216.3798121-6-pritam.sutar@samsung.com>
	<20250806234309.GA2032999-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_055410_784766_5C46881A 
X-CRM114-Status: GOOD (  17.31  )
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

Hi Rob,

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: 07 August 2025 05:13 AM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Cc: vkoul@kernel.org; kishon@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com; linux-
> phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> samsung-soc@vger.kernel.org; rosa.pila@samsung.com;
> dev.tailor@samsung.com; faraz.ata@samsung.com;
> muhammed.ali@samsung.com; selvarasu.g@samsung.com
> Subject: Re: [PATCH v5 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 combo ssphy
> 
> On Tue, Aug 05, 2025 at 05:22:15PM +0530, Pritam Manohar Sutar wrote:
> > This phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
> > compatible to the USB3.0 SS(5Gbps). It requires two clocks, named
> > "phy" and "ref". The required supplies for USB3.1 are named as
> > vdd075_usb30(0.75v), vdd18_usb30(1.8v).
> >
> > Add schemas for combo ssphy found on this SoC.
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> >  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 19
> +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > index 4a84b5405cd2..7a71cff10fb5 100644
> > --- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-
> phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-
> phy.yaml
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
> > @@ -258,6 +266,17 @@ allOf:
> >          - vdd18-usb20-supply
> >          - vdd33-usb20-supply
> >
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
> Similar issue here.

Will the suggested lines of the code in next version of the patch-set.
Snippet will look as below.

+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynosautov920-usb31drd-combo-ssphy
+    then:
+      required:
+        - dvdd075-usb30-supply
+        - vdd18-usb30-supply
+
+    else:
+      properties:
+        dvdd075-usb30-supply: false
+        vdd18-usb30-supply: false

Thank you.

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
