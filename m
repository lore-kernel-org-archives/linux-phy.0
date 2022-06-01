Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA6A7C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhHKCALNfQZvIga7zi4p2qoLLv2dR5PUEPh3YeSSu8g=; b=fjagpaBdpEfg/7
	/P3W4/db1PD0sfmdRkZ/fIER1gmvDYYlpT+znnmuSaGTqNRW0s9d2OzxJNJ0KsxmGcVJk+PXpd3nE
	Xbv03j4q03iA2rKUV/pxpWBkihU14xXWO5cyviVBzSnkBEo66oGvmtZnX607fe3kvopxNzNN1ipec
	RCC+6n3J2G3E8vKzCOwGxYZa0DiCOBtk4hy5+SI8Ezy2hp2iwCwk5up8hXZsto9fkkqfTWJb+GRyJ
	kTO4Vu4ibqvCVwseKib76NBlbrUCFqsiwkZ0xtEecfLL0ONcI9UsDp29r2k3p2jQA2omLn+wXy8oP
	Ei/FqhwhxP3nYQdOnD+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLr5-00FPNh-R5; Wed, 01 Jun 2022 10:45:35 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwKmg-00ExVo-Q6
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 09:37:00 +0000
Received: by mail-ej1-x629.google.com with SMTP id q1so2511632ejz.9
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 02:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BvJY1lFnsr0Ymr0p7fEBBy1zBdInDHqv2gZieFwic/w=;
        b=H9oMDfi9FTLslshDgNUeUCSTiDMS6SPqQwQ4xmvp2YZvpk8mRC3cDlTC3xpYhnqMtp
         nPH5zKM7d+MOUcflu/CWX3v4wWpaT9OposzSM/Dxx78jsQELZDS5MGcQrSkywIX6o5Uh
         4MpGtaojX5vTHNuVIp8cnOB/0ztfpdpeB3mh/avFuWHvaJ19hKjRBAfWOWCvpf81qUhb
         PX1Cb+q3YAxaR3A5LiSjRG9kjKmrWrFqrOgbDUopVp1qK7P6ID4hzxjnsii4gTsV3W5k
         rOX8IHcJbZ2vzaD1PmxLhGXES4FfrspfYMIIDx5GmxITFiWW0RHW7uODZtl6Lpz4t4Xu
         p4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BvJY1lFnsr0Ymr0p7fEBBy1zBdInDHqv2gZieFwic/w=;
        b=KlT6d49ynmmDMqZgcQxA+rgYFit0ePabUHgZu1aKRR1qJ62Ds7aSflC3Beyvdc85x6
         oL/4hIQLvT+WXNzDBLcuro9e/A+55JPdCWDk8DLY2cf0DXYa39gQ93wtbb9cYOM/hTJf
         6SyYPiOroWULWkQ56vWiG3oz+bHfmUrZSqQWDUiyZWNz6bh8qDbSeoE6y7fDvSkwXfpy
         bVavzoYrCYdHCPiaPvamfZ3iMYYYXrn/ZOOub/IoGTXMg4GPpoNLnD5Hehq4/KkX8Y48
         ZfZ+fSsw9R7aAP455Gaw35px42WZWwZxLlg6Av4ea+HdfZ5RsyvOX2HVp8WbdYxVDtTS
         FFhA==
X-Gm-Message-State: AOAM531UXfJZhabgL1VTv9pA3awDeQ/CcHzBaaSoqR1Mzp7sgmurf5R3
	8xNWke+QIMQrswWz00noiHNssw==
X-Google-Smtp-Source: ABdhPJw2rvaPJFhu2OJTcgjX9RCpncnnG8SPTMWTUMQWrgzBxKr8ze5Lrm8qBjOHLVpPw2RtdL3afA==
X-Received: by 2002:a17:907:97d2:b0:6ff:288d:1bf2 with SMTP id js18-20020a17090797d200b006ff288d1bf2mr26274477ejc.664.1654076217545;
        Wed, 01 Jun 2022 02:36:57 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u18-20020a170906069200b006f3ef214e13sm494920ejb.121.2022.06.01.02.36.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 02:36:57 -0700 (PDT)
Message-ID: <8924ef92-d8f7-1f10-b1f7-7f9bc1e2d444@linaro.org>
Date: Wed, 1 Jun 2022 11:36:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 05/17] dt-bindings: dma: mediatek,uart-dma: add MT8365
 bindings
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Long Cheng <long.cheng@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-6-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-6-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_023658_868973_30899654 
X-CRM114-Status: UNSURE (   8.60  )
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
> Add binding documentation in order to support the MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
