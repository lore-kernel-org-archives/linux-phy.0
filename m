Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 153AAC83F1F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 09:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIT1akVCP9cBIcnVgDogmnzocN2CMmsBlfMwUgByIbE=; b=WXWBbeRRCm+8ki
	w49ik+UIv4Y/mKAJwO8ZynZmpExorZb6lKPaydWiWSXfOhgbxc6Y+HDLc7YOoFGI5FOo96qh0P+QH
	QcRWKQFvBhNZeAmipOVQqKGmtBinMQuNa4vMCKgRv/vxSS25b5X+ZRY4r63myXXBX4ZyFsvpAXMUi
	WLgI0F8PWnGjbrgjbv+08l5lIH4JFNbuDWMPVvxY04WHMmiyq5Hqgh5c3N/Z8e9nI+5WXiBaytAhk
	v/AuqD/fRJRPJP4mL65TzGGqdZBUAo4iRlkK18DUOop4e6mJ6+NktG/aLrOwAgFgZO0ic8/LxbFTA
	tD4r+ii9NYzHE9K3CbJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnDT-0000000BHgw-3CZB;
	Thu, 10 Jul 2025 09:05:19 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZm6h-0000000B51J-32fy
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 07:54:17 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250710075408epoutp0235aa79f8268dfdd28dc5dc6aa99bad1f~Q1KJfM1un1723017230epoutp02h
	for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 07:54:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250710075408epoutp0235aa79f8268dfdd28dc5dc6aa99bad1f~Q1KJfM1un1723017230epoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1752134048;
	bh=sU5CNr0QBgtWFGV78GzIhAyOCjgZlILuvDXa/fOPmvg=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=IHwa/HQoR12RfCWGPXCs3wFVz43sqQkIr+e/qvXwWsa+Q4bX5P8kRtF6Ja2Vu2yCW
	 PDhGQNZH50EEYSezVZQiTwsy9BcIynnlvExcwQOpiez9c5AOiwc1LTNyStm94nOC3m
	 Ris+aESToNFDVNSyWbol2rG9rXOIJh9na+tY/UHQ=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250710075408epcas5p3e7eb81652514ab73f69e247e00d1f9e0~Q1KIzbU7H2522625226epcas5p3O;
	Thu, 10 Jul 2025 07:54:08 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.179]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bd6YT0z7nz3hhTC; Thu, 10 Jul
	2025 07:54:05 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250709084656epcas5p38f9d9b674f152c0320e9d39afe120cb5~QiO82hp8o0301603016epcas5p3M;
	Wed,  9 Jul 2025 08:46:56 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250709084652epsmtip22e1079a1c27c4cb195263f8c31e4354e~QiO54VHas2181121811epsmtip2U;
	Wed,  9 Jul 2025 08:46:52 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20250706-fresh-meaty-cougar-5af170@krzk-bin>
Subject: RE: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Wed, 9 Jul 2025 14:16:51 +0530
Message-ID: <07d301dbf0ae$0658cbe0$130a63a0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJAgQZ9LFXBZrDskwNBYris6jFv1AKCX9A9Aa5wAf0Bi5UAq7Myc6PA
Content-Language: en-in
X-CMS-MailID: 20250709084656epcas5p38f9d9b674f152c0320e9d39afe120cb5
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_005416_090477_694C372E 
X-CRM114-Status: GOOD (  21.82  )
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
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: 06 July 2025 03:11 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
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
> On Tue, Jul 01, 2025 at 05:37:01PM +0530, Pritam Manohar Sutar wrote:
> > Add a dedicated compatible string for USB HS phy found in this SoC.
> > The SoC requires two clocks, named "phy" and "ref" (same as clocks
> > required by Exynos850).
> >
> > It also requires various power supplies (regulators) for the internal
> > circuitry to work. The required voltages are:
> > * avdd075_usb - 0.75v
> > * avdd18_usb20 - 1.8v
> > * avdd33_usb20 - 3.3v
> >
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> No, really. Look:
> 
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> >  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 37 +++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> > index e906403208c0..2e29ff749bba 100644
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
> > +  avdd075_usb-supply:
> > +    description: 0.75V power supply for USB phy
> > +
> > +  avdd18_usb20-supply:
> > +    description: 1.8V power supply for USB phy
> > +
> > +  avdd33_usb20-supply:
> > +    description: 3.3V power supply for USB phy
> > +
> 
> None of these were here. Follow DTS coding style... but why are you adding
> completely new supplies?

