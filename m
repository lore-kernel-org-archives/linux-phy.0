Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0763C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NTui1702Qpl4rTVShRUjSlRnd+9KzKkJ9/vsscKBow=; b=2Ik7QWwB+BdGwB
	sHQ19bl75hlHX/QwpiK72v1LrRrSAAkFgNm54w5dgyUVisBd6rlGYBozD4PbR5a4jd/IumQM9kLAK
	z0JL0cRzl3FbEjgFxo5dAWkecCf4PFlJN0quO97GrHVEcka/bwSBrgOmap2q+psCaMeA/dsMrzD+F
	i6EOrgz07Ijuj/CMpLvjKJiGxovomAmoTOqfxN0tfUPk4syUGuN2i0LbImgTiBmNcOduly3jzT9o+
	u2L9B3JmerqMjWamId+gwDFao2Gn8g2D0iOxWkaHmac3tXcc4qAHNDJlSKEFjmVD8SGso4wE3pOe0
	/UZ74JuDkQti9Oqs9cKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLRN-00FEfO-1n; Wed, 01 Jun 2022 10:19:01 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLAc-00F6yH-ML
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 10:01:44 +0000
Received: by mail-ej1-x62e.google.com with SMTP id rq11so2677676ejc.4
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 03:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vbUaLzVSugxs2v7OnNZbCsv3RN8rW0zxbgQMgNkMQlY=;
        b=qCpD1ecykxdeE6o3r8Cl/HN+JB2JFyigbZJlrKP52lBfoHDsyA2xb2PBziwMaOLe1L
         +ewbx3IykafZ+LJtO4B8BKDB2IyrfzINE1zuJk//fmotP6JwSkeIpQcUF6mLq2dfbnUT
         id45AXNxrujLTYpyw6jP2QDYJIzr9BY0N3s8HJ238smwiIBOOd9ssD51XVXvgidg4pFU
         vtlr+5crCYAwwfwFD4D7rMKRHbYqcm/jk/pCkCAVWj4hcJSDsRu/1oRg2Xqyf0xeIbSs
         DPFJuENPrJcJctlpOrgVppdtX/s1hl29N4snrnSQtwvXRS5g6iTzs2pTXRgpYDe80yDo
         QNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vbUaLzVSugxs2v7OnNZbCsv3RN8rW0zxbgQMgNkMQlY=;
        b=DQI8r2YzYxTYnATcGW8PTRa99lBPaY1O4hxO+9TVzwiEUp41Bo2rCbxy3XYJYR3YaN
         aCwkyPF9yum6HB4c8Cnp9zXJEixfCrzEvxYePwctm85kqTQoCKUbVFni5oow0hGyNt/d
         iXAts++QideCUI5JGnfyM7N549bcCS3VSjZgwxKC4zIvH6qAi7DMhIp3I2wUhBGkNCrX
         nN2ezfGYFb0zJfDfWvg2YSHBmd3D03SPAk0GupbYTxZCs2SIQMF96aiRozvavrhwnPPk
         zTcgZAvm4jzyhiQWpjCVCQgSwvuFpPkGddNFjpOEwAuwXjmMjYpWF4VGhVX5Z1RF3oy0
         Rw7w==
X-Gm-Message-State: AOAM531UILd7kzhxciuVzYqPrLLBX8zBUsT8YYKPrT9pV1yJeDq7BGLh
	QK+tuUb4+3aUqJi7x2FDwtTadw==
X-Google-Smtp-Source: ABdhPJwyvVq0TPWBllaxxHglMZiV85mpdMH40cNFM5d4DKr4ArZwz+H/GQSSEeH1Ljb0CVHQAWEnQA==
X-Received: by 2002:a17:907:7248:b0:6fe:a121:d060 with SMTP id ds8-20020a170907724800b006fea121d060mr53409161ejc.9.1654077699553;
        Wed, 01 Jun 2022 03:01:39 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o22-20020a170906359600b007041e969a8asm511703ejb.97.2022.06.01.03.01.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:01:38 -0700 (PDT)
Message-ID: <d6f2531d-2869-92b0-4c46-f2cf84990d35@linaro.org>
Date: Wed, 1 Jun 2022 12:01:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 07/17] dt-bindings: nvmem: mediatek,efuse: add MT8365
 bindings
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Lala Lin <lala.lin@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-8-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-8-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_030142_763056_92EDBBFF 
X-CRM114-Status: GOOD (  12.35  )
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

On 31/05/2022 15:50, Fabien Parent wrote:
> Add bindings documentation for the efuse driver on MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> index 7c7233e29ecf..444875264493 100644
> --- a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> @@ -32,6 +32,7 @@ properties:
>                - mediatek,mt8192-efuse
>                - mediatek,mt8195-efuse
>                - mediatek,mt8516-efuse
> +              - mediatek,mt8365-efuse

Order please


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
