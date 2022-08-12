Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD720C00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 10:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1QuCVqEmMhOCFWy6VPeXxASKt2pfgprPlJfiE5WQGg=; b=uCZavBTZOrgICH
	4OVblkHSVJ4qBnU25aXwEHwN5Qs2yilM+u/HEfGIq7d5fEF4gw7AaT4lW1+NFDTBkBmT0pNd94m0x
	Z71wMYckNJegY8YcLNQihgHnwEnW21vYXQIckysmko3F3iCnf5oI0T5azLMNxnFU+JA9pFVnyU5QP
	qgyvFK/siv+do5h2MotMLrsDekM7osX1hyIxyBZYhPBKKH9Z6zOTIFMsFrrgq3rrYJvB/I9MysWac
	tqNfnAkepR3vu6BkKNXuI87YIWYQ6+4+kBK4A3GtRncIE368xnHEUAWydkeZh2r9Bic3pDVFaS0NS
	X9u7h9Qo6NRHEua++V/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMSBJ-005FxW-TQ; Fri, 12 Aug 2022 10:46:21 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMSB6-005Fu2-LF
	for linux-phy@lists.infradead.org; Fri, 12 Aug 2022 10:46:11 +0000
Received: by mail-lj1-x236.google.com with SMTP id x10so571326ljq.4
        for <linux-phy@lists.infradead.org>; Fri, 12 Aug 2022 03:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=HcymQXHxdtVOcEgBn0VssZp+OhA8MUztfXg3luej/30=;
        b=KQyT9gkSS80tNswQCnw26mDxHyeZJq9+pzb2ka9Yzwn9zYkidpK61b6E9pz3isHsO0
         +6TmO5PpQtw4Qm2WypxV4fdSEueXnoeAbgzQxtlee25FcWCBQYRN+4jd8QIKLsPi0czG
         WLbpWCuvqMr2R/lW2afcZkC9f77xJpEq7FL0AxBKVVNyPSrs1zcLohk35ateRH6k0prb
         +3T59aW2f1cm129xT+z5xk3wzHUO7AFzBzvFxjRqLefAxHTF3EdpjZ0gGa4GgCgVERul
         uMyJjr8ytyBkO2bkXG/EXgcXMVTwsJIcoPS6T3YcjqZD1XIc6gGPcfaC5QaEWRc74fKS
         yUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=HcymQXHxdtVOcEgBn0VssZp+OhA8MUztfXg3luej/30=;
        b=eVJKY7yRL8DTrm3m8VDWm7nmZydxPHMzXqmuAk8EI8AxpOLirpZ5aWPD2ECqwBUtWK
         XAadXsjrwAFudnD39MiiSH7s0Iyu3Z97J1xe/JuQ4Z2Q74u0j26KeVGSq/MHpDvtYjXT
         MO8v4og/pIZvLm44dPAeStEg86nUaTuggcSUl54yIzIcRPv5OjjLvEQJf9JrUe1B/ID7
         jVmKWV+4c+sv3UferGxlG0hpx2vY3oJs5H0RVx5LQ2s8t3tcmLry20EQwr+/lf5tun5t
         j8i2/Ilozup6Lz72ioxeYkmPVUIcWausPESsNW8clhNPBdhV2y6wG2wKAeRTZILD/dqS
         8yoA==
X-Gm-Message-State: ACgBeo0CB7bCKqDcGjb8qBehaXK1MrWmuv5E4BpbyGoJEtl45xSoS8J/
	/22x3amePsZ8UggdmlE4cOvpqg==
X-Google-Smtp-Source: AA6agR6bi6AwFioTlQi1smxD8HeUMQmnbOqDkeVxg95idAlpnE1omPwD1bXNcdWThP0ZO5GBYtYk9A==
X-Received: by 2002:a2e:9c8a:0:b0:25f:84fb:c98f with SMTP id x10-20020a2e9c8a000000b0025f84fbc98fmr1043315lji.478.1660301166150;
        Fri, 12 Aug 2022 03:46:06 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id x9-20020a19f609000000b0048a9603399csm172667lfe.116.2022.08.12.03.46.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 03:46:05 -0700 (PDT)
Message-ID: <c85ec3a3-fa6e-aa71-a847-22062b9683e9@linaro.org>
Date: Fri, 12 Aug 2022 13:45:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts
 property
Content-Language: en-US
To: Samuel Holland <samuel@sholland.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-2-samuel@sholland.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812075603.59375-2-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_034608_753811_3ABAACFE 
X-CRM114-Status: GOOD (  11.64  )
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

On 12/08/2022 10:55, Samuel Holland wrote:
> The sun6i DPHY can generate several interrupts, mostly for reporting
> error conditions, but also for detecting BTA and UPLS sequences.
> Document this capability in order to accurately describe the hardware.
> 
> The DPHY has no interrupt number provided in the vendor documentation
> because its interrupt line is shared with the DSI controller.
> 
> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a schema")

I don't understand what is being fixed in that commit. That commit did
not have interrupts in D-PHY, so what was broken by it?

The Fixes tag annotates the commit which introduced a bug.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
