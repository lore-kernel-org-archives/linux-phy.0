Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A350ECE7A8A
	for <linux-phy@archiver.kernel.org>; Sun, 24 Sep 2023 11:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKN5RdtZha7LFK1bMGQxruV+efofApY1V7NSzUimhxE=; b=q1l7i9qxhXvGWl
	ACeHue0Wlt3+/uxHID2LRONzsVRdyc81Bt2YAkYx0vzuhT8Y7T7okGgr5+jVDDkjB+hyNsYyI3M19
	KP6G3dNrOuP6/UPqCF9biQAL0TKi4YJMvFY14jZ6r6R8RKso7RIUGkE8Qnki3QMo0jSTbRNJyEWao
	CDdByOwYuLtss79iLHDgK6QGEspf5U3rkrI/Px8pxu+ierU3Z8K9OR9tJGAXH8KcdJpQ8oW9j8XzY
	ezPCljSTioS2HKt86clJEmF5O/7xGnTv6Ld5AGKIO93839MkPg9EUWMoq4nJ/gf9d6YKrEyC4MmUM
	xicbF/jIYgsk2brA4hfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkNcD-00CEGj-0D;
	Sun, 24 Sep 2023 11:49:33 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkNc9-00CEG5-37
	for linux-phy@lists.infradead.org;
	Sun, 24 Sep 2023 11:49:31 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso570702866b.1
        for <linux-phy@lists.infradead.org>; Sun, 24 Sep 2023 04:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695556167; x=1696160967; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZKXfDq8RFlFcunVG3b5trMiuX2cCUltogo9A0LQGHcA=;
        b=JLvfpcMtFsagmc67Y9duPAtte4eBUSRVCsCf8O47R2yCtcZLptElqZOFqtGguMl2SE
         y/Ix7n5LKbkMCVAYo7+eFSiF1r1UP1ySB/p59VJ2VGBDo1FDrtCb4Eko39yjENR6+3f3
         0vmpnrY5pKFpAYq7uSBFcvKS1rkQ/6sphpRTUX1pt4lWZpfa/xmccjpee0rWgfY9ikR6
         OKq9TnD/4XI3ot40ioUhQxAHSpsVGIkhygPrmStp0qjrDdH0i3ixtmN5Z/s9hl7D4kLj
         nLUnijoOAw1AFb3QXT+kNIX6tTbV5AZjU+uo05hwvIJUC2Jc+eyUuC4X2aK46A4Wriuj
         C3WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695556167; x=1696160967;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKXfDq8RFlFcunVG3b5trMiuX2cCUltogo9A0LQGHcA=;
        b=ZIRRc5z5DMAHg2mFNYvWYUnuL2IavlcTvwbW6Tk9mmcaiBSLBSp8YE3Ma1kidG4wt4
         XLCSkzTmnLKB+adn2MJsPm/HXLsO48wKqjtyGg/vqYSN/VY409lovbLMBZJJL7oWQvyA
         oSN4tgXiqVkyC0y9lhPdeBOdO/CQDgVQWAdK4t+Ev+vaSgUpYqIEjpnomBspnvC4EkUS
         C9jFRcdZivvlCxEizEZJAlX6UM7lqanqHPNeOxSITQ+m+x1m7SC3OqiGJB7WD/U3d5KU
         TdYHHscLS+h1DVx9k8CNrX51UCIPb8ulxYJ02tWc8owIFGuC/yoSy4bDYFzU4ygF38Mt
         HSxg==
X-Gm-Message-State: AOJu0YxkXYQ5m4Kp0JItLL7YfK83xy904DLzPBanmDL7ldHG5gXmiAFB
	6ljayZU7Gp/mzwhLQ0K1uXl36A==
X-Google-Smtp-Source: AGHT+IGRDfzFX7/VhW6vnjWtBmP/4Q5fGl/SoCKR8YZ7vonDBL5MEoAeEy+D528vIctCDF4NIT56GQ==
X-Received: by 2002:a17:906:101a:b0:9ad:f143:e554 with SMTP id 26-20020a170906101a00b009adf143e554mr3628124ejm.30.1695556167561;
        Sun, 24 Sep 2023 04:49:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id a19-20020a170906275300b0099290e2c163sm4899657ejd.204.2023.09.24.04.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 04:49:26 -0700 (PDT)
Message-ID: <c31577ee-9d81-212b-42a6-e72a648f9276@linaro.org>
Date: Sun, 24 Sep 2023 13:49:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RFC PATCH v2 net-next 13/15] dt-bindings: lynx-pcs: add
 properties for backplane mode
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Ioana Ciornei
 <ioana.ciornei@nxp.com>, Camelia Groza <camelia.groza@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor@kernel.org>, Sean Anderson <sean.anderson@seco.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-14-vladimir.oltean@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230923134904.3627402-14-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_044930_031729_4FFC0743 
X-CRM114-Status: GOOD (  21.61  )
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

On 23/09/2023 15:49, Vladimir Oltean wrote:
> When the Lynx PCS is deployed on a copper backplane link, it must be
> prepared to handle clause 73 autoneg and clause 72 link training, which
> it can do using a dedicated AN/LT block. The latter doesn't need to be
> described in the device tree, because it is discoverable from the SerDes
> lanes.
> 
> The media type that is deployed on the link is not discoverable though,
> so the introduction of a fsl,backplane-mode boolean property appears
> necessary to determine whether the AN/LT block should be employed, or
> left bypassed.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v1->v2: patch is new
> 
>  .../devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml b/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
> index fbedf696c555..40fbcd80ee2a 100644
> --- a/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
> +++ b/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
> @@ -16,11 +16,24 @@ description: |
>  
>  properties:
>    compatible:
> -    const: fsl,lynx-pcs
> +    enum:
> +      - fsl,lx2160a-lynx-pcs
> +      - fsl,lynx-pcs
>  
>    reg:
>      maxItems: 1
>  
> +  phys:
> +    maxItems: 4
> +    description:
> +      phandle for the SerDes lanes that act as PMA/PMD layer when the PCS is
> +      part of a copper backplane PHY.
> +
> +  fsl,backplane-mode:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Indicates that the PCS is deployed over a copper backplane link.
> +

Please extend also existing example. If these do not apply to lynx-pcs,
then they should be disallowed in allOf:if:then.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
