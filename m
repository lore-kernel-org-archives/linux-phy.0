Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D0CC43217
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 17:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0MLe9vjZ26DOcYY83+thuPiUXWIk1nOk/fmxk02pWY=; b=oGPv7UyFoQ6/dh
	P1Kvq7yNRnfeShKZGXhjLNGtfiKIRRLKTI18zosxhDHoANoUbclP46AfkEDPZibuY98HV5JZBzCSL
	81KOX/9DD8SRKtu40g6k3XZC5GR7OYCvFmWbrrS3pz0k9bflDgzWH0QnjJqmQ9sV0avdusw7xIc8S
	QlAPvziI0odGK2GdedhRYtTJEe5pGlHqbjqu+ksDbsxuX+71vNhgVQW5srSWORD1jqTdS/oeosP6u
	jv7P00yHaR1HTMj1GsaRlc0m2ttXTlvE8xoYHW1doPTXv5102JzKglzBkLfxVwXwg8G3vXd4tX0U+
	RPgE4i7WjqK0rWS/7ZKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAEj-00G98W-36; Mon, 21 Nov 2022 17:05:37 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAEJ-00G8ta-82; Mon, 21 Nov 2022 17:05:12 +0000
Received: by mail-wr1-x429.google.com with SMTP id i12so16953264wrb.0;
        Mon, 21 Nov 2022 09:05:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HF+73ogBzWs8DDzLDd+FEDAjvGpR1m7S0//62sPrjlY=;
        b=OUJgA3S2aZb+ri5c3O7yA7l0Mjtqeek0zbSx7dMRR9INwoh3Bdflde+TnimyTyAlMD
         GB0XTN4B0TSg02dFqLy+Bp7sWpzaIOk5Ys6kcO9S/8/zHbsy7Bbp29MtAS1y40+mtp1Y
         7QZmQEXPIZpRD7fp9zHn9nBbcbqXXZ/XKmk9xl4OIC/50zW5eCJNgtHTZeXtx1XJwWg4
         X2NTGKcUqNZxWvvXSuSELljBI0zh7LxkYWCJQTuVe5HqLkj5J90eobBQkI3bnXbq8n4k
         0xlDf2RO2QbztOGNtjdjjzxhJ6yaZkglY+Bp2tiKlZliK19Vj2EDwLqTlmGIN/oFGPzy
         IR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HF+73ogBzWs8DDzLDd+FEDAjvGpR1m7S0//62sPrjlY=;
        b=6Fd+EvGZU5yCWKWRYdvfvtoMMf0CkYdeg2OejEVbAZVxtaAU12kVji6ipMN4TSd6ul
         upmPlsgL2bJvmUU3+t1GhnvuZtmtjjQ6zvThOa1PjMraycr3UlPcmKi7l9cdDW8WBPWk
         f/vSLk8DoB0eWFHgJT23S193MoEpZ/7FWMFzvntC75Ws3S3vCj1LWl+fYwlvZnyXXtvq
         WvuF8MMWEIj2tuOIVwe8IIBrBxNgThZ9MxDIKnjeInuK/Yy0C3bPsNt3mgOD+RquvPk7
         yWVGK0MfRFkYC75YrpGpPC0VKNVp43+ObTqtMXtenPHckQihF1+v/5hicx1jscU3gSfw
         ScLQ==
X-Gm-Message-State: ANoB5pnOH59Wwxle6uM6yNgAaGdnpKEaov/f5SxKLa4zDaOBi/mx+LbN
	5qY/bxFU+CPKe/CusV/NNKM=
X-Google-Smtp-Source: AA0mqf53nBW4skLAA48WXUrRkzCcN0nS6afComO+HSp5ZD0DW3QxL/O4VQJJ/fjiaY6TMjLwbNDEDw==
X-Received: by 2002:a05:6000:910:b0:236:56a9:65cc with SMTP id bz16-20020a056000091000b0023656a965ccmr11771192wrb.563.1669050302593;
        Mon, 21 Nov 2022 09:05:02 -0800 (PST)
Received: from [192.168.1.131] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id y15-20020a1c4b0f000000b003cf7292c553sm14233688wma.13.2022.11.21.09.04.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 09:05:01 -0800 (PST)
Message-ID: <df18d619-1914-6dcf-a0be-647ed8cd703b@gmail.com>
Date: Mon, 21 Nov 2022 18:04:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v6 03/11] dt-bindings: usb: mtk-xhci: add support for
 mt7986
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang
 <jianjun.wang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Bo Jiao <Bo.Jiao@mediatek.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20221118190126.100895-1-linux@fw-web.de>
 <20221118190126.100895-4-linux@fw-web.de>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20221118190126.100895-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_090511_374683_2BA408EE 
X-CRM114-Status: GOOD (  12.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 18/11/2022 20:01, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible string for mt7986.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
> index 939623867a64..a3c37944c630 100644
> --- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
> +++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
> @@ -28,6 +28,7 @@ properties:
>             - mediatek,mt7622-xhci
>             - mediatek,mt7623-xhci
>             - mediatek,mt7629-xhci
> +          - mediatek,mt7986-xhci
>             - mediatek,mt8173-xhci
>             - mediatek,mt8183-xhci
>             - mediatek,mt8186-xhci

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
