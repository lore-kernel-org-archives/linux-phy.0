Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6FDC2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 08:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHZMEJySv8Gn7nGS1PNQ0UQRiuoJASpqKXAbVtnQ1kY=; b=QoRcDkbmHiBL1p
	J5Hn0uP9veUbt3V4lz3mjVkjVTOHoyf1XxHGLOvvOSCImVoaqu6aVimkn4JZtMklef86smu5vAhoH
	WI9uydOzvwRK8fMuX1Cr9jDIvYSTwIuMGJiILKMWCcgaTNItK3ggJ3qecsC1Zbp8YcGkqOQ2pEISb
	zSkLusb5FBpjSG+qi9uz9l8zg8BzD9a5hfYgvUPdp7HeWWVT6N4lxR0uCV6l4MkdAz7OeEnTZx7SU
	lUnVq69Q/sjmcV/PjQlBr0x83jhLW3RJunXjQYvRy3JiDLtlRrvrXs+Nl1a7CgkwcA+LWvPMeJCp6
	zJc1b3YERH8TEntP6YGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHenc-0000000F9il-2Tb2;
	Wed, 21 May 2025 08:27:40 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHelV-0000000F9Qv-3CCj
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 08:25:33 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250521082523epoutp0398842db8acdc9451e8ecf3d744c06090~BfVJ5MBX71829018290epoutp03A
	for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 08:25:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250521082523epoutp0398842db8acdc9451e8ecf3d744c06090~BfVJ5MBX71829018290epoutp03A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1747815923;
	bh=9QJ3cjEqZU1UJFVrEowYgh2HxNDjNRWao651NAg5LJI=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=eADti6EFUzRNBLHchJl8lPOoqwzan2s6w8U8b5kYvcWZPnVkmXa9gylVQIl5LfbuJ
	 BEbOYtAues/ROtSyFi+g3qYLE1azuqbw35RT9Hwe61g359mgHiKXcxvKijtAQlk771
	 Zty7A+zMdNV7ILDbyJn1PfdNWnjBk2E4ezSNNdMs=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250521082522epcas5p2310f2570d3b813b7d8e7e2669edb76d3~BfVJOsz2G2172921729epcas5p28;
	Wed, 21 May 2025 08:25:22 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.180]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4b2Pcd13nsz3hhTC; Wed, 21 May
	2025 08:25:21 +0000 (GMT)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250521064841epcas5p13a7f360d243dbc3c1ff1a0051303c769~BeAufbUsD2191921919epcas5p1R;
	Wed, 21 May 2025 06:48:41 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20250521064841epsmtrp1fe7b829e1be5c0aa371ff404fd390dca~BeAuebTWp0935509355epsmtrp1b;
	Wed, 21 May 2025 06:48:41 +0000 (GMT)
X-AuditID: b6c32a29-fda1d2400000223e-0b-682d77494455
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	90.AE.08766.9477D286; Wed, 21 May 2025 15:48:41 +0900 (KST)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250521064838epsmtip214b1d33b1b916e5dac6ae4a1f19bdc59~BeArJG0SU2197721977epsmtip25;
	Wed, 21 May 2025 06:48:37 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <0615877e-247a-419b-b4d6-de377cb40914@kernel.org>
Subject: RE: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add
 dt-schema for ExynosAutov920
Date: Wed, 21 May 2025 12:18:36 +0530
Message-ID: <000001dbca1c$636ca080$2a45e180$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIiRnTfgkV106HBI/lpdza94uXQvgBQmjeRAP0KzpUC9NC6E7MtksEg
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsWy7bCSvK5nuW6GwZNnShYP5m1js9jyajOL
	xZq955gs7u1Yxm4x/8g5VotrNxayW/z5d57N4mjrf2aLl7PusVmcP7+B3WLT42usFpd3zWGz
	mLDqG4vFjPP7mCzWHrnLbnH+RRerxYYZ/1gs/u/ZwW7x5ecDZovDb9pZLY4s/8hksfPOCWYH
	MY+T6zYzeWxa1cnmcefaHjaPzUvqPfq2rGL0+LxJLoAtissmJTUnsyy1SN8ugStj2u7VbAUv
	ZStWrfrE2sA4V7yLkZNDQsBEouXJApYuRi4OIYHdjBLbjj5ig0jISDyatpEVwhaWWPnvOTtE
	0XNGidP3vgMVcXCwCZhLzF2nDhIXETjPJPFoxiNmEIdZ4DCTxKcps6DGfmeU6OxvBxvFKWAn
	0bygH2yFsECKxOVPy5lAbBYBVYlpp/uYQKbyClhKLJplAxLmFRCUODnzCQuIzSygLfH05lM4
	e9nC18wQ1ylI/Hy6DGy8iICbxM7WZYwQNeISR3/2ME9gFJ6FZNQsJKNmIRk1C0nLAkaWVYyS
	qQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwfGupbmDcfuqD3qHGJk4GA8xSnAwK4nwxq7Q
	yRDiTUmsrEotyo8vKs1JLT7EKM3BoiTOK/6iN0VIID2xJDU7NbUgtQgmy8TBKdXANNHuf5HQ
	o8rb1z+ev724wKt5kvmrdedY50gJzuJxYvmu2t+Z9Ts25vO6ae9NDzFdZ0k/fsZ99o6YuS+0
	NF1ZnxZKvzu74rrxhMDNamy/7/5qmbe/geNTgmroP7V2pvwTvRWGp5zWxuoYfd3dl5z84PHq
	yLVKN8zSv3ilFLDeFEzbf+T0Aa/zGzcd5HmgILtG7mzR58DEDbLcS593P/ZI9J110Zb10XXN
	JLUJ+XMTZLKeJGxIVT/qfHPRGWe/0yxNttwaXnatP4R5V63R7bsXqPCtSOopo5LltXfbN4VK
	p3JGH3spebLl0Kp7x7TaeI0eaXv9TpOau17edk9S45pDYqX6Mw98MDhbseSNq0LeHyWW4oxE
	Qy3mouJEAP03hn1mAwAA
