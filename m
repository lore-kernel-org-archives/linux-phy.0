Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBE18C77B73
	for <linux-phy@archiver.kernel.org>; Sat,  3 Jun 2023 19:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9jIS+OsnDQOuchatyxUPzzfHO3A11Gpwz3WexddV44=; b=gsZhjXqdO7+m6+
	N0O04DP0BnJ6WWyjeJ3t1aKimixaBgvhpJIu6xsTYrwStEP0XtRQuVvGnua4jfQ2ekNUopO9E0C4c
	aQjV+tnY2ke6EsloIZ722WuPuA3qZvyZfavvV0htH4WpSuiqrkbRUegg2o2KbzB+RpydjAmslmY1n
	rwTJWVVG9JdwHduoneXH7iztVY6dG0AwUzk3+Sd/JpsJ9on5QpuxIXOY9BRhvWiRArFDTauFyOt1u
	cQgtCao0xl9nhMn7n/v4Cy6m53Z3fCjU1SGENWpAfOXMSCLysLMTh+Fr4bso0t9cufw0F9GcjYApT
	N9djrGXSDW4W4bem1o3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5Wdf-00AOE5-08;
	Sat, 03 Jun 2023 19:10:11 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WdY-00AOC5-2h
	for linux-phy@lists.infradead.org;
	Sat, 03 Jun 2023 19:10:07 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-51456392cbbso9446777a12.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Jun 2023 12:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685819402; x=1688411402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c/1fXZdlFrD4ZTMnSyIek5ravNGSg+bm7NeK4UcfZ5I=;
        b=P5/7J6TXhanwBYs0mXaJydYnywL4bWCLmJ010pLWwXwt7htvJiAdmc6U2yURnZw80Z
         kAeSWmUiZdlN0SoCXytxtVPMogIax/7QPJvluO0bvV/W9kcY+T/kSua6jhGLj205ss+q
         9UY/aIVxevdATQhU+kCPFukEZUJRH1RatyM+VCzeZi/e+SxwI6FS/IV3I91J0wKffBxm
         vnFNaMGDqP9dnlFK3b7kUIha5eF8a0ZNNDMEvsUN5ved6w8x0oSl49OJzfRqKikwrUbI
         z2X2LJrX/Vo5wrDWkJFuzoJK20XpftCfaT+7kHr3iqslpJ413SXnI5q1dgI5hqCsdJPB
         IGYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685819402; x=1688411402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c/1fXZdlFrD4ZTMnSyIek5ravNGSg+bm7NeK4UcfZ5I=;
        b=hTM1GSnDVOJiceZvv3yCsQw/RsRUhsx0ahYYAtUVzbdPhfPLmGnGaWo5KKmK8bmCZG
         ajDaz8vP0yJYj+PWeDrHrZnW4q7SpHLQH6g3hSL1rkd4wO9hmcOZEg3RZeBnaPqIXsCp
         dOO/dKtApGncs0V5pCHs3e3FOI5fiiLSeKMjIOwagG9nTWkSrM/dTEpS2eWJzGGBhi0h
         ktWkwfxMhzlA7N7HAEfTOUgGgN0UEKBTLmSemRrWgPlF5wErljH4dBmGR/Sgwc71dPFP
         HjIJ0CfgY1d8Z6bUStX5zi1B2Dc5te6Hrm8xNvYS2+SPxfFL2pdSpPCoC756Dx4ZmW3l
         O9Zw==
X-Gm-Message-State: AC+VfDyntkjVxTWoFNNkprmlYTSYfVVl5BMpGExjLPWmbEyLwgnKndJT
	WH6ufciqFBe9jlXcF7FPECo4IA==
X-Google-Smtp-Source: ACHHUZ4RopHcJJ7GF3SSU2ePLu5DlX+l9IkWhVj+EuFjvR5yyF0baMdpGCWtH8xOXILm4qx46Z8pUw==
X-Received: by 2002:a17:906:5d0a:b0:974:5bd2:1807 with SMTP id g10-20020a1709065d0a00b009745bd21807mr2096976ejt.24.1685819401691;
        Sat, 03 Jun 2023 12:10:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id bi1-20020a170906a24100b009664cdb3fc5sm2218126ejb.138.2023.06.03.12.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jun 2023 12:10:01 -0700 (PDT)
Message-ID: <d354734e-c8d1-2d75-fec4-e91bb322bbe2@linaro.org>
Date: Sat, 3 Jun 2023 21:09:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: add PHY_TYPE_CDPHY definition
Content-Language: en-US
To: Julien Stephan <jstephan@baylibre.com>
Cc: mkorpershoek@baylibre.com, khilman@baylibre.com,
 Andy Hsieh <andy.hsieh@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
References: <20230524083033.486490-1-jstephan@baylibre.com>
 <20230524083033.486490-2-jstephan@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230524083033.486490-2-jstephan@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_121004_899339_C6919CBE 
X-CRM114-Status: GOOD (  14.14  )
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

On 24/05/2023 10:30, Julien Stephan wrote:
> Add definition for CDPHY phy type that can be configured in either D-PHY
> mode or C-PHY mode
> 
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  include/dt-bindings/phy/phy.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
> index 6b901b342348..a19d85dbbf16 100644
> --- a/include/dt-bindings/phy/phy.h
> +++ b/include/dt-bindings/phy/phy.h
> @@ -23,5 +23,6 @@
>  #define PHY_TYPE_DPHY		10
>  #define PHY_TYPE_CPHY		11
>  #define PHY_TYPE_USXGMII	12
> +#define PHY_TYPE_CDPHY		13

I don't think there is CD phy. It is D-PHY or C-PHY. This is not for all
possible combinations but just types of phy.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
