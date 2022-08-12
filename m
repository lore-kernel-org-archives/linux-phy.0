Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76C1FC00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 10:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsyqFAd/q3JyAy+kREpIqX0e67BTDCgecCC/L52Bv2A=; b=hg5IrvDOhhYaAI
	9tqXYqQBotHDff2kP6x7ar/vPw/RtSG8wfccAGkoKGMGsTfhJwB0r4kdF5zRk7ZkKoiMaZU75oK8b
	zzMlv4OLls9MGidIcpmM1RzxvuJ6pgGW4tX1K1SMXhA2XYPK430aMRKYfXOzwr5dpPja+/g4vMEOl
	dvQPMz4SBuJA0RXFogEiaRRRB0hzaQplkIQ9gaOH/zlS5lU+vOuR7WzSVT1ptao91sc49i8o0ixkv
	KOdthl0lwdze2YT0kSob0qGPHy9bF4mdj65wxg0QKtz1mTzP1GiXZDOuv/sXJAPqbZj0KWt76bMTY
	GKyfuUhyR7QBLo9XcZug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMSCF-005GOS-Jy; Fri, 12 Aug 2022 10:47:19 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMSC3-005GII-S4
	for linux-phy@lists.infradead.org; Fri, 12 Aug 2022 10:47:09 +0000
Received: by mail-lf1-x130.google.com with SMTP id d14so787741lfl.13
        for <linux-phy@lists.infradead.org>; Fri, 12 Aug 2022 03:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=3RWzjnayb45LZhO8C7s61Ai4WeG2+NmGef4blnhOBcQ=;
        b=wCOjPj9bxPZvB9wfESasZbycUB77gLebV6lssGw1WBj/2f5E31bEDA+W7Zyrs6gZfs
         yePWwXvXtAD+ynYz0f80Jjkf0lr0tKAIkz5LnVwiJxmMOjL37Ttq9j2Aood9xJq9S4sW
         fQjBc4Z+4Sd4KIIRkFTlMtmNgLib+dJtvgwTGLWXnyC7cX7k2Kfm4trE6kOzZ9UyWCDN
         srZvWuExUh8okmPLP0TI41SuwReuK+ogDR8BYfRQ1AgMaHFrN+3E5Lvr0dWTvMsCiGiY
         /qttjzG7bHBRyjX1EdScHWUy5c0yXYWEw8n8F9Y5sBp2Sw2LDtkxA86yJayZ1Ws0X33h
         D5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=3RWzjnayb45LZhO8C7s61Ai4WeG2+NmGef4blnhOBcQ=;
        b=QmQXFxOAHnDTMoT/QpXhKrof2j4xhPaMbuH/QnvTLxeqeG/gAABxrhAU5h4SfF74Ip
         XaJl1bdkMKGLK3rmdrE/nlJ8/8pnUT/hv3oj2BKCe0r/awmgSnlM6WWDBPFhwKrm1GpE
         fVMY7PLW+tzpVYqUYEtptJ3WaS9CGhV/KL12XWDPTHKM7E/B4LV0v3iDU8lZ3xaoyolV
         L9Mvt96WHwWjyrIggBEMWJB19dNVNQBJe6h94JxwgFT5zNgqr1BIgabDWXTU6h190h0h
         Nosnc4yo5AW2p6lW0aMFVJqK8nDI4uumDy0ZSnwebftE/rIwrgfYrHG37YQuUtYrSonN
         c04w==
X-Gm-Message-State: ACgBeo37jZ5aBp+0Tmx9SRHodm20HwUrTCm8gYWyBPAVHbcFMvMhKtGB
	g/M19yWyG/H8tF2eWaE24lJNZg==
X-Google-Smtp-Source: AA6agR5KmI0Atysgdjd7jitkZSZpUzlVIIdi8IzXZ+8wPR5K74v0Pa6N40R+cJ+mO7BighT3EfeD1A==
X-Received: by 2002:ac2:4f08:0:b0:48b:9580:6c4f with SMTP id k8-20020ac24f08000000b0048b95806c4fmr1045004lfr.273.1660301226168;
        Fri, 12 Aug 2022 03:47:06 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id k14-20020ac257ce000000b0048ae4cf8a2csm168154lfo.258.2022.08.12.03.47.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 03:47:05 -0700 (PDT)
Message-ID: <e568968b-3cb3-3e80-b38c-b0fc19bd4afb@linaro.org>
Date: Fri, 12 Aug 2022 13:47:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/8] dt-bindings: sun6i-a31-mipi-dphy: Add the A100 DPHY
 variant
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
 <20220812075603.59375-5-samuel@sholland.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812075603.59375-5-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_034707_945450_BB49B07E 
X-CRM114-Status: UNSURE (   9.06  )
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

On 12/08/2022 10:55, Samuel Holland wrote:
> A100 features an updated DPHY, which moves PLL control inside the DPHY
> register space. (Previously PLL-MIPI was controlled from the CCU. This
> does not affect the "clocks" property because the link between PLL-MIPI
> and the DPHY was never represented in the devicetree.) It also requires

Misplaced '.'.

With above:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
