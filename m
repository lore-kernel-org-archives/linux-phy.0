Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C95BAC61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 11:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zt4w9yapRAtxnznL2LPUuF5Wn8Cl0vThpxPuGm+t4ZE=; b=vss3n8thpYZqvN
	kcA5ZOBmFaE7/RmX0v3nIno/0Oto8U2k7jv3aSJ3E6c0VP6BRQPYZhvnF7IpBoQofkX/O8I7Iz4gL
	ludmaBaGymbH7ADzXtPCFOYji06Y9H/cakaBFFic436lj7D3gxm9EZV6CU0sc+pJIomc0z5I+U8Eb
	M5FgiIOZ8NTqLd6131w8IOuOPizB9zVbrPrhxXGD1jExwW/pQbaMWqJM+OH+/3ssX7Ji1nDPCFumd
	Wq56B4ZRlcXPMsgvPEpFoE16DkhHFpTVaOKy9k5jxI/ptsDRR9XmASiI/Uk1K46H86FaJzotwORCY
	nd4U3vOIHZUtgY83czOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9FF-00CVUs-3J; Mon, 06 Mar 2023 11:43:09 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9Bc-00CV2S-HV
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 11:39:26 +0000
Received: by mail-ed1-x52b.google.com with SMTP id g3so37301879eda.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Mar 2023 03:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HzWGqAjLpHlD5u9jCAHG+a2PbEWqmZpag0JMmVH0IbQ=;
        b=i8hXqbKI/U0F9gdOtmUtiK/N5On7BfXK0q3TX/+n0ooQTDCLoftkzAu+ZYJIlGWAXZ
         LA3DhgOeIkx/4Ne0fDXzrCk3MsXepbwqhyB0Y3ZIqkZa6BBKZUvY5fqTna0G99v8YYYL
         Xr/Tb22i5suo7j8jSYlfSRzxZoqDQtO1Y2I9JlG696MYLI2H0fWjthTNAcoKMlJRZn85
         y0chlJ2hRuT+ytvlxtIPb5xH8R29AzUW+xYYtlkjELG4RarfpzqxH0pLlRN9IFGHcW5h
         iK/6bEv/oKK3se0hGd7eJQivdgZSuqwrE6ndvg+/y4Cw6t+dPgEPRbNpmwSJmvi6+YQC
         dGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HzWGqAjLpHlD5u9jCAHG+a2PbEWqmZpag0JMmVH0IbQ=;
        b=3f7UiMN5x+dIjTffWyICwie6Zs8AuDQMkMMM+uipTPe7A3vUL+qPEelcRO0h5xVW5S
         pTaaI3rkz7ke4zPAUKOlrenrvKf7D3CMVc/MaLb6P6nfyRIyPvqX9dVMzfrEYLjklq4y
         PgsDhQ26I3jXeJf8r0bW3KYRUelBdKkpa60FG2MMhsb0hiNVcKaifC/1orN9iLut4e5v
         z13YFvxTf0nvmGDfWxV77/lA4yviWqgTbWAtaBGKMHlx8CeS1cEn65L/wCl8S2fZJOD/
         706QFfE+j3MOY7Y0w0gyKku3mN8ydPfBk85tGULsvU1cINkeT8H1VoSi7hdZrKuMPMAw
         aqLw==
X-Gm-Message-State: AO0yUKU2mBV1Cfm7SKFQyIZBmQuKWlecNoX+h/PrXV6qXaisKYDYLckR
	PatBajXjrHaDwSIlrIXbnFCjRw==
X-Google-Smtp-Source: AK7set/fIAy5r7sbONvLExQKUO7U8NmLEBitXQ6a20ZCy6KaPV7F32QpdGzQxjxOW3bBkjExKFtH6Q==
X-Received: by 2002:a17:906:dac9:b0:8aa:c090:a9ef with SMTP id xi9-20020a170906dac900b008aac090a9efmr13185992ejb.55.1678102762984;
        Mon, 06 Mar 2023 03:39:22 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Henrik Grimler <henrik@grimler.se>,
	phone-devel@vger.kernel.org,
	replicant@osuosl.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Chanwoo Choi <cw00.choi@samsung.com>,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>
Subject: Re: (subset) [PATCH 6/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5420
Date: Mon,  6 Mar 2023 12:39:10 +0100
Message-Id: <167810274096.82312.8759303246779473962.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-7-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-7-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_033924_723726_482EE713 
X-CRM114-Status: UNSURE (   7.50  )
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

On Fri, 27 Jan 2023 20:40:55 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort and MIPI phys are actually part of the Power Management
> Unit system controller.  They do not have their own address space, thus
> keeping the nodes under soc causes warnings:
> 
>   exynos5420-smdk5420.dtb: soc: dp-video-phy: {'compatible': ['samsung,exynos5420-dp-video-phy'],
>     'samsung,pmu-syscon': [[11]], '#phy-cells': [[0]], 'phandle': [[16]]} should not be valid under {'type': 'object'}
> 
> [...]

Applied, thanks!

[6/8] ARM: dts: exynos: move DP and MIPI phys to PMU node in Exynos5420
      https://git.kernel.org/krzk/linux/c/972b567075845a55d525f1ed5d7cd7b6d524afdc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
