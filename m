Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 480CAC25B7C
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 12:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZBTg1rPrsfoggtq7+IKTZQw1M+seejJjW5DEOQ7Jes=; b=yTd3q7Ok+Y3178
	+LjoP3UA4w81ForZ09hK/lPgmMUsDZfk5rNZjJwqVt540rSDyPZyvWIFjFGxziXpQItMTet324T/h
	sFIf9PnMXZ7Jl1HSZYiRU+vqIZ5n/QClZDqjclDhuuq+lzR7v1xmiuN45uN9/iR6fOC7cpELjMaoC
	6WJyH+KmACR/wjFcUWxEnxPaaB9nUvu767W4OvB0uEZI/cJaLyQGl6iHHu6oaQGOmyePwcuaN5ptM
	rnYwUNfLQlPVDECOKk185amyCvjdC7m4ZvoiwG26g5zFFJ/HSeyIrcF69X/bB/nWo2pdUGMhI3+eu
	sFMbMvexhvy97wWjt7qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwLh-00000000eps-491Q;
	Tue, 28 May 2024 12:54:41 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwLf-00000000eoM-2QiL
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 12:54:40 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-523b017a5c6so1125377e87.1
        for <linux-phy@lists.infradead.org>; Tue, 28 May 2024 05:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716900877; x=1717505677; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aSTrlh2SCKUUASbHMjU/dT8MYXK+NpaxB9pLENdcjzo=;
        b=sbzLP12DfIfhEaBjPoFZvG1ZM/f4OcEZQfJWsnqT06sxfh9h/HxC0OHZpk3YNbHTmI
         IyTjPNcmvnHY9OHfoDl6+Re5ldLs/xDTvxP6jxTciKtJBJVKFGXzICOQj85nEYeIfhyg
         EDf9Y/62G3buT7VsaD2t/i2fYlGAYVtP08S3Th8ZQ0ZXbIvAqXXmhUQC6oksdgxVTK8s
         7vMLxBF+IoI2nqLtybjGKg4ult/CZE8EW6PxSKzsBoKqOYBX4OOpCNZhOlnEWITRTl2d
         cozRs8E5rKkF7CFfiyczcwAQl85eHH+fEUuLhVL2DzLZtoMhOvg8onrvFSIKwaJq8Ic4
         a4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900877; x=1717505677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aSTrlh2SCKUUASbHMjU/dT8MYXK+NpaxB9pLENdcjzo=;
        b=mX8FHJbfzE04Yn+DPLNR1gxmIPlkVFIIindOp5KRsFLmCydnn0r3HfWvjuaDxaWAzx
         asVh0Lz0cBHZUrDQxwS3p44ZDCrsa66ygGvgiVxPNywMLH6g9FejxSevxjSI7ncG8MQ2
         rZgG/8OEa9fciCafIUAIPDs76mAfCIzl5BvVRmVtyZucy4wR4XYK8FnBlKe3JAP0deL0
         jmUWhJDl6hnoVQGGAj7ZUr3ePVLy2cJ/fUBMLhmjUU2xqbVr3snWFXoIZ1RYvDiAr/dC
         ptupBm3m58uJeTtplivz6O1ZriYFOKN6wTmkBYJLcNY5KJh6G+bh0DgOfThorAxeHone
         Brbg==
X-Forwarded-Encrypted: i=1; AJvYcCU5rHeaaWI9A/Ck9FHvf7pJlonITZAhdtOQC/keZuEXYGyzVKx0o+D/qQIG0JRKukJX9CeP4O9/DQQcMFupCYxNNiI6mPl/Fp45a8fKMQ==
X-Gm-Message-State: AOJu0YzJvwQWdSyEeJeJEKMM3oO/mf7mB5DJXBlh69BxPLCvhgI30JHF
	zNJXnM0UM+hPXnNjNxMeZpmDgV54rKdDnS5BpiX8kLmoexNXfM4xgB1BzPr458c=
X-Google-Smtp-Source: AGHT+IGKzu2XIOmakywBVvQVCXPjCqQFFHQbzz7rGWhc+7VQYk4Q9VgfwbtHKoxlTZxsKpchLq1WnA==
X-Received: by 2002:a19:ad07:0:b0:524:3ce:d4ca with SMTP id 2adb3069b0e04-52966005aadmr9313303e87.37.1716900876850;
        Tue, 28 May 2024 05:54:36 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296e8877a3sm952106e87.36.2024.05.28.05.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:54:35 -0700 (PDT)
Message-ID: <68593878-fd39-4961-b7c2-cc33553d6fca@linaro.org>
Date: Tue, 28 May 2024 14:54:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] arm64: dts: qcom: sc8180x-primus: Enable the two MP
 USB ports
To: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
 Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_055439_664829_0BD6CC0D 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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



On 5/25/24 20:04, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X Primus comes with an AUX card with two USB ports, fed by the
> two multiport ports.
> 
> Enable the involved nodes and define two always-on regulators to enable
> VBUS for these ports.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

[...]

> +		gpio = <&pmc8180_1_gpios 9 0>;

GPIO_ACTIVE_HIGH?

> +		enable-active-high;
> +
> +		regulator-always-on;
> +	};
> +
> +	vreg_usb3_host_en: regulator-usb3-host-en {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb3_host_en";
> +
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +
> +		gpio = <&pmc8180_2_gpios 9 0>;

GPIO_ACTIVE_HIGH

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
