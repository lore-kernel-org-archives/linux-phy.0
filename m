Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E2CBC54EBD
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 20:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4lB0ME0dpqtJeGNiY94jc/FS5XSuAPUILQnw9wKQnU=; b=yST6J4k7J05Cot
	XTz6dCmlGPv9i5eEisqwO92X/jxtCGVhaKtJSUVoQh13qmbdcLW+3Lnnyo856d49iJ1ZaZotKXXGa
	6Y9aF0agrL7ggVUIKRJEt+sioadZ+hgd3584qN1FjB2rESsnmSY1EAAowu9YHbUNMkMO6wOmF/bQK
	rBy3Ca0apHqY58I+DichI42h15Q3FBrq0pg1f+3OJxcRVXKobxIPjKhziMKDi1Q4qLDs64BoKvChS
	yMfqkwNgVc1noXVzZafbEbpL7N5pdOXp+SBIZvnT9c3TGJgHGTtU4IgwuttIudTUKThV/pp640G4t
	TUwo5/onBmxLr0WSqwUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEcGB-00Fcy6-IN; Sun, 08 Jan 2023 20:27:15 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEcFz-00Fcv3-4b; Sun, 08 Jan 2023 20:27:04 +0000
Received: by mail-ej1-x636.google.com with SMTP id lc27so6148225ejc.1;
        Sun, 08 Jan 2023 12:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YpchQ6Q+Z3Z1pgSznAxblNSZYuByy6PgjDzbmrqx+mQ=;
        b=e9vfO3BmWBBw7y1qoCule4JRgmvrVZNE9fjsR+dr1x3OdV4E+jJeqapDqN+yt2FbxG
         KfVUHsPOIeAKUZOaOCMyiStOp7RD38x0D9jLQ6O5FG7bFjOCMU0KuN3rgZewWkit2MMr
         ORruanm+3Hiz6tQAqXootjDQBxtSELMknxrXOz0hoYJjIHaNRbFTa0jWLzpikQHuvuAF
         uCZyehF/UuZjkzNujPLbRgZVdaoLbvrZPhpN/CW2iNsbT7S1pofJdOtUjEj3kieRhwWa
         hFJSrG+y1ZAN9ZOKyR707MfZZsvZRCE22EizMLydNOVAEOy1H5MY1RolgFkEgJ4fzfuq
         eZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YpchQ6Q+Z3Z1pgSznAxblNSZYuByy6PgjDzbmrqx+mQ=;
        b=x6+LgWDCHgalrRy+Vf6DtxAaHpMZ4ZWJPHAy23DQUiw7GHvlFtwSv2UwH+hu0L/Nil
         jvqFMVp8O5J0+oawTkj/5TEKvV0ULi6J2MjdJ10XZNXjQ73JJVMkiXHs7JKZkZ73N/dw
         YJuLINnptm7RQsVnkJJiTId0PHeDyK+JoLB5w+nsq7o1N4su2Tncy+V1PHNZTdTGlBhF
         LoA0HMAwp4KfvzkWSoNj7JpbnuyTYTMoGMRFfOeksCpQ3DxiMQf5FwK9dVpwTG+CrSsw
         AXlQu/mu9GIVkQcrXmR1D4rj1JEaAnaDYDOO0wCWmBc1kffW2Q+Upd7MpZsfLC5WFuVZ
         8Twg==
X-Gm-Message-State: AFqh2krLGFupqgnyh35ai/Xlx3gXCG6JWYARaiDfCcBF8VuHFTY6dXcg
	isCl78Gx5LlKBdHz5rklzic=
X-Google-Smtp-Source: AMrXdXtl7IHUDJ0msL+MgltU/IR+/JRLPFVTDTzqeGEqmjDXlTYLrMT0f854x3Tg0VYTX3HNA4NO3w==
X-Received: by 2002:a17:906:9399:b0:7ac:2db9:6f4d with SMTP id l25-20020a170906939900b007ac2db96f4dmr58590679ejx.8.1673209620212;
        Sun, 08 Jan 2023 12:27:00 -0800 (PST)
Received: from jernej-laptop.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id lb25-20020a170907785900b007c00323cc23sm2879814ejc.27.2023.01.08.12.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 12:26:59 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Samuel Holland <samuel@sholland.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject:  Re: [PATCH v2 0/8] phy: allwinner: phy-sun6i-mipi-dphy: Add the A100 DPHY
Date: Sun, 08 Jan 2023 21:26:58 +0100
Message-ID: <3245174.aeNJFYEL58@jernej-laptop>
In-Reply-To: <20221114022113.31694-1-samuel@sholland.org>
References: <20221114022113.31694-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_122703_595959_E8579F38 
X-CRM114-Status: GOOD (  14.48  )
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

Dne ponedeljek, 14. november 2022 ob 03:21:05 CET je Samuel Holland 
napisal(a):
> This series adds support for the updated DPHY found in a couple of
> recent Allwinner SoCs. The first three patches fix an omission in the
> existing binding. The remaining patches add the new hardware variant.
> 
> Changes in v2:
>  - Add the interrupts property to the binding example
>  - Drop the inappropriate Fixes tags
>  - Rename "supports_rx" to "rx_supported"
>  - Add a blank line for readability
> 
> Samuel Holland (8):
>   dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts property
>   ARM: dts: sun8i: a33: Add DPHY interrupt
>   arm64: dts: allwinner: a64: Add DPHY interrupt
>   dt-bindings: sun6i-a31-mipi-dphy: Add the A100 DPHY variant
>   phy: allwinner: phy-sun6i-mipi-dphy: Make RX support optional
>   phy: allwinner: phy-sun6i-mipi-dphy: Set the enable bit last
>   phy: allwinner: phy-sun6i-mipi-dphy: Add a variant power-on hook
>   phy: allwinner: phy-sun6i-mipi-dphy: Add the A100 DPHY variant

Applied 2 and 3, thanks!

Best regards,
Jernej

> 
>  .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  11 +
>  arch/arm/boot/dts/sun8i-a33.dtsi              |   1 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   1 +
>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 236 +++++++++++++++---
>  4 files changed, 218 insertions(+), 31 deletions(-)





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
