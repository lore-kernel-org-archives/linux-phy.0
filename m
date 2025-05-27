Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71F26C3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dyq68lOed1dtkFS+YmjUzfJiBO2S9A+362b/Pi+9/lU=; b=hupr3/hUAqNO8O
	ToMov2lCECoSnDWuul353B9aesMG9JaGSPDQNjeTsLbcKC/R/efCtusAbF6koTk3UY6RZQNfNMofA
	fpGSH8dSw35IFjiCsiMQvz/fzf28329hEsStoKcfilCk8dWjPT/+R6M5mVbumA+w1kxNGnpT3gy3X
	/NXv2hJTzG8umo6wNCEoXLI0HuZcBbVlrgTIuz2788qKMpUo5aHRoNERtoImoGan5QPp098+W42IX
	F6t+QE/iwAZ3o/UAm5J2J44MMgWmy/QkJo2RmbUv6865RrGc/7jCa9p0oybXfWzIOg8fx3mLRCV0r
	Rl2JGhHW7I0vurwBSTsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8ur-0000000CB8r-0sbI;
	Wed, 28 May 2025 05:01:25 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8mx-0000000CA64-1k0v
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 04:53:17 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250528045313epoutp03b147cece5ee1a27b8e788db01f9d1dc3~Dl86M79DU1184511845epoutp03K
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:53:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250528045313epoutp03b147cece5ee1a27b8e788db01f9d1dc3~Dl86M79DU1184511845epoutp03K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1748407993;
	bh=vSFHOFEFt4zPbb0ejbZ4wikrbzI09NuGMD6delnPcEU=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=DWiFbhLwcCDPESID2XH0u0EzRYt9ziTk/RCYSp4PbRjSeOne6T6wSYQkOI4cdJWnG
	 AI9AoOoFZfj/meSnCZOO2ZHsr8Xz7Hb0rD5keu2cJu0/5PYbGrW8eJif6/cE6RCpAN
	 rRLQZBZRXn9gl/Vcbu8XbUh7tCuuX2+kTS7cmKwQ=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250528045313epcas5p1ecb52dad3a981012954b224ff078da52~Dl85rzEE72901229012epcas5p1v;
	Wed, 28 May 2025 04:53:13 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.177]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4b6cZb2Fchz3hhTJ; Wed, 28 May
	2025 04:53:11 +0000 (GMT)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250527104428epcas5p3cb5025d804a47c843123c6a5d28043ea~DXGS77eVc2227822278epcas5p3W;
	Tue, 27 May 2025 10:44:28 +0000 (GMT)
