Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52BE1C636D4
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 09:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baDWDLMKipv9E91BwOMaAs6u9bcdjZoDV3fAYUMYwa8=; b=fpTyrxJfgSgLcY
	rN+sUcdumNz6j9AAY5CKdf8qohjyf5h5o3opD9y8iEys6iO2PC1+r/CYSc37LgYYJDkHSPaT0p2t4
	qzKUv3xjslwOSn2crGoph9s4tJMx7vhcy8ZSR0A4zC8pP1snj25NfeVUUpZ9hTxwCWmTsbmazee+z
	AX2irgBOEDArI54KCxKCzGjqHHssvwXYRiId0A7USHpfD0+bBX4pBpGjOAabW80BLWRDLSwZs3crh
	+Hh2aNcTk5wnkJQ1BrXOvG4ftvsCMQNGFweJe7fvPkHBbUdADWyWD45CF17ZIn3QfzBmR+Cr2Q25y
	fnFnKmO6W2f+qBqYgFZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRVEV-00DuEb-0r; Mon, 13 Feb 2023 09:34:47 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRV8B-00DrEJ-7n
	for linux-phy@lists.infradead.org; Mon, 13 Feb 2023 09:28:25 +0000
Received: by mail-wr1-x429.google.com with SMTP id a2so11410170wrd.6
        for <linux-phy@lists.infradead.org>; Mon, 13 Feb 2023 01:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o773LmcUBl8OymGcQoiP93QpX2J1hD5pNWOtAJSPtj4=;
        b=khCke+fR/UAjzlxCyCMdKltVJkHHEleXyYwvMF0+50/DPzCg5A6RieKJpEDSHeeXVO
         VkrhsVzfSxq7JLXS6OeAwE0wF5Z6t3DF1Tuwu6PGXKqc/l0Nv/H+GQZNvSPOO0SaL5mF
         WMrOa5QytgsoUx5JuJTF5QqVyevgRPG4MCea2HNpua0jEtHr57tH0UrMqzzr9IqgckNR
         +VGANmvNa+9sdApt2H7h3H5K+gMrNEIxtIVCM0fKG8gT0sk8TCsM4mcyA+sikxR2XIXq
         QhZDRw2PKkffml82ifLT3eeGnBGrou/VkMORLtLun8UGmQX6N9ddd3vEc3Qwvf5ricI3
         g05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o773LmcUBl8OymGcQoiP93QpX2J1hD5pNWOtAJSPtj4=;
        b=1DgNbZ13YfVXvzNrZqlzwqYGg5u03vuCH3R26CtGny/mj8t+oSjDFm2zi7oXm7be9Y
         UuvQ/aXySNesRD660FyoPIewLVy93kkCLPK5UZXLS9N0ZrlZktvtCfazKTjr5PfJxSjp
         lGigCcYpkZAk8ghksbS8yu2z4x2caqWpI4xXmF0mP9Ff0Ymu9PYzZfuXiJ6BpkeCWjS2
         7NdcrAOAFVR5dJfKSmgJ6SVUSr34sGapgFOzt8KBV6vUiph8eEJoZ/M7pX7IhIMm+nGB
         BcRcYwVdQL5rZpRI2Rh6A74mseytj6ArTYDRvaR2bweAt2HrdA1TLVHp8IuU+vG+JjKd
         mZDg==
X-Gm-Message-State: AO0yUKV4R1Px4cj7C3bKeUuNJ1qTNHIUNrHwbOCzM0sjjqKlvAwMG8aw
	WkWjeAVhJg8aFPRT5Ln6eSir+g==
X-Google-Smtp-Source: AK7set9L87Lxu1KcxNg989VNiYJ7rY8aakXspZUnydQWYpAr5BVDZuwpmUPtR5Has1SVeEAQTwUUXQ==
X-Received: by 2002:a5d:4c8a:0:b0:2c5:588c:84a8 with SMTP id z10-20020a5d4c8a000000b002c5588c84a8mr2608664wrs.19.1676280492081;
        Mon, 13 Feb 2023 01:28:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id g4-20020a5d6984000000b002c552c6c8c2sm4363765wru.87.2023.02.13.01.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 01:28:11 -0800 (PST)
Message-ID: <e94c3d2c-10ab-01a6-ff41-cbca34b88fcf@linaro.org>
Date: Mon, 13 Feb 2023 10:28:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v1 1/4] riscv: dts: starfive: jh7110: Add aon syscon node
Content-Language: en-US
To: Changhuang Liang <changhuang.liang@starfivetech.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Jack Zhu <jack.zhu@starfivetech.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20230210061713.6449-1-changhuang.liang@starfivetech.com>
 <20230210061713.6449-2-changhuang.liang@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230210061713.6449-2-changhuang.liang@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_012815_335940_FF30DCFD 
X-CRM114-Status: GOOD (  12.15  )
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

On 10/02/2023 07:17, Changhuang Liang wrote:
> Add aon syscon node for the Starfive JH7110 SoC. It can be used by
> other modules such as DPHY.
> 
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index cfbaff4ea64b..bce3e407ab60 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -251,6 +251,11 @@ soc {
>  		#size-cells = <2>;
>  		ranges;
>  
> +		aon_syscon: aon_syscon@17010000 {

No underscores in node names, generic node names.

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			compatible = "syscon";

Nope. syscon cannot be alone. Run dtbs_check before sending DTS.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
