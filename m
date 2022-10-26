Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 800FDC38A2D
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 20:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiiQIHdm/FzMTYPMBaRTjOGEbEEdA/lR0fn3m6Kj1oo=; b=WeFrWpqOvF2f5Y
	DrkQ7IgKMqpt4kBjapgzplVFQ7syMtbWU5BpMQkFxEovCPiNzMwydkQzCORzlsSrPqziiXWbP/sVO
	NDxYZR5fUWKOmPJlIewemhzKdj1tzLrEx2XTD2pX1Xh0qwtRrx6SE/rEeK11euAKe8kN/IPeLVDul
	4cSf4jrY2a9Wgdh7SkuV7FpmmT77+DivFQxsJo1a8dBTmCqcaaf3Z8O35cQQW/USHd+GTx+LGN7X1
	O5+OSse3hC57wHegYGRSdWpJM5lA71LEQ5YruA0DiIu4cc5WrFSiZ/w5lMW0XQsIoHDreLJDShgp2
	Gn9ZakG7/kiEZJ5AmTYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onmn3-00AvQR-RT; Wed, 26 Oct 2022 20:14:17 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onmms-00AvPE-EP; Wed, 26 Oct 2022 20:14:07 +0000
Received: by mail-ot1-f48.google.com with SMTP id v40-20020a056830092800b00661e37421c2so10704090ott.3;
        Wed, 26 Oct 2022 13:14:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HXzbeLcKBqkTorVo8+Zfos/3G48Sy4NmsXxFj9BHm4s=;
        b=OG5Ln22tQ8flcJDdDhh5fhj1ixpkKg0jMI0IkVSTc8ABFuyJAv5oG79s7AqfjyDWkb
         AJrrFAYz/QyJSslKf04ttLaK1AxllnCCu/A0FoWK/y9u7T0GOxtrYn5T08Q3P7/3jWiT
         3wT6MXmA9PDsc+Sagy4KvMI+cIVq3xqTeFwN0RTtAoXmBQa1oa2SklXWX+zgjYR18sJ7
         ktvGEdigzLdKi8MNJG9wYmeLPnVGON3oIkkq7BIlYzVt/6DHa/RPGLODCigowbCGV8bB
         Ld9c0NiIxuflcZQU6A8/u3iw51G1E+fnfAptB5Dphx2xKLSJXJ2SU86BCk5rIc1Zc64b
         93Xw==
X-Gm-Message-State: ACrzQf0VnRoc+esK7EedGtebw4MLyZ3wDE7kw2PjHuALTpD332JfIyRG
	x9i6bCoc8XMS6R/WP7aXhw==
X-Google-Smtp-Source: AMsMyM7Zwol/YU/IWL2xizOWU3LR7EWtDOR4FhrFEny1tsGGtP5+wWG0o4VTMRg+N4Vj1hYfAmxtcQ==
X-Received: by 2002:a9d:74c8:0:b0:661:d66e:c2c0 with SMTP id a8-20020a9d74c8000000b00661d66ec2c0mr22390323otl.117.1666815242828;
        Wed, 26 Oct 2022 13:14:02 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z8-20020a056871014800b0013125e6a60fsm3514895oab.58.2022.10.26.13.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 13:14:01 -0700 (PDT)
Received: (nullmailer pid 1161110 invoked by uid 1000);
	Wed, 26 Oct 2022 20:14:03 -0000
Date: Wed, 26 Oct 2022 15:14:03 -0500
From: Rob Herring <robh@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, dan.carpenter@oracle.com, linux-phy@lists.infradead.org, krzysztof.kozlowski@linaro.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, linux-kernel@vger.kernel.org, rogerq@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org, lee@kernel.org, kishon@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J721e
Message-ID: <166681524182.1160710.10531302688571765618.robh@kernel.org>
References: <20221026074532.109220-1-s-vadapalli@ti.com>
 <20221026074532.109220-2-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221026074532.109220-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_131406_502681_FBF13F08 
X-CRM114-Status: GOOD (  11.08  )
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

On Wed, 26 Oct 2022 13:15:30 +0530, Siddharth Vadapalli wrote:
> TI's J721e SoC supports additional PHY modes like QSGMII and SGMII
> that are not supported on earlier SoCs. Add a compatible for it.
> 
> Extend ti,qsgmii-main-ports property to support selection of upto
> two main ports at once across the two QSGMII interfaces.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 48 ++++++++++++++++---
>  1 file changed, 42 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
