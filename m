Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B712C77B75
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 17:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsGCfRF6NQXuSgfL91L/BnX3ekMX0yOTOjgvDSkygTY=; b=2VWsquaCVARV+U
	VWKTbB6QPfPhV8H87OntWQ7tJyt5bKCCf+Qk2RBJqAujwzQICXybpXxn3Zmbkfob/EBpgBF83xm0r
	f0m5nOkhwyAJcsVJAJ6PPVGX7VS6sWmboEezThBkQERpAaGqgZT4d9+paKq2KCAlm2YtDBXjcWaY1
	IbuV1tGRXA2GYi2qW+WwjYcjhDkrRuf6b0RK6ayCk84Vh6Sv23T42TcTwAG+JHlzpegfJxDE0lct1
	Jen+Y3mou2fw3cov7kSPbO3C0Z0c247K/NM1Uo6IRl5bsSVgpEYHES0Zy/9DvawXflztk7EN/++LW
	1URk1DVvFuLItfSVKdRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRMY-003vYk-2o;
	Tue, 09 May 2023 17:42:58 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRMW-003vXo-1m
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 17:42:57 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-94a342f7c4cso1087789166b.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 10:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683654174; x=1686246174;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+6CqfpUOuhBdIMyw09BZEvQUMlZ2hFOGBcV2c6lnR3A=;
        b=AjEyzOVffRUiFWnLDBmNtDe/ucBYt/5khszFHw6tm/dbF0kF3yzZgDjNA7WDufb08B
         uzBy9ZyTRlDCm7YRIi8rcQWsUH7AaZCYDQUon7B1p9b+WAg86sk5zRyPGwCWdNiBR9vG
         4J6STzl4OmM1bvOBmyOdfigRKfVsoa9lpD4eoMDeM0qU6Y4VRnkyvVpjM6TXtGNz2Lzd
         38dlZmByEUfHcyaZ9bG1lwe8TP4cp7Mi4jn4eXkR9fSIuUclx8PW+Wo+m5XfQg8qmn/I
         tsOBOl/zE6tghsvD+kr1FZgTsDjA+hbYVRXl0yAt7YcEP0sU4rkwuoq8GntYvtDRB0AS
         JjLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683654174; x=1686246174;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+6CqfpUOuhBdIMyw09BZEvQUMlZ2hFOGBcV2c6lnR3A=;
        b=QTHFg0VRJSijvyN+dd1IkpQuTu11Pycedqc9pnjWfixugZuZJn7kQHdFLQNyAu/CNf
         /7+WjRo1GLWlnchCDqMmTGMFnwY87Ia7MyY0h3g2ZNlisVA22mc+TLwne9jqQ1Ny6OAl
         MD8aYTCgqQ+2bNF/cwWgnDxDu6RZsrazfKKcIbBYNXpqp55S255qCrHzHiJ9nW1seyDn
         RUE01xGRxtbu+T3r6X1C9Pw+ugvoCz1y9fbo3mN0u6mNlOJoaotvHu9BdTLa0ttjrl+I
         5p87CjuImQXyLIwejFqjfEoGUDtJ8FOjXsRbnpiz+bi33evzJ9PhZs1WXVuIew05x59w
         UxRQ==
X-Gm-Message-State: AC+VfDxNlnHEg1fZA4BQmsV3IUtR/xH27roYCGJrfyYyTgSzmOgoQD36
	zsYCeogasYBvMW/ay687sf8irw==
X-Google-Smtp-Source: ACHHUZ5BzzC72uJ14K+MspznYU/rIVE1+W55VLdtM401cMlKeEaJ5ckngVP1kmYaHsBg4uUNYt4FlA==
X-Received: by 2002:a17:907:72cc:b0:969:9118:a98f with SMTP id du12-20020a17090772cc00b009699118a98fmr4852570ejc.10.1683654174473;
        Tue, 09 May 2023 10:42:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id 13-20020a170906300d00b009659cdb2f98sm1574510ejz.23.2023.05.09.10.42.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:42:53 -0700 (PDT)
Message-ID: <193f3489-4937-6d4a-2466-a67d335ac37c@linaro.org>
Date: Tue, 9 May 2023 19:42:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 08/13] Revert "phy: Remove SOC_EXYNOS4212 dep. from
 PHY_EXYNOS4X12_USB"
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
 <20230501195525.6268-9-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501195525.6268-9-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_104256_590286_B89A866B 
X-CRM114-Status: GOOD (  12.27  )
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
> This reverts commit fee7e1d50c6e6da1d99035181ba5a5c88f5bb526.

Subject:
phy: Revert "phy: Remove SOC_EXYNOS4212 dep. from PHY_EXYNOS4X12_USB"

I assume this will go via phy tree. If not, let me know.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
