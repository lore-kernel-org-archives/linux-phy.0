Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE130C77B7C
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 17:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gnluus0hO+Wr1n8Mwgy1DOkchZ2+YDZPJBs+8TCrAjg=; b=FjSgGq9TBQTVMZ
	PRmKYfS0B3iHiwpQxX4shN0o9UBFeuTiuJcBMR4UZg5s5/H8Cqi+4seDzZe7Gw/Gp1m+sqp0b9QB2
	Mj6D7mSfzwyerPxAEatruAnaplAhYQmVyJIAnsv+UjIvzRihTvK1yWqeYkKSaUTgdRjddZhFoEz1v
	ZC1LdlxSqxXSmGCjaXxrqHZ4NAh2apCrJJpOEGS60nHK0RHhIXOt3vMNgjwPaXfWMtloiGcQ0ER22
	8UO6vn+KXelXwCvf2UHZ5646RolJ6Oo95dYuI6r+tWIVyj2prOhu7jim6kpVXk7TEiyPs51Szl8Ln
	8a+Hc77aRFAjsRcL+Ukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwR7b-003u5P-1G;
	Tue, 09 May 2023 17:27:31 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwR7W-003u29-11
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 17:27:28 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-965f7bdab6bso918891066b.3
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 10:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653217; x=1686245217;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yxlpq7K/bU7lZnjiRmgqr2Ygu+qXnLZf5es9J2JbZxo=;
        b=DeqyNvkjgehdMSRPOcRr052TILwaNCPPa0NkJl2KSusfiApqkG7OJWmjttvN1TYfx4
         b6lVcaqGh07PbTq0igGHcshdrqOAiPO4vIg0E1SA0kYp3j59PyWsADpOXkRZkWNAP729
         +xvguaWkFxqC4IZXbmsfKF+D0acyJ7ZLRqaMa/nCKuEfwltEdVEaKv7CqUUsGPypHHLQ
         hNmde/S3BcUvF74Je1vymaDbQVRP67rqcxzvzRB0miWfyaurKNViWIwvw23DRSX3902t
         Yi0dGKz4jE2D1Bh2NJwUks+67NRvBv1wVX9G0Fa6BxAkqJDR9W7CmDUxglAJ+Xbt8JiT
         w2Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653217; x=1686245217;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yxlpq7K/bU7lZnjiRmgqr2Ygu+qXnLZf5es9J2JbZxo=;
        b=Z1iViVAOMXEGpD+44gwK9Au8tGAYG0dG4cgl29yLWFO4ZR9uHE7MfZr6Jy8TrkJGjS
         xuxGUhpHTw2TDOmZkWZgRQkf1TTkfx8bxOy4208wZqLfFi1Cc63bELWSPD5Sg8UnNWTj
         1fVFqMr22P1VBCAy+QwgCM1ypiK09K23D1Xc874Bw0bSOJ+6rQnA4BdbbKno5l38Wi0o
         FEcCubDxildZOQIdUaOQJ9i6DTJsALcjJvhU+Vp2VEbjVmweq/lYuj/tg3zuHyCKAV2x
         QKKx4HJGqLPHWJrYjSLI89aubvsO8BYA9NMioGZjKTcj7RD30tk6+7DZo55rUUqHkPdZ
         JGog==
X-Gm-Message-State: AC+VfDzksPXoFV9uGU/j2yCr5dXSjbTv3h51I1ISPZGvR3XXbU6PxwhQ
	0bdLCbjPjblY8GlCDIVs3ukmUg==
X-Google-Smtp-Source: ACHHUZ4mYQim4Bq7wbUnWuh6MJfUB1Uy02jFLvYJtR/gmoWE17SyweBq4mewrZ6dVxEhXcsoCFWXfw==
X-Received: by 2002:a17:907:d86:b0:953:42c0:86e7 with SMTP id go6-20020a1709070d8600b0095342c086e7mr12933092ejc.4.1683653217263;
        Tue, 09 May 2023 10:26:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id hg14-20020a1709072cce00b009662de1937dsm1553651ejc.131.2023.05.09.10.26.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:26:56 -0700 (PDT)
Message-ID: <21a23f39-5637-00db-f778-a2e8e333d6b2@linaro.org>
Date: Tue, 9 May 2023 19:26:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: cdns,salvo: add property
 usb2-disconnect-threshold-microvolt
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, fushi.peng@nxp.com
References: <20230508131747.1933886-1-Frank.Li@nxp.com>
 <20230508131747.1933886-2-Frank.Li@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508131747.1933886-2-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_102727_764579_984005C6 
X-CRM114-Status: GOOD (  13.64  )
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

On 08/05/2023 15:17, Frank Li wrote:
> Add usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change from v1 to V2:
> - fixed subject
> - fixed dt-binding-check warning
> 
>  Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> index 3a07285b5470..be415b0a6d8b 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> @@ -31,6 +31,12 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +  usb2-disconnect-threshold-microvolt:
> +    description: The microvolt threshold value utilized for detecting
> +      USB disconnection event.
> +    enum: [575, 610, 645]
> +    default: 575

Vendor prefix still missing.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
