Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 172F6C7EE29
	for <linux-phy@archiver.kernel.org>; Sat, 29 Apr 2023 15:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RwtLn27wDRg/RGUT3xfK/h2LWrgkh/GacxmFiFly6U=; b=1yFrv0ic9dOanW
	ehX7NUQOs74jbfX1VOPC5JV6eTvH3E1MvizcirmJPcAyq8go3qZoKnqwGWdTcXD8Rpx8jKpZkfWVc
	sw3ZOuhT09z9pQz8tCafD6MMa78DIKWszF/VW5trTEmAHEviQGJDwiBXn3EeWzzjiuXw/bf+vcsbP
	QCdbrqX0Q8uOUJVJY+6EUKbCqDKch1Vsm8Q/+x7PyaAse83QtNynRcIVLBYR2UiHbEvH906A7bE/p
	vMmm7oUCFPW/VvMeiQDqTPREvplrkyVkJNK5WJtoUachUIx0wx0rvvhE+eXGsvZsmiwSEtJAG0DSV
	FysVNgvzN6JkvFtnfaUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psmvM-00CsCB-2G;
	Sat, 29 Apr 2023 15:55:48 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psmvJ-00CsAr-21;
	Sat, 29 Apr 2023 15:55:46 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-94a34a0b9e2so148297966b.1;
        Sat, 29 Apr 2023 08:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682783743; x=1685375743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TxvGvkws6v3OUPVKHHB+9cC8k2VhJOwpUtI24BtY69g=;
        b=REYv5IGmxp2EXyq8ER51sGhzE/vJ8B13FZucXizKVVauZ2+kxdXZrsbWRxGiSyw9vY
         mKasHYVY5c5pCmWaY5LlkET5nfRS718JeXly2SPQYhCV2slCyqdhsHj48MIZVoGUzkPq
         ZgsNaog2b1xuhmY2gebCZ49QMwXmFjKt9yW1vJqbiX32rit3XriwHMgwOsIZ1XXjDnUp
         7zGiX1xTBBEcV7zShZw2HjZesYzYfHtf3xnx1YNBUeQmJP6BSR0dRF02DQN7teRAOkzS
         UoXP2vVvFV6Euyh8Yz12CbC7D5p7rRHeUxKlx5rSfyN6iRGkVetF0bzrP7WpVunUyuvw
         7iew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682783743; x=1685375743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TxvGvkws6v3OUPVKHHB+9cC8k2VhJOwpUtI24BtY69g=;
        b=Mu/2iYtAZoST3eJXnlkfioPm06KI20LcDLbfrFgJKbjKRkWIGjMTWSx9qFv41SnzK2
         gwa51ud1D8YZTbHyDF3jnhMaRVD7OcS7bmrUeA+mcmvj8ZM7erU2z1BzjQUNJEn21wNk
         KqbUxKediDnRkG7QQxFbPg0Pzxo/1HprkWjoGu8O5oGmwk5CgAxeY8fgkP77p0DhL4bb
         N2Q0AcNNuRIMYu5ieJzvEOfSguc1ytVWIiAJoqXRkTugHH4LJuaqfNq84+sgf67XgLvp
         HtS395L/wTy4jhb0uUfgI2JNHygOEmvQF9Z54hqjNzt+Gsoh7/CL/hfYbr8Rympd5rhG
         Cu7A==
X-Gm-Message-State: AC+VfDxBX513hd40gCyeDWrl7DS6qdwoXI4aQhulND4VL6Jv4qAPh1Rl
	4CeYyK+L8tpJLzxVNds7PnQ=
X-Google-Smtp-Source: ACHHUZ5dT/PeCwnQSBGn49wK0jIxYcMU3RAAAEX/X4fj13wWXTPrHhe6nJQLWFRONNoSzGgOljix5A==
X-Received: by 2002:a17:906:dc93:b0:94f:1ac0:850b with SMTP id cs19-20020a170906dc9300b0094f1ac0850bmr9028611ejc.71.1682783743147;
        Sat, 29 Apr 2023 08:55:43 -0700 (PDT)
Received: from [192.168.50.244] (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id sg9-20020a170907a40900b00959aba150c3sm8040932ejc.50.2023.04.29.08.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Apr 2023 08:55:42 -0700 (PDT)
Message-ID: <712cd0a7-fdb9-059a-90b7-5c3b6a08fd5b@gmail.com>
Date: Sat, 29 Apr 2023 17:55:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 03/12] ARM: exynos: Re-introduce Exynos4212 support
Content-Language: en-US
To: Henrik Grimler <henrik@grimler.se>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
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
 <20230416133422.1949-4-aweber.kernel@gmail.com> <ZEBN8ImTp/tRdej+@L14.lan>
From: Artur Weber <aweber.kernel@gmail.com>
In-Reply-To: <ZEBN8ImTp/tRdej+@L14.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230429_085545_668636_ACB839FB 
X-CRM114-Status: GOOD (  13.74  )
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

On 19/04/2023 22:24, Henrik Grimler wrote:
>>  	/*
>>  	 * The second parameter of SMC_CMD_CPU1BOOT command means CPU id.
>> +	 * But, Exynos4212 has only one secondary CPU so second parameter
>> +	 * isn't used for informing secure firmware about CPU id.
>>  	 */
>> +	if (soc_is_exynos4212())
>> +		cpu = 0;
> 
> Is it necessary to set cpu = 0?  Are there any obvious issues without
> it (like second cpu not being brought up)?

Just tested this; looks like it's required here, without it the second
core fails to start up:

[    0.064277] smp: Bringing up secondary CPUs ...
[    1.067163] CPU1: failed to boot: -110
[    1.069683] smp: Brought up 1 node, 1 CPU
[    1.072470] SMP: Total of 1 processors activated (48.00 BogoMIPS).

SBOOT on my tablet claims the version is T310XXSBQB2, so it should match
with the one you checked.

Best regards
Artur Weber

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
