Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B164C8303C
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 19:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M22rSOcPQnGpOjPE7x5vxuMgfMghYmnetUKmxdSeWL0=; b=jGIVXSyoHZaq3v
	BVl2PG7LFVcZzOAfJS1KgsRzznppzZJdIbYU5Ubuawkkhkb3tHbvzARwUL1ilCH2JLXZACWCwiPAB
	CNsIaXsBnN0KzKBonPyLgRT3Z/kAtA7Y/avUUCXiwzeX4P01s7f8hensn4LHZR6QV02/277xAek3f
	PyboZ8MyoxqY7GstpH571fT9YyL6iU2bzzeeXEm5DBVDYguQQnnkpE9iCXkFpHdA7RzAkEtnprZMp
	+n8rrGCS+J4/EL3jHfrJ2lYFMH5G0eG7tBMxVer63dfjkI2YKWSJ9Vhgj/FEkG1yB4pTYRneknKCO
	V+QkJ6XWCQr0etTPyuLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWgDS-00000006PDG-0Ods;
	Tue, 01 Jul 2025 19:00:26 +0000
Received: from [203.254.224.34] (helo=mailout4.samsung.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWdt1-0000000631b-0uDj
	for linux-phy@lists.infradead.org;
	Tue, 01 Jul 2025 16:31:14 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250701163105epoutp043342ce7736b43015c35331be8553c340~OLZ7qc71x2890828908epoutp04X
	for <linux-phy@lists.infradead.org>; Tue,  1 Jul 2025 16:31:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250701163105epoutp043342ce7736b43015c35331be8553c340~OLZ7qc71x2890828908epoutp04X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751387465;
	bh=NV08uxmKxQiLzKQgdc7Udco8g49OXPRD/TVseEZ79Sg=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=oQ6JxyiSsRb8OkrahQBSHBaP4SgZZP429A35wA+5j7trNIQjUSumf681zPY38ExXE
	 DtAXWVAFrep5Qyi6a4WS7QGBjopcen1fvWduJ1uYz2zPM/3nOWhLMWxmRXHtAk8DnY
	 zHHVzSruJiYtEna+RuSmMWF/ut4IyxrOnuM6kDBk=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250701163104epcas5p1a96bded3717d037acd2cf0fd71346d8f~OLZ6XQIha2226522265epcas5p1u;
	Tue,  1 Jul 2025 16:31:04 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.176]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bWpS62zKGz6B9m6; Tue,  1 Jul
	2025 16:31:02 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250701133519epcas5p487e7452860a95fd78fe65dea6781a0f4~OJAdeuWxM0466004660epcas5p4i;
	Tue,  1 Jul 2025 13:35:19 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250701133516epsmtip2097055360b4361ec0ac62f1bab9d901a~OJAap0Ruh1523815238epsmtip2J;
	Tue,  1 Jul 2025 13:35:16 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Rob Herring'"
	<robh@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-fsd@tesla.com>, <mani@kernel.org>, <lpieralisi@kernel.org>,
	<kw@linux.com>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <f877b3d7-d770-4424-9813-da748775f456@kernel.org>
Subject: RE: [PATCH v2 07/10] dt-bindings: phy: Add PHY bindings support for
 FSD SoC
Date: Tue, 1 Jul 2025 19:05:15 +0530
Message-ID: <02bf01dbea8c$fc835cb0$f58a1610$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFUClgbainc6hQuKSBO0V8ttZVgkwGg1JXJAfs/ltABn1f9rAD4JQ8bAeFf3fS07FvF0A==
Content-Language: en-in
X-CMS-MailID: 20250701133519epcas5p487e7452860a95fd78fe65dea6781a0f4
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250625165319epcas5p3721c19f6e6b482438c62dd1ef784de03
References: <20250625165229.3458-1-shradha.t@samsung.com>
	<CGME20250625165319epcas5p3721c19f6e6b482438c62dd1ef784de03@epcas5p3.samsung.com>
	<20250625165229.3458-8-shradha.t@samsung.com>
	<20250627211721.GA153863-robh@kernel.org>
	<02af01dbea78$24f01310$6ed03930$@samsung.com>
	<f877b3d7-d770-4424-9813-da748775f456@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_093111_905085_D8EE666A 
X-CRM114-Status: GOOD (  36.22  )
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



> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 01 July 2025 16:55
> To: Shradha Todi <shradha.t@samsung.com>; 'Rob Herring' <robh@kernel.org>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-
> fsd@tesla.com; mani@kernel.org; lpieralisi@kernel.org; kw@linux.com; bhelgaas@google.com;
> jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de; m.szyprowski@samsung.com;
> jh80.chung@samsung.com; pankaj.dubey@samsung.com
> Subject: Re: [PATCH v2 07/10] dt-bindings: phy: Add PHY bindings support for FSD SoC
> 
> On 01/07/2025 13:06, Shradha Todi wrote:
> >
> >
> >> -----Original Message-----
> >> From: Rob Herring <robh@kernel.org>
> >> Sent: 28 June 2025 02:47
> >> To: Shradha Todi <shradha.t@samsung.com>
> >> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > linux-
> >> samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; linux-
> >> fsd@tesla.com; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org; kw@linux.com;
> >> bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> >> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de;
> >> m.szyprowski@samsung.com; jh80.chung@samsung.com; pankaj.dubey@samsung.com
> >> Subject: Re: [PATCH v2 07/10] dt-bindings: phy: Add PHY bindings support for FSD SoC
> >>
> >> On Wed, Jun 25, 2025 at 10:22:26PM +0530, Shradha Todi wrote:
> >>> Document PHY device tree bindings for Tesla FSD SoCs.
> >>>
> >>> Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> >>> ---
> >>>  .../bindings/phy/samsung,exynos-pcie-phy.yaml | 25 +++++++++++++++++--
> >>>  1 file changed, 23 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
> >> b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
> >>> index 41df8bb08ff7..4dc20156cdde 100644
> >>> --- a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
> >>> @@ -15,10 +15,13 @@ properties:
> >>>      const: 0
> >>>
> >>>    compatible:
> >>> -    const: samsung,exynos5433-pcie-phy
> >>> +    enum:
> >>> +      - samsung,exynos5433-pcie-phy
> >>> +      - tesla,fsd-pcie-phy
> >>>
> >>>    reg:
> >>> -    maxItems: 1
> >>> +    minItems: 1
> >>> +    maxItems: 2
> >>>
> >>>    samsung,pmu-syscon:
> >>>      $ref: /schemas/types.yaml#/definitions/phandle
> >>> @@ -30,6 +33,24 @@ properties:
> >>>      description: phandle for FSYS sysreg interface, used to control
> >>>                   sysreg registers bits for PCIe PHY
> >>>
> >>> +allOf:
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            enum:
> >>> +              - tesla,fsd-pcie-phy
> >>> +    then:
> >>> +      description:
> >>> +        The PHY controller nodes are represented in the aliases node
> >>> +        using the following format 'pciephy{n}'. Depending on whether
> >>> +        n is 0 or 1, the phy init sequence is chosen.
> >>
> >> What? Don't make up your own aliases.
> >>
> >> If the PHY instances are different, then maybe you need a different
> >> compatible. If this is just selecting the PHY mode, you can do that in
> >> PHY cells as the mode depends on the consumer.
> >>
> >
> > FSD PCIe has 2 instances of PHY. Both are the same HW Samsung
> > PHYs (Therefore share the same register offsets). But the PHY used here
> 
> So same?
> 
> > does not support auto adaptation so we need to tune the PHYs
> > according to the use case (considering channel loss, etc). This is why we
> 
> So not same? Decide. Either it is same or not, cannot be both.
> 
> If you mean that some wiring is different on the board, then how does it
> differ in soc thus how it is per-soc property? If these are use-cases,
> then how is even suitable for DT?
> 
> I use your Tesla FSD differently and then I exchange DTSI and compatibles?
> 
> You are no describing real problem and both binding and your
> explanations are vague and imprecise. Binding tells nothing about it, so
> it is example of skipping important decisions.
> 
> > have 2 different SW PHY initialization sequence depending on the instance
> > number. Do you think having different compatible (something like
> > tesla,fsd-pcie-phy0 and tesla,fsd-pcie-phy1) and having phy ID as platform data
> > is okay in this case? I actually took reference from files like:
> 
> And in different use case on same soc you are going to reverse
> compatibles or instance IDs?
>

Even though both the PHYs are exactly identical in terms of hardware,
they need to be programmed/initialized/configured differently.

Sorry for my misuse of the word "use-case". To clarify, these configurations
will always remain the same for FSD SoC even if you use it differently.

I will use different compatibles for them as I understand that it is the best
option.
 
> > drivers/usb/phy/phy-am335x-control.c
> 
> So you took 15 years old hardware, code and binding as an example.
> 
> No, don't do that ever.
> 
> Anyway, poor choices even in newer code should not drive your design.
> Design it properly, describe the hardware.
> 
> > drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> > who use alias to differentiate between register offsets for instances.
> 
> 
> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
