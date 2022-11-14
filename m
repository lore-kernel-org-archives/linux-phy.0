Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD612C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 08:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTRHZylufKiwRYMXsBP4RLddMFYP1Fo+GSMFjW6BuCw=; b=wFKfkOpL7NjbRB
	PcADis1T/nmkOJfszcDVvuNJcuTGvDilF6oA9HlNC4edae31zFFYObho8y17OdrIpir3aeKZtzr4X
	ZUHo8VUyXCE3V442kbm4Xzmhr6VK98MIKnvczB/M2qOHWkaVZ42CJf5PVFMbTY9O5j7D6/78C8M+I
	D0G47Cg4XkF98AnEuhZ1QMuq6nSs6s2N0WdbrrBPjAJz5EL1QoVbl7nRwjLjk6blo4jEidx8ynbHU
	exONBjMR9PRJcwY5w59OlYfUEUpmZfofaN2ibRpQWrI0J+cUu//JGjh6TCdjWF5/CjI96pHrsYTGm
	EDV2pCRvkDQJltgZ3jkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUle-00GmH7-9p; Mon, 14 Nov 2022 08:24:34 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUlZ-00GmCi-L9
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 08:24:31 +0000
Received: by mail-lf1-x12b.google.com with SMTP id j16so18005095lfe.12
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 00:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mX7K+g1+HW/CWwyDEKxY//PTFx3zv2qtto+vRJUIuOI=;
        b=dXI7heLthe0Tjl8jMmcyg784Yytf6YYvtMaeIbuzD82wNx4ULfsqv5nRAbLJ4aE2nn
         wxqeiiG1gd74M5Jb1FEa2Esbtm2Q0FKG8RtRozlhHReZfK3gldgF+jC9cNHrWqQIXeE/
         5ZpnmSXG3VH1uMdjAtmHQx5jvFS/MUSZ57D2j9ysBSFJUVDI9ODVux78D/TlxsHCxD0E
         PG8XEwuBEP3p0oF4BagAoyqAKYAcK2bHEj47mVA0FaZ3Yf9U3GpxqZZDG4V9ejyxYMLS
         xp9PAAO1w/2jB0VDOn5gZEQjqEWkeFgx4YKUGR5xIt66aLKmVAMq8lspuuwuN7PLeMNJ
         zomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mX7K+g1+HW/CWwyDEKxY//PTFx3zv2qtto+vRJUIuOI=;
        b=TEl0q1iHyxso6N1Sk568ZM0I/VroII1AGOBzYPfLVOreDOZqYoVDYp9xQ937d2wrat
         V68NpkNWl6h/J5kfqZh/p3t3ENWXjRaLmERy4MlQvHv/vXxJAcTLJOW6bVceRYFarD7w
         jr0VMJfLU6A+ATxgnSGymPV8Z9IzgLhzgNG0GOMJyX2ldTTGbFG8DiHWRdGtDcipMDId
         3Eqms5dtI8fC1z+nA3NLbO9nxBF7NMAQGzKNgWD5gbvWfwGHJCjFOMek3nkpWTxA5bCm
         IDyGWW29sJ38S2xutaXB2gKFKjczbYtAoY/HAKVoRDKQRl4cC6VU1A/oJPpl5P4ILvKj
         w/jQ==
X-Gm-Message-State: ANoB5pneibNPOzwlzE3dLCmboFWaf9NntGFpxdGpdH9B4O0ZG+C4DlD3
	KyWb3n6LUuWdgyaoTrUQnRB9zA==
X-Google-Smtp-Source: AA0mqf7iLNCZJ2eZU6SC3h0KAiScdNro51pki8wDvgKdcvb5ClGjeyXxYBJj4rX0NXA/q962vvLqMg==
X-Received: by 2002:a19:915a:0:b0:4a9:e691:9232 with SMTP id y26-20020a19915a000000b004a9e6919232mr3506273lfj.182.1668414266192;
        Mon, 14 Nov 2022 00:24:26 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i17-20020a2e6d11000000b0027709706194sm1886628ljc.49.2022.11.14.00.24.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:24:25 -0800 (PST)
Message-ID: <040e00e1-00ea-32ca-09ff-ba3a35631a31@linaro.org>
Date: Mon, 14 Nov 2022 09:24:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the
 interrupts property
Content-Language: en-US
To: Samuel Holland <samuel@sholland.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20221114022113.31694-1-samuel@sholland.org>
 <20221114022113.31694-2-samuel@sholland.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221114022113.31694-2-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_002430_262791_1870E08C 
X-CRM114-Status: GOOD (  12.26  )
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

On 14/11/2022 03:21, Samuel Holland wrote:
> The sun6i DPHY can generate several interrupts, mostly for reporting
> error conditions, but also for detecting BTA and UPLS sequences.
> Document this capability in order to accurately describe the hardware.
> 
> The DPHY has no interrupt number provided in the vendor documentation
> because its interrupt line is shared with the DSI controller.
> 
> A trivial interrupt handler was used to verify that interrupts were in
> fact generated by the DPHY and not the DSI controller.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
> Changes in v2:
>  - Add the interrupts property to the binding example


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
