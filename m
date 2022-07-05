Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E539CC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 14:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8poU1IWCl/8lJ2sNKaJ0cdyFuWLSyhEJborZTcZTArQ=; b=a+dkm2WhWzDB35
	dC5iwUQgZGuoG7Y84ZK5KmOsIRLYEul71ahQB+X+vgjXT/txHGY6C+i2xo4tH4Eh94oW2wKTws65K
	Ef2T1gvMjgiTk8OmDKh6V76uYSQMEWay27l0HxCHzDyEtaWCWX1h4iQjndhLAq7BrfzRlsB1tKz+c
	pztOrHtkjxsHwrIgUtFBPEe6PXF6H+Z69JsUmlpYp6mBl2X4miSAd+fMhGnEiX0yKBXvQGEYCgS0D
	/fyBRfQVdK2SvbLTYBgUZMmjD+nvhSYw0deejt/tellvN04st1x35lN3Cw7y6xl79sWI0ixNk5+jO
	unLihL5Z9Pz8iFgSUV7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8jJg-000kYC-Cg; Tue, 05 Jul 2022 14:14:16 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8jJd-000kWC-5f
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 14:14:14 +0000
Received: by mail-io1-f46.google.com with SMTP id d3so11184784ioi.9
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 07:14:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=u3B52s9BVjfLE00xH/w1pvHP0oYdlCBCswFBMFKCN8E=;
        b=OgnKywtBAw0dAOqzW3SsBjpe1DJnTfEhb81XL1NCCDCfPCFXz3NZg5lV3/x4b8u5tP
         sb95lsOJEAzpNiOftqwyQRfNrRCFWihRDSBVEjR3pKmKwh/x9951cuSLtRZKdKA8EhhN
         8cUilMUE4K0xsExlisoQDrc4VhZNb3GghT4S8qZoSHL+bdRlhjKgb454ZmSDcKSWrggJ
         s0mXN713IpKP1gXmq8kOxXTfOMes9KFi/lxkoPsG0piIolTAgSoi+dDx3D9SDOHDCb5Q
         nBdL8+30sEqbY90QwdDlShkzVPexJB9iOaDEXtxBe2reDuX13CWrHTu8vR0eM9sPl0CW
         Acyg==
X-Gm-Message-State: AJIora9KrD1hh5I0F5RcJPvOOoiMneXVSr2sXYiATqzO9QYvNJIGUgsl
	k9B33sn5cM3M8SncCVR2iA==
X-Google-Smtp-Source: AGRyM1vGWd92SH01YtAp8IRPCxtyzYzM+kpesmmk5aJTp2tiuL15Lk6/prD5mFHrx1PIjHm6qkpuSA==
X-Received: by 2002:a05:6638:f95:b0:314:58f9:5896 with SMTP id h21-20020a0566380f9500b0031458f95896mr21218247jal.228.1657030451057;
        Tue, 05 Jul 2022 07:14:11 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id o4-20020a92d384000000b002dc0ccc4cafsm2777795ilo.49.2022.07.05.07.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 07:14:10 -0700 (PDT)
Received: (nullmailer pid 2035858 invoked by uid 1000);
	Tue, 05 Jul 2022 14:14:09 -0000
From: Rob Herring <robh@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>, linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20220705094239.17174-18-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org> <20220705094239.17174-18-johan+linaro@kernel.org>
Subject: Re: [PATCH 17/43] dt-bindings: phy: qcom,qmp-pcie: add missing child node schema
Date: Tue, 05 Jul 2022 08:14:09 -0600
Message-Id: <1657030449.193663.2035856.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_071413_276266_DED6B4DC 
X-CRM114-Status: GOOD (  11.75  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, 05 Jul 2022 11:42:13 +0200, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child node which was
> ignored when converting to DT schema.
> 
> Also fix up the incorrect description that claimed that one child node
> per lane was required.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 88 ++++++++++++++++++-
>  1 file changed, 85 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml: allOf:3:else:patternProperties:^phy@[0-9a-f]+$:properties:reg: {'minItems': 3, 'maxItems': 4, 'items': [{'description': 'TX'}, {'description': 'RX'}, {'description': 'PCS'}, {'description': 'PCS_MISC'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml: ignoring, error in schema: allOf: 3: else: patternProperties: ^phy@[0-9a-f]+$: properties: reg

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
