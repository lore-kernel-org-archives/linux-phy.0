Return-Path: <SRS0=+kLB=N4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A46C4167D
	for <linux-phy@archiver.kernel.org>; Mon,  6 Sep 2021 15:31:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C3646103E
	for <linux-phy@archiver.kernel.org>; Mon,  6 Sep 2021 15:31:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1C3646103E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/5vel6taU4ZhOMiC6z2VcSe8KIynWCoI9EDXKMl60Oo=; b=lW+0n9TQ1IvgD2s8/tMNa6o2Of
	Ey/O5Za7I0X8BV0IXz1WkJMt8oeXQNXQOzlYIrtT4kIQigODcIvqUBM+gh0grZsslHoTOgxQv0tzt
	ElHkAwfppDXhS8mI3VP8STuDyuxNTBepCfOJWYL7DSRCP+MAihY4vj7EcgGX6ZAtVY+x+7Vp6mQNF
	1NNE3EgOhtoI8flom/YVM/dUwB4vn3Un/6Bknp2xqg9wtHktvcxDikKp6pl/oLZZK7CLg2SACQDIb
	A6hgdVTmKZYPmMQNRaQxhquyFIRjB93BH8Ny2vekGWzCVxnCC71ri3KgvF5Sw6rUj6kaf63xLBMyi
	L2nnLKVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNGaj-001E9Z-KC; Mon, 06 Sep 2021 15:31:25 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNGah-001E88-69
 for linux-phy@lists.infradead.org; Mon, 06 Sep 2021 15:31:24 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 m25-20020a7bcb99000000b002e751bcb5dbso191212wmi.5
 for <linux-phy@lists.infradead.org>; Mon, 06 Sep 2021 08:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PQ0Sz3nSdC4M1Li6PaTkmdjXBaQB3/I9C/9VyXKR078=;
 b=UXRljDfh9pslkpfpiZW87xjIeGBWGwIaAMRlhWJCKG7426frC0Kf3IPd4Y1I1la0VX
 yR+sttTvRZyIIqXtqEvMNgsD46eYnTi/cTMP9nhkOXv4qZJ2YwpO6rzL+Ad9sxuj2FUM
 6W6/m+rhws4O7vtCY4Xiva5VZ95hBKwVmVRc5gCM+RrOnt67C1wg/drGrneMfWvU+jG5
 l7O1qd0bsLRgpjxFf8Bd6t5jthk5fKIaMSBNPrDlWhhP0XLPqT4MFYj+oA0vYzozk3X2
 bZpg5O3sTif4O/ZWaOrDw3jH9S/DBp5s9fEn++665aVy0K0x/CMSqlpEfnUx6laQG736
 0S6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PQ0Sz3nSdC4M1Li6PaTkmdjXBaQB3/I9C/9VyXKR078=;
 b=cbxkI13aDE+9Mf8iR513jLI9Giu3lN5yhDjzJQtkc3EfF6GZiI3mg7kex4r1D6MwNB
 otU+ucAN8q6QXL9g6MCFRMUAfYl+gxs5fRVUgoE+drVBJHjlO/nryFha2N715ZjGfbPw
 BZvFvraOqETU/Dwq4a4H5O1/5PG7RX5LTltnOM2Bym8bqoaem3ZiLPUNWo/be4LNTiIJ
 V+jvLWrqIxuvAt00gwHpsc3g8scDTuOe5ts0hkQiC7UzV5XegPnbuDd9tLEWoG5mG8Ao
 8TE56mP0mssQ9kT811xCrE/g2WZO/XHd0+/5+FcFyy+WTMjS6tE7sZFn/Nlos3EGvR8z
 eTRg==
X-Gm-Message-State: AOAM533e3bBiQThWUV4IpVsspUTf5YO2mk67dqd1rE1pnmNfPVuUn3im
 RuVeenuCGBA/gQ3xsi+1iLCBKw==
X-Google-Smtp-Source: ABdhPJw1GKspi6vCehDcEOXPQ+NCWmQvHbO1FyzGfSYpe1CVz0Iflaaie8Hoz/ZDPTqau9R2oirf6Q==
X-Received: by 2002:a1c:1f49:: with SMTP id f70mr12167723wmf.13.1630942279756; 
 Mon, 06 Sep 2021 08:31:19 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
 by smtp.googlemail.com with ESMTPSA id f20sm7471638wmb.32.2021.09.06.08.31.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Sep 2021 08:31:19 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: Use 'enum' instead of 'oneOf' plus 'const'
 entries
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Cc: alsa-devel@alsa-project.org, Vignesh R <vigneshr@ti.com>,
 linux-pci@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-phy@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 Marc Zyngier <maz@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-serial@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-media@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Mark Brown <broonie@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev@vger.kernel.org, dmaengine@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
References: <20210824202014.978922-1-robh@kernel.org>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <b2e70818-521d-eff8-d7d5-be5a8d95df19@linaro.org>
Date: Mon, 6 Sep 2021 16:31:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210824202014.978922-1-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_083123_260283_D388F51C 
X-CRM114-Status: GOOD (  14.92  )
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



On 24/08/2021 21:20, Rob Herring wrote:
> 'enum' is equivalent to 'oneOf' with a list of 'const' entries, but 'enum'
> is more concise and yields better error messages.
> 
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Vignesh R <vigneshr@ti.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: dmaengine@vger.kernel.org
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-media@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: linux-serial@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> Cc: linux-spi@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>   .../bindings/display/msm/dsi-phy-10nm.yaml           |  6 +++---
>   .../bindings/display/msm/dsi-phy-14nm.yaml           |  6 +++---
>   .../bindings/display/msm/dsi-phy-28nm.yaml           |  8 ++++----
>   .../bindings/dma/allwinner,sun6i-a31-dma.yaml        | 12 ++++++------
>   .../devicetree/bindings/firmware/arm,scpi.yaml       |  6 +++---
>   .../devicetree/bindings/i2c/ti,omap4-i2c.yaml        | 10 +++++-----
>   .../interrupt-controller/loongson,liointc.yaml       |  8 ++++----
>   .../devicetree/bindings/media/i2c/mipi-ccs.yaml      |  8 ++++----
>   .../devicetree/bindings/mfd/ti,lp87565-q1.yaml       |  6 +++---
>   .../devicetree/bindings/net/realtek-bluetooth.yaml   |  8 ++++----
>   .../bindings/net/ti,k3-am654-cpsw-nuss.yaml          |  8 ++++----
>   .../devicetree/bindings/net/ti,k3-am654-cpts.yaml    |  6 +++---
>   Documentation/devicetree/bindings/pci/loongson.yaml  |  8 ++++----
>   .../devicetree/bindings/phy/intel,lgm-emmc-phy.yaml  |  6 +++---
>   .../devicetree/bindings/serial/8250_omap.yaml        |  9 +++++----

>   .../devicetree/bindings/sound/qcom,sm8250.yaml       |  6 +++---

for sm8250 sound card,

Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

>   .../devicetree/bindings/sound/tlv320adcx140.yaml     |  8 ++++----
>   .../devicetree/bindings/spi/realtek,rtl-spi.yaml     | 12 ++++++------
>   .../devicetree/bindings/timer/arm,sp804.yaml         |  6 +++---
>   19 files changed, 74 insertions(+), 73 deletions(-)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
