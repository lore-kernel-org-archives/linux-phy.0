Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25085C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Dec 2022 20:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WuiPzklfYiXUW53uSOpmDxC9Y07VKLoAtjjG/uBlPc=; b=nfaWla08d2eSAS
	XfrHf/8g9Rg7xVEQDgNlYS0DdGEZWRLBNn9+ylNvKOp0KiCKWMcyV8TPk+6Tlr459VcLGw2r3wYkS
	WXw2fqy/uYbKDigsLXNadw87YY7P9hH8G1nifzzwpkYD5R4vFNaLEm/GYhCz53FXc3wttwt3/XHjf
	DJ6Q8odTOATdZStR5TST5DuhyAzP/jHOkyeXPandzi1vxdbebSTuTmr/1jx6fFU2jSb1jL0+gZlzE
	yep2RjmWx5zWjGY+++ChYW2YOBHJoKIqdktaxFWbBhzfgk88Uu7hgk4sQAv2pcTdYewo9dbvZJRcw
	2Joxy7v0Attexq/BnzCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7inP-003e69-1N; Tue, 20 Dec 2022 20:01:03 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7inK-003e1Y-Qw; Tue, 20 Dec 2022 20:01:00 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1443a16b71cso16680176fac.13;
        Tue, 20 Dec 2022 12:00:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m7rQADosS+b3+803ppmC4G5l6lsD7QIny2Q7opGqliM=;
        b=EeAFLhReSWwR02DJ5tNXtCFAk73mbl5XBpRcnQeT1BK4sPa2+TVHAs1X43kTYG0No4
         MWd58HtIpeOqnWYn8PzlTz/U88fWRB4zqkdv8q0coXXv+MlCiR7Exd6HWEg6paSpJ+Rf
         Ykw7dYOhXu/AUAmIme3q5E40OYGrUsZRcPlxc5gNK0SnAYE3ACiOiNsbRGj8w9DEo+8Y
         HU7M9ZlCAn06DBRT5LwItc9bToGiA6A/rRmGAkUP/72k3jAnIGu5jkDXNCk4QsTgOlwL
         DFJUWzwI3aFdJN2VCbEHn/awvLZhIP12mbaINXoyzcmOIiBS0yY4cDIZUoQIN7aLOqJM
         V5rw==
X-Gm-Message-State: AFqh2kr2EideeO6S+4T8DrP14+ZtWs9HmpNFAKLl0kTPE07H8PoEFZOb
	9D2bRNkvcISBEqEYtWxo3g==
X-Google-Smtp-Source: AMrXdXt9sEtEqgQZhotj9V3mZGPtA+Z0Jj7vkU5jn2um2dvY3ioakyoO6JU+NnthNj+8BzLMwIRf8g==
X-Received: by 2002:a05:6870:c991:b0:148:500d:c6fb with SMTP id hi17-20020a056870c99100b00148500dc6fbmr7635185oab.38.1671566456641;
        Tue, 20 Dec 2022 12:00:56 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y29-20020a056870459d00b0011d02a3fa63sm6504888oao.14.2022.12.20.12.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 12:00:55 -0800 (PST)
Received: (nullmailer pid 990414 invoked by uid 1000);
	Tue, 20 Dec 2022 20:00:54 -0000
Date: Tue, 20 Dec 2022 14:00:54 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch, vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/5] dt-bindings: phy: add port node to
 phy-rockchip-inno-usb2.yaml
Message-ID: <20221220200054.GA953433-robh@kernel.org>
References: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
 <e54f7b52-3530-59c4-90c6-1fb5a17d6491@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e54f7b52-3530-59c4-90c6-1fb5a17d6491@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_120058_928336_D4FFF74C 
X-CRM114-Status: GOOD (  17.68  )
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

On Mon, Dec 19, 2022 at 05:56:55PM +0100, Johan Jonker wrote:
> On Rockchip rk3399 a port node with one endpoint can be connected
> to a USB Type-C connector node.
> Add a port node to the phy-rockchip-inno-usb2.yaml file.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml      | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> index f71920082..ffc7e7560 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> @@ -115,6 +115,11 @@ properties:
>      required:
>        - "#phy-cells"
> 
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      Port node with one endpoint connected to a USB Type-C connector node.
> +

This doesn't make sense. First, this phy has an otg and host phy, so 
which one is it? Second, the USB connector graph is supposed to be 
connected to the USB controllers, not a phy.

But I guess we already have this in use, so I guess just mark it 
deprecated to discourage more usage..

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
