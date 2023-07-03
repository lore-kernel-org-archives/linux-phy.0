Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD43DEB64DC
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jul 2023 13:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UjBNJaxIGZrG7cISHyMrMUgw9l583QzUGbxNASQ9c8Y=; b=d2wJSSxaJI/EjPrRfuOJyNKeev
	h7n0eO6uwpCaIDND0Q9MSwFlNhzK7RyK1K4bAm6/fLPzFI6IkSqrkpAjyHkLsQiBMrzOPPTYEa6ct
	4ECb+ycSY6xBO/g5HHYdltU4g51Fmm7zrq35815UeNsCUaluqV9d82zxUctl4C0teqa/jz7YjhkEa
	bENm9g8fpdcKyt5VheUs4qJ22tBeH+ibERMZwJr6fHhSsQo0Ju+91nFQKvLaeiVzbQ9vgUvkDvu8k
	YLN3Xv+7qcrcY4tTyCDBLBBt0lqyeVHEedZftJpn1kYWkXNnKnh0pSlRwL0W1ZYEQosJqYwh5OIZC
	UPl5zzOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGJYh-00Acod-1u;
	Mon, 03 Jul 2023 13:25:39 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGJYc-00AclE-2N
	for linux-phy@lists.infradead.org;
	Mon, 03 Jul 2023 13:25:37 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fb4146e8ceso54193195e9.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Jul 2023 06:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688390733; x=1690982733;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=IOndpcYQZRei86HjTSa6sLCOIMedJ10F8ZmbDKThl2M=;
        b=vd7G70PqJmphoqcC5/iGI9byEgifXwK6Rj3mJrKjAIB8uLw1hpzkudZj36bLUzAfkk
         CjzNWks5k2enqZ83uiheJk1bPKP4uBNGIYPZq9fUuff3p2KtuZ3rqJncJyFJqF58Wk11
         z3wyE/Lpomy7vrHjrlZWBHS1lrFctL5sXDGQirjHnrOynrP0Lsyxy/RUFfpaiizpZ15D
         m2niLhmeobmjKoqyeci4H11VdTtxm8S2YpJ4x7pVGDNNw+N9JpOT8TaCH2LRBE6AMkMV
         2n86A3zQAeyy55sfLbSPXNIM5/Y7R6C5jvxqBMMqtnupqZrKysuVl4uSym0zdS0BCsLV
         ydtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688390733; x=1690982733;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IOndpcYQZRei86HjTSa6sLCOIMedJ10F8ZmbDKThl2M=;
        b=jPKBkjJb5JdFOP5nXXEfKQ4+xmWJvjVEKhE30umGGJjFbNZ7n4A9Dwnlu2+t16TeYj
         kzA1SpIIGGKrxCVFO7ORauJi3lALJETQBxV+wl4TvJsY6cAxBc715xEFyR5S8LW+enuw
         vIjCNLiH6vp76syB6AUiq3cA5ESt1bGQRZgXzvO9lQSq0fBJl0TgoJka/qnWr/agpk41
         bgD7HvXo9FWKb8vhxKa1xv7BjoTjnb6ME/KUyowPBwwUpHjTBSkRjfrbJ6jn39Ki+U/N
         bKvVwITZdaNzZwWypAx6abtG7tQQv5gTc2+ynvDfMnAGEyOTskQNDaW1UH8sEGGtEOOn
         2GVQ==
X-Gm-Message-State: ABy/qLYCY6t3IxK5lfaiHaOuNjf37zfxmHfjza+0hmgmwR2zt4z4vQxo
	zzm32PBw/KhJLJtoFIjqwYlXTw==
X-Google-Smtp-Source: APBJJlFRFQcvat3EQxFgB5SI6iSmXIGa31iU1VkZvt3I+z99Hnaof/6yj4+br2u7++97LUjZHWQZuw==
X-Received: by 2002:a1c:790e:0:b0:3fb:db66:8332 with SMTP id l14-20020a1c790e000000b003fbdb668332mr1599049wme.40.1688390733118;
        Mon, 03 Jul 2023 06:25:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cf0b:9dd4:190:b74f? ([2a01:e0a:982:cbb0:cf0b:9dd4:190:b74f])
        by smtp.gmail.com with ESMTPSA id p19-20020a05600c205300b003fbc2c0addbsm10279849wmg.42.2023.07.03.06.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 06:25:32 -0700 (PDT)
Message-ID: <1ed2eca7-b5bf-8d25-d38e-15022a8c8a39@linaro.org>
Date: Mon, 3 Jul 2023 15:25:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: cleanup DTS example whitespaces
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Leo Yan <leo.yan@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org,
 linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-remoteproc@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230702182308.7583-1-krzysztof.kozlowski@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230702182308.7583-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_062534_852881_71D6B256 
X-CRM114-Status: UNSURE (   8.55  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 02/07/2023 20:23, Krzysztof Kozlowski wrote:
> The DTS code coding style expects spaces around '=' sign.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Rob,
> 
> Maybe this could go via your tree? Rebased on your for-next:
> v6.4-rc2-45-gf0ac35049606
> ---
>   .../bindings/arm/arm,coresight-cti.yaml        | 18 +++++++++---------
>   .../bindings/arm/keystone/ti,sci.yaml          |  8 ++++----
>   .../devicetree/bindings/display/msm/gmu.yaml   |  2 +-
>   .../display/panel/samsung,s6e8aa0.yaml         |  2 +-
>   .../display/rockchip/rockchip-vop.yaml         |  4 ++--
>   .../bindings/iio/adc/ti,adc108s102.yaml        |  2 +-
>   .../bindings/media/renesas,rzg2l-cru.yaml      |  4 ++--
>   .../devicetree/bindings/media/renesas,vin.yaml |  4 ++--
>   .../devicetree/bindings/mtd/mtd-physmap.yaml   |  2 +-
>   .../bindings/net/mediatek-dwmac.yaml           |  2 +-
>   .../bindings/perf/amlogic,g12-ddr-pmu.yaml     |  4 ++--
>   .../bindings/phy/mediatek,dsi-phy.yaml         |  2 +-
>   .../remoteproc/amlogic,meson-mx-ao-arc.yaml    |  2 +-

For amlogic ones:

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>


>   .../devicetree/bindings/usb/mediatek,mtu3.yaml |  2 +-
>   .../devicetree/bindings/usb/ti,am62-usb.yaml   |  2 +-
>   15 files changed, 30 insertions(+), 30 deletions(-)
> 

<snip>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
