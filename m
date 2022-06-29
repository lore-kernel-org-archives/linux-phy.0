Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C247FC43334
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQ+Gy/RDD+S9JwGgtkL7cKL1o1SfMhuuTEwHcVr62dE=; b=djjSY7Y4oDIeZU
	iQSpU0+Eg2swPgvcXXVq3C5SJngeH1KzFk0AEO3IrJJTSX7tdTbXTN2U9yzQ9Yahgcyv1XkqS477i
	/hjML4yhl51zKZ0yuZ6+oYQaX6uHJ8da6clhnxTIVYVub1kW0sagCqiQ1+bkw69io6iJ535g+sSGT
	O9Zocfrbm80XSNS27ftMInjHkIL9Vkpor0JpDIiyyYRknkkdn3tTgkIPhYOKxvCytDvexC30RoD6w
	oZ6wkv1uRZIXEN63OgBy9Cm7nczZJoKgVfMz5Y3mgyexuLPlavTqKjn471jWb3YAmPQ349ZDT8jj0
	vPtsw1+qw7xAUaFVfT3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RHh-009oDi-5w; Wed, 29 Jun 2022 06:34:45 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RHd-009oCF-MI
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 06:34:43 +0000
Received: by mail-ej1-x62a.google.com with SMTP id g26so30478891ejb.5
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 23:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EmERg3nlw3fI08RWFRLas0/UbKz83F820Tzvq+AS7+Y=;
        b=vyh694gOH4oD+ETeT3V6t7TbZoq5lHvVgMW/SAG0AD4uAJHGkAGGjz1EQWtgruTKs0
         B91/7vVz1B2C4Kbgrk3wWrBjiDaTaH1AfgO2bdEgGiYbv/d0hwyOo40tIk/M4NS/fSsO
         pAlllgZEgk66o1ZCA7J4NllsI6HkmwU7W5QiYQqDpMBgXFwbF97BxIzFBaCXMhiktt9Q
         Gs98YDea9tygoQCxqTZ1KIUg9FLFpeHv5zkG2ec0CiPY3I6EcFWCLYb4aoEVQEemjU8b
         JE2tGPVWGejZAbwv0GGRnZj5Im8lPzQqNHu3fdvh0OQkYdjgX9qvvT/g5QRjYZrpmT5U
         nH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EmERg3nlw3fI08RWFRLas0/UbKz83F820Tzvq+AS7+Y=;
        b=0je5wkhYs3XiSoJ/UUuA5eK83XnQbhBL3zza/zEZ0wP1HBGnGmPXiffP+LUKEsi+JW
         EZoVhy7yaym5xPniFan6LWgm+YHYyGc265OUho6ezLw42cjuJlYnLXEepqKUe+BaXRL3
         K93Yv6IF+v9RJXePiCKmcQ7zKZoa1B7DM50R2ikCAgkAifVfAB37QXJJZj7+NHgZhueE
         SQKg6lTj3Fw3TVbvsZ7L59KqXtpV4KiFtDmSa/CQdSVA6bhENXehc2YomjCZQejOn2/E
         Q+MuDjB0AguSBP/JPT6UzZQaSsIt5aW5M0RphQZpJLNyoGZZAXEXGTq4gv1E3E4R+Dj/
         2xXw==
X-Gm-Message-State: AJIora+huqrVnjxthcrDnO1NqQsUXX1bb/sm5u4HhxT+nVTEWWbDBBCw
	KzXHt5cHXXXk+cI16nixIncP/A==
X-Google-Smtp-Source: AGRyM1uFIbKAyhcok94Ie/62FVbVNJ8GIeKit7vF4RsjLCPSfb0Lp5f0QUVqbru1QAGPf/Y60DXxFA==
X-Received: by 2002:a17:907:d89:b0:726:9d87:e4c0 with SMTP id go9-20020a1709070d8900b007269d87e4c0mr1732632ejc.216.1656484480272;
        Tue, 28 Jun 2022 23:34:40 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z4-20020a1709060f0400b00722f069fd40sm7248744eji.159.2022.06.28.23.34.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 23:34:39 -0700 (PDT)
Message-ID: <291c1ff5-f864-3a8b-d151-d2ec805c8e5d@linaro.org>
Date: Wed, 29 Jun 2022 08:34:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V3 05/11] arm64: tegra: Add regulators required for PCIe
Content-Language: en-US
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220629060435.25297-1-vidyas@nvidia.com>
 <20220629060435.25297-6-vidyas@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629060435.25297-6-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233441_783638_6A61092E 
X-CRM114-Status: GOOD (  13.91  )
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

On 29/06/2022 08:04, Vidya Sagar wrote:
> Add regulator supplies required for PCIe functionality. The supplies
> include 1.8V, 3.3V and 12V.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * New patch in this series
> 
>  .../boot/dts/nvidia/tegra234-p3701-0000.dtsi  | 24 +++++++++++++++++++
>  .../boot/dts/nvidia/tegra234-p3737-0000.dtsi  | 23 ++++++++++++++++++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi b/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
> index 798de9226ba5..d53901ba45f6 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
> @@ -6,6 +6,30 @@
>  	model = "NVIDIA Jetson AGX Orin";
>  	compatible = "nvidia,p3701-0000", "nvidia,tegra234";
>  
> +	fixed-regulators {
> +		compatible = "simple-bus";
> +		device_type = "fixed-regulators";
> +		#address-cells = <0x1>;
> +		#size-cells = <0x0>;

This is not a bus, fixed regulators are not part of some bus.

> +
> +		p3701_vdd_1v8_ls: regulator@3 {
> +			compatible = "regulator-fixed";
> +			reg = <3>;

This fails schema. No.

> +			regulator-name = "vdd-1v8-ls-sw5";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-always-on;
> +		};

Missing blank line.

> +		p3701_vdd_AO_1v8: regulator@5 {
> +			compatible = "regulator-fixed";
> +			reg = <5>;
> +			regulator-name = "vdd-AO-1v8-sw2";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-always-on;
> +		};
> +	};
> +
>  	bus@0 {
>  		spi@3270000 {
>  			status = "okay";
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000.dtsi b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000.dtsi
> index a85993c85e45..bb503643dd38 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000.dtsi
> @@ -2,4 +2,27 @@
>  
>  / {
>  	compatible = "nvidia,p3737-0000";
> +
> +	fixed-regulators {
> +		p3737_vdd_3v3_pcie: regulator@105 {
> +			compatible = "regulator-fixed";
> +			reg = <105>;
> +			regulator-name = "vdd-3v3-pcie";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			gpio = <&gpio TEGRA234_MAIN_GPIO(Z, 2) 0>;
> +			enable-active-high;
> +			regulator-boot-on;
> +		};

Same comments.

> +		p3737_vdd_12v_pcie: regulator@114 {
> +			compatible = "regulator-fixed";
> +			reg = <114>;
> +			regulator-name = "vdd-12v-pcie";
> +			regulator-min-microvolt = <12000000>;
> +			regulator-max-microvolt = <12000000>;
> +			gpio = <&gpio TEGRA234_MAIN_GPIO(A, 1) 1>;
> +			regulator-boot-on;
> +			enable-active-low;
> +		};
> +	};
>  };


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
