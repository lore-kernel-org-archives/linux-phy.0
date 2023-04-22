Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34B8AC77B76
	for <linux-phy@archiver.kernel.org>; Sat, 22 Apr 2023 13:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZsWzmO88RpQUuP8pcIG/MrpgpF6hLp/WOBLfpz2p8U=; b=z+31rdXgm8utPV
	zSZMYxC6NcUQEZiHxYSFujKcWd4jmbNgEpHoSBCE7van4dvqrhMe3tb0XXorgGfxLoxFB2vAmayKj
	w6n5oPnddTivkmf4Rixodx9LRvEAXmG0tCYo3uRzLy8+OweJpROXG3eHg0B5gKFdG66yFDCPNj1nM
	LHFvmtNBXcBE235RVPiSrPAovTxiweDb3BB8YRXub9mo6Sfqa8dYQLik49IzF4++Abi6/royVqMIP
	7e5eboI6azWWiIOGhuINwFeiy4tXbJottFrXSd7em9p82zKGGGkRozir0g2sg8OETfHH3DDMCrfgr
	MXyVqLxR6nSYlEAaPsUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqDcw-00CyWT-2b;
	Sat, 22 Apr 2023 13:50:10 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqDct-00CyVT-05;
	Sat, 22 Apr 2023 13:50:08 +0000
Received: by mail-ed1-x541.google.com with SMTP id 4fb4d7f45d1cf-506bfe81303so4536532a12.1;
        Sat, 22 Apr 2023 06:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682171404; x=1684763404;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WFcPcfg308BxIs2D12U44N+18aoFFJxwabh2xPhsPSk=;
        b=ZRWs3JpD4Cp5/pHGbDd0vrTAVGX7MoGwPJIJGgfDW35EVVzY7pVHO1cr+CMew4W30p
         LssfreTk3/208zOZke8KMcbc5fRWXdHA1gLcffdeonmQ1cUm09zZdb7Qax14xXqktigh
         QxVFZlPxVn+VDM9CKTWGq2LYuxR3RzYjFrprgWqmNAwY/xi4H8xNsc+kt0VKUI+/YJis
         qEI1pzNybL5k5euRWSNV8a+Zk0eVTMAXFwkhC0Ved4lMSY7As7fGXewYKgf18p+dGQsc
         OWQWry1WTSwtalqKuUvjPaulrvkzhckKJWomjmsPu5aIEGm3MfwYgVjIgZ9AR3G3sIm1
         gFYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682171404; x=1684763404;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WFcPcfg308BxIs2D12U44N+18aoFFJxwabh2xPhsPSk=;
        b=Hbj/bH3tckwGA9pFj62Gi1H6v9jITfBCaunIHzMNCtvJmsP4pJOSvL7D+XhHq2zhGf
         jss+Ij5alZCp/H6oy9Mv/tZn1tMlUg0sH051HGnO9KYlFEXYQRabEmRKrPRUS5Fs+Lx/
         roedjXUW2IXSmuS6ZDthTPKDdMGftlQRiCBuM+lvcbSc9ry9WT4ChrSugywbPkknLSzD
         2ZnpTDHkXmrA8u8jDu2e1yThRle8pu5JgOB4DU1bensEr6ZAYZ65XN64fplvVMxpPRw7
         H0kTyC3DsGbP3qIa94BgafFz1Fn0JirQWot2URYGFyWWbWNix8N2NxA5jwkpHB0VTp+E
         /vkw==
X-Gm-Message-State: AAQBX9cmPKB0+T+EJ5W5bqSiUu+SuEI0Ptl/iUYvpxebXEr70DbP/hfh
	U0EROEn61DMDCfiN0J7wFpA=
X-Google-Smtp-Source: AKy350agXYSrpjkbP6WbEUuG++nS8/psneQ03hXKL+jNOlMEImcYh4gHMeo5CK525yNYdOAzt8ZgwA==
X-Received: by 2002:aa7:da41:0:b0:506:8660:77a3 with SMTP id w1-20020aa7da41000000b00506866077a3mr8228114eds.37.1682171403662;
        Sat, 22 Apr 2023 06:50:03 -0700 (PDT)
Received: from [192.168.50.244] (83.11.224.11.ipv4.supernova.orange.pl. [83.11.224.11])
        by smtp.gmail.com with ESMTPSA id v2-20020aa7d802000000b004ad601533a3sm2846990edq.55.2023.04.22.06.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Apr 2023 06:50:03 -0700 (PDT)
Message-ID: <5818b5be-f9cc-8009-e2a4-1049d84a944d@gmail.com>
Date: Sat, 22 Apr 2023 15:50:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From: Artur Weber <aweber.kernel@gmail.com>
Subject: Re: [PATCH v2 12/12] ARM: dts: exynos: Add Samsung Galaxy Tab 3 8.0
 boards
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
 <20230416133422.1949-13-aweber.kernel@gmail.com>
 <9aba4c1d-93f3-7613-6fb5-0591a281ec0a@linaro.org>
Content-Language: en-US
In-Reply-To: <9aba4c1d-93f3-7613-6fb5-0591a281ec0a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230422_065007_107427_18F3FC18 
X-CRM114-Status: GOOD (  16.11  )
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

Hi,

thank you for the review.

On 16/04/2023 20:26, Krzysztof Kozlowski wrote:
> On 16/04/2023 15:34, Artur Weber wrote:
> [...]
>> +
>> +		backlight: backlight@2c {
>> +			compatible = "ti,lp8556";
> 
> You need to convert bindings to DT schema first. I don't accept any new
> usages of TXT bindings anymore, sorry.
> 

I'll be taking a look at the conversion (will likely submit it as a
separate patchset, since I've been looking into some minor driver-side
changes there as well...), although I have one question - who should I
list as the bindings maintainer ("maintainers" field in YAML format)? Is
this someone specific for that subsystem, or the author of the driver,
or someone else? (It's worth noting that there isn't a maintainer listed
for the lp855x driver in the MAINTAINERS file.)
Documentation/devicetree/bindings/writing-schema.rst doesn't really
mention anything about this.

>> +&bus_acp {
> 
> Order label/phandle overrides by name, so acp before dmc.
> 

Out of curiosity - should I order the children of the / node or the
pinctrl nodes by name as well?

Best regards
Artur Weber


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
