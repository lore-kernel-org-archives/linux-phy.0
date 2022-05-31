Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66665C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 13:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxgxStqslkxtnUensMIL308/IYuI1ixpryGWEBC8C2A=; b=YG7yGPJAuEw3si
	CsurXveFjYgzU2epZEPOCkVWPwbJEINiwkI1mQFrDco7tWknpOBt2yNOTF7LdZ72EYedEcvC2Nk2K
	8PUViayQTouH1MrmlJeEsJIwHjUjGkwxpm9cDO7uB0DzmZU78OeafBhB/3+LmE67VyqpeZs5slHUY
	nWaBU4jp2VlQ0BP9oB8fbZCbbh1LxP5xVsxj/C9IvNEjd8YQZC2FEDhGpHdZW7c0H442xXNzwZi7q
	q/d4h4EQbLBuRegvWhkpILsJflps4t5jr9voBc+1pyJbvcTuPtzECKZDu8BqWPdvxFL6aY1nwifin
	UIYSeIcdA7NUTbH34cWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1pa-00B3FU-OI; Tue, 31 May 2022 13:22:42 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw1oK-00B2eF-9U
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:21:26 +0000
Received: by mail-ej1-x636.google.com with SMTP id f21so26523702ejh.11
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zYX6/jvx2pbywY/slcBL5U+3fmGGoOywbgeBC8Ifd/I=;
        b=wMqg8bGVHe9NXDwDJ7uLWBrELFWky9hIMwFig+bFGTRfrZj2Zm6Q4UaNNudpBVbYoa
         hrvQd8xAgR8a8C5tA6U0LjHgJADuvXhyDmsaIK/2Lr+v8315787Sti8rsJP0ZWyxM7jc
         dbag/XVKvYcrZ6MQtl9+BrhOyJeH5HwiIJm46j5GkRC/CIT5eErh2ACiKBn5gT2zrA8/
         RrKdS50ASrzMKRvbcgIokTuYBX4mXCGysyBmbGJ9OWFo5d7FsyA5zKp0BjCbiYGydZ/j
         dlAuG5QznlzlVuLa9ZSWZNFsJnTKNlcM0AfdH7bHSqd7vIwf3XR8zEwY+m1EcwwbJ4kY
         MRUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zYX6/jvx2pbywY/slcBL5U+3fmGGoOywbgeBC8Ifd/I=;
        b=U/dp07l8hoKIFxsmvU8EVaGJe5/zidO5THU+dq3tQKM23fivWlezO2v/h7IdZyoB8E
         M/Kojx66EoaVJvZFZETZWpATcPduJzV1eHSACkxEh2Bqp7H+SKr2Dgsdm3FDZ2kSth6R
         j9v4SWJIWFg9Hmgt12TnTNL596LuHfYLg9yATEPot10L+lZTVB9gOlVMFL1woW8fOCBh
         nvj3WjVjHHvUVK4afXHKe3ITR/Ko+Xe7Zw3iqibPwdAoq2Kf6TgTliq/clT9XCKh+C7d
         2L7lRryoRkubcVUa/uxW9chbnjKLdILMRdSATQY3JeenSXm+Qo3unLurnaCZZw6gPpfl
         TNUg==
X-Gm-Message-State: AOAM532J90PLbLf+AOeacSGhsVOL9G6ATJX0NVrDlSjQ8QT049psOe46
	FIQt/5vmn68xaf1rddKy5DjSovCVujrgIiJz
X-Google-Smtp-Source: ABdhPJxcswzON8g7Xj34rartxp6BsJC91ug76tqqMOFi30pmoud7LoGOS6GOOAgudOP0/jxWf+FqCw==
X-Received: by 2002:a17:906:a397:b0:6fe:a1e5:de70 with SMTP id k23-20020a170906a39700b006fea1e5de70mr49326619ejz.2.1654003282094;
        Tue, 31 May 2022 06:21:22 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bm3-20020a170906c04300b006fe8bf56f53sm5074245ejb.43.2022.05.31.06.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 06:21:21 -0700 (PDT)
Message-ID: <5fc17d02-d28c-2ad2-8a8f-dfeaf6712d6f@linaro.org>
Date: Tue, 31 May 2022 15:21:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 3/4] arm64: dts: exynosautov9: add secondary ufs devices
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20220531121913.48722-1-chanho61.park@samsung.com>
 <CGME20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c@epcas2p4.samsung.com>
 <20220531121913.48722-4-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-4-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_062124_479302_EC427B05 
X-CRM114-Status: GOOD (  14.28  )
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

On 31/05/2022 14:19, Chanho Park wrote:
> Add ufs_1_phy and ufs_1 for secondary ufs hci controller and phy
> device.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 32 ++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> index 3e23db8f09d9..c146271af477 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
> @@ -380,6 +380,17 @@ ufs_0_phy: ufs0-phy@17e04000 {
>  			status = "disabled";
>  		};
>  
> +		ufs_1_phy: ufs0-phy@17f04000 {

Node name: "phy" (or ufs-phy). The previous node also could be corrected.

> +			compatible = "samsung,exynosautov9-ufs-phy";
> +			reg = <0x17f04000 0xc00>;
> +			reg-names = "phy-pma";
> +			samsung,pmu-syscon = <&pmu_system_controller 0x72c>;
> +			#phy-cells = <0>;
> +			clocks = <&xtcxo>;
> +			clock-names = "ref_clk";
> +			status = "disabled";
> +		};
> +
>  		ufs_0: ufs0@17e00000 {
>  			compatible ="samsung,exynosautov9-ufs";
>  
> @@ -400,6 +411,27 @@ ufs_0: ufs0@17e00000 {
>  			samsung,sysreg = <&syscon_fsys2 0x710>;
>  			status = "disabled";
>  		};
> +
> +		ufs_1: ufs0@17f00000 {
> +			compatible ="samsung,exynosautov9-ufs";
> +
> +			reg = <0x17f00000 0x100>,  /* 0: HCI standard */
> +				<0x17f01100 0x410>,  /* 1: Vendor-specific */
> +				<0x17f80000 0x8000>,  /* 2: UNIPRO */
> +				<0x17de0000 0x2200>;  /* 3: UFS protector */

Align these please with first <> entry.

> +			reg-names = "hci", "vs_hci", "unipro", "ufsp";
> +			interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_ACLK>,
> +				 <&cmu_fsys2 CLK_GOUT_FSYS2_UFS_EMBD1_UNIPRO>;
> +			clock-names = "core_clk", "sclk_unipro_main";
> +			freq-table-hz = <0 0>, <0 0>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&ufs_rst_n_1 &ufs_refclk_out_1>;
> +			phys = <&ufs_1_phy>;
> +			phy-names = "ufs-phy";
> +			samsung,sysreg = <&syscon_fsys2 0x714>;
> +			status = "disabled";
> +		};
>  	};
>  };
>  


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
