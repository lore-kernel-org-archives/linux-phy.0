Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5EF8EB64D0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 19:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/EGWjbnAnYz6HrNEMcM9ZYBOKneZKzXUyKoNNQpxgdA=; b=YnL6F7RwZf3RFi
	iZrhZRtRyNiVPDuOHL6M7gF5xmq7kmBZ/ziBmYhKp0DeSpaUvnlog/DwA4npXvMlQd6X/I66/URAI
	ojvvEYA86Q2w67TyoZA1BTWyP6FQn+p7NNeffQfzXervVyzIuzbRS68YmtCalZSMjsYw7tD5OZLDW
	TLpHx4hEpp9jToaW+8Esxx06gixq/rcfoiQVzrCQRKWee+Vtg7/Na2CucaBBIs54ZmsjbuJrypbh4
	n/CvdNbuILF9YMebCest7HEFx5RHwXBoiCOQpl3g3alU4qncCtM5lomERAFOpsWWv1tt+xcwPmhXv
	7vsNiY8oc0RP4OPCW3Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q99NU-008wAs-1H;
	Tue, 13 Jun 2023 19:08:28 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q99NO-008w8P-0J
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 19:08:27 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f6283d0d84so7400892e87.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 12:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686683298; x=1689275298;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+tm3+Pdm0PaXfiZEzyRYLx0bL/2PcssnIDcJqEcG00=;
        b=pXvtSrfvSZFtqXr7gBQNbwO93crNLRG5kDvQKUb9i07WRGV8cuKSZdeN2AHPfkSYEV
         s9Kj4TDyZ6xACpGIQJynV4qJHfQP8x2u9sRicGgoFESj5RceIKeBfElicevTTgiNi7RL
         9QVYc+lVnCKM1rsbq+3A8n10G22u07GDwcLiscU3lmCZ6y7WPLfCyTgRAVZA4pyyw5Yn
         JKU8Q+vKxm0IHBX04DCwxktI6OGATGIu3ihwztTO+oNXjo8vTM8yorfcSd8ysJEEaPSj
         +opeKcUuZUOr+FiHdS+JpkxNfEiaACOn71VVmdwpa4d0A54Sj9plaNCeEqJ1uAKxPOTX
         1XpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683298; x=1689275298;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F+tm3+Pdm0PaXfiZEzyRYLx0bL/2PcssnIDcJqEcG00=;
        b=RvYNGyVwVcFrPhau9PGwR6/ZkNKkmQy6/zQNLzbFqdyr5f6nn2HWDWCy+oP1MOflxV
         LTjI7nNeu7fz8X1NU1Y2Jl48p+aHRhjafDmOKJWZSHF8E0pVP5rb5DUBH5C3SswUhU85
         yXjje1robnQWCkOgHYOETJc7Uz4wtVZddiIs3rUu276twKDVvmmdF1BSAis02zm+DfU6
         bPp6q0/8hXmHL2lHh1tUTyrHuLTPjXDzmtbC7rd5cYbQ/pnBhoqeXrKpyXPZSH6UzGSg
         zP++9/5iNwkpfTJZP0eiPyifi7HON32BswnV6c+wY9pECbsFRdKgDSRlpsqJfT9SPC6X
         si8Q==
X-Gm-Message-State: AC+VfDxXgzn34YSl/DfXR/Bjgff78eV9VFmsxC7hnf1RyHlXYfODJ39p
	fPJEZ12itkADbVyDuqWQVFfuzg==
X-Google-Smtp-Source: ACHHUZ5hlHejaHU5jlNuZeMW5cevHnRvyHVwiIHOuhObHOVK4r0Ifh+Y4UFnRCtLYlUAMdVar7JMhg==
X-Received: by 2002:a19:e059:0:b0:4d5:8306:4e9a with SMTP id g25-20020a19e059000000b004d583064e9amr6458878lfj.46.1686683298079;
        Tue, 13 Jun 2023 12:08:18 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id m5-20020a056512014500b004f73eac0308sm1148576lfo.183.2023.06.13.12.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:08:17 -0700 (PDT)
Message-ID: <cf515539-9a60-c3ae-18af-463651651a27@linaro.org>
Date: Tue, 13 Jun 2023 21:08:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 26/26] arm64: dts: qcom: sa8775p-ride: enable ethernet0
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-27-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230612092355.87937-27-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_120822_131786_2F8CD8C8 
X-CRM114-Status: GOOD (  13.49  )
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



On 12.06.2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Enable the first 1Gb ethernet port on sa8775p-ride development board.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
I don't know a whole lot about this, but it passes bindings checks
and looks good overall, so:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 89 +++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index dbd9553aa5c7..13508271bca8 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -261,6 +261,95 @@ vreg_l8e: ldo8 {
>  	};
>  };
>  
> +&ethernet0 {
> +	phy-mode = "sgmii";
> +	phy-handle = <&sgmii_phy>;
> +	phy-supply = <&vreg_l5a>;
> +
> +	pinctrl-0 = <&ethernet0_default>;
> +	pinctrl-names = "default";
> +
> +	snps,mtl-rx-config = <&mtl_rx_setup>;
> +	snps,mtl-tx-config = <&mtl_tx_setup>;
> +	snps,ps-speed = <1000>;
> +
> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
> +		reset-delay-us = <11000>;
> +		reset-post-delay-us = <70000>;
> +
> +		sgmii_phy: phy@8 {
> +			reg = <0x8>;
> +			device_type = "ethernet-phy";
> +		};
> +	};
> +
> +	mtl_rx_setup: rx-queues-config {
> +		snps,rx-queues-to-use = <4>;
> +		snps,rx-sched-sp;
> +
> +		queue0 {
> +			snps,dcb-algorithm;
> +			snps,map-to-dma-channel = <0x0>;
> +			snps,route-up;
> +			snps,priority = <0x1>;
> +		};
> +
> +		queue1 {
> +			snps,dcb-algorithm;
> +			snps,map-to-dma-channel = <0x1>;
> +			snps,route-ptp;
> +		};
> +
> +		queue2 {
> +			snps,avb-algorithm;
> +			snps,map-to-dma-channel = <0x2>;
> +			snps,route-avcp;
> +		};
> +
> +		queue3 {
> +			snps,avb-algorithm;
> +			snps,map-to-dma-channel = <0x3>;
> +			snps,priority = <0xc>;
> +		};
> +	};
> +
> +	mtl_tx_setup: tx-queues-config {
> +		snps,tx-queues-to-use = <4>;
> +		snps,tx-sched-sp;
> +
> +		queue0 {
> +			snps,dcb-algorithm;
> +		};
> +
> +		queue1 {
> +			snps,dcb-algorithm;
> +		};
> +
> +		queue2 {
> +			snps,avb-algorithm;
> +			snps,send_slope = <0x1000>;
> +			snps,idle_slope = <0x1000>;
> +			snps,high_credit = <0x3e800>;
> +			snps,low_credit = <0xffc18000>;
> +		};
> +
> +		queue3 {
> +			snps,avb-algorithm;
> +			snps,send_slope = <0x1000>;
> +			snps,idle_slope = <0x1000>;
> +			snps,high_credit = <0x3e800>;
> +			snps,low_credit = <0xffc18000>;
> +		};
> +	};
> +};
> +
>  &i2c11 {
>  	clock-frequency = <400000>;
>  	pinctrl-0 = <&qup_i2c11_default>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
