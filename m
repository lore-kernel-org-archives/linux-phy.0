Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80135C25B7C
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 12:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/p/2UVN1SI1g1bT+bwZIGNr2Pnp50IpTxQQJ6uvmSoc=; b=anXjb0Cg+8ckai
	7h2MaDJGUtnVSKoj+DOgv1aJSyIv72hACH31PGuYzAUxE6rcZKoOX6RqViPXJ8H1JF3Km6Je4KUN4
	rbCq8/DsTycCdUV+YP3mh2SbvuBUsiC3bwfeF6/piSryjstH8E0OZkOhdQ3Mzvm5aj3drq2+tLK09
	U3HZkeHy26XQ+EU343PS5uQfrDxx6hpZvrdxlvDyNe9KpM/HTCP8uAvkF/EAG3NbrxRye6OCftOdz
	ptL9yMd8RN7G3JFfY4a4FbzEpr0KB6bc3uft9pbpudcG4+qqY57R1R/CDHDtfKRa9Hl8+9wdd6vuH
	J3fG0KZP+BTlzdtSboXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwNa-00000000f3Q-0td1;
	Tue, 28 May 2024 12:56:38 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwNX-00000000f2v-3Y0c
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 12:56:37 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-52961b77655so952535e87.2
        for <linux-phy@lists.infradead.org>; Tue, 28 May 2024 05:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716900992; x=1717505792; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UBJydv2oVIxF33glNXhfsH0j7NMZZydOoyfGkqd3Bng=;
        b=ycDSYjGGaWtcT/Kr+zvWGm774rYwL7VasJ9z6FRywoG1OPG+4znyWc5b9AZIeJjc12
         3Hv3gboRpW5deRaQ/ujx6tC6Ad1V2hCVj0piRvR3/4AH4UBQgM6MQk7UmEA/JJofhDO0
         ZUKDpo1+qHry6emE+ygfMGCie9z7tLPnQ1M9Q/BYUf14a96ZfcxsZHt5ta68RThbZXtx
         5Z84e5xZy5m3KitsSRXg/cPsRWXc9rRLLG9FmI2l5mOp0wQ4NhZnxkV7TmkWJr4DIJV6
         jerf+Xk8keu6YCisXyEDztznpNsU9RQp0o3QJ9A0BJ74rlydvUsZLFDofUURr7YuQnMm
         nFhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900992; x=1717505792;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UBJydv2oVIxF33glNXhfsH0j7NMZZydOoyfGkqd3Bng=;
        b=Je/05Sym7wyGtX0VgHmZVAnT115RSFHevUAj05NOejpkpUt/D6KyMz3+ZJWWdqd6di
         6vZvrPRQwJT6PUJUcnpy9N+vKso7BUnAMb2NA4r7e2QUbnkv2i+g2E+/PqJNZ2Tv6met
         SBrpWqiRzz/BUgnBvkInqUL2ozbGJA2ZgM8H4mE902NpD8MHRS8nJqq7BE8use5+0o1H
         Y5Nps8BAfMhf/G8kfpURvuvVvtMgKQQSTDNtpnawUK5fsGfDMYrUuBwSxytBlnxBW2tf
         X0SogVIZgyRKBKiXFAHIg6SHfBJtzUDu1PYi7YwgflIDM9WsvQa8XiWoZMMMIqE6dSnD
         C4Yw==
X-Forwarded-Encrypted: i=1; AJvYcCVps27xsD6zVNJiNjwVY8/2d/ZRcghER3yv5iv5i1V4DozDFH9xhfeqMUA6qDfQLvHoCBvUM4NazRuavFPUr3mCO0e/JKc7WuR2L60hIw==
X-Gm-Message-State: AOJu0Yxp6bj95bTQhRxxl9jzOW/Fhx6RarPB98rL1AqC51JuulaLswe+
	WCdMV3OMfg0Nx4j+HYyQaZHzKoUbCgZaNRmEP4TaE5NtMTpxWr9k9m8LTXhuexc=
X-Google-Smtp-Source: AGHT+IG0zOMeIXAZKtGkaGkYMDbA0TJClGnE+TMJJZXkxFvHDGGTT9Qi+laKp696WC+OBF1yN6ki/g==
X-Received: by 2002:a05:6512:b9c:b0:51a:cafd:3872 with SMTP id 2adb3069b0e04-529644ec0cfmr9508409e87.3.1716900992046;
        Tue, 28 May 2024 05:56:32 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b885sm996984e87.127.2024.05.28.05.56.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:56:31 -0700 (PDT)
Message-ID: <39e8aa68-a68f-48d8-9845-0d273004e21b@linaro.org>
Date: Tue, 28 May 2024 14:56:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/10] arm64: dts: qcom: sc8180x-lenovo-flex-5g: Enable
 USB multiport controller
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
 <20240525-sc8180x-usb-mp-v1-10-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-10-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_055635_985770_1B27DDC6 
X-CRM114-Status: UNSURE (   7.78  )
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
> The Lenovo Flex 5G has a camera attached to the multiport USB
> controller, enable the controller and the four phys to enable this.

Any chance you could leave a comment above each pair of PHYs that would
say e.g.

/* Left rear port */
&usb_mp0_hsphy {

...


?

[...]

> +&usb_mp0_hsphy {
> +	status = "okay";
> +	vdda-pll-supply = <&vreg_l5e_0p88>;
> +	vdda18-supply = <&vreg_l12a_1p8>;
> +	vdda33-supply = <&vreg_l16e_3p0>;

status last


> +};
> +
> +&usb_mp0_qmpphy {
> +	vdda-phy-supply = <&vreg_l3c_1p2>;
> +	vdda-pll-supply = <&vreg_l5e_0p88>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp1_hsphy {
> +	status = "okay";
> +	vdda-pll-supply = <&vreg_l5e_0p88>;
> +	vdda18-supply = <&vreg_l12a_1p8>;
> +	vdda33-supply = <&vreg_l16e_3p0>;

ditto


Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
