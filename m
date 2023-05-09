Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EDA2C77B7C
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 17:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roYAK3T9IS05+pzDOW2bKsGD9mmsQ6jwzsJJgN1FB50=; b=TpWVfjAr6UeCF9
	09OB20HsNstMEVksd+0GId6oHwNWLVC0vX9KuI/6yd7OahBHNOrl2/GdsH0bPEjN8t4fZwfC5buQq
	tUYsOmCwd6+pjv1rJj4cYbfeeNZ2Cl4UI3cJA0CekzQoBO+IJFqImOyfUvVVFXcTxMJNU9NiY3u0H
	z5QT5Fz74G77ZdQfqRPhKTrEBu8xyiCPQHebyzxs+CaRCTD1SUIWSb1o1CSUyDr5g6x/apjNkbB6o
	3tWlDgBCW8MhZNVYVdDW7UKXyrhmy81YrFICsPSuJeNnt9U3SpNmh0WbGg55avHXhmOz/BVyTy2if
	/Zdgm0spjWzVmdKj9rhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRLz-003vSE-2D;
	Tue, 09 May 2023 17:42:23 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRLx-003vNt-1X
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 17:42:22 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50bc0ced1d9so9414074a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 10:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683654120; x=1686246120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mgSfezJnFheHWxl/J/jtAx9CEBA9nZXTq9vupUNGWSQ=;
        b=lRC7iU5SK3AyepBwA/3/NM8aYtocWUOdo7lkdukNvXDY4Jytb85mFREGFNsTrtQ8+j
         szziW02hihhrpUODgNheXG3gP74Z8t+sHnn0Eb2icPma5NcrzR5G2rYx+NUOeKP52tEG
         WIJLi6DQSmFhy59cZx8SugPE+sfAaRzkNp5K/qL3umIoGqQGjgJuPXKcn0BDXRCVBqX2
         5LMf+vPOpJ/BnboXLCMwO0/mL1b5jyE1uYGfXMzdaR2AcPgbi9SQzOlnFQIdKYq1hVG9
         jYH+NA48cM96FtvteXPLLgUkYc5Cuk6oeXCP2bfYAG/k6DeHLlFW356ohpQvYXETL/AI
         LEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683654120; x=1686246120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mgSfezJnFheHWxl/J/jtAx9CEBA9nZXTq9vupUNGWSQ=;
        b=ZZwjC3hNEFCaU0h9vnMJ7WIhNlI+0vc8q6OVU7oCNxSDrwbZq2tWfQnfEQlK87OXnT
         UyidvWpCWJ6TPMMEzMf0vFraG5jwM0u7nxy2yin6COjf0fIfH0Lfr8NbwbhpqN57Yr2r
         4IXLeKCa1CrxBiK82Zf8UAdg+MzZjnB315O7pPTQa3ssJ0/D6/B1vH3l9iq3xVxT3l2o
         SCgAbXdWKlXuoOaxb4vmLIdv7RPsmGoijTm/MEkGoFf4mkiZT5M12q/yDieQdjjW5qY3
         CmTjNyzHYjnV6a/uLe/i2VzuP0HpS7hDuj42bwhWBFZVv1Zvd1PEOZrdKf2DJb1iekzl
         njmg==
X-Gm-Message-State: AC+VfDzE0zDm1XlLYJt9XKsttj0klhjjGt6K/rLI41c4/a8QDeCXmzAJ
	fV3FgEie8rs5Etey140V2xqrNQ==
X-Google-Smtp-Source: ACHHUZ7eebYnB6rhiI+xoinXTZKwvRZJY07rLy5XPSTfTbZWrjT1idLyIRNVuDPZtkAUIN71D6Aavg==
X-Received: by 2002:a17:907:6d20:b0:969:e304:441d with SMTP id sa32-20020a1709076d2000b00969e304441dmr3709171ejc.4.1683654120430;
        Tue, 09 May 2023 10:42:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id 13-20020a170906328d00b00969f44bbef1sm960264ejw.89.2023.05.09.10.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:41:59 -0700 (PDT)
Message-ID: <254dcea1-636a-550d-59ae-5889ffe49f6c@linaro.org>
Date: Tue, 9 May 2023 19:41:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 07/13] Revert "media: exynos4-is: Remove dependency on
 obsolete SoC support"
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
 <20230501195525.6268-8-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501195525.6268-8-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_104221_515979_C8A7241A 
X-CRM114-Status: GOOD (  13.38  )
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

On 01/05/2023 21:55, Artur Weber wrote:
> Support for the Exynos4212 SoC was originally dropped as there were
> no boards using it. We will be adding a device that uses it, so add
> it back.
> 
> This reverts commit 2d41a0c9ae51ac363d107f2510022106e7234b33.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
>  drivers/media/platform/samsung/exynos4-is/Kconfig     | 2 +-
>  drivers/media/platform/samsung/exynos4-is/fimc-core.c | 2 +-
>  drivers/media/platform/samsung/exynos4-is/fimc-lite.c | 2 +-

Subject:
media: Revert "media: Remove dependency on obsolete SoC support"

I assume this will go via media tree. If not, let me know.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
