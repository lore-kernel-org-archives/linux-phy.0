Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8B6CA0ED1
	for <linux-phy@archiver.kernel.org>; Mon, 18 Aug 2025 17:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaEs/EvEJ+eK0aRj8YRqmDcqTHAlnB2sRjX0KoUbSbo=; b=W2wvarxWjFeSll
	dkCj6KDCbyEaLqD+NheATicvmJVUudSR9r0Cgz0XDID+IL+csGY6ulDrXKgRWZbH7+/2aFA5oGhz5
	mATAboXzyqRSSi7qhTb8/mfSAR6L6mB0+11IWN+r9o7YpT7zGBxzlwF5WdMvqbCPP4OTVY+2dzc0/
	U+X7i1yDW2nPDrFdfks3XQ/01ij1ErTGf4NSWn1wxcrEUa1ydEIMZWpeUZ9R9inlKyb60Rk6mkw6V
	Qi3pNZrtEPDLbsyfHprNwzEZI4UeNF2QZrt0wbwmkQJyU0zGL5sn7re5vddiLK92gjmLbcA2OBFx8
	XCGRT1NgIVGNUTRAXDmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo456-00000008GJF-0R9B;
	Mon, 18 Aug 2025 17:55:40 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3VD-0000000874N-11eQ
	for linux-phy@lists.infradead.org;
	Mon, 18 Aug 2025 17:18:36 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250818171833epoutp0307c8ab8b8f6108fd856599234a64458c~c7BE0QP-Z2032020320epoutp03V
	for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 17:18:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250818171833epoutp0307c8ab8b8f6108fd856599234a64458c~c7BE0QP-Z2032020320epoutp03V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755537513;
	bh=JmSGRyHuxg4sFJyN1+ZDBr/4xtXj34dMzItnfLdMcyY=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=ZO+tUVGW9j76Gf6QNoG7EvuYBG0IN+U8H9BPj0zJnedSfLSj3GdVWqiZvli1wXQLw
	 ZtQrILgZa8nIdVn5n70Qo/fmF6dRM/1FHqtrtz8e7N0GGRNkciMmIdRwJW5C7M5OdE
	 axSFLqrFF8eZN9gdkQRDQel8pmBiLh/xdcjjWOf4=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250818171832epcas5p1538558efb743b5c6f4ca5021cfafef2c~c7BDlpN2R1081410814epcas5p1g;
	Mon, 18 Aug 2025 17:18:32 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.92]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4c5KDl11mXz3hhT3; Mon, 18 Aug
	2025 17:18:31 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250818084620epcas5p3ddf1f9039fde76922af543c84d2a37c8~c0B2MjXJr3103431034epcas5p3u;
	Mon, 18 Aug 2025 08:46:20 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250818084617epsmtip1877f5f85d903a96326fc66b5943907e0~c0BzfnJte3004130041epsmtip1g;
	Mon, 18 Aug 2025 08:46:17 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <linux-pci@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
Cc: <mani@kernel.org>, <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <9e065582-9349-4f39-88b5-048d333ab8d7@kernel.org>
Subject: RE: [PATCH v3 07/12] dt-bindings: PCI: Add support for Tesla FSD
 SoC
Date: Mon, 18 Aug 2025 14:16:16 +0530
Message-ID: <000901dc101c$917bf160$b473d420$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHWPHKmIG2WTsjb/5pkHKJ2GfeRPwFcVLShAs+fyqkBgLjEDbRGWWvg
Content-Language: en-in
X-CMS-MailID: 20250818084620epcas5p3ddf1f9039fde76922af543c84d2a37c8
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250811154725epcas5p428fa3370a32bc2b664a4fd8260078097
References: <20250811154638.95732-1-shradha.t@samsung.com>
	<CGME20250811154725epcas5p428fa3370a32bc2b664a4fd8260078097@epcas5p4.samsung.com>
	<20250811154638.95732-8-shradha.t@samsung.com>
	<9e065582-9349-4f39-88b5-048d333ab8d7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_101835_605363_256180AA 
X-CRM114-Status: GOOD (  14.59  )
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

> > +
> > +  phys:
> > +    maxItems: 1
> > +
> > +  samsung,syscon-pcie:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    description: phandle for system control registers, used to
> > +                 control signals at system level
> 
> What is "system level"? and what are these "signals" being controlled?
> 

I will add a more detailed description for why the syscon is being used

> 
> > +title: Tesla FSD SoC series PCIe Host Controller
> > +
> > +maintainers:
> > +  - Shradha Todi <shradha.t@samsung.com>
> > +
> > +description:
> > +  Tesla FSD SoCs PCIe host controller inherits all the common
> > +  properties defined in samsung,exynos-pcie.yaml
> > +
> > +allOf:
> > +  - $ref: /schemas/pci/samsung,exynos-pcie.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: tesla,fsd-pcie
> > +
> > +  clocks:
> > +    maxItems: 4
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aux
> > +      - const: dbi
> > +      - const: mstr
> > +      - const: slv
> > +
> > +  num-lanes:
> > +    maximum: 4
> > +
> > +  samsung,syscon-pcie:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    description: phandle for system control registers, used to
> > +                 control signals at system level
> > +
> > +required:
> > +  - samsung,syscon-pcie
> 
> clocks are required, compatible as well.
> 

Since this was inheriting the common exynos yaml file and that had these properties
under required, I did not mention again. Will take care in next version.

> Missing supplies, both as properties and required. PCI devices do not
> work without power.
> 

According to the HW design of FSD SoC, the control to manage PCIe power is given to
a separate CPU where custom firmware runs. Therefore, the Linux side does not control
the PCIe power supplies directly and are hence not included in the device tree.

> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/fsd-clk.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    soc {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +
> > +        pcierc1: pcie@16b00000 {
> > +            compatible = "tesla,fsd-pcie";
> > +            reg = <0x0 0x16b00000 0x0 0x2000>,
> > +                  <0x0 0x168c0000 0x0 0x1000>,
> > +                  <0x0 0x18000000 0x0 0x1000>;
> > +            reg-names = "dbi", "elbi", "config";
> > +            ranges =  <0x82000000 0x0 0x18001000 0x0 0x18001000 0x0 0xffefff>;
> 
> Misaligned. Follow closely DTS coding style.
> 

Will take care.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
