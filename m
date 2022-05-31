Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82AC8C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 10:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HhCCdygCx9YB5YejndhNqjuS/0n4DiuDb4Jv4yK+zU=; b=mg1x7xpRm2QRfT
	x4mT3a4it/jiDoONFR8EySb3m4xBNOHVPldpHpjC9wkb/hr8/REYRdSjn/P+YLrM5Qkjr0+ShxZ2t
	rP5MHGJz/zfuvuCQ6iGDSGLgxy2Qc63KJjeNi/7dHLaBVJBp6B6VeFkFHeFjwnamZ2PZUt+Pj2RWA
	1IOnriM3cK83vLFOWlxnt1fbjcOJns+gBniiHNz5fycpbQL2q7CYkzGkLIFNPge32Oz4ZpdBoqZ5o
	UWtKeZ8HZOW7jvPyimmsfevd8rC5/J8FCiL8cCTMOAV7ZRjgfZoH6LHcWrg2dPILXl7Y/YNYKaMBj
	9KCBTfbNuEYA7nDV0sHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyoJ-00A9GR-Su; Tue, 31 May 2022 10:09:11 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyoG-00A9EG-L6
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 10:09:10 +0000
Received: by mail-ed1-x536.google.com with SMTP id er5so16811812edb.12
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 03:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BDMy+QvuwpMJoJZmNlqonBPh8rUerQxjy9AQ0pCJoD0=;
        b=bsHXPWMHEwqDEladOBAHwYSJDdQ4TQ2X65eASv93zj6cUOA9TJuK2ta0tgOzpFh8Tr
         0VUOVCHVuuIxZVj8AXpO7I8rZbrKrAyvTh5LNDHyDIZs2wGv668t9fBbQxNqOAqH7+67
         +8jTKNmhEf25i+0XpczMH/MVUZnm1Z50+c2CAOBZ40JjlxEcARj3uNDF+JS8xvdnp2cH
         n+AIQlXBt/+Z1Eaz66/z8OYtdZTnrq0vGrSMyK80wq1DIugSoD3GoneXoVHHnhBOzHf4
         DzWSO6G1Tt20n7uPaH3o94dqLbLgo1c9YC2Pa7Q1LU08xAWAHvjf+9naY9rfDm6NIy0F
         6A/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BDMy+QvuwpMJoJZmNlqonBPh8rUerQxjy9AQ0pCJoD0=;
        b=KD3mnWDbcNwPwWLJqQdYwByUUTfvtSMYdEbLFuNr96XZQTTBIG6nYaFpRblJbzcjC7
         gYwtBaxBgavbtY8spW28s08awxo+98Os2152IsxHtWmyybxs/hICTb6tPJG3WhDeK9AK
         3MJ0CtqUFh+hpnFDDnO6UCw1ZkQ7ejYRrDUlQZaCiNKOw9pJPvJRt2qA9q2YBQREB/XM
         7zj1g4IGW2dSQzEjPnyBYgNxQ/PSy3CyKyr6/6Xq14qgNdAsLHz8H15lvISoMLe/Si+y
         pOHh06I5EOyi8+evSin0+dB+LQToq/4/MrURFHgMTSkp0Cq3FmmvUoW4sGYIHjCd+A1w
         PzHw==
X-Gm-Message-State: AOAM532jRMI1v/pQtcZ4gwHer0PnBK5XGE88JrVYtyE9/SnIwqzLyvQ4
	kiz1QrzxX+Uhcj36RxBPbxIm5w==
X-Google-Smtp-Source: ABdhPJxYrWO4cU6BubVeecPRztLNlr3PWrEQD2QBNVKkjOznU77Nqd6m6SzwBXLCLBE/Q6oRO30xeg==
X-Received: by 2002:a05:6402:330:b0:42d:cd47:89f3 with SMTP id q16-20020a056402033000b0042dcd4789f3mr12175779edw.301.1653991744792;
        Tue, 31 May 2022 03:09:04 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u10-20020a50950a000000b0042617ba63a5sm8019509eda.47.2022.05.31.03.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 03:09:04 -0700 (PDT)
Message-ID: <a449d475-132e-f8b2-8822-69aa3ab6bf9c@linaro.org>
Date: Tue, 31 May 2022 12:09:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 6/6] arm64: dts: fsd: add ufs device node
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, linux-fsd@tesla.com,
 Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012400epcas5p1c30b75a928097bd19855dcd0d929ff10@epcas5p1.samsung.com>
 <20220531012220.80563-7-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-7-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_030908_746646_4BBD62A4 
X-CRM114-Status: GOOD (  14.84  )
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

On 31/05/2022 03:22, Alim Akhtar wrote:
> Adds FSD ufs device node and enable the same
> for fsd board. This also adds the required
> pin configuration for the same.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  arch/arm64/boot/dts/tesla/fsd-evb.dts      |  4 +++
>  arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi | 14 +++++++++++
>  arch/arm64/boot/dts/tesla/fsd.dtsi         | 29 ++++++++++++++++++++++
>  3 files changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/tesla/fsd-evb.dts b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> index 5af560c1b5e6..1db6ddf03f01 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-evb.dts
> +++ b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> @@ -37,3 +37,7 @@ &fin_pll {
>  &serial_0 {
>  	status = "okay";
>  };
> +
> +&ufs {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> index d4d0cb005712..387a41e251d5 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> @@ -50,6 +50,20 @@ gpf5: gpf5-gpio-bank {
>  		interrupt-controller;
>  		#interrupt-cells = <2>;
>  	};
> +
> +	ufs_rst_n: ufs-rst-n-pins {
> +		samsung,pins = "gpf5-0";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
> +	};
> +
> +	ufs_refclk_out: ufs-refclk-out-pins {
> +		samsung,pins = "gpf5-1";
> +		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
> +		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
> +		samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
> +	};
>  };
>  
>  &pinctrl_peric {
> diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
> index af39655331de..a5972e9a2585 100644
> --- a/arch/arm64/boot/dts/tesla/fsd.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
> @@ -740,6 +740,35 @@ timer@10040000 {
>  			clocks = <&fin_pll>, <&clock_imem IMEM_MCT_PCLK>;
>  			clock-names = "fin_pll", "mct";
>  		};
> +
> +		ufs: ufs@15120000 {
> +			compatible = "tesla,fsd-ufs";
> +			reg = <0x0  0x15120000 0x0 0x200>,  /* 0: HCI standard */

Double space after 0x0

> +				<0x0 0x15121100 0x0 0x200>,  /* 1: Vendor specified */

Please align with opening < in line before.

> +				<0x0 0x15110000 0x0 0x8000>,  /* 2: UNIPRO */
> +				<0x0 0x15130000 0x0 0x100>;  /* 3: UFS protector */
> +			reg-names = "hci", "vs_hci", "unipro", "ufsp";
> +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clock_fsys0 UFS0_TOP0_HCLK_BUS>,
> +				<&clock_fsys0 UFS0_TOP0_CLK_UNIPRO>;

Also align.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
