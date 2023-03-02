Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB47CC7EE30
	for <linux-phy@archiver.kernel.org>; Thu,  2 Mar 2023 08:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28zKuW5BCWvtYVbvEegBFo8qC0JBCpnyQeI8JwjjQNU=; b=1f7/wDcjfuwxVW
	HWw7hs41S0/6lYFlIRyO0KI8nXk5A+6KA90kVJOCZUZ1aBXfGVrh61kp+WG0lWRwnNBD7hwXowaOR
	ekX9gYXX8swNXsVnRdQVZhN/l9p7xKi3LVYCteCOVHuTZ7x9MhfWKl9hKLYc1VcSDLGeEX5OxoRRW
	R7fWXNajJ7MOIpxfXCtMFlCq/CjSKsgGoIzcVLlPvuuApnxV1CqQVafvM6vGd4s06ZLRoIuVavScV
	JZ8bDz+gr1IRkyarma9r4nNHP5DlWfcuKwE1L73aCW6H130D9hgSWXFK1dND5OuNwGg/8YylmnPn3
	BtTMkjPCwieZQ9wEvcpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXeXS-001Joa-6Q; Thu, 02 Mar 2023 08:43:46 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXeXQ-001Jny-60
	for linux-phy@lists.infradead.org; Thu, 02 Mar 2023 08:43:45 +0000
Received: by mail-ed1-x529.google.com with SMTP id s11so544352edy.8
        for <linux-phy@lists.infradead.org>; Thu, 02 Mar 2023 00:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677746622;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D16qOH+5JX55lVqRDvhnkvR9CnuIAuMrNQM3n0jKjwA=;
        b=qKWQifh5tNPVRlAaK4BQkVh40cnszyxAjxxKoLRHVvm+0Ae1KotlfDl+yqopGv1+L0
         V1HruG+pUjDE3EgmGBmApLvHDJMCwTmZiBGK3IxKQQzeStU9n9zUK7viK3PKeH52rV6J
         dhggj4s0WR8eYeUg+ynljFalbguGS7qsSUF+MGMxElKy3h3XwcJOaC34Gm3aaJEmEFvC
         sBLPCb3ZPzkkBZ9ksc9Ye5BF254AIqPQrGDv1EnTi1V/q9iv0XWFGggBLAViKt+uJMKj
         6H+iwIWnUe1vo+IKF5QlixD0MkbwM5w9cqcp7Z12a9+hciIMPXJlZlV7O7NiSL4eOo+p
         SpUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677746622;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D16qOH+5JX55lVqRDvhnkvR9CnuIAuMrNQM3n0jKjwA=;
        b=xhO/GaA0I056hZL9rBLlaPXuZC1JUZ4Ez+NWpswoCD0XfqQkh2c56ULF3eXuPTQCc0
         El9PIKwDthXh5ItLDXj41FVxmWTEFoAHY60R+84BuT2gl0EDkce9PGixz4eoy20MhouO
         PA2fa2NR2QN6/YXYLVJ4r53q3VSYSfWPY/YVZaztZDDj3S/Xbtmu4KQeVXr5CPfiJKIc
         JvMT9gXuppzHcwPQCzrpA1Xd26O7DNeZza/AIT3an2Aqk0p1jmpiyU9QRoonJzI4Am++
         W5/iT63c2WLOeME6RIUgrPgNth0O/TyVfmdA2QFlCsQCk6bqjjILkZmbiENwSygs3pg8
         C70A==
X-Gm-Message-State: AO0yUKUu6YN3M1nY5qiKGmvsAKw4v+FzVZMD6SLgOmvxzssY/CHcNc4s
	BgEwqOhqWoNFPl6StcmoE6MecQ==
X-Google-Smtp-Source: AK7set9UWzoNSi1A56L4FXfN6HVzXl1v0lvcV6YMQBEt9+9T7DCJw4Znw7nzLcfbOMKeSD0xujdzOA==
X-Received: by 2002:a17:906:3788:b0:88c:617f:bcf8 with SMTP id n8-20020a170906378800b0088c617fbcf8mr12381710ejc.61.1677746622017;
        Thu, 02 Mar 2023 00:43:42 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v22-20020a1709063bd600b008dd6bf721c2sm6845511ejf.106.2023.03.02.00.43.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 00:43:41 -0800 (PST)
Message-ID: <28c95e21-c7cc-f004-9925-967123b8a63a@linaro.org>
Date: Thu, 2 Mar 2023 09:43:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/7] dt-bindings: phy: cadence-torrent: Add bindings to
 support dual input reference clock configurations
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: mparab@cadence.com, rogerq@kernel.org
References: <20230301131125.6084-1-sjakhade@cadence.com>
 <20230301131125.6084-4-sjakhade@cadence.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230301131125.6084-4-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_004344_285385_2ED8BE4E 
X-CRM114-Status: GOOD (  14.75  )
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

On 01/03/2023 14:11, Swapnil Jakhade wrote:
> Torrent(SD0801) PHY supports one external and one internal reference
> clocks. Update bindings to support dual reference clock multilink

Subject: drop second/last, redundant "bindings". The "dt-bindings"
prefix is already stating that these are bindings. Drop also "to
support", just describe what you add/fix/change. Your subject is way too
long.


> configurations.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  .../bindings/phy/phy-cadence-torrent.yaml     | 35 ++++++++++++++-----
>  1 file changed, 26 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index 2ad1faadda2a..711097e167bc 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -32,17 +32,34 @@ properties:
>      const: 1
>  
>    clocks:
> -    minItems: 1
> -    maxItems: 2
> -    description:
> -      PHY reference clock for 1 item. Must contain an entry in clock-names.
> -      Optional Parent to enable output reference clock.
> +    anyOf:

oneOf (just like your clock-names)

> +      - items:
> +          - description: PHY input reference clock. Must contain an entry in clock-names.

Drop "Must contain an entry in clock-names." everywhere.

> +      - items:
> +          - description: PHY input reference clock. Must contain an entry in clock-names.
> +          - description: Optional Parent to enable output reference clock.
> +      - items:
> +          - description: PHY input reference clock. Must contain an entry in clock-names.
> +          - description: Second optional input reference clock. Must contain an entry in clock-names.

Your commit msg says this is "internal reference", so call it like this,
not "first" and "second"

> +      - items:
> +          - description: PHY input reference clock. Must contain an entry in clock-names.
> +          - description: Second optional input reference clock. Must contain an entry in clock-names.
> +          - description: Optional Parent to enable output reference clock.
>  
>    clock-names:
> -    minItems: 1
> -    items:
> -      - const: refclk
> -      - const: phy_en_refclk
> +    oneOf:
> +      - items:
> +          - const: refclk
> +      - items:
> +          - const: refclk
> +          - const: phy_en_refclk
> +      - items:
> +          - const: refclk
> +          - const: refclk1

ref_internal_clk?

> +      - items:
> +          - const: refclk
> +          - const: refclk1
> +          - const: phy_en_refclk
>  
>    assigned-clocks:
>      maxItems: 3

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
