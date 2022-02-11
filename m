Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B68FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 14:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hs7itc7Vdp+pJxpRflGVU8g2JHVe97ELdI2bUXpCao0=; b=rFLEODi937RTmk
	afiL8lCri1gdYy3fZMfFl415XTnrxHWBwDFWDstq+CBkUVx3OpUwgOkQEAog8VCmPghMRclWEWd1u
	k22x1o6SIypqMIEsBk/y1q2jt81deJvF59m3zhZCeBQhfAaGSfbN4piIFejDD8ULil7HR/BCl/MQp
	eAkEChymSY0C8O8BZ0X80/rEPA/6bulR3Sx4hM29CMiyoIkhwh7Yvjdf07Rg2XRmf6UQPxHgIDAVO
	bEWwAI/j/vMaco4ZbdS55gwmQ8AVxAs09ArmJoaKcHOtg4ix2vBsHGCXuzJUMvy59TIEGsA96ICEx
	1CGPlFN1wdJpOv3Nyt0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXLE-007g23-UJ; Fri, 11 Feb 2022 14:56:08 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXLA-007fzn-Py
 for linux-phy@lists.infradead.org; Fri, 11 Feb 2022 14:56:07 +0000
Received: by mail-oi1-f177.google.com with SMTP id u13so9800593oie.5
 for <linux-phy@lists.infradead.org>; Fri, 11 Feb 2022 06:56:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G92XEusdmcOWW1tVd4s4eS/xu7wCfgqOh4/w21H1KCI=;
 b=Lnrt1axi2CFBCUpp9LgRyzaF33x++x9FcSK+lnEGLVs93Q18vw7+oVGnSJFOwpibjS
 YK2drgv3tgGrO8SAxuXEYzv+Vedxe1fuXcPmckSgKoPEbr+9skuQc8Dn4LxIR/dQxMkb
 BD91PmrknAlYpbBdO7kB9FDQAddUnUdPfDblUlA3EuJa1PnOlCMK3TBBxLmcrCJCkDYw
 QwRrC6SQA4KzdZbBWixcYvlIRszGvnuXYOtvH6TgMen+C1VeQDm2TkFbB0+OfHnyF17z
 FAoJ+LF2YdFY43LK4G7u0Hh8JXRZRV0ubo2IvaoBV2vQcLVbBWVIG5hT8ZmDMqHjB7/8
 Mg1w==
X-Gm-Message-State: AOAM5334z50Y5hyViGIkzpPiTrDCpAMjVCAmB1tDljqHmRKY6/foYwit
 dNcTfZy3R5pDLVPe8SjuEQ==
X-Google-Smtp-Source: ABdhPJxvk/bXB+X8A+FLOIi5cTW6wNNMcPBQMYmn+SeoN9QWfa96oOTjz+R+oKyp0y91s8XllCb2oA==
X-Received: by 2002:a05:6808:1924:: with SMTP id
 bf36mr336810oib.53.1644591363160; 
 Fri, 11 Feb 2022 06:56:03 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
 by smtp.gmail.com with ESMTPSA id
 o144sm9739330ooo.25.2022.02.11.06.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 06:56:02 -0800 (PST)
Received: (nullmailer pid 353302 invoked by uid 1000);
 Fri, 11 Feb 2022 14:55:59 -0000
Date: Fri, 11 Feb 2022 08:55:59 -0600
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, kishon@ti.com, vkoul@kernel.org, kw@linux.com,
 krzysztof.kozlowski@canonical.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kthota@nvidia.com, mmaddireddy@nvidia.com,
 sagar.tv@gmail.com
Subject: Re: [PATCH V1 04/10] dt-bindings: PHY: P2U: Add support for Tegra234
 P2U block
Message-ID: <YgZ4/6ExXhAKSpdz@robh.at.kernel.org>
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-5-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205162144.30240-5-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_065604_868695_0B7A0355 
X-CRM114-Status: GOOD (  16.26  )
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

On Sat, Feb 05, 2022 at 09:51:38PM +0530, Vidya Sagar wrote:
> Add support for Tegra234 P2U (PIPE to UPHY) module block which is a glue
> module instantiated once for each PCIe lane between Synopsys DesignWare
> core based PCIe IP and Universal PHY block.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../bindings/phy/phy-tegra194-p2u.yaml          | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> index 9a89d05efbda..6ba1f69b1126 100644
> --- a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> @@ -4,7 +4,7 @@
>  $id: "http://devicetree.org/schemas/phy/phy-tegra194-p2u.yaml#"
>  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>  
> -title: NVIDIA Tegra194 P2U binding
> +title: NVIDIA Tegra194 & Tegra234 P2U binding
>  
>  maintainers:
>    - Thierry Reding <treding@nvidia.com>
> @@ -12,13 +12,17 @@ maintainers:
>  description: >
>    Tegra194 has two PHY bricks namely HSIO (High Speed IO) and NVHS (NVIDIA High
>    Speed) each interfacing with 12 and 8 P2U instances respectively.
> +  Tegra234 has three PHY bricks namesly HSIO, NVHS and GBE (Gigabit Ethernet)
> +  each interfacing with 8, 8 and 8 P2U instances respectively.
>    A P2U instance is a glue logic between Synopsys DesignWare Core PCIe IP's PIPE
> -  interface and PHY of HSIO/NVHS bricks. Each P2U instance represents one PCIe
> -  lane.
> +  interface and PHY of HSIO/NVHS/GBE bricks. Each P2U instance represents one
> +  PCIe lane.
>  
>  properties:
>    compatible:
> -    const: nvidia,tegra194-p2u
> +    oneOf:
> +      - const: nvidia,tegra194-p2u
> +      - const: nvidia,tegra234-p2u

Use 'enum'

>  
>    reg:
>      maxItems: 1
> @@ -28,6 +32,11 @@ properties:
>      items:
>        - const: ctl
>  
> +  nvidia,skip-sz-protect-en:
> +    description: Should be present if two PCIe retimers are present between
> +      the root port and its immediate downstream device.
> +      type: boolean

Check your indentation.

This patch should have failed checks for both of these issues. No report 
so either this patch couldn't be applied or there another issue. In any 
case, you failed to test this yourself.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
