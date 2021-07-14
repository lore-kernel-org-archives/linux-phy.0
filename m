Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD96C07E95
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 02:31:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 126E66135A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 02:31:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 126E66135A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4hcDuMjV6X/PEiRFjY1NhqBtA6gZHJOZ2WlgC+HGTY=; b=ADKSVoL6iZE1Qf
	iP51GodIITeWx9fHvrqXkPbxZeuEcBNaog3rEJCb8OJUHpNIs4wo0Kbe7avfRDwJuqDBwLEaF79mO
	hr0djPsIbPl2KfZ3lWOgmAc+Ehvx5j2MqD777HGEB7oUfZRUZEITgPj1geQ9lcULvURbkwMflY5Lb
	gcfE96EjKyqcRAvb9V4Lu2Xr0hLRQVfWMGW1/guBY50ee86v3Gy+sqxizyBzeiBMLZD4vTJRs8fGo
	7UCTon7ZANcbQyrkjNkB/yuNgynJH/XoXxx2dZpbLkHAO3EApewRT5reA3QLRn0aGGusobRXVnDxF
	9+OyZB6TZdkJZduvWGgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3Ugg-00C1XY-9A; Wed, 14 Jul 2021 02:31:50 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3Ubu-00BzJg-TV
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 02:26:56 +0000
Received: by mail-il1-f174.google.com with SMTP id p3so59682ilg.8
 for <linux-phy@lists.infradead.org>; Tue, 13 Jul 2021 19:26:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=voA9smuMk/g18L5B9OeTv9tT41v85LP2kwVfB4rVqRY=;
 b=D2NBipTA2f8t1+FtCLAecM4hvT4mPPDUuDLf3DszRFU/D0/ocjNhZGssVzwJY5yXY+
 /IvLKs/4Ih9F7za6g2aC41uniU2p60IyU0tKR1496qndoNMU5LqywyMruwdFhijFbYUA
 s0BR9IPeQARUgSxCAGg5LIG2HgDpxPGVdFcG1IXNf0PHqaosAmQmR9B435aW3lr0PURP
 YCKug0dUQYD0Jw7nOxd/9jf1S9fQUj4QCUdXXTo/NG3Y18E+8v6daUXZ+AtTn2SCumyM
 7IUJ8vVFmQuGG+cOoBQCACCIW8m3VXxjb/u06VY9Gg6TI1ukSAjRBzbjGVon3KgRfBAw
 jorA==
X-Gm-Message-State: AOAM533wQRsF85VOlhF6Ci0HcGZz4xdjnc8zYWYPKWVsTOTXmwenWg1r
 W90xNNTXPmRAugFBf5L7KQ==
X-Google-Smtp-Source: ABdhPJwEw8/nE86XRTkOiB+A8+CrZbl8V1CVobuOJdb5rgOsCbFHOb6A5SmlBn9fd3pjIWOnMX6wlw==
X-Received: by 2002:a92:b308:: with SMTP id p8mr5045602ilh.296.1626229613897; 
 Tue, 13 Jul 2021 19:26:53 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id d14sm443440iln.48.2021.07.13.19.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 19:26:53 -0700 (PDT)
Received: (nullmailer pid 1329963 invoked by uid 1000);
 Wed, 14 Jul 2021 02:26:49 -0000
Date: Tue, 13 Jul 2021 20:26:49 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Manivannan Sadhasivam <mani@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add bindings for HiKey 970 PCIe
 PHY
Message-ID: <20210714022649.GA1324196@robh.at.kernel.org>
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baa7e71e13953b28a11fffdcef35195099feb7fd.1626157454.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_192654_996230_522B92BA 
X-CRM114-Status: GOOD (  19.11  )
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

On Tue, Jul 13, 2021 at 08:28:35AM +0200, Mauro Carvalho Chehab wrote:
> Document the bindings for HiKey 970 (hi3670) PCIe PHY
> interface, supported via the pcie-kirin driver.

Same comments on this one.

> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 101 ++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> new file mode 100644
> index 000000000000..976ab6fe7b0a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> @@ -0,0 +1,101 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3670-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon Kirin970 PCIe PHY
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> +
> +description: |+
> +  Bindings for PCIe PHY on HiSilicon Kirin 970.
> +
> +properties:
> +  compatible:
> +    const: hisilicon,hi970-pcie-phy
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +    description: PHY Control registers
> +
> +  reg-names:
> +    const: phy
> +
> +  phy-supply:
> +    description: The PCIe PHY power supply
> +
> +  clocks:
> +    items:
> +      - description: PCIe PHY clock
> +      - description: PCIe AUX clock
> +      - description: PCIe APB PHY clock
> +      - description: PCIe APB SYS clock
> +      - description: PCIe ACLK clock
> +
> +  clock-names:
> +    items:
> +      - const: pcie_phy_ref
> +      - const: pcie_aux
> +      - const: pcie_apb_phy
> +      - const: pcie_apb_sys
> +      - const: pcie_aclk
> +
> +  reset-gpios:
> +    description: PCI PERST reset GPIOs
> +    maxItems: 4

Hiding the 4 ports in the phy?

> +
> +  clkreq-gpios:
> +    description: Clock request GPIOs
> +    maxItems: 3
> +
> +  hisilicon,eye-diagram-param:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: Eye diagram for phy.

Is there a size to this array?

> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - reset-gpios
> +  - clkreq-gpios
> +  - hisilicon,eye-diagram-param
> +  - phy-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/hi3670-clock.h>
> +
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      pcie_phy: pcie-phy@fc000000 {
> +        compatible = "hisilicon,hi970-pcie-phy";
> +        reg = <0x0 0xfc000000 0x0 0x80000>;
> +        reg-names = "phy";
> +        #phy-cells = <0>;
> +        phy-supply = <&ldo33>;
> +        clocks = <&crg_ctrl HI3670_CLK_GATE_PCIEPHY_REF>,
> +                 <&crg_ctrl HI3670_CLK_GATE_PCIEAUX>,
> +                 <&crg_ctrl HI3670_PCLK_GATE_PCIE_PHY>,
> +                 <&crg_ctrl HI3670_PCLK_GATE_PCIE_SYS>,
> +                 <&crg_ctrl HI3670_ACLK_GATE_PCIE>;
> +        clock-names = "pcie_phy_ref", "pcie_aux",
> +                      "pcie_apb_phy", "pcie_apb_sys", "pcie_aclk";
> +        reset-gpios = <&gpio7 0 0 >, <&gpio25 2 0 >,
> +                      <&gpio3 1 0 >, <&gpio27 4 0 >;
> +        clkreq-gpios = <&gpio20 6 0 >, <&gpio27 3 0 >, <&gpio17 0 0 >;
> +        hisilicon,eye-diagram-param = <0xFFFFFFFF 0xFFFFFFFF
> +                                       0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
> +      };
> +    };
> +...
> -- 
> 2.31.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
