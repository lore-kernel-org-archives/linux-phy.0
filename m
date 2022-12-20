Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F0CCC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Dec 2022 16:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egUiaGP4MymQSXKjTrmSkx+n3PhGQFwdFgeDq+GL++I=; b=GGsxyp60bgMU0m
	DI1PvzFbQBGcbzswhHAjl+N0nRNl7Yca+kgN061gZ4sYWwbJW0Z/sVy7UQuZ2JwIcCiQURAXsz52B
	7N9afKODzEeVIaiE0e67vIkkeVomWxJnrYmd1dZG8tnAh41ebm7xPGDHnf2hevauVM6hBpuIdKbtH
	6jB3EC6TbgPuyLIPkzM/wKvfQ1wdDkgSQiEPlN3AFtXIZpxd5MB635IKkj1pZ39Tcw8VhNU1FxvKI
	6/qkhDz9/D9C1DkyIbVXKkc/zNmigrPLo2EUNuxYRbHYCo7zJFywBsSJhSoHjLnTsWg/fH2Orrpqv
	fFpp068HSpEd0IuYXhMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7f9m-000MIV-TL; Tue, 20 Dec 2022 16:07:54 +0000
Received: from mail-oa1-f41.google.com ([209.85.160.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7f9P-000LpS-LS; Tue, 20 Dec 2022 16:07:33 +0000
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-143ffc8c2b2so15914316fac.2;
        Tue, 20 Dec 2022 08:07:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q/u+y5GSLZEEG0FI6JVp5YQvEAR9DtzlzUi4XN5IYYg=;
        b=dGLMGuNaYPtik/8XMNY7qHeJZVPWcE3tSqIx9c+d/wt0drjpYPi3KowwJHiboNtC41
         iIoC368gWV/dtzOdMYGiwXzmQwkpmpnAzYicU/oXz1qI7dkQ3XRMgnZlLheqXEccU5wJ
         GNzhgpo2ilvuLkFIHTITH8xtRdLifHhDXH/GGLMW4Gtwt1Vqr1tpwgmKn7Z+rhTnspzo
         2SAhfu+tBClqP3I73oFJ6KMeqtRBT4YU/Qv7/ImCg8/J/bX8IxVVd555cpCCMsGNTY1D
         3Xchw1p9hSlRZI/DvcBslb5t8inM8Qez02tKHPK7xUCDkVJh73VQU1L1Pyw4XMtK17M8
         pNMQ==
X-Gm-Message-State: ANoB5pljNEud+GyIYixTLZcZEOSb41vsZjj1/TIXriLW0zWVrYJwPRAa
	jDNci6lkIMGE1qgfIcd0zA==
X-Google-Smtp-Source: AA0mqf7Vr3fx/nZSVhqd0FR3tqQ0t2069C3rCa0EhIFdtpBAjjoKR5PH1zTpaiGVYRnNzM3trAwTnQ==
X-Received: by 2002:a05:6870:1696:b0:144:7a85:63ea with SMTP id j22-20020a056870169600b001447a8563eamr23948571oae.23.1671552443772;
        Tue, 20 Dec 2022 08:07:23 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z9-20020a056870460900b00140d421445bsm6185661oao.11.2022.12.20.08.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 08:07:23 -0800 (PST)
Received: (nullmailer pid 647058 invoked by uid 1000);
	Tue, 20 Dec 2022 16:07:22 -0000
Date: Tue, 20 Dec 2022 10:07:22 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch, vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/5] dt-bindings: soc: rockchip: grf: add
 rockchip,lvds.yaml
Message-ID: <20221220160722.GA635186-robh@kernel.org>
References: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
 <0b9bb507-1819-4bfa-593f-8b7e92c2ce3d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b9bb507-1819-4bfa-593f-8b7e92c2ce3d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_080731_736510_8E7965E4 
X-CRM114-Status: GOOD (  13.39  )
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

On Mon, Dec 19, 2022 at 05:56:35PM +0100, Johan Jonker wrote:
> Add new converted rockchip,lvds.yaml to grf.yaml file.
> Prepare for more SoCs with lvds output.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.yaml          | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 2ed8cca79..d74295e98 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -75,13 +75,17 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: rockchip,px30-grf
> +            enum:
> +              - rockchip,px30-grf
> 
>      then:
>        properties:
>          lvds:
> -          description:
> -            Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> +          type: object
> +
> +          $ref: "/schemas/display/rockchip/rockchip,lvds.yaml#"

You can drop the quotes.

Reviewed-by: Rob Herring <robh@kernel.org>

> +
> +          unevaluatedProperties: false
> 
>    - if:
>        properties:
> --
> 2.20.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
