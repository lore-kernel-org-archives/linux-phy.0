Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27DF4EB64D0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 18:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhDQ2pY0f8kBAqI+0lqQhWzLtljOP876wVlG2UWb2Lw=; b=1nmmFFLo3ud4z/
	WTFp1N2JVcUPrSI0aAPSPfk45TOjywtGPM0zXM6pFUWsIuoYgFlyCUBSjyUNX6icxP/14UkYgEffP
	AQMuXp5wyyG3fv+0tKvhsEyHurpC2HpJguTOfUMDxALYyM5yH2RM97kHsX3tO+m7Igf4ur5d0oAn5
	D8xIoaBXLzw3dowOgj/SxF/XycAJsvifs4HNWEyeMBXn9IekPsR+J06BzpcZium4wIuWVyyxCoKo1
	g8AKbV5xXMrHrwlVRDas9JK41zVcsTcbuhQFFDEp3TmMtmmSgUKyC7gLGgKyc5Z6A61OvUKbfZJNf
	IXU+fz6yjHsy6N8RZclw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q99D0-008uQs-2Z;
	Tue, 13 Jun 2023 18:57:38 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q99Cx-008uPd-1d
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 18:57:38 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b227fdda27so51951241fa.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 11:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686682651; x=1689274651;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zsyyTwvaw/vp2AvSdxNLXUl1Sss7B+R+faApw6mGFPk=;
        b=EpsoCgNUbEr8P/ekHeYMePrH3lx9EnGuaih1xSHCfQ6AaSSa7tJ+X0msbZs5zB0RSh
         Bltvzflx0blflLlM249+PTlK7N38BjYPqzgSrxSeXu4pN3yG6njvv8jc7cWijBiIGKA2
         6K15ceQw5uqBaHvM5VWV/tYfqevE/SUnWSbXPXmth40TgDyy8NJX7ilVxnozDQGaQSZr
         SnXicXCwgT2ajHUDvwtsU+MfImTkCTBqZG45sR346wlpG/Ta1gjS62h3xknna+BzTKG+
         bTpcqwD7/n0NMkoqIJdqnl/lDOYgzFBCp3ZHv8CP7A6SGX8qpgN7xTU61OTuyLZ8X61N
         Wm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686682651; x=1689274651;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zsyyTwvaw/vp2AvSdxNLXUl1Sss7B+R+faApw6mGFPk=;
        b=OrN9c2xUPEqy52os6o3AZ+2BjZ+hjMRKx38u+yWuOJ83q89tbnXfxev6vRvOym925Q
         Q5bgnmsUWGY0JgrdpR5bXxXswuo64acldOYDVPudgwIuI4UcQOHLIbqAqdnk+bW2m1FQ
         8Q6NkR2G+/BaQW9Q6iE5AvREVx7HNPk0ayfrUdWUlPwPGowSPppYtFfb3PDxEQXCufAn
         nENFdBc0Qthqz3XyNpY1+VLV9m1yl38qIOosuOy7QRKe0NjTYwJJXwgmbK3WBo28Vjqh
         DpyiKzX4NWZgPCCBP9HhGa11ilLqF0JNbYimccbNkpFh1RarWvQKXDM0CJ0z9xBU7F4f
         sy2g==
X-Gm-Message-State: AC+VfDyBSOdKSfSw1l8W8FSk68+NaShM766DCz7b2agG8OWQfYdXJ5jj
	SngbB0YhcvHlzh0bFL3rolqmiQ==
X-Google-Smtp-Source: ACHHUZ58SPWpBS7mZjv7bdICxXgiAzg0Iw/ZCUujbrRo5NysRIPz5M1A2dBrKoFVdo4w57IT44ob+Q==
X-Received: by 2002:a2e:b98f:0:b0:2b1:fa7c:9131 with SMTP id p15-20020a2eb98f000000b002b1fa7c9131mr3438013ljp.18.1686682651365;
        Tue, 13 Jun 2023 11:57:31 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a11-20020a2e980b000000b002b1c0a663fbsm2258476ljj.77.2023.06.13.11.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 11:57:30 -0700 (PDT)
Message-ID: <a21cc6ed-e894-7a38-a203-bebcc1c41230@linaro.org>
Date: Tue, 13 Jun 2023 20:57:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 23/26] arm64: dts: qcom: sa8775p: add the first 1Gb
 ethernet interface
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
 <20230612092355.87937-24-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230612092355.87937-24-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_115735_549766_6D549DFD 
X-CRM114-Status: GOOD (  14.56  )
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
> Add the node for the first ethernet interface on sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 30 +++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 0e59000a0c82..f43a2a5d1d11 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -2315,6 +2315,36 @@ cpufreq_hw: cpufreq@18591000 {
>  
>  			#freq-domain-cells = <1>;
>  		};
> +
> +		ethernet0: ethernet@23040000 {
> +			compatible = "qcom,sa8775p-ethqos";
> +			reg = <0x0 0x23040000 0x0 0x10000>,
> +			      <0x0 0x23056000 0x0 0x100>;
> +			reg-names = "stmmaceth", "rgmii";
> +
> +			clocks = <&gcc GCC_EMAC0_AXI_CLK>,
> +				 <&gcc GCC_EMAC0_SLV_AHB_CLK>,
> +				 <&gcc GCC_EMAC0_PTP_CLK>,
> +				 <&gcc GCC_EMAC0_PHY_AUX_CLK>;
> +			clock-names = "stmmaceth", "pclk", "ptp_ref", "phyaux";
Please make this a vertical list, one per line

> +
> +			power-domains = <&gcc EMAC0_GDSC>;
> +
> +			interrupts = <GIC_SPI 946 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "macirq";
And another nit, interrupts above clocks would match what I ask others
to do.. Still working on checks/guidelines for this!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> +
> +			phys = <&serdes_phy>;
> +			phy-names = "serdes";
> +
> +			iommus = <&apps_smmu 0x120 0xf>;
> +
> +			snps,tso;
> +			snps,pbl = <32>;
> +			rx-fifo-depth = <16384>;
> +			tx-fifo-depth = <16384>;
> +
> +			status = "disabled";
> +		};
>  	};
>  
>  	arch_timer: timer {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
