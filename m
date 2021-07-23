Return-Path: <SRS0=Vlgz=MP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 361FCC4338F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 22:51:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFE7D60F41
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 22:51:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EFE7D60F41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfnVXFEDJ+VXpQW2deA0AlU9LsWSQdr8KRSqan5yido=; b=r92HcWqvgirNK/
	vYtQMX5UedfViuemDjmqpprRMsvOonx7X28iw6rmQd2m8Q1UKi9Y046nkjNLhQng54VQswSeXp/MC
	hjKCYgU7vCi7jCtLyLQ0yrq3JbkSt2Sqk6P31CBug+x1Je5FoL86VDNW7lN1BfC5fNVYtQD5P5lqy
	a55hyijYw+1qtqNADZDCv6vfzOf+IU/IO7P0Xx/2613MOWi/FzLhEKT+xQ3c/gl9t2fI6c3R1prNK
	RqgVkcDS3fULlGcTpRNK4X7USRnJqphTsv21yqGsuMurj/toSSwlzYRdhvaByDMoOsahqGf86N/Xu
	3ZD1DMAILXPGnEsXercA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m740i-006Iwf-Gx; Fri, 23 Jul 2021 22:51:16 +0000
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m740V-006Itj-K5
 for linux-phy@lists.infradead.org; Fri, 23 Jul 2021 22:51:05 +0000
Received: by mail-il1-f175.google.com with SMTP id y4so3005551ilp.0
 for <linux-phy@lists.infradead.org>; Fri, 23 Jul 2021 15:51:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Tn97+CizsFw2IJizFnnktOYs6q+YNVabHNC6r+3R/Zw=;
 b=Xl1I1difxVsOE5GiBSS/08qLCIqlr62iIT5CtpHvood3kK7Kx+h9pfFsvJWB8Mb90c
 BbYDrLN+ZRiqEP/ypkyFM1ChXOkhSH8x13hWpa1cgqHytAkwRnbDDQyA40RHgfvcvPFS
 xmfstVnLFPyuFRjZIGn0cjdmuQk1sOHMV0IhpFBedAVy1kHOVw37h/Lm6yUuaMqMYf4U
 4E4UNT6SKpHBWIORXo8BRz4g6VgbCLQTu+2LlaucL7VwSU6x53S4zISl5K3lcoo8rMrv
 16lDWdSeXFV3YdQYy5Uyp746gPdA1720MXT+dzWIOMJsguMPhiZCmHtHDja3GnSxIeeQ
 CNnw==
X-Gm-Message-State: AOAM530krOEsZFobhORSRjDdaqB/cUnewZluI3VziaDfDBpgHNWWoQUl
 /G3jt5kk+wA0Breb9aU/PA==
X-Google-Smtp-Source: ABdhPJyWShSD1k207DyYfCj8OBuahycWaQiiSDzxKTCbPLcLTn2vz5vRXmhkh0na1/i4ybC1Yi4P6g==
X-Received: by 2002:a92:cf03:: with SMTP id c3mr4924149ilo.195.1627080663062; 
 Fri, 23 Jul 2021 15:51:03 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id m184sm18795821ioa.17.2021.07.23.15.51.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 15:51:02 -0700 (PDT)
Received: (nullmailer pid 2750265 invoked by uid 1000);
 Fri, 23 Jul 2021 22:50:59 -0000
Date: Fri, 23 Jul 2021 16:50:59 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linuxarm@huawei.com, mauro.chehab@huawei.com,
 Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 06/10] dt-bindings: phy: Add bindings for HiKey 970
 PCIe PHY
Message-ID: <20210723225059.GA2727093@robh.at.kernel.org>
References: <cover.1626855713.git.mchehab+huawei@kernel.org>
 <946f2426bc542638240980931eae924c57f2ba27.1626855713.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <946f2426bc542638240980931eae924c57f2ba27.1626855713.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_155103_704745_0F03199D 
X-CRM114-Status: GOOD (  18.54  )
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

On Wed, Jul 21, 2021 at 10:39:08AM +0200, Mauro Carvalho Chehab wrote:
> Document the bindings for HiKey 970 (hi3670) PCIe PHY
> interface, supported via the pcie-kirin driver.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> new file mode 100644
> index 000000000000..a5ea13332cac
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> @@ -0,0 +1,95 @@
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
> +      - const: phy_ref
> +      - const: aux
> +      - const: apb_phy
> +      - const: apb_sys
> +      - const: aclk
> +
> +  reset-gpios:
> +    description: PCI PERST reset GPIOs
> +    maxItems: 4
> +
> +  clkreq-gpios:
> +    description: Clock request GPIOs
> +    maxItems: 3

Again, this will not work. 

It boils down to this fails to describe how the GPIOs are connected 
which is the point of GPIOs in DT. This in no way captures the hierarchy 
of devices. While you may be lucky that you can just assert or 
deassert all the lines at one time, that's not likely to work in a 
more complicated case (such as having to power up/down each device).

I realize the right solution is more complex, but that's the only way to 
handle this in a host bridge and board independent way.

If you want the simple solution, just configure all these GPIOs in 
firmware before Linux boots.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
