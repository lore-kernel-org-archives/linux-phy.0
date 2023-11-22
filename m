Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB383C61D97
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 20:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0HTjDCdVWUQmK7YhSI99bDkamhl4TUqmLGT7AmB5Jo=; b=nUCTQZuqaoH2s/
	HA59uLfZLUMgPDyVdp6D5U6bPln8/n0bIb5Pv6NE5ysvhTr9wv2IE4V/Bd+6bJDGjGySuwQfLubFL
	7ULozRcZRgSt6sVzUpp/tvLvoKiwEyYA5Pc9QaCjFQFRdWFIOwiNRHTtWCOxbDcCuhGh+eRMUGw9M
	C5D6SbNcX9xR847tUWc96XWJwfmX2nLk6ghZu9dS0wT15m0ExC4CSum28RK22FmELXD+QpHNLYdwm
	ybDjoFo36xiCoOWGd3rgvX2Tsvb5iSYXt178Bu6v64qLEK2fkyPgR5mWp+8p1/7duqB6hn+gUDT8s
	4VwRE/32tqQxzzS0Zq+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tUA-002yng-1y;
	Wed, 22 Nov 2023 20:06:10 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tU8-002ymF-0x
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 20:06:09 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50abbb23122so110515e87.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 12:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700683566; x=1701288366; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p6ugU+Nev/JqzL/vcVugO/dwomn06Pl4VoY9cM5bR9s=;
        b=fkVoEGhf26rpARsG8lzDBlYKhAE68U8iFwBohfQqKv/mu/TQ635R3+AkSwCoFdp5xs
         EoOMj4RGU9HXL/HE4PJrRjDQomyd9ZzeP/T3HUw6OWnq5zwdOGyBo1d14i1ZZGwzbQ3k
         KoLnTBl4DA/eCI4pfneefpMTBbCF+zCgBdy95M6YHODSf0oolx0HYAs7yqQSwisMtEzW
         menVqXk4+WSiqtT+9aGZXMrwautUumD3C5wlFIRgryYIDQhcKA/nJOP1A8UdsON3+oI4
         xw2qJKv/V2/g12yw1hdQppR9MTkuoqoP56PVkhYjbj8iHBxFcvcLcCreuAJNCOHmXJlo
         AK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700683566; x=1701288366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p6ugU+Nev/JqzL/vcVugO/dwomn06Pl4VoY9cM5bR9s=;
        b=bpgEK836pwcI25QZ5bezPkUfdMQY4Zf4yLhEL52BHYJ9uJCBwxzWoNbuPGFq8G1Ajs
         sVSg6OfRpo8siISpqpNsSaILMnsLr5J+Wu+VDH5FZZ+zB24trbClXp/00uAT0uFY59Jn
         rKyY98tR4g6n3abJR2c5/XVkiRYfvW+G9zVeybGZvgBvqlI+bEEp84njokHTa3z/N/4d
         KWkgqR541yLS/ZQRnSHyKQgL2qnEUXwHOJvWTVIYGFrRH7yiX5nVsO2j/hjL8gsTWNUy
         rL8osJ2hH0Yn/y/V+KM/IuPwFluEpkbh10ODZEUt0/Glw7IHe322W4LmmgVXFTBx6QoL
         pbZg==
X-Gm-Message-State: AOJu0YyGv7vds6PJyocgbe5q3KP0HOD+DUvB609jn9qyLggoEZSGOV7o
	7X9tqjKChkTQ426axJbA49WVdA==
X-Google-Smtp-Source: AGHT+IEGcqysnGpkEQB27ESk8xR7FqeNzqxGJFqT1B45/tfrPc+TMWSEniSs+xmGmoGB6siKxOEO8A==
X-Received: by 2002:ac2:4c8c:0:b0:509:44bc:8596 with SMTP id d12-20020ac24c8c000000b0050944bc8596mr2538729lfl.58.1700683565986;
        Wed, 22 Nov 2023 12:06:05 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z15-20020ac2418f000000b005079ff02b36sm1932808lfh.131.2023.11.22.12.06.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:06:05 -0800 (PST)
Message-ID: <86656263-689d-4979-a3e2-6026bba69d08@linaro.org>
Date: Wed, 22 Nov 2023 21:06:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS
 nodes
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Herbert Xu
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>,
 hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231117201720.298422-1-davidwronek@gmail.com>
 <20231117201720.298422-8-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231117201720.298422-8-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_120608_331529_C2BD85D0 
X-CRM114-Status: GOOD (  11.34  )
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



On 11/17/23 21:08, David Wronek wrote:
> Enable the UFS found on the SM7125 Xiaomi smartphones.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>   .../boot/dts/qcom/sm7125-xiaomi-common.dtsi      | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
> index e55cd83c19b8..22ad8a25217e 100644
> --- a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
> @@ -398,6 +398,22 @@ sd-cd-pins {
>   	};
>   };
>   
> +&ufs_mem_hc {
> +	vcc-supply = <&vreg_l19a_3p0>;
> +	vcc-max-microamp = <600000>;
> +	vccq2-supply = <&vreg_l12a_1p8>;
> +	vccq2-max-microamp = <600000>;
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l4a_0p88>;
> +	vdda-pll-supply = <&vreg_l3c_1p23>;
> +	vdda-phy-max-microamp = <62900>;
> +	vdda-pll-max-microamp = <18300>;
These regulators need regulator-allow-set-load and allowed-modes

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
