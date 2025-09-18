Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC02ACAC5A8
	for <linux-phy@archiver.kernel.org>; Thu, 18 Sep 2025 11:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5eLmEHyli08zxBoZy5SZXFa9CdhH7tqKBOgUtU7DgQ=; b=p0Ee91Iazl/0ST
	l3hKXdC0UoNiIGYG1DgnHdAqKugM8QsJ5OMpbazph4NzvG6dOgIekQAAPAeLeZH9FLyycYmTG7uNZ
	0stcx/hAdbfPGMXWNHBtXMuWZeX6VVHf/cV5GBJeApYNK6vXl88hQq+ZZkecFISQ9h9hNnFYW6tNU
	8C7liomt84kkgF01zVeUSSIDYe+kUd/hzFnFvrzdl3Nv0/jzLtwco/d9e2usM20sYtiMS+7bn9Ta0
	KF1ytXk3R12ptlMSd6bTHUV9HgpPWOr/42dkuhXL0YnBPEa3zsZoP82QJngJiX/EzOpxXWF/RkoeG
	JsXrKdeM1SN9n1km/70Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzDEV-0000000HHts-1mcA;
	Thu, 18 Sep 2025 11:55:27 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzDEQ-0000000HHpj-3WYH
	for linux-phy@lists.infradead.org;
	Thu, 18 Sep 2025 11:55:26 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250918115518epoutp03c9966979bdee5e5b45296f6de3f995e1~mXmsZusYu1835518355epoutp03D
	for <linux-phy@lists.infradead.org>; Thu, 18 Sep 2025 11:55:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250918115518epoutp03c9966979bdee5e5b45296f6de3f995e1~mXmsZusYu1835518355epoutp03D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1758196518;
	bh=DN/3t4hL6cT5/e9+GaAketYE06VkieyzpyBena7YBAU=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=S03ItJ3IQdQQwzdY9s7ASFakivQ36sIUWXwLO61w8ftRsN53Tb2NXDysnHj+lNj8J
	 FWT2Q/YHjpqwMVS6gWSFjHJL6VFmuy/LWOi3HZQTEzz3ZvPuzdobYeajaewrFVsycQ
	 AWrqjgDRZ7QVjAYQm7x54iHahcVH9gbU7xDXqUfw=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250918115517epcas5p3c7dd05a1fae6fff0ce95db44751deea8~mXmrZwiaW3121231212epcas5p3M;
	Thu, 18 Sep 2025 11:55:17 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.88]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4cSDbS4F1Hz2SSKb; Thu, 18 Sep
	2025 11:55:16 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250918115516epcas5p14397d311bb7c6c1f2c0a60109d298bb7~mXmqAPTm12886628866epcas5p1E;
	Thu, 18 Sep 2025 11:55:16 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250918115511epsmtip15cafde6c107dd91d89f11e8293e860e4~mXmmGGj6Y0665806658epsmtip1c;
	Thu, 18 Sep 2025 11:55:11 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<igor.belwon@mentallysanemainliners.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <0df74c2b-31b9-4f29-97d3-b778c8e3eaf1@kernel.org>
Subject: RE: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Thu, 18 Sep 2025 17:25:10 +0530
Message-ID: <007801dc2893$18ed4a20$4ac7de60$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgGabj6EAmTXuDcA7fJUJrQHWRvw
Content-Language: en-in
X-CMS-MailID: 20250918115516epcas5p14397d311bb7c6c1f2c0a60109d298bb7
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072936epcas5p4a28d0e63c7f0792b516b0cbc68bf3a8e@epcas5p4.samsung.com>
	<20250903073827.3015662-2-pritam.sutar@samsung.com>
	<0df74c2b-31b9-4f29-97d3-b778c8e3eaf1@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_045523_497129_A4FC43BE 
X-CRM114-Status: GOOD (  12.43  )
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
> Sent: 18 September 2025 08:15 AM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; vkoul@kernel.org;
> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v8 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 HS phy compatible
> 
> On 03/09/2025 16:38, Pritam Manohar Sutar wrote:
> > diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-
> phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-
> phy.yaml
> > index e906403208c0..8d8114eb5660 100644
> > --- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > @@ -34,6 +34,7 @@ properties:
> >        - samsung,exynos7870-usbdrd-phy
> >        - samsung,exynos850-usbdrd-phy
> >        - samsung,exynos990-usbdrd-phy
> > +      - samsung,exynosautov920-usbdrd-phy
> >
> >    clocks:
> >      minItems: 1
> > @@ -110,6 +111,15 @@ properties:
> >    vddh-usbdp-supply:
> >      description: VDDh power supply for the USB DP phy.
> >
> > +  dvdd-supply:
> > +    description: 0.75V power supply for the USB phy.
> 
> So this is existing dvdd-usb20-supply.
> 
> Same for all of the rest.
> 

Yes, we have already discussed this and convergence was to use the 
conventions which are mentioned in the Data-book. So, I updated the 
supply names accordingly. 

Please see the below communications for the same. 

https://lore.kernel.org/linux-phy/83dc9435-5850-425d-b345-52e84ef9262c@kernel.org/
https://lore.kernel.org/linux-phy/6e1c67d2-9bfa-442a-9d53-8c5970a2a9ef@kernel.org/

> Best regards,
> Krzysztof

Thank you,

Regards,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
