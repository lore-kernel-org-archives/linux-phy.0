Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A80F4EA4FBB
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 13:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMTN7KNzfa1nDnE2oiZmpuEFv5e6kgzPDuSPTzcfsdI=; b=L2YIm+LBktZAGN
	TtZdtz2ACWPgw0Uvi3ynt6yGK73p84DuHkXMl90YbVtQ1Vkos/qtNoKPVBW8Lg5/42JWmPBa0L8rr
	ey9wTNplO8CWi5TWt+uf0zjpEVK80J3EzApk/W7pcIXFEExtrDyzWQdgyEOa4JViMUMEaRljLe5cf
	0fzGPce/Nn9PaEfiSPOUM6JVkcZ6D+HaCj9kPpDDIlgapD59bkuJu6IKh1a766LYR+Df5jkJAyXJg
	HGqQ6/zZvQaI6TkXLyPh/EuSlfsJTk41WTM3gawHJkL5s4lrMk9+h6JKAFB3xsl2TkqpitJUeGD7W
	n4TfmcrW4f5tssmzuqQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuVYG-00000000JoW-1hl8;
	Mon, 23 Feb 2026 13:00:40 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuVYE-00000000Jna-0V9S
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 13:00:39 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7d195166b2cso2983649a34.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 05:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1771851636; x=1772456436; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w/wtJj9m6xJdO/59adozKuuGhNiPpdU9Edi7GoMvpVA=;
        b=ohR+Uv8OIsfIK7BJxCZOVcFfeLMjeJfwB0C6fi9NvvRLAaaswXjsQH3WOOFRpJ27Uj
         hRiKZWnX7xqzvL7nXHEKzKhyUjnE5MOpfk1thGM7v7zgMFwSbmdBgE8ZppDuKDx1DK0f
         wWQe7OFtn4XANZd7Wakbyl3YFPa51OFQ0aykmoBa1GFeDh3DSQruF+4yWb2puDgMfJcc
         a/sAThbmEy7o9/gd37M10tRqyCKpctNQYcP883BSMF6RwOK0N2jjbuEwJzMx4ZBQXZEa
         TDVprNRqXgkRDADWDaIdVIBAD2UYQwm/Q+sGpnam2sB2VwzpQINDz4LlJai6FXns3n5G
         MMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771851636; x=1772456436;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w/wtJj9m6xJdO/59adozKuuGhNiPpdU9Edi7GoMvpVA=;
        b=P04a2JGwhvIeGEA3tUPB3yqX+xqH6HQw1PuRAOMfncalT+YeGm1nNJFS5F7g11pWBU
         toRxaCtaXzrpJO8QOo87AFIbR3vSh+LbTPTChGGZq7WgZjaPpL9kD8rv8jNe+b1qTOam
         IIBvi3MJ9mOAFy/8fvvXR+NmiNz6erQmxLCZLDYxupDj0URJuFykomuBpLKft/wVbTHe
         Ydxz8BMI4qXnnvCmg68/K947pD3hFchu4udjdj/ay91IfOqVEVOGSHaVUrZE9r6EBFQK
         cq4zN7KR09LYiuaVGm/quzC852i8dK/uThXDs85BbiRUMgv/24I4f7FX+GXj7cFnVL4C
         TjRA==
X-Forwarded-Encrypted: i=1; AJvYcCWOsR8AhmbxN9ooVsgtydkkoFdg4atV/2I3W2M0yhwM9N5n8+X0/57JjLGnhJ6h2khoivLA3cZMSHg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVBrAS/7QQoXl0qmOWe4MwkWv4xgcxD+gfN0pefysX0bmX7gZ2
	CG6ywIRwygG7uVDeSLF3sW7dxoXizF+eBmvUk1nkPRLa+u/ay+XcXABiXc558tSFVFQ=
X-Gm-Gg: AZuq6aKITNnbU70WuJ5CKlbzb90K3JkjUEol7O1OUv12iQsMaAqAzoVd2YIQqqWyJY+
	D5u8/vLmWZE6Lz3xUeawCTpK75lPbGsmUhkJNmYlmajCQU7LH7sZgbbpkqtkzfiXdNWbLROl+uc
	V7smsKUJqW/MStCi3GNpKJm38qSkHfh87+KTHkNS/Sv5+5OrsCdX3M4+IqetZ+gq1+r66o5ZN/J
	fKlS6uevmNhhahBnEq7NsDqcst2vksdcm7rMmh8DPvCh1C5t3FSinhmH2tFQNxUKfCiq2f3X1rd
	dciHIZV80qHJ+5Km1jSYDr1RJRkJcGylT9Un+DkzXsZnrmYWN3Bcr9RlVvOHobG69ea1cjxXzaD
	OHspU5248hdft/dCDuNeglSa7iK2cf2jOjBM85pH4iZj2IQe0byAI7cm9VUNFbqeN9fHP/NQyPM
	IbLP2u8q6+Tdt4xcQIxqhc24kICKEno28kjKYyroJsl50q7W0ESHBZQvvY/DXUFec=
