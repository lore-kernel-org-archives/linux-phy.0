Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62A78C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 18:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr9H9x+RfibxKmaor4OV4GAzqObVVNO+DZKC2FrUWhc=; b=K3pLZui2WDfO1f
	xmHqBFlGeJDpOq7akbWon2nswlmxPFHn7oQ8UcIO+v2/OP/aqRYhqc7du8rxFoowMN4GvfcM/5oK/
	X0OnZwoUa9MSxzTwXGcMEWKMjtnjmE2Xta126d2uyVLEZ0UJiKF/n3qW4EQkSgp/HdPC6Vr1jFLiv
	bzLFerr7siTTLnDs0wOLxywiJQrksp2aXdjXiHjhjj4mOZ1Sl/FW0fUT7aHqNqMtGRxlpL3W9LM/O
	a+HW/4wid7fxsL8IC1uBcE80iOih6BOhNwweI3kbtv4QsowXPnU32M2uZiJAg0Bb24P2K2UhkDfs1
	7FS6RW+p+RzZ84CpyTyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYuZZ-009pyu-TA; Mon, 28 Mar 2022 18:58:37 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYuZM-009puU-Sx
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 18:58:26 +0000
Received: by mail-wr1-x42b.google.com with SMTP id b19so21673742wrh.11
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 11:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=E/lv74yXlf5dC/6MenQmc2ZtVjQIh9equ8kVJX63xWc=;
 b=OrbhPIDn83kWAtJ2oKWtBlRPdoYiHN8t/eY8BJB3jH/rszwQdeGByqRBVTNOFh7DGF
 uPuQdVtk8BprelsP/U01tDroOw5hDaDmq5TieJlEY96VNfg3EEGecwwoBEcbJ64//oGE
 LEPFC8R1wxmBG875/AHuw6ChS+xb7pGaUna2JSRYSLB54r9w+YdjPCbqdR8lrlKeLu0+
 goT3cScyNUIrKsPMKWp3tVD925tJvUTuliFjNMgvPtLWLWDqaUitc5AyX8mdXRtYLbLt
 802O0+xZ0zoZY1SZ5+V+ubAuGQp/AJ74kAdvFlZJ/A4SWlBh8wm5NV2GRjDLMNMaoEin
 V5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=E/lv74yXlf5dC/6MenQmc2ZtVjQIh9equ8kVJX63xWc=;
 b=CB/q6yg6lAqnRfMn+3pOnBpj6ei0xHtiAkMmvnWH5bAi/vfXEH/5hl7HB9CrfgSkRD
 U1T85gpq4eQqjOq2pRKnIHF6F1X/hjsXsW3PqFOHtnrJ5UTIAfbNZvgF+25388qvzG2c
 0LbH/Lnryw0mzgEBL395s8l/oH/3U+6wnIDF4Ch1+LN47GDahNzisy7ydAsuBMw6ijPF
 rDTjSpMMsbXrKVEXxrifBML1Nkt9M8MsMC46cmmYXyXT2GE/oVjfsWlGSd6kmFrnHAYM
 A5RmK/xcS4BUDmBYlSa0kkUktq/80CZuw/XFZFgOs7LLOxIEgIE2uf8XNNkPOGhyDApJ
 JTuA==
X-Gm-Message-State: AOAM533dIWTuZWFUkxPNQVqqwVVfEfF1eAWLa4rWp+FU7VeDQfkIzQYR
 ZeB9Cv5NlhSq7EEadWibMolsyQ==
X-Google-Smtp-Source: ABdhPJx9v0AU8NnuBgNH2WbRla9KrXbvI6qxt4kIbC2y4evVDkLfSE1Wz2vp2Q/2cceLaGPYRL1XZg==
X-Received: by 2002:a05:6000:508:b0:1e4:a027:d147 with SMTP id
 a8-20020a056000050800b001e4a027d147mr25574286wrf.315.1648493902229; 
 Mon, 28 Mar 2022 11:58:22 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 o6-20020a05600002c600b002057f1738fcsm14033191wry.110.2022.03.28.11.58.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 11:58:21 -0700 (PDT)
Message-ID: <2e0be70f-f800-e3f8-363e-6598468fa091@linaro.org>
Date: Mon, 28 Mar 2022 20:58:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] dt-bindings: phy: uniphier-ahci: Fix missing
 reset-names
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648433152-23126-4-git-send-email-hayashi.kunihiko@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648433152-23126-4-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_115824_953717_AF331CCF 
X-CRM114-Status: GOOD (  16.06  )
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
> Add missing "phy" reset-names to fix the following warning:
> 
>   uniphier-pro4-ace.dtb: ahci-phy@10: resets: [[26, 28], [26, 12], [26, 30], [36, 0], [36, 1], [36, 2]] is too long
>       From schema: Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>   uniphier-pro4-ace.dtb: ahci-phy@10: reset-names: 'oneOf' conditional failed, one must be fixed:
>       ['link', 'gio', 'phy', 'pm', 'tx', 'rx'] is too long
>       From schema: Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml

There is no ahci-phy in current sources...

> 
> Fixes: 34f92b67621f ("dt-bindings: phy: uniphier-ahci: Add bindings for Pro4 SoC")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> index 3b400a85b44a..14f7579e7daa 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> @@ -43,13 +43,14 @@ properties:
>  
>    resets:
>      minItems: 2
> -    maxItems: 5
> +    maxItems: 6
>  
>    reset-names:
>      oneOf:

As a separate commit, this oneOf should be converted into allOf:if:then:
cases which will enforce the resets per compatible.

Can you do that as well?

>        - items:          # for Pro4
>            - const: link
>            - const: gio
> +          - const: phy
>            - const: pm
>            - const: tx
>            - const: rx

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