X-CMS-MailID: 20250521064841epcas5p13a7f360d243dbc3c1ff1a0051303c769
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250516101800epcas5p49fdae57cdf1fbec0427720ee38b0f925
References: <20250516102650.2144487-1-pritam.sutar@samsung.com>
	<CGME20250516101800epcas5p49fdae57cdf1fbec0427720ee38b0f925@epcas5p4.samsung.com>
	<20250516102650.2144487-2-pritam.sutar@samsung.com>
	<0615877e-247a-419b-b4d6-de377cb40914@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_012532_036994_CAAE410D 
X-CRM114-Status: GOOD (  20.64  )
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

Thank you for the reviewing the patches.

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 20 May 2025 01:15 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; vkoul@kernel.org;
> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add dt-
> schema for ExynosAutov920
> 
> On 16/05/2025 12:26, Pritam Manohar Sutar wrote:
> > Add a dedicated compatible for USB phy found in this SoC
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> >  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 27 +++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> 
> A nit, subject: drop second/last, redundant "dt-schema for". The "dt-bindings"
> prefix is already stating that these are bindings in dtschema format.
> See also:
> https://protect2.fireeye.com/v1/url?k=e78ee20f-b815db03-e78f6940-
> 000babff3563-8256a76d4c2ebd67&q=1&e=1643274a-07fa-4563-af27-
> b2f2eff30417&u=https%3A%2F%2Felixir.bootlin.com%2Flinux%2Fv6.7-
> rc8%2Fsource%2FDocumentation%2Fdevicetree%2Fbindings%2Fsubmitting-
> patches.rst%23L18
> 

Will update the commit title as below
"dt-bindings: phy: samsung,usb3-drd-phy: add ExynosAutov920 compatible"

> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > index fdddddc7d611..c50f4218ded9 100644
> > --- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > @@ -32,6 +32,7 @@ properties:
> >        - samsung,exynos7-usbdrd-phy
> >        - samsung,exynos7870-usbdrd-phy
> >        - samsung,exynos850-usbdrd-phy
> > +      - samsung,exynosautov920-usb31drd-phy
> >
> >    clocks:
> >      minItems: 2
> > @@ -204,6 +205,32 @@ allOf:
> >          reg-names:
> >            maxItems: 1
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: samsung,exynosautov920-usb31drd-phy
> > +    then:
> > +      $ref: /schemas/usb/usb-switch.yaml#
> > +
> > +      properties:
> > +        clocks:
> > +          items:
> 
> Why there is no main PHY clock?

external crystal clk (ext_xtal) is used as main phy clk.

> 
> > +            - description: ext_xtal clock
> > +            - description: reference clock
> 
> Both external oscillator and reference clocks? What are these clocks?

ext_xtal is used as PHY clock to access register and reference clock 
for PHY operations.

Will add more description in patch.

> 
> > +
> > +        clock-names:
> > +          items:
> > +            - const: ext_xtal
> > +            - const: ref
> > +
> > +        reg:
> > +          minItems: 1
> 
> No, there is no such syntax. Drop.

Will remove this

> 
> > +          maxItems: 1
> > +
> > +        reg-names:
> > +          minItems: 1
> 
> No, look at existing code and do the same.

Will replace "minItems"  by "maxItems"

> 
> > +
> >  unevaluatedProperties: false
> >
> >  examples:
> 
> 
> Best regards,
> Krzysztof

Thank you. 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