Received: from epsmgmcp1.samsung.com (unknown [182.195.42.82]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20250527104428epsmtrp126974eb37a3fcc3be8bdd3cd0c1b5709~DXGS6edHN1837918379epsmtrp17;
	Tue, 27 May 2025 10:44:28 +0000 (GMT)
X-AuditID: b6c32a52-40bff70000004c16-33-6835978bb7d3
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmcp1.samsung.com (Symantec Messaging Gateway) with SMTP id
	FB.08.19478.B8795386; Tue, 27 May 2025 19:44:27 +0900 (KST)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250527104425epsmtip2ff1602fd089de9fb8e3defd993065e4d~DXGQHLWWz3084930849epsmtip2U;
	Tue, 27 May 2025 10:44:24 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.or>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<manivannan.sadhasivam@linaro.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>
In-Reply-To: <20250521-capable-affable-numbat-b0ce84@kuoka>
Subject: RE: [PATCH 06/10] dt-bindings: PCI: Add bindings support for Tesla
 FSD SoC
Date: Tue, 27 May 2025 16:14:24 +0530
Message-ID: <0e2501dbcef4$51f144f0$f5d3ced0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKa2HaEso6x90WQFKmaYw3pYxuT6gHPV3xcAfUWlT4CDvGzQLI5Pdaw
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsWy7bCSvG73dNMMg5OfzS0ezNvGZvF30jF2
	iyVNGRZr9p5jsph/5ByrxY1fbawWK77MZLc42vqf2eLlrHtsFufPb2C3aOj5zWqx6fE1VovL
	u+awWZydd5zNYsKqbywWZ78vYLJo+dPCYrH2yF12i7stnawW//fsYLfYeecEs4Oox+9fkxg9
	ds66y+6xYFOpx6ZVnWwed67tYfN4cmU6k8fmJfUefVtWMXoc+TqdxePzJrkArigum5TUnMyy
	1CJ9uwSujGe71jAX/DOsmNa2mKmB8bBaFyMnh4SAicTlf5OYuxi5OIQEtjNKPFt6iBkiISnx
	+eI6JghbWGLlv+fsEEXPGCXOzG0CK2IT0JF4cuUPmC0ioCux+cZysCJmge0sEmeWPmQESQgJ
	vGKU2HrLHMTmFLCWWNH4gBXEFhYIlph+cw4biM0ioCqxYucjsHpeAUuJvtvv2SBsQYmTM5+w
	gNjMAtoSvQ9bGWHsZQtfQ12qIPHz6TJWiCPcJPq+X2OHqBGXOPqzh3kCo/AsJKNmIRk1C8mo
	WUhaFjCyrGIUTS0ozk3PTS4w1CtOzC0uzUvXS87P3cQITgBaQTsYl63/q3eIkYmD8RCjBAez
	kgjvtgkmGUK8KYmVValF+fFFpTmpxYcYpTlYlMR5lXM6U4QE0hNLUrNTUwtSi2CyTBycUg1M
	zbynNX9l6hpdrf115Ndj6TDV79qrltyqPWLwao1u8y8/FxUpnrbolcVLnwmI3G536Ba40qAR
	nKjl+/XXyQkT9vVmtnEo/97657LSEkex/eWxh7bsf7SNbU+PeDnT3f3LtLaKbdSu0HscEtC3
	ZpKX9rGwrIorG82jjGSnZarNty7PO5t23OH4pg0+XapiipO/T756oCS4IFVOZYfD5I+5WU/N
	0lWcSsQmyz3UNt3UO+2lxwqn3Z0Pj85ueJk3+ad6g4PHjPowt2DOZ2w/OF8vOJ3OfXK53POF
	G0xCfecl8BjElzPrX/85a8L3OVvOK5q8Pt/98tytFr/WxxfO202brZy65HZ85KPZm0MnMF/Y
	psRSnJFoqMVcVJwIAPW8ddNvAwAA
X-CMS-MailID: 20250527104428epcas5p3cb5025d804a47c843123c6a5d28043ea
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250518193248epcas5p2543146c715eb249ea6c2ce3c78d03b34
References: <20250518193152.63476-1-shradha.t@samsung.com>
	<CGME20250518193248epcas5p2543146c715eb249ea6c2ce3c78d03b34@epcas5p2.samsung.com>
	<20250518193152.63476-7-shradha.t@samsung.com>
	<20250521-capable-affable-numbat-b0ce84@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_215315_780325_B192697D 
X-CRM114-Status: GOOD (  25.55  )
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
> Sent: 21 May 2025 15:07
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.or;
> linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org;
> kw@linux.com; robh@kernel.org; bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de; m.szyprowski@samsung.com;
> jh80.chung@samsung.com
> Subject: Re: [PATCH 06/10] dt-bindings: PCI: Add bindings support for Tesla FSD SoC
> 
> On Mon, May 19, 2025 at 01:01:48AM GMT, Shradha Todi wrote:
> > Document the PCIe controller device tree bindings for Tesla FSD SoC
> > for both RC and EP.
> >
> > Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> > ---
> >  .../bindings/pci/samsung,exynos-pcie-ep.yaml  |  66 ++++++
> >  .../bindings/pci/samsung,exynos-pcie.yaml     | 199 ++++++++++++------
> >  2 files changed, 198 insertions(+), 67 deletions(-)  create mode
> > 100644
> > Documentation/devicetree/bindings/pci/samsung,exynos-pcie-ep.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie-ep.yaml
> > b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie-ep.yaml
> > new file mode 100644
> > index 000000000000..5d4a9067f727
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie-ep.yam
> > +++ l
> 
> Filename matching compatible.

Okay, will change it to tesla,fsd-pcie-ep.yaml

> 
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id:
> > +https://protect2.fireeye.com/v1/url?k=011d92c7-5e86abcb-011c1988-000b
> > +abff3563-f87bc6d1cb527c28&q=1&e=3d0e8e81-bcdc-412b-ba41-5d5936c37c73&
> > +u=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fpci%2Fsamsung%2Cexynos-pcie
> > +-ep.yaml%23
> > +$schema:
> > +https://protect2.fireeye.com/v1/url?k=dc0b3b6d-83900261-dc0ab022-000b
> > +abff3563-91c2c3470c50d358&q=1&e=3d0e8e81-bcdc-412b-ba41-5d5936c37c73&
> > +u=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23
> > +
> > +title: Samsung SoC series PCIe Endpoint Controller
> > +
> > +maintainers:
> > +  - Shradha Todi <shradha.t@samsung.co>
> > +
> > +description: |+
> > +  Samsung SoCs PCIe endpoint controller is based on the Synopsys
> > +DesignWare
> > +  PCIe IP and thus inherits all the common properties defined in
> > +  snps,dw-pcie-ep.yaml.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> 
> Drop
> 
> > +      - enum:
> > +          - tesla,fsd-pcie-ep
> > +
> > +allOf:
> > +  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - tesla,fsd-pcie-ep
> 
> What is the point of this if:? There are no other variants.
> 
> Also, missing constraints for all the properties. This is really incomplete.
> 

Will add the constraints

> > +    then:
> > +      properties:
> > +        samsung,syscon-pcie:
> > +          description: phandle for system control registers, used to
> > +                       control signals at system level
> 
> Where is the type defined? Look how such properties are described - there are plenty of examples.
> 
> > +
> > +      required:
> > +        - samsung,syscon-pcie
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/fsd-clk.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    bus {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +        pcieep0: pcie-ep@16a00000 {
> > +            compatible = "tesla,fsd-pcie-ep";
> > +            reg = <0x0 0x168b0000 0x0 0x1000>,
> > +                  <0x0 0x16a00000 0x0 0x2000>,
> > +                  <0x0 0x16a01000 0x0 0x80>,
> > +                  <0x0 0x17000000 0x0 0xff0000>;
> > +            reg-names = "elbi", "dbi", "dbi2", "addr_space";
> > +            clocks = <&clock_fsys1 PCIE_LINK0_IPCLKPORT_AUX_ACLK>,
> > +                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_DBI_ACLK>,
> > +                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_MSTR_ACLK>,
> > +                     <&clock_fsys1 PCIE_LINK0_IPCLKPORT_SLV_ACLK>;
> > +            clock-names = "aux", "dbi", "mstr", "slv";
> > +            num-lanes = <4>;
> > +            samsung,syscon-pcie = <&sysreg_fsys1 0x50c>;
> > +            phys = <&pciephy1>;
> > +        };
> > +    };
> > +...
> > diff --git
> > a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> > b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> > index f20ed7e709f7..a3803bf0ef84 100644
> > --- a/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/samsung,exynos-pcie.yaml
> > @@ -11,78 +11,113 @@ maintainers:
> >    - Jaehoon Chung <jh80.chung@samsung.com>
> >
> >  description: |+
> > -  Exynos5433 SoC PCIe host controller is based on the Synopsys
> > DesignWare
> > +  Samsung SoCs PCIe host controller is based on the Synopsys
> > + DesignWare
> >    PCIe IP and thus inherits all the common properties defined in
> >    snps,dw-pcie.yaml.
> >
> > -allOf:
> > -  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > -
> >  properties:
> >    compatible:
> > -    const: samsung,exynos5433-pcie
> > -
> > -  reg:
> > -    items:
> > -      - description: Data Bus Interface (DBI) registers.
> > -      - description: External Local Bus interface (ELBI) registers.
> > -      - description: PCIe configuration space region.
> > -
> 
> No, I do not understand any of this change. Properties are defined in top-level. Why all this is being removed?
> 

I changed the binding file to include both FSD and exynos which have quite a few different DT properties and constraints. I understand
I should keep the common properties like reg, phys defined in top-level. Will do that.

> 
> Best regards,
> Krzysztof



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