X-Received: by 2002:a05:6830:1209:b0:7d1:a41a:4675 with SMTP id 46e09a7af769-7d52bdf4117mr3618378a34.7.1771851636131;
        Mon, 23 Feb 2026 05:00:36 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52cf7874csm7719069a34.1.2026.02.23.05.00.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 05:00:35 -0800 (PST)
Message-ID: <317ffbf8-187a-478c-bd8a-a6a11367ae15@riscstar.com>
Date: Mon, 23 Feb 2026 07:00:34 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: move spacemit pcie driver to its subfolder
To: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Oltean <olteanv@gmail.com>, Ze Huang <huang.ze@linux.dev>,
 spacemit@lists.linux.dev
References: <20260223064240.386617-1-vkoul@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260223064240.386617-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_050038_436920_8B600FD9 
X-CRM114-Status: GOOD (  15.73  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/23/26 12:42 AM, Vinod Koul wrote:
> Commit fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
> created spacemit subfolder with usb driver while commit 57e920b92724
> ("phy: spacemit: Introduce PCIe/combo PHY") added pcie driver in phy
> folder. Move latter into spacemit subfolder and rename file to
> phy-k1-pcie.c
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Looks good.  Thanks!

Reviewed-by: Alex Elder <elder@riscstar.com>



> ---
>   drivers/phy/Kconfig                                  | 12 ------------
>   drivers/phy/Makefile                                 |  1 -
>   drivers/phy/spacemit/Kconfig                         | 12 ++++++++++++
>   drivers/phy/spacemit/Makefile                        |  1 +
>   .../phy-k1-pcie.c}                                   |  0
>   5 files changed, 13 insertions(+), 13 deletions(-)
>   rename drivers/phy/{phy-spacemit-k1-pcie.c => spacemit/phy-k1-pcie.c} (100%)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 02467dfd4fb0..c0574e44f0a3 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -134,18 +134,6 @@ config PHY_NXP_PTN3222
>   	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
>   	  Speed and High Speed.
>   
> -config PHY_SPACEMIT_K1_PCIE
> -	tristate "PCIe and combo PHY driver for the SpacemiT K1 SoC"
> -	depends on ARCH_SPACEMIT || COMPILE_TEST
> -	depends on COMMON_CLK
> -	depends on HAS_IOMEM
> -	depends on OF
> -	select GENERIC_PHY
> -	default ARCH_SPACEMIT
> -	help
> -	  Enable support for the PCIe and USB 3 combo PHY and two
> -	  PCIe-only PHYs used in the SpacemiT K1 SoC.
> -
>   source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/apple/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index a648c2e02a83..2773d596e543 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -16,7 +16,6 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
>   obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
>   obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
>   obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
> -obj-$(CONFIG_PHY_SPACEMIT_K1_PCIE)	+= phy-spacemit-k1-pcie.o
>   obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
>   					   amlogic/	\
>   					   apple/	\
> diff --git a/drivers/phy/spacemit/Kconfig b/drivers/phy/spacemit/Kconfig
> index 0136aee2e8a2..50b0005acf66 100644
> --- a/drivers/phy/spacemit/Kconfig
> +++ b/drivers/phy/spacemit/Kconfig
> @@ -2,6 +2,18 @@
>   #
>   # Phy drivers for SpacemiT platforms
>   #
> +config PHY_SPACEMIT_K1_PCIE
> +	tristate "PCIe and combo PHY driver for the SpacemiT K1 SoC"
> +	depends on ARCH_SPACEMIT || COMPILE_TEST
> +	depends on COMMON_CLK
> +	depends on HAS_IOMEM
> +	depends on OF
> +	select GENERIC_PHY
> +	default ARCH_SPACEMIT
> +	help
> +	  Enable support for the PCIe and USB 3 combo PHY and two
> +	  PCIe-only PHYs used in the SpacemiT K1 SoC.
> +
>   config PHY_SPACEMIT_K1_USB2
>   	tristate "SpacemiT K1 USB 2.0 PHY support"
>   	depends on (ARCH_SPACEMIT || COMPILE_TEST) && OF
> diff --git a/drivers/phy/spacemit/Makefile b/drivers/phy/spacemit/Makefile
> index fec0b425a948..a821a21d6142 100644
> --- a/drivers/phy/spacemit/Makefile
> +++ b/drivers/phy/spacemit/Makefile
> @@ -1,2 +1,3 @@
>   # SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_PHY_SPACEMIT_K1_PCIE)		+= phy-k1-pcie.o
>   obj-$(CONFIG_PHY_SPACEMIT_K1_USB2)		+= phy-k1-usb2.o
> diff --git a/drivers/phy/phy-spacemit-k1-pcie.c b/drivers/phy/spacemit/phy-k1-pcie.c
> similarity index 100%
> rename from drivers/phy/phy-spacemit-k1-pcie.c
> rename to drivers/phy/spacemit/phy-k1-pcie.c


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
