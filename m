Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CE26C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 18:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRxRjUmamQEs4afsogeuuYSHGDOcIV8rJVrijCbIIoo=; b=F4/8zqUwZZbjzJ
	LgiwL+sjjbyUUBPvkMvrssz56eTwCxmU/aivMtlmJ8J0S5wtMGgcSC7ori7DcZy2GprDDJYWGKS9R
	/m8Z6zgXMMdHWUQNeTWa4Knaj84gLjAr6MDg/Tw1eVjAYBC3amVMrGpWJY8mPq7SUgGbh2tWAMEat
	+XOaC+c/RfqfM3q0e1hw9ih2K2NydgyspAKbvmPy5z3cXU4LpBvjnyn9bm9VCGWj0JTn88GG0YUtA
	3oXQFcANZc92V6Eq4SCOdYHHkFR1/tjaDlBmF5v0JDG8TkHkh11iNBfZLKltW8V4HYApeZAS5eUFZ
	8ET0PVdcrR/36TL4VSRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYuVx-009pJd-Rt; Mon, 28 Mar 2022 18:54:53 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYuVv-009pIm-Fd
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 18:54:52 +0000
Received: by mail-ej1-x636.google.com with SMTP id j15so30567650eje.9
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 11:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=YKoR+e/GrjM52E8G+JTTcFwNtFZ8/9KHD/VDYOBjeO4=;
 b=lSnavIs0cbxkKsqn9Nw3BRst/v8KBYlIgL2teGdykuDbE9i+S8zkrm+0WzoKww5d4P
 +NMXGRFq7Ezv3HmEKgAX2ZjnQmYsQaSlOC+plRza2K9sqOJ78ODD8ahMpGDjT2UukCNh
 Wg1RUFx4kmAxsz9KQpvWe+psLy0koNsBh2wT+6rC71UWCOW+KYj+HvrZ2QKFOlDKrcQA
 4i0ofcJyByEsbCvwdpUC8X9aZT1PXBkaPqLfuBQFEtsHrXV5PI6xXZUYwMS63UPb8VAu
 ts9VmdMrx5IIQsnHodQmcHzPeC0PnjZyruTHm9ZXCyYPqWbV3x2GThsufEKhRktTMfuA
 WCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=YKoR+e/GrjM52E8G+JTTcFwNtFZ8/9KHD/VDYOBjeO4=;
 b=M7tbnNLTem2iAolZTPnd94RNX+8I4HHFk1fIUE3ISMmiOr/ex8k/XOlaCMBgGnOsEJ
 DF6hfhCTJzDwl4fgpvi73OmRoMzY9JZMM3BYL7qjHfxgY6d2p8ADpLeRFacdy4fQDNKB
 k/cWID9v/piHNcQuCpb23hf8gQi09vUdd2P5FqESbnn09hKrx7DxRztUoOqkg1us6FnC
 XwOHy5RKaQxVD7c1Qe6Yq+Tsn+AYd7fqliN+o0sd/UiNPSrB5wbzw/tEr3MFOv9E9Ktq
 Na2BoXxf0B7azl8g4c0GBdsMOGH1wEmcP9ayJmFeQQlwQcPB0XeAY7pA0ERvFpB6UhcO
 p4aQ==
X-Gm-Message-State: AOAM532KP0sWZpSM7ypexqWa1QF8TcWho37kyc0rkGjMnPrRP+SessSy
 wbYiloRpcKQbfqKuxoCajXIYBg==
X-Google-Smtp-Source: ABdhPJy5sAnHNkVsyYYVNVCfDMiIWt0TETihQMnruxrz0QAoOlYixizv0GXli5vsFsvsJy6Yyekn3A==
X-Received: by 2002:a17:907:980d:b0:6d6:f910:513a with SMTP id
 ji13-20020a170907980d00b006d6f910513amr28118362ejc.643.1648493689717; 
 Mon, 28 Mar 2022 11:54:49 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 g13-20020a50bf4d000000b00410d407da2esm7508561edk.13.2022.03.28.11.54.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 11:54:49 -0700 (PDT)
Message-ID: <43fe2864-5d11-d562-25a1-a2c92ee76f8a@linaro.org>
Date: Mon, 28 Mar 2022 20:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/3] dt-bindings: phy: uniphier-usb3ss: Treat vbus-supply
 as optional
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648433152-23126-3-git-send-email-hayashi.kunihiko@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648433152-23126-3-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_115451_562648_6C26C22B 
X-CRM114-Status: GOOD (  10.23  )
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
> The usb-device doesn't need "vbus-supply" property, so the property should
> be removed from required.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
