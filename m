Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D929C001E0
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jul 2023 06:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRWbORr6EjEQBwV4hwLX5XZ6LNZKhknjChwQI7eq+RI=; b=ZX6vSJuhkgssNq
	rQ6YQoZUXAm6B6rVzFQZEPkyW+FtgBuxx/XryogmDBvYJNHlgYRzTQPi8WauUdr/ZP8i2CdK/5+TJ
	mVQom0CWklGwCKBhrlpXDsHfxs+xHPwFAeoCtL9YB0Jz4AQFdW8LPhL8/KpkQ2vrUktzfHuWoYEOx
	5KHM8IbAoRm3s37bV5we1ZeckMNzFfpHsWpBSSbcE9f6eLePryzSAgEvGFXNMhyc9h/+qoL12A5JX
	opqdQg6+ZWTEsFSeYRxTpAQSSpVSRKiZufnf6K39ql2FXKBQ08+GhsgceCYJ3vblX8mDxotxt/qQ1
	qIUE1A/atBIsO4OTb4iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOumO-00CLuD-07;
	Thu, 27 Jul 2023 06:47:20 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOumJ-00CLsp-1b
	for linux-phy@lists.infradead.org;
	Thu, 27 Jul 2023 06:47:17 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-992e22c09edso70369266b.2
        for <linux-phy@lists.infradead.org>; Wed, 26 Jul 2023 23:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690440432; x=1691045232;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8AfkdTx8aDEG/J6ohJF19yNL93fMDwOc4t4zIdlBZ2E=;
        b=Bzs4dNELholCLNzpl389GsKTcETPJzgOXzC6mps/0jrWoaqs7nkzk4SX2lF2esiL8h
         mYUXjzHNOvJVXZEWG4NF+TvVjKGXK9O25Gu5Bg0Mz6HhABuf6RiyTJEyu5B3DFceI4iY
         GN8a7sly9NkDEMj0P8l6U9nRpBZXyvWH+WxJ847rFr4S+FVx+TVxormi1OTPzuCj4m2t
         N4wrMZTL4lIDah735Zz0ZfAGoOeuhsJt5RljXqpp0OIpICD0XuOuQyUz0yG3S6DhKax6
         MDDpL/LeMEUDlAfpTi8qjY4t4SLBNUguCYd3q4hsikp/m70RGXtN3ctniZYm1MCGL2og
         sx+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690440432; x=1691045232;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8AfkdTx8aDEG/J6ohJF19yNL93fMDwOc4t4zIdlBZ2E=;
        b=lMD7sogtNe2SouYtqIwRI0hWHqnBDwIBoATUZrcXy6ruMgUA8qvqgx37xYdFRz/hWM
         G16rsSnHbSRawgcKiUC25iBow2Xs2AQiDrrQzGSIEYQPlA0H54ybkFhVyN0428Y/4jkk
         pXLWFx5qJYlQ/LqJc48v1jpCCDBdCahV8QB2U3FkRf0jsnVt4cBpFwW6IhirATpy9iKs
         sPBIxgvejfK0Yd7WdFeM6GKS9Jh/pWGVxRMowv2XV96jFDf0Sl4I73OC9HvpPyTsdamB
         8KQBcfefK+xQF7k8Fn0E6I5ATmK9eoP5jkahbjECUGHaPdozWygenxZ8vSHOhhjz0gJS
         eAww==
X-Gm-Message-State: ABy/qLbfvUAG804C3N0HB6fMLaXuA7GEHOEk2pcRNmQGK6dgnobGx0Uf
	38OCEPBgzV1+bKxAQbL4HhE1/w==
X-Google-Smtp-Source: APBJJlHaOtaQXLEUMwD7ynqgJvlhwXcmtHFmtE3VQA+fsZRixVtmPQJwQX+Ask+KjivM6u5LV3s4Vg==
X-Received: by 2002:a17:907:761b:b0:99b:4aa3:6480 with SMTP id jx27-20020a170907761b00b0099b4aa36480mr1310855ejc.40.1690440430456;
        Wed, 26 Jul 2023 23:47:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id u7-20020a170906408700b009786ae9ed50sm380391ejj.194.2023.07.26.23.47.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 23:47:09 -0700 (PDT)
Message-ID: <5288c817-3cf8-2b8c-6187-30283353060f@linaro.org>
Date: Thu, 27 Jul 2023 08:47:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v6 1/5] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl,
 john.garry@huawei.com, peng.fan@nxp.com, quic_srichara@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1690439352.git.quic_varada@quicinc.com>
 <f88d5add717e90e136a701f39fe80d00f1052692.1690439352.git.quic_varada@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f88d5add717e90e136a701f39fe80d00f1052692.1690439352.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_234715_544603_0BDCAC37 
X-CRM114-Status: UNSURE (   9.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/07/2023 08:33, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---


> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    items:
> +      - const: qcom,ipq5332-usb-hsphy

Please keep compatible as first property.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: cfg_ahb
> +
> +  resets:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description:
> +      Phandle to 5V regulator supply to PHY digital circuit.
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +    usb2-phy@7b000 {

This was actually better before as usb-phy, I don't know why did you
changed. Especially that you already changed once to usb-phy and this
got review tag. It's fine. If there is going to be resubmit then fix
these two issues.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
