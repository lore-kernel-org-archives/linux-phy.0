Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EED40C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 18:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJ9MlsyrQMzhVTrJt+yFtHWcXdTUvCMq5YcAhXDd9TU=; b=lzoFSgpg3ZjPEj
	JoCCrx+5Q3D/NdgzQKvrBqT1NT5o9qi+Ub/nNdy/eZhsY7N17xc/5nl3PUPMyNt9TfMkDHafnKFUO
	j84YWRfVniyW7wuvthByFUfXpTkMeYxryQ5yE1kfSEfxfrwwmkuccUMZ8g080hvIDUxzWMEtafZqP
	eojRlN6pLILuHZieU5JjgKuTUAcoFIxcAsR6BLNfTrwzb1y9+T63wSjgiDK4iGeLyHhdD1BK9otyC
	HUOG7ESgKap37X3ODEjciUD8m+YP5XXzimkWl9hB+jKhhZhzYXAbueAe2E/5P98aEnhz/CcwLQGRz
	flnWhwy5Qi5uYbtzVcZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYuUl-009p9s-B6; Mon, 28 Mar 2022 18:53:39 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYuUi-009p7J-SN
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 18:53:38 +0000
Received: by mail-ej1-x631.google.com with SMTP id c10so12187298ejs.13
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 11:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=of31JbXORDeHdHam9ibeujdbRpu90rcdHTXqJLVkyNg=;
 b=HN8BGCiPD2Vr2BxwsvzuYwa0W9x80vgZAJYxpMiiCzdkql68NffIfNSJNUUNyu8H+F
 s69fnkCIfAsj1YPk8Yyw158wm27kbD2Bx4TPnjXG0HUUf7H3EPxRS34NTj3fP7CSAOGw
 QZTswN+nWSrPu/8eU8DP/Y9bnKIq/ppTtXiQO2BpGyZs6VIb/QyuqTkcgQM1Up98l6Mb
 b9vW2K0PDdP5xUnehtuJASaknEjfXL+JU8rogMCyJWXdugZB7b2aoUTmKNK2rc3vdlsT
 d2AJFC7pzE1ZbOlET7Pze9DBmiqnOuHioyo0GvuuouXzyv13+jIHYB7fzy3NRZ2y3uQc
 y/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=of31JbXORDeHdHam9ibeujdbRpu90rcdHTXqJLVkyNg=;
 b=X/nFYWlmkK10ov86IQFpYtoj3CBJYOrHOcL1WtLPmrc7z2EfHwVEgDreIJ8O0AV8rD
 9ais10Bz2MJMso+Riz2x35dg2ikLMhMxKjQH+o44jxKQk75HoC/Lz6XLR0707za4JMtw
 2UW9U3NQYRh3RfhmogbO3T03SqA5K7bvU40gicltrz06B/v1cUySmI2XKLMcjZjinkyO
 utOTtUfNS7G/9NZ7TdaFnpGpZDCWXv9FH0lZ4nMzgyyDRFHZzzFnbtHVm8xvpTFd3/ZE
 A2FaHn3mfAJFmDByVsrzV/E0ucouKqDLFlQrNvDlyUfjYkkGcwOYs5djLq51brCdArml
 S7Yw==
X-Gm-Message-State: AOAM5336prHz8jalSRtj5XRkzsktL9xd4KXeHVJJBjRCkz8Gir62FAaD
 dPXxj3wb7/4UC2jEZmePkvXqIw==
X-Google-Smtp-Source: ABdhPJw7CM/SHgFzeFhitNhooE1p7ZhIrNQbPiZZ+5Gxt8JwGu4Da4yOt4KuJ7PqnPrLtmMXn2iTWg==
X-Received: by 2002:a17:906:9b89:b0:6da:ac6b:e785 with SMTP id
 dd9-20020a1709069b8900b006daac6be785mr30179433ejc.295.1648493612434; 
 Mon, 28 Mar 2022 11:53:32 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 jg22-20020a170907971600b006df9ff416ccsm6088959ejc.137.2022.03.28.11.53.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 11:53:32 -0700 (PDT)
Message-ID: <d706c302-4604-e43c-864f-bccac1280363@linaro.org>
Date: Mon, 28 Mar 2022 20:53:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] dt-bindings: phy: uniphier-usb2: Add vbus-supply
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648433152-23126-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648433152-23126-2-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_115336_960165_49B08814 
X-CRM114-Status: UNSURE (   9.99  )
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

On 28/03/2022 04:05, Kunihiko Hayashi wrote:
> UniPhier USB2 PHY controller can apply vbus-supply.
> Add "vbus-supply" property to fix the following warning.
> 
>   uniphier-pro4-ace.dtb: usb-glue: phy@2: 'vbus-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
>       From schema: Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml   | 3 +++
>  1 file changed, 3 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
