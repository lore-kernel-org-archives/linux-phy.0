Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A5EC77B6C
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 22:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bVBun3gyj3DB9W/VNA8H3h/O3GybBGy7dsEPecQmYQ=; b=CU41jiYdkNDMi+
	Zgi+vVLaVjmwks1GRh000j13yjuASDGlLw1tsgcz76qdJ5UR3MIPVu6xwZEwJ0bJO6qMGv05/MJJU
	a5RX+an4YoaXJo6zbhYvufgMGNkpwaFwMQSwGEnP8GuGTq/hURZ8j8WWdN8Y+JPpOVGcmRWf/3LFq
	Gt5vO02hBUPI9eR/7DdB9GZubwWbKMzyRD5o6NCRj9alQrdtd0ipcro33/lCXVWBLQH5DkIa5vEzG
	MYBHWw18pw47N3s25A8XBO806PWE5UAqDA0wZ2BfP70Wu0ZRTTgsFCorAwqEj8r1LTgUU4lWHzeG2
	tULthrAd6N70MUDS/UkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmjDa-004Ylf-2S;
	Wed, 12 Apr 2023 22:45:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmjDZ-004YlF-17
	for linux-phy@bombadil.infradead.org;
	Wed, 12 Apr 2023 22:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=TouGPU+Efoq/WGt/vDKkhltZTB+4TxGu4UL9u2kA4UE=; b=BcuSL2mPdBoTs+E7d2RwA6+6A3
	d03HY5sxvQtBxDa9JtWJd33dNKJBVt0UiRi91s/I/GXFToTLmTMh0STNY6QLru8Ff1RtXRm0sZQ29
	zOGTIEQaR8zZZQg+8xFaA0nKWiJ7+WWPmEiKPISkKVsOtoXqMaLgGESO3d6z7ZwgnSHu7wxKxw47K
	Gpp71ta4wruTsT3ANmowKfT+Kbzd3KStl8UGOqU1aUbJNZzEFp51VgvGcYO457eP1NOLkbAqHTG/S
	4rlZcm5nmV1d3NA/RAR844cctsQgK3y2khU/8cVMMPqyEVM3OnajDD4OJ/wQ5g7oCOojEKw09dC4y
	SoQkTUSw==;
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmhgj-00E2UK-0W
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 21:07:51 +0000
Received: by mail-lf1-x135.google.com with SMTP id i6so4703252lfp.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 14:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681333647; x=1683925647;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TouGPU+Efoq/WGt/vDKkhltZTB+4TxGu4UL9u2kA4UE=;
        b=uM9DmsgCbpsezm1URvfxA1QlpROL2JDARNWITPqAhDWCPoJrX7aKohknLbrgtm0zUV
         xhY9VfEH1Mr5O9m9+Ff8qZpev+gC3BUBPrjWOBvzsTv2mXeOe88nMIC9A1Gd67HuuQXa
         rwKPBdychE/adJ1gHlPw/9gZkAuOAZPWH90JZ+PsfLoH9Ehzkt+zAsxlaeV4jonWVliM
         sSFzBoDFiUWOZeiJWtXBYy1ssRQyq5A159Zi6S5ncs1ggbjZCGHpUWkoTy4OTP1j5Wza
         tPUlRrXIAE5q/5nbj5gtrpG5FLm36G1y7zOTD9sz779btG6mJCt+EXz/o3fdQdO/Qu4m
         IPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681333647; x=1683925647;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TouGPU+Efoq/WGt/vDKkhltZTB+4TxGu4UL9u2kA4UE=;
        b=WhZtP6cFrJy9cAFEnZhz9TPbh3QmVtWSCZYvyA0mRXAZnDTvxN/QMH613IQxHWyOmI
         t63vWABhfij6ijLerI+5M6aL8J7P9IcCI2w+Z3DTpSQe1y5gk35eqfqYBpUIfNlNbDj2
         7KSbfivSqIMe9EakvCIjSqQdibYU0pyjFXPcNWi3b5JukXkhuJhFVGGWZn/CEOeGQm2a
         9oyjNVHGDR4GZrYn6brKElYurw8F66eQf/95Q9MncP3SIaPvynhCbK1XuxYEH+Rq29cP
         2/HTjdIy24rxpTSF8Z5p2zjfP8OaShtb/Ts1W1vvPhx64Ag+bS+pHim2yyT6OI4o8MRg
         rSOw==
X-Gm-Message-State: AAQBX9d6Mv+pzeahbjbqUvtBA7f0EI4uOkJI6+vOx0Gs5HSLbZjWCqm4
	vAEysUbEVolrBcTPO/yUupFcjQ==
X-Google-Smtp-Source: AKy350bX2h3G0tTnQ38bAbnmsibh59UeenWLaYQupyr78fByKFQuaH3FwLV2XZmERAmoTvQ+8nje4w==
X-Received: by 2002:a05:6512:49c:b0:4e9:67ee:6383 with SMTP id v28-20020a056512049c00b004e967ee6383mr64065lfq.2.1681333647186;
        Wed, 12 Apr 2023 14:07:27 -0700 (PDT)
Received: from [192.168.1.101] (abxj23.neoplus.adsl.tpnet.pl. [83.9.3.23])
        by smtp.gmail.com with ESMTPSA id v17-20020ac25931000000b004ec8b638115sm1487244lfi.193.2023.04.12.14.07.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 14:07:26 -0700 (PDT)
Message-ID: <07b8731d-f9b6-c759-808d-56ae5881e251@linaro.org>
Date: Wed, 12 Apr 2023 23:07:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sa8775p-ride: enable UFS
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230411130446.401440-1-brgl@bgdev.pl>
 <20230411130446.401440-6-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230411130446.401440-6-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_220736_926874_CF409B4C 
X-CRM114-Status: GOOD (  13.13  )
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



On 11.04.2023 15:04, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Enable the UFS and its PHY on sa8775p-ride.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index f238a02a5448..2bb001a3ea55 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -5,6 +5,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "sa8775p.dtsi"
> @@ -20,6 +21,7 @@ aliases {
>  		serial2 = &uart17;
>  		i2c18 = &i2c18;
>  		spi16 = &spi16;
> +		ufshc1 = &ufs_mem_hc;
>  	};
>  
>  	chosen {
> @@ -426,6 +428,23 @@ &uart17 {
>  	status = "okay";
>  };
>  
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
> +	vcc-supply = <&vreg_l8a>;
> +	vcc-max-microamp = <1100000>;
> +	vccq-supply = <&vreg_l4c>;
> +	vccq-max-microamp = <1200000>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l4a>;
> +	vdda-pll-supply = <&vreg_l1c>;
> +
> +	status = "okay";
> +};
> +
>  &xo_board_clk {
>  	clock-frequency = <38400000>;
>  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
