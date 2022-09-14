Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 129F1ECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 16:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQuEctIll0ZEKOiVDNq1IYYxqe+OK7K/MZgWr7jUiIE=; b=mqmBlbOnPTK00Y
	ksZ3LOWITBoXpG4ZPYexlSLW4sZnVbv98NScp4vAiPvHVT2gVaG3ASZWGd25SkjYunRBMmylsjczp
	usAl/OnTATmv4l/2j7tD1t596M+OKZTyQ5tW27mO/f+6HNIkPGQBAFsA0qDmnRZPl6s2pvE2YYJjU
	whFX/gBDMesiiN45HbTOOzRoi9jAwMMWwmmXOpIv37Uqy15bgFMfbjr4y5XoQb1bXguxo17e7/DJs
	Ul2kjC5npys5bReEf/SoVhxs0gxlM8CqmUST2Wk+jP0FaL7ng3TCG1tjmVwKrRyVY4xAqLHrV0jVF
	6Al6IiV/qyvbrAwSunOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYV3N-004px6-AT; Wed, 14 Sep 2022 16:15:57 +0000
Received: from mail-oa1-f48.google.com ([209.85.160.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYV2x-004pX1-SI; Wed, 14 Sep 2022 16:15:33 +0000
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-127f5411b9cso42322248fac.4;
        Wed, 14 Sep 2022 09:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=6ZS3O41WakCAg7A83Ssmx3qQNeeXktonoJ6955W0xIg=;
        b=3DeKBWgWhXF0sjFY9o2bNRgRws6ZyIurpP0Duo8jHywPip5SIPxXWCrpXX93q5XflE
         DBW51Y75cfed2AFnbjBZ7FkT3+SQQs1hv/L6VrRUCwM0Tx6qUBXhUkc0eVIPQG7b+suv
         tAfyDrYZEo/U7ea9uAwsO6/Sy1fsK3NpwTbjyZRFTzNd4PHuLj8nZuhG/+3pCSQ9TQtG
         MTAtWsHlPHxC/ouhBSQE1e5wnHB71dCkulenNAxM/psm9ks+nyXqk3uPIcCN33Bv5zb5
         6neNkdIfljbEPaVRwizrTta6Ed6X/A7OSfF7PNORuDDmsqVxi/+WC7vhAsSG3R1Rm3Jr
         dV0Q==
X-Gm-Message-State: ACgBeo0nJDuvn2+IvoGQyh3OO6qHlPEg7cgZnZIW/1o1Yzff04ZWHTyD
	gR4Vyr7Jse6FcZ8PhoKMlg==
X-Google-Smtp-Source: AA6agR7eE4RGdOkzrwE3tE0oSwAJSDx7z/Kjsb8i8BiUwnqTltFKiXCpj47h0kL8M/lJlOw9Az9wSA==
X-Received: by 2002:a05:6808:d50:b0:344:f3b4:2a3d with SMTP id w16-20020a0568080d5000b00344f3b42a3dmr2369699oik.76.1663172128320;
        Wed, 14 Sep 2022 09:15:28 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n9-20020a056870970900b00127a91041a9sm8804959oaq.38.2022.09.14.09.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 09:15:28 -0700 (PDT)
Received: (nullmailer pid 2432288 invoked by uid 1000);
	Wed, 14 Sep 2022 16:15:27 -0000
Date: Wed, 14 Sep 2022 11:15:27 -0500
From: Rob Herring <robh@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: lee.jones@linaro.org, krzysztof.kozlowski@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com, rogerq@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, sjakhade@cadence.com
Subject: Re: [PATCH 1/6] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J721e
Message-ID: <20220914161527.GA2269201-robh@kernel.org>
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-2-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220914093911.187764-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_091531_948575_8C5E6E22 
X-CRM114-Status: GOOD (  20.33  )
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

On Wed, Sep 14, 2022 at 03:09:06PM +0530, Siddharth Vadapalli wrote:
> TI's J721e SoC supports additional PHY modes like QSGMII and SGMII
> that are not supported on earlier SoCs. Add a compatible for it.
> 
> Extend ti,qsgmii-main-ports property to support selection of upto
> two main ports at once across the two QSGMII interfaces.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 52 ++++++++++++++++---
>  1 file changed, 46 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> index da7cac537e15..1e19efab018b 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> @@ -54,6 +54,7 @@ properties:
>        - ti,dm814-phy-gmii-sel
>        - ti,am654-phy-gmii-sel
>        - ti,j7200-cpsw5g-phy-gmii-sel
> +      - ti,j721e-cpsw9g-phy-gmii-sel
>  
>    reg:
>      maxItems: 1
> @@ -65,12 +66,19 @@ properties:
>      description: |
>        Required only for QSGMII mode. Array to select the port for
>        QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
> -      ports automatically. Any one of the 4 CPSW5G ports can act as the
> -      main port with the rest of them being the QSGMII_SUB ports.
> -    maxItems: 1
> -    items:
> -      minimum: 1
> -      maximum: 4
> +      ports automatically. For J7200 CPSW5G with the compatible:
> +      ti,j7200-cpsw5g-phy-gmii-sel, ti,qsgmii-main-ports is an
> +      array of only one element, which is the port number ranging from
> +      1 to 4. For J721e CPSW9G with the compatible:
> +      ti,j721e-cpsw9g-phy-gmii-sel, ti,qsgmii-main-ports is an array
> +      of two elements, which corresponds to two potential QSGMII main
> +      ports. The first element and second element of the array can both
> +      range from 1 to 8 each, corresponding to two QSGMII main ports.
> +      For J721e CPSW9G, to configure port 2 as the first QSGMII main
> +      port and port 7 as the second QSGMII main port, we specify:
> +      ti,qsgmii-main-ports = <2>, <7>;
> +      If only one QSGMII main port is desired, mention the same main
> +      port twice.

Two different forms for the same property name is not great. Just make a 
new property if you need something different.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
