Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57BD9C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geTXFGYZPXli4DGWOKJXGWnVzfEKrTH7pPigLmfB048=; b=Qvv+e/w4nlt3Hv
	JX42FCdW2i9uaDKewjpJKy7hGpabg0TbzKFjf0ro+DH1OUX5VrBh5ba8ewGUUjm3dFDCH7uFgQlOG
	GC6m7MYwKVb56f+/eRqJV49WgKpZ1Yl8TGLkkP55Jz4uXH7EZtlCVw83xOBTOJRoXo//wTDBJaCd9
	zdb0H67+0gliseRZZFES9ssUSKjInLiFZWdGugdYFxfElaVZSD4JB1K4+JaoihptE9ZQBQGXiSf+E
	gEgrecDp2pRNDtHEUMK9925dPHJrd25j9TAMMn/djK9ceAwTw9xqSny8T9DIUN3C7PXFbaleuLIWT
	YDCF2piZEOb7BD+KR3YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLen-00FKR9-GY; Wed, 01 Jun 2022 10:32:53 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLN6-00FCkT-SE
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 10:14:40 +0000
Received: by mail-ej1-x631.google.com with SMTP id n10so2729353ejk.5
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 03:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AlvALx0zMnGDVnEapBQ7KHJlm9HnZCeBAZQY2Z7YIfQ=;
        b=KpJ7iB62rkYxYYPytNHxK/MzKHmZsF5SvunBuTcECK0tn0gBcv1PatBmUDZ+SvIPy6
         2vqt4Zj3vabQUZh4U3OAndnCqt9yZyLZ0IKx3nkfjHESGq5PandWAV10KgQKMi2pMU2K
         ho27qU7HddcfX1+Ll7SPEaP5cq7FDEBr9ywhMsVOarhAz563nJibiKkzZGXMSf/76XI2
         7XJ+7WhqDvf4p9WEs5e88JGVmweks7E88ztDQGkWkgeXJYq1/x4N1OkEu7GCo0a4VD+U
         Fk7xDFGl6MW00LFfN2Ek7iVNwZMl4z/F5PPhmDrLWw+2CH0XVcZpjoaDOzSaGaz4v3H1
         wqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AlvALx0zMnGDVnEapBQ7KHJlm9HnZCeBAZQY2Z7YIfQ=;
        b=k+yXDO9ZNElElXH4K3FeE96l3ptmk81Q3bUqQGDxv9O4o6DhU47jdPzp+HtlAFVA+R
         ByMjjvHiu+yXEfwZH/aEp63deb2vmK1GApU8cbEDVyPtlqAdHsa5ovAEoNKJNc+L0IW2
         iWR6leg942I1jJrqm7bMcVsR81WEjVBZ/NvZmfQysqA1jH98vcT47J3sOp2yC30DXcU0
         vKMmn4E7QvTXcAE/D0nk9q4sQoC/pasNKSnLaHLfGzGOA1/VF0RfwY3L9GXc1wFSKxdj
         Q6aFBgyFlRuoMQSq4mfKvYyrkRe+V112SGzii45q7Pyvua+Kmp9Mv0OZ8MhfvMwMi8+o
         Qt2w==
X-Gm-Message-State: AOAM532ddQKNkX+Tl59HG8TRSruUh7NfnS+3RRX/LaJe4iUO8MB5014V
	JeOcZrh10RU6qQh6BN/wUHTuuw==
X-Google-Smtp-Source: ABdhPJxmm2Ul6Qx7gD8GTPvF4loAnXC4xOsCGIvm33g8Xu31YADXTnZMvU21oiaV1IKR3O6RT4tgSA==
X-Received: by 2002:a17:907:7291:b0:6f9:a3b5:7ce4 with SMTP id dt17-20020a170907729100b006f9a3b57ce4mr58314733ejc.642.1654078475092;
        Wed, 01 Jun 2022 03:14:35 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k24-20020aa7c398000000b0042dcac2afc6sm710131edq.72.2022.06.01.03.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:14:34 -0700 (PDT)
Message-ID: <30a4ce8f-366c-9e58-1a48-fc434ae739c0@linaro.org>
Date: Wed, 1 Jun 2022 12:14:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 14/17] dt-bindings: usb: mediatek,mtk-xhci: add MT8365 SoC
 bindings
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-15-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-15-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_031436_942350_1BE1EE52 
X-CRM114-Status: UNSURE (   7.11  )
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

On 31/05/2022 15:50, Fabien Parent wrote:
> Add binding documentation for the MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
