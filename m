Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2517FC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b29qkHE+tBzKG6xGhXbnVI06nldinxofZZU0XiThzRg=; b=O8CjHTkBpEEijl
	Bmo3cPcZI/tzOAimjuwtF91e4voB53k9toOKHg9gLYlFoYdo9b3ODr8JRXD4ulA4TwidX9rIsY/W2
	6x81hG2PuJ25NTQtAswDcytsWX/vCBbhC+ZCM3soWAZNDAGFOjVqLSUS/VgMGjG7xs7VmI5Y+iqJz
	akVmUbNUYmtym0AGaeHsoS8GpjwahtSYCnnUVlGb9bs1Tuol8lktBmA/2j6csFuU/S+k2Xoc6VW4j
	peKGvgMSemEwRrrbJ6uQeRpNZyCYjLoXQd0VVkkUyvFRUb5IgjQ9HP8KZ/51zSNjzUigSLsY6En0h
	PPAiKQyY2ivnWN9AB2Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGUv-00DmK1-Bg; Thu, 22 Sep 2022 07:19:49 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGUr-00DmEw-MX
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:19:47 +0000
Received: by mail-lf1-x12a.google.com with SMTP id z25so13222064lfr.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=L0CcexYvr50ry0k5LCLuUVWFoXYl8KApJv3vLCHXZiI=;
        b=b4OPSMZB6A6D9dbVJDjiKqN/SOqiPbLIKzOQK3629IC/ZBvZuPkd9QczfXkA0JnkWU
         zzJIGX/7zmeF5SFpWKqdQpqqnoExVWZwXAVE64zz8A1GRanmjz/aESunHQ1HzOPB/Gw3
         8fVd9+1Ao3KwZ2P9EbUcYA6/KV4EbKk2szlEDbf0lbcc3W9PTSkSWpSw8FtpSrAKHlel
         YoPdkZFHGs6iD18Dm0SSbHIZ6dDOcDd0g40OoocVuQZm5KO73C43Wmaiz7fwpNC03qyj
         MBXysfSJBOqJw3VH5bYZ5urmfkOip6gjcBqWVLqJTA9bi+M3qaMT/IkGPWcEJXngzIkR
         GS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=L0CcexYvr50ry0k5LCLuUVWFoXYl8KApJv3vLCHXZiI=;
        b=tmst9IakRJ0h0du0101uh+guyHbiJfS7cGmeBj9YM3+YoX4jbZ3Q/88eGUwa7t82zp
         TPefZthJ4ADFsOw5n3lwdvPYHzvDU56lnKGI6fz9V93igJfF6TuGluNbX3nGvyHKnkjW
         Khd8oO2wr7KECGiTpCQ6kEtlLuvNv9zVEbBs+hoYZizlocJEVij5tMS05D6S7lmgWwEL
         bnhuCo7iAv7ocOWVRVU4H2zKdRINtIydJKuOPyWVh0y2YFReVzpoby8P9JZ/UqJrs2Ro
         pQlF+cE3H6TVsiMkpkSD4fzspUUC2rvs3IJqXwVn71AhG92a0S5yzUU+4yRIpdh6dESf
         pHcg==
X-Gm-Message-State: ACrzQf1E77N7zzmTbO3n18wvvBBu67/ygz7VimuIkk20waXHABSPBK8Q
	cEQM1bryrGmw1UEiJhYt0X6b4g==
X-Google-Smtp-Source: AMsMyM4gLReXsZlISFiuSW1XgfW0GpMeZQMBFVw9foI7xJCo01KU0HcjadDByu18kEXVa3VsgiXg9g==
X-Received: by 2002:a05:6512:1055:b0:49a:de51:5458 with SMTP id c21-20020a056512105500b0049ade515458mr671284lfb.585.1663831184180;
        Thu, 22 Sep 2022 00:19:44 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t2-20020a05651c204200b00261e8e4e381sm775206ljo.2.2022.09.22.00.19.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:19:43 -0700 (PDT)
Message-ID: <5a857097-30c2-3b37-6134-57cb942113ca@linaro.org>
Date: Thu, 22 Sep 2022 09:19:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 06/17] dt-bindings: mediatek: set the hdmi to be
 compatible with syscon
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-6-4844816c9808@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-6-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_001945_777762_DF441A29 
X-CRM114-Status: GOOD (  11.74  )
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

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> In order to share register with a dedicated ddc driver, set the hdmi
> compatible to syscon.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> index abb231a0694b..86297b7eb7f7 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> @@ -16,12 +16,14 @@ description: |
>  
>  properties:
>    compatible:
> -    enum:
> -      - mediatek,mt2701-hdmi
> -      - mediatek,mt7623-hdmi
> -      - mediatek,mt8167-hdmi
> -      - mediatek,mt8173-hdmi
> -      - mediatek,mt8195-hdmi
> +    items:
> +      - enum:
> +          - mediatek,mt2701-hdmi
> +          - mediatek,mt7623-hdmi
> +          - mediatek,mt8167-hdmi
> +          - mediatek,mt8173-hdmi
> +      - const: syscon

So you just broke all DTS and I do not see patches fixing them...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
