Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18EFAC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 08:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q831ZCjMz/6h90SVQeBV/Let4WZUXoYp9HuOgqS/BXo=; b=JNwUhih5t4pDEb
	+MZWZPQDeEdYmHZh/aKWnAsUTunmi8pJB1B0watUpbfQcCngDQJdOZS5jSPBiNqQD0TUc6Z06ezlA
	7PyKZ6meVKo7elrBFOS2SanMPwKeV3djTqWzQU7twMmqJlTyIX91nXZDcMHVA2j8hLVEFAjbUrpsW
	v0HT3gyIaeuNW/gWqR904Q3RvlzIe7+Y4JTsBasHw4VUgQHUN/4Kcl1Ww/3FLHcgiP4I+38YJLLT8
	Z23DCUXaRS4GlaU6czjQI3sFYBbUTIg3EuZJdoJHXua6HUEzqAlK3Jx2vRw+pq9+hReHCyxVVVpJP
	EcqyhIILLpJxC401sdxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAoW1-00Dq1z-9b; Thu, 29 Dec 2022 08:43:53 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAoVx-00Dpy4-Aa
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 08:43:51 +0000
Received: by mail-lf1-x12c.google.com with SMTP id bp15so26637336lfb.13
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 00:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vL8afHzTaqjBY6U5w1WFZj4uiZAR1AAE2D/1vRWSAHg=;
        b=jvAJbYHFZGbz9dPddn2mPrro2N71ItWk2khEugyAqyHCTvQdYJ24CJLSFZS0nfWIPm
         0JPEh6ieruyHJN3HB+np8ETesGVGIPJ2hK1ea6mHP7STdkdDqVH5xn06SEJhAIJ4aslZ
         94M8A2ltNYXPALWwd72mITM8x34hXTc0JYvHHbPZR+sOp9vyHIClFPLZp1+lflCG3EKL
         KYmhm1hWx/fFc7cvlvWwmrrkwiMm5TaQnxqHHOG4juwomWvdfQcTbfOz1WNCXEvLqqgF
         re7cKY0+EFkl2nbawv+pvOkzUX+rY7TdCjxS4yyPhubqsF6dU7qumwnw81HMtTSkGTK3
         tSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vL8afHzTaqjBY6U5w1WFZj4uiZAR1AAE2D/1vRWSAHg=;
        b=STifXtrwIP3sI4wbTjc50H9+bhKZ3l3eCTVgNvqrloUkvD7m6qiZ30XEkPCimZTtt5
         V5K41GSEASd8IfHRX/70dsrBpG5bRC9evYWIme0jebB6og1GV3mO+AOCUsp1ORTNCfNn
         Z5Y4XL6L6Ijw1FZ0g07mT9MqYGukBbp5CiyOeFlo5yvxa5nBvEFp3GU7i0Lt4x5f1mjJ
         h/RwATFzvOCxJn+JSKp5xnicsLaFe8T+Z+QA6FHR+HUhQuzPScKNWgUrGD8eEmlz81LG
         W+98K9qOSD8cl5kHFW8vDMuWl5LsZJwjuw0IfU8C6+zP93+5GwvjY3sKyWKGD1aUKzCU
         ltMg==
X-Gm-Message-State: AFqh2kqDl7tntC/9nPdr2wfI0VAJKdn8/zrHzMbjFe53uEcDU5aZNLaI
	KDeyLDtiusVJus02FFgf98gVLg==
X-Google-Smtp-Source: AMrXdXsiU8r20s+g29/F1UOGiJVZst6npjcKAkomkf1TTX+1kDwXWnKtkw8AsQ6aF9WcMYF1Gkg4rA==
X-Received: by 2002:ac2:5142:0:b0:4cb:2260:8553 with SMTP id q2-20020ac25142000000b004cb22608553mr62917lfd.30.1672303426916;
        Thu, 29 Dec 2022 00:43:46 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c9-20020a05651200c900b0049944ab6895sm2951747lfp.260.2022.12.29.00.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 00:43:46 -0800 (PST)
Message-ID: <1216b455-7637-a510-28ca-f2affa0ec799@linaro.org>
Date: Thu, 29 Dec 2022 09:43:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v1 2/2] dt-bindings: soc: rockchip: graf: add
 rockchip,dp-phy.yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
References: <5fa3aaca-4e49-8baa-68c4-2b3981400d3b@gmail.com>
 <aa942b16-1135-c202-d44a-d25f1f82787f@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <aa942b16-1135-c202-d44a-d25f1f82787f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_004349_370355_8BF31BCC 
X-CRM114-Status: GOOD (  11.88  )
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

On 28/12/2022 23:02, Johan Jonker wrote:
> Add new converted rockchip,dp-phy.yaml to grf.yaml file.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 7ac9aa5fa..36f6d85a9 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -96,8 +96,11 @@ allOf:
>      then:
>        properties:
>          edp-phy:
> -          description:
> -            Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
> +          type: object
> +

Drop the blank line

> +          $ref: /schemas/phy/rockchip,dp-phy.yaml#
> +

Ditto, so with updated path:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