Digital supplies were here. Need Analog supplies for exynosautov920, hence added new Analog supplies; 'a'vdd075_usb, 'a'vdd18_usb20, 'a'vdd33_usb20

Will add "full stops" for DTS coding style in description.

> 
> 
> >  required:
> >    - compatible
> >    - clocks
> > @@ -235,6 +245,33 @@ allOf:
> >
> >          reg-names:
> >            maxItems: 1
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - samsung,exynosautov920-usbdrd-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 2
> > +          maxItems: 2
> > +
> > +        clock-names:
> > +          items:
> > +            - const: phy
> > +            - const: ref
> > +
> > +        reg:
> > +          maxItems: 1
> > +
> > +        reg-names:
> > +          maxItems: 1
> > +
> > +      required:
> > +        - avdd075_usb-supply
> > +        - avdd18_usb20-supply
> > +        - avdd33_usb20-supply
> 
> Neither was this entire diff hunk here.
> 
> This was part of other block for a reason.

Added regulators in driver. This block is added for regulators (other block does not have "required" field for power supplies)
if excluded this block,  
"make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml" will fail as mentioned below 
		
/home/pritam.sutar/workspace/auto/kitt2/projects/upstream/src/kernel/github/linux-next/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dtb: phy@16480000: Unevaluated properties are not allowed ('avdd075_usb-supply', 'avdd18_usb20-supply', 'avdd33_usb20-supply' were unexpected)
	from schema $id: http://devicetree.org/schemas/phy/samsung,usb3-drd-phy.yaml#
/home/pritam.sutar/workspace/auto/kitt2/projects/upstream/src/kernel/github/linux-next/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dtb: phy@16490000: Unevaluated properties are not allowed ('avdd075_usb-supply', 'avdd18_usb20-supply', 'avdd33_usb20-supply' were unexpected)
		from schema $id: http://devicetree.org/schemas/phy/samsung,usb3-drd-phy.yaml#
/home/pritam.sutar/workspace/auto/kitt2/projects/upstream/src/kernel/github/linux-next/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dtb: phy@16500000: Unevaluated properties are not allowed ('avdd075_usb-supply', 'avdd18_usb20-supply', 'avdd33_usb20-supply' were unexpected)
		from schema $id: http://devicetree.org/schemas/phy/samsung,usb3-drd-phy.yaml#
/home/pritam.sutar/workspace/auto/kitt2/projects/upstream/src/kernel/github/linux-next/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dtb: phy@16510000: Unevaluated properties are not allowed ('avdd075_usb-supply', 'avdd18_usb20-supply', 'avdd33_usb20-supply' were unexpected)
		from schema $id: http://devicetree.org/schemas/phy/samsung,usb3-drd-phy.yaml#
/home/pritam.sutar/workspace/auto/kitt2/projects/upstream/src/kernel/github/linux-next/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dtb: phy@16520000: Unevaluated properties are not allowed ('avdd075_usb-supply', 'avdd18_usb20-supply', 'avdd33_usb20-supply' were unexpected)
		from schema $id: http://devicetree.org/schemas/phy/samsung,usb3-drd-phy.yaml#

Note: These patches are being validated by enabling DTS (However, DTS patches are planned in next phase).

If you have any idea to re-use existing block by differentiating required power supplies, please suggest.

> 
> NAK
> 
> Best regards,
> Krzysztof



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
