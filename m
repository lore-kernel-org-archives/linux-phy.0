Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 583AFEB64D7
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 19:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rj/bzhawR5cWt4MqVlsxIGzwmTKi/BGKk/TojVGQ3/w=; b=i5rv7TxYvn+aTI
	1QCPEZODc4i6/6t4iNmsnGnTdUBGUS/WuL94C8t23bs7GN2A74UK5iRSKeRQr3p01iLXvPb4Y9cUF
	rZRlxz3T+Z01AqSgbHpZsJrZzscqzJ4c0WZ5jGLh/6wv7f6VZXb62yuYhwRjJJ7JoKGqp6o1kEcl7
	/Ox0lNKcS0RIIwqLmwWrgcYnLmLtezOHnkafpBkklVy2rHvlAbkPXZBFhQiarhlB5LwON/YxW6x8M
	QWuVBIn8DPBw5iZ4dkt9CsxUjwhf8EFusFF8ywePzEulWIcP/suYymqE9vMnjhePXuJJO7NZra6kG
	Mg1F9fml2FKlrxFylI4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q99JX-008vaW-02;
	Tue, 13 Jun 2023 19:04:23 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q99JR-008vXY-04
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 19:04:21 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f6170b1486so7183374e87.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 12:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686683053; x=1689275053;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=woeYYFEiU1y3NclAr5wdCFdPFOi62sLbxPfwISR5Xn8=;
        b=q2bbZiF2Xy2JxkCX8e3y4fFp2cP9iFKv42xyhROdmk2mpDr7LXZfz3AWcU7AxuHxKc
         IBySptwOhOAewBK0W7T3JZWk1l4Kj0ib1b7kfAkZPI6Mp/FlSBZj1SdO4XPDtu53cxh+
         wzJOoSDF5OtB4VFwZt0q+PodkxVuxE0QGoEdHp9BvSX7JmMHiBIIFACiOq9QEDZ5HZeI
         xXZqzZxo83ru7G7QauolFOyXqjc0HfXZRUJgtbKj7CmSdqc+ucEjOfsDf8AdyWXweCr2
         C+2eCONnBG/Stb3+zfI0K/svhD1H7VcMrPRWr7lntdBMeOj9IO7/m0BH9YMeFk5YzD5H
         pxBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683053; x=1689275053;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=woeYYFEiU1y3NclAr5wdCFdPFOi62sLbxPfwISR5Xn8=;
        b=jAs1g9F8ShcY8f7/6O8I3KwxEeb1ObuX/p0tgJ2A0FRsrVFOOWmpVB1J7mNhBl6rva
         Mr1z/zGG3lK8I8id9Uotq4Vk4/s0lZwxNvJym55TLysIJxSTQluIVETnNanqJ6Xd8t/y
         SKxJz7iNIoO2fSVNfyXgCWMEycyZd2ZzEThmPX1xI8SwVoTfLcniKmWeZs+ILE7mh8cU
         d7+R2CZwV3rDoLxKM8ehrYVoYz6EMTrlFtqgMGmHcom+m2BvWZwjvn+0Cp3EmydeiLZX
         8yIwyYYQhjejMGCgQ5JdKiTWL1AWEyadv44RgaqgPKFPk7H73F/52FjsIKK2lsDnoiXK
         +D4g==
X-Gm-Message-State: AC+VfDyx7zDa/NP3k6BBBIaIiADVFsB9tdu/S0WvS47bVnA06k0no26U
	nDdsQIu4h+LjQurjtIsw2tbIuw==
X-Google-Smtp-Source: ACHHUZ64q3nAkmQiyy1A3DAZ+hVneYytXEVoRe5yh0a8KBFRcAQJiZjhKQQHeFFMapSCKaxVrNlEzA==
X-Received: by 2002:a19:5e11:0:b0:4ac:b7bf:697a with SMTP id s17-20020a195e11000000b004acb7bf697amr4518741lfb.4.1686683053205;
        Tue, 13 Jun 2023 12:04:13 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id u7-20020ac243c7000000b004f42718cbb1sm1856560lfl.292.2023.06.13.12.04.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:04:12 -0700 (PDT)
Message-ID: <7b511c41-4bf5-f7ff-8ae9-5f1bffac50d9@linaro.org>
Date: Tue, 13 Jun 2023 21:04:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 25/26] arm64: dts: qcom: sa8775p-ride: add pin functions
 for ethernet0
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
 <20230612092355.87937-26-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230612092355.87937-26-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_120417_077558_4AE36BF1 
X-CRM114-Status: GOOD (  13.00  )
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
> Add the MDC and MDIO pin functions for ethernet0 on sa8775p-ride.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> index 7754788ea775..dbd9553aa5c7 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> @@ -370,6 +370,22 @@ &spi16 {
>  };
>  
>  &tlmm {
> +	ethernet0_default: ethernet0-default-state {
> +		ethernet0_mdc: ethernet0-mdc-pins {
> +			pins = "gpio8";
> +			function = "emac0_mdc";
> +			drive-strength = <16>;
> +			bias-pull-up;
> +		};
> +
> +		ethernet0_mdio: ethernet0-mdio-pins {
> +			pins = "gpio9";
> +			function = "emac0_mdio";
> +			drive-strength = <16>;
> +			bias-pull-up;
> +		};
> +	};
> +
>  	qup_uart10_default: qup-uart10-state {
>  		pins = "gpio46", "gpio47";
>  		function = "qup1_se3";

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
