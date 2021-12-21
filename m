Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F03C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 21 Dec 2021 16:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sw6gwoAtFPkd2aOZtH1Q631afbanzl3L5W6AiZmHWHQ=; b=YqjK95i+5TEQMZ
	KBcIZuJnROM+WhqlJfjjpVk6CiSxg3dqbinFA0VybqZId0kks2Txoc50Acu3ig/q1m50uPxYHTBOF
	OWH+3lr8Aal8+ahnpwMh1g3Ak855kuJalrdXmTrtqpqDZzz7m6lPlsszwVlndAz7sRmn0bGH3tGGi
	3ZSYwHGty/LQZXVZQNy9XKA4m7KfRKVDdJMimmFBicJa4nkBxINDzrMnVdykIoMAuujeEnFIceMbs
	1t9ddwDvjIVdsas4D9Nsd20UxoQXYu7ixwW/8oIpvOvYnexJ/o5QbvW7Qo33N1Uwho7R3ynt6LuvZ
	H58TgaxH9mYCPwOLeChA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mziUY-007edZ-B0; Tue, 21 Dec 2021 16:59:58 +0000
Received: from mail-qv1-f48.google.com ([209.85.219.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mziUW-007ecy-H2; Tue, 21 Dec 2021 16:59:57 +0000
Received: by mail-qv1-f48.google.com with SMTP id js9so12965455qvb.12;
 Tue, 21 Dec 2021 08:59:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=d1I46WgDGRouKIKrs7F6Yd4w6Er6grT4e9hEG9b/EJM=;
 b=WRGZU9HrSkGKUqls1NdfTD+CTKhT+a4PVBwDQyCMfV4hKdnq56ZJEicc8yZWSVTxZ7
 /s3wQoXapKg9YRECUpPRbp4QNiqvlamsT53UUSfnU2QgS4fqppunE2plRs4QeXZXB+Is
 3+LOqq5FskakrVyimZ/f8muwQUECr3GkknBr8/XdshCvmTMyqKxDM0gbdLnMoyWR2nKW
 KfQQ+CVYPpEDus+bERtZVAai5OCihl8cStxyHyFKQW89tXXNi4D/ZREN8xuAq7pvZObm
 /O2+hBv93sGYnpU7weisDqrSEpj7U2aG/7VxdYV5prpBK1mDccnjKUEPyAPOljXt4S+8
 MOAQ==
X-Gm-Message-State: AOAM532wUvcGaDDJIfu2TH2XZmvyLAwwguziAPIOVBitDAnl6fJrY6bh
 LXMEscsqefZQWn5wYCiCCQ==
X-Google-Smtp-Source: ABdhPJxPQL3aRuJfE5/il6Ej8ilSZkmkLHHfGLS3HlyAdqwvaTvq/EEN3H9xI4uWNxEjf4k+QKHEXw==
X-Received: by 2002:ad4:5f4c:: with SMTP id p12mr3210178qvg.11.1640105995500; 
 Tue, 21 Dec 2021 08:59:55 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
 by smtp.gmail.com with ESMTPSA id c1sm17260709qte.79.2021.12.21.08.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 08:59:54 -0800 (PST)
Received: (nullmailer pid 1449857 invoked by uid 1000);
 Tue, 21 Dec 2021 16:59:52 -0000
Date: Tue, 21 Dec 2021 12:59:52 -0400
From: Rob Herring <robh@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: imx8mq-usb-phy: Add imx8mp
 specific flags
Message-ID: <YcIICIKjbgEn0I+P@robh.at.kernel.org>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
 <20211216160541.544974-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216160541.544974-2-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_085956_596676_E83E7F2E 
X-CRM114-Status: GOOD (  22.15  )
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

On Thu, Dec 16, 2021 at 05:05:39PM +0100, Alexander Stein wrote:
> This adds bindings for features only available on imx8mp. They allow
> setting polarity of PWR and OC as well as disabling port power control.
> Also permanently atteched can be annotated as well.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Adding properties specific to one compatible globally and disabling them on
> other compatibles is the way to go?
> 
> Are there any best practices on the usage of '-' and/or '_' in property names?

Yes, don't use '_'.

> 
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 ++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> index 2936f3510a6a..1d28b7d1c413 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> @@ -16,7 +16,8 @@ properties:
>        - fsl,imx8mp-usb-phy
>  
>    reg:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    "#phy-cells":
>      const: 0
> @@ -32,6 +33,28 @@ properties:
>      description:
>        A phandle to the regulator for USB VBUS.
>  
> +  fsl,permanently-attached:
> +    type: boolean
> +    description:
> +      Indicates if the device atached to a downstream port is
> +      permanently attached.

Wouldn't just describing the downstream device be enough to indicate 
this? Though that is in the host controller rather than the phy.

> +
> +  fsl,disable-port-power-control:
> +    type: boolean
> +    description:
> +      Indicates whether the host controller implementation includes port
> +      power control. Defines Bit 3 in capability register (HCCPARAMS).
> +
> +  fsl,over-current-active-low:
> +    type: boolean
> +    description:
> +      Over current signal polarity is active low.
> +
> +  fsl,power-active-low:
> +    type: boolean
> +    description:
> +      Power pad (PWR) polarity is active low.
> +
>  required:
>    - compatible
>    - reg
> @@ -39,6 +62,33 @@ required:
>    - clocks
>    - clock-names
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - fsl,imx8mp-usb-phy
> +
> +then:
> +  properties:
> +    reg:
> +      minItems: 2
> +      maxItems: 2
> +      items:
> +        - description: PHY register base address
> +        - description: Glue layer base address

Move 'items' to the top level and then here you only need 'minItems: 2'.

> +
> +else:
> +  properties:
> +    reg:
> +      maxItems: 1
> +      items:
> +        - description: PHY register base address

And just 'maxItems' here.

> +    fsl,permanently-attached: false
> +    fsl,disable-port-power-control: false
> +    fsl,over-current-active-low: false
> +    fsl,power-active-low: false
> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
