Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69667C77B78
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 18:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhF441vEvx4PisRGrVwrrFVUEJDsGfPJmwOsw6zKXP8=; b=qHwqZSTuyinGZC
	/oqzoORIIKICoXuRfr/jtRGdIxO2QgcFPimKPIOVDAHRQ1WybL+WaQVmVrJ0QXL7GdAmA0rbN526z
	as7fTDR/GqspEw/I5XjyS6WfjT3aVBCP9wM3wgX8DqX2Fb08uhZpWvo3gecxgtkocJ7v7WS1n4b9c
	bawJ/67Mhjx2NfPNjXRNliOiTqJVbVtZ4LMB48lSep2wZlEmnDT9toE2FEznt+Hw6GF/IpeGrNZzH
	4TNjewLDF57yhM77WPtrlTQQ6L2izAwSStUjhA9nKXE4EPLVK+KUk7E7cZRVcL7GIQz8WD5BE5f2I
	trAGpuhsk4hMa7v6+KvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po6oA-00EFPZ-0D;
	Sun, 16 Apr 2023 18:09:02 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po6o6-00EFO3-1d
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 18:08:59 +0000
Received: by mail-ej1-x62d.google.com with SMTP id u3so6531860ejj.12
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 11:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681668536; x=1684260536;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kxB9zxzWLE5n5MSYnySx6Z8ocqYMh1ED0/HN+v6ZZWs=;
        b=YbLI0sQ9bbw3+6CBqR/PcHUlMDJpNITpQ40dX93qLp4ZAurcmDYr05rb5MOKUNzucA
         SDoIqpTACjxY4HIdIlfUWRNPkYNCHuloErydK6uCKPtOeBPFzzeaLMSYNyx2okCXsnIR
         sF8yZ+SP6RSUvT7i4K8WZTNdEnhl4oxlIGa0BPviPceC1GjoqgI18vysk1VRBusULlpF
         unqFYmKb7VxFLGsvQPwuQd2Goa+uRADPxRdYX8aBgAgLd5MYXayqKIUXIZq3AxtaIEeo
         WtNHzPLKPQ0vOPXxY1jRCqZbQtkOc0rX3qVLxBA42AGqI+/lWnojEr4xtK+/U8IJDmrL
         IRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681668536; x=1684260536;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kxB9zxzWLE5n5MSYnySx6Z8ocqYMh1ED0/HN+v6ZZWs=;
        b=Bqfjay9vRAoPlW1aEiHLURTuHDjUOgJjb6tlXhNjr5ah1eHJkUQU+lB0a2BY9ucjEn
         G0GDdt8Dg6QBM1owGtOOr9VjwbVNZYDcElTcRjVwREelRd9Mlld3rbII+BqEH6KRcdLu
         IGldIUaV4lI9DCFsEKZRxuTWoywyPCkcO2sX7mtinfu59z+wj/SEpp5lau4udsOGTqNC
         QwVfEbAmH6IYisvnM/TVBr8BSdbZBnp2gNoj3dYm8nBVeh/vEoD4ATjsQ1F75v0gCCxv
         5RIncwAiVBxSTUuDxXLbU+++NMAQL/Xet2CUUSVW6NS97AWf+xx6MgrawZ0XylS3R/Th
         Zvrw==
X-Gm-Message-State: AAQBX9fvLA89LVa04TnNqTeks/1exkMoYXuIsrhbotdRJALNMdNVM2/u
	7LTWQadWx3HILj0kZKd307zaAw==
X-Google-Smtp-Source: AKy350YqQnlZ2zVfjEKsAm/m6no/T65ytxxsJ+qKSxgm1A9nbbbXmXwrfibKAVj9yboN2+/Dg1+1KQ==
X-Received: by 2002:a17:906:e282:b0:94a:9470:577e with SMTP id gg2-20020a170906e28200b0094a9470577emr4625964ejb.44.1681668536102;
        Sun, 16 Apr 2023 11:08:56 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id sc22-20020a1709078a1600b0094f75d6e974sm386565ejc.42.2023.04.16.11.08.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 11:08:55 -0700 (PDT)
Message-ID: <4fbf6436-406a-9158-08f3-7319fbb8c034@linaro.org>
Date: Sun, 16 Apr 2023 20:08:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 09/12] ARM: dts: Move common Exynos4x12 definitions to
 exynos4x12.dtsi
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
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
 <20230416133422.1949-10-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230416133422.1949-10-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_110858_595792_DD1CBEA9 
X-CRM114-Status: GOOD (  11.70  )
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

On 16/04/2023 15:34, Artur Weber wrote:
> In preparation for the re-introduction of the Exynos4212, move
> their shared definitions to a separate file. Rename the pinctrl
> definitions accordingly, and adapt the Exynos4412 DTSI to these
> changes.

This should be actually revert of the commit you are referencing in all
other patches. Why is it not?

> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
>  arch/arm/boot/dts/exynos4412.dtsi             | 645 +----------------
>  ...2-pinctrl.dtsi => exynos4x12-pinctrl.dtsi} |   4 +-
>  arch/arm/boot/dts/exynos4x12.dtsi             | 665 ++++++++++++++++++

Copy should be detected. Play with -M/-B/-C arguments to format-patch.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
