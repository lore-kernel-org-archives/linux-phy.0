Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E3A5C761A6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 18:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZB0TJzAbwG+YgqafX573GpwYFChAGs0D4zpJr63cYE=; b=mrmLMrgfEarPJL
	qX7riIbH+qcjDqf1Lkum5bUlmevgt++mzkhXMO5Szc+C/2drsWZSTvGdirKFkT9B2KZQGM0Zn45bR
	kBoaUYLLvHDnf8QfXPYHQS+M7MKKILjwGOo5EasE8sXMpb/ZZmXyEJEj8hAbxYWDMO+jkxa9Iwkdb
	qSysZ12qv2HJ0rjNOyY6EVOX4A5DIeMUNSM+9eBFqE46S6yfDhAQoZnFppGA4A4m7RIibqqVixJZb
	zJbihS/Ye4t414B4XxbGN/zQtWTKHtV5P12s6+oKe8XmdcgQ6h8YNiwd6gqRhodSpZ4rxLkAzWG4L
	1x3s9g2DCRZrP3L9ttdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjlYB-002Wxu-0E;
	Tue, 04 Apr 2023 18:38:35 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjlY9-002Wwy-07
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 18:38:34 +0000
Received: by mail-lf1-x12d.google.com with SMTP id h11so36569583lfu.8
        for <linux-phy@lists.infradead.org>; Tue, 04 Apr 2023 11:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680633511;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P2zoliSShtGMXIRHrPAfEi4BT+9ugNs+lckUNg852jU=;
        b=vDemHso1O2NSLhxzarWRb+ghDX3K6v58ohwizFiONiCGKWXoGhvNEArGC3duNw0q68
         HM+tLKcgThcNKUAh92+QQm1/zJDdPFr1L/MhZ6ljcSJau8uyRKHsvG83LJHUZA7wfMWF
         X2UHhbjkO0MT/KQY6JlAXZYDlKbFt0TYnrsYYRZGDgDjv6+wolyDQA3n5B4966zIjyE9
         Ynp1zYJvrE9XjY09qrfd+8GChvLuNPat/gCnxoLKCtQaJJSzRw58TvSVA1iNghaHiuAP
         VnoRk7+L8Na2yM4IVOi1KgVG7PduBOZS0k18qVb2n2P0BU39PnnYj/VJymzTcOXj/uQE
         R+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680633511;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P2zoliSShtGMXIRHrPAfEi4BT+9ugNs+lckUNg852jU=;
        b=a47IvP1hF8lSBoCI7WrqFicJPyInulea2c7/fyYdIloKRxhvLsT/K7z4FdfGX5VgsO
         oUekkTAe0v8ouUFb+1MUYlH1SlH8zIOIt5yxPULqnrpglaTp7fHbLR4cjACCk1VNcLUF
         umXjUaxl+BKAqBPctTBANm73/iDP9uYl7WMXYAOqQ3Bp1a43/evArjp3GRSFt3SKYILn
         v0CCDgNtyjh9tUZ1tq3BAKv0SYSDIDpgC8VSJrWA/Bfweapthd1lsR2s64kIbwxo7Dct
         n/jstzX/Le48XILsPJvXL9fZbuh0QlSBihwL4DjS0t8r28Q7w7waNGJiJfqFwYiGW/6A
         jAJg==
X-Gm-Message-State: AAQBX9f6uK/Y3J/xJuFi0p/cuEzirWk+TeNPSkrY3HwiJMG9P9+wmhf9
	uZyLXjlT+h+RQtbByFs0Rxwjrw==
X-Google-Smtp-Source: AKy350YjZCZii7ybiLwTbgy/zyyVocMqbzVcRl/iekuFVpcB8tWo5nhJ96zCqtU2PWckOMfnt29m1g==
X-Received: by 2002:ac2:596b:0:b0:4e9:609c:e901 with SMTP id h11-20020ac2596b000000b004e9609ce901mr853735lfp.21.1680633510678;
        Tue, 04 Apr 2023 11:38:30 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id t26-20020ac24c1a000000b004b5480edf67sm2466044lfq.36.2023.04.04.11.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 11:38:30 -0700 (PDT)
Message-ID: <11b87394-610b-f6e3-8e55-4b5cc6121396@linaro.org>
Date: Tue, 4 Apr 2023 20:38:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sa8775p-ride: enable UFS
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
References: <20230331195920.582620-1-brgl@bgdev.pl>
 <20230331195920.582620-6-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230331195920.582620-6-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_113833_079879_C5747F44 
X-CRM114-Status: GOOD (  13.31  )
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



On 31.03.2023 21:59, Bartosz Golaszewski wrote:
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
> index fdd229d232d1..e921093a9f08 100644
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
