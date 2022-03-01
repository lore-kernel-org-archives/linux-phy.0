Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 274FEC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 03:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPND7XDjovGU9K//MXB8m+rayZJhC8itYqMU7qqAzZI=; b=SxtNi1tXbFSRVI
	jYKn8KYRl92NDZz5OiLT9Kc8ax9Z5U+GMP3rR6PkTqafmH9uWEod4QrjCpf9iR28xC0/nV5CfrAUb
	LyB+/zLrF5q9xcCCuZY17BZ0KEE2gJFiFeWDDv6GPL4tBeJXRhTbFz9l7eCozr4v1WWECPnVEpIR/
	eUGuGKQXCSBTF9Kt195UwVUUIYRC0yXrrK8cXdSEm1kd/FRoaOONaexd3GzEvhCrk0P+ddCB1hgYQ
	mpTefC04Supx3XtTDeAijzwfiwmH41NI2/rnqlEmKIRSjtaGr+LCUcH7m+YfTUkTaxXWi17wR8mpO
	mQZ5bworu8QnabyDtTew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtMC-00EoBa-Iw; Tue, 01 Mar 2022 03:39:24 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtM9-00EoAO-O6
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 03:39:23 +0000
Received: by mail-pg1-x529.google.com with SMTP id o8so13310745pgf.9
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 19:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DQiI3/lq41slE6OAld2w97SIbiquHRBn1sYz1OaFUOg=;
 b=YJFbCLzWaBwk5txQ4lnqx6bYjjGZUAl+5zNyYawBXXCwb5sf7l1alpylJO4fLG7bZV
 IoIlTAgKtfJ2LGJEhiVAXc9SLYIg+fs52F3iZU2hjhhyyDVCF2qbwMu+07ogBr3kEitY
 vzGgeZK2nh6QJ9f4S7VNnE2eYh5P30AnDTuP5f/9mN66JpteJbdrqOLdwn2dF+UjHJeN
 mdjORkZwbkSXZUHgGGp18bc+fsIZAHWAOVq7DpKClEsSUhKok/ihGKfHoTo0OfNIv9Mz
 WWZpJH0Xrm5OFwf2QFkrRSKX58fGy6x/YmPo3gg9XWB7XVRV04LMQgzh4qBIoEH0bdyB
 5mnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DQiI3/lq41slE6OAld2w97SIbiquHRBn1sYz1OaFUOg=;
 b=bh8D8F4tnfHXGOd2yhAcHyV8rH8dD//MuDosoc6VxVEvMMTI2c60jaPuAxHl1o/CzZ
 QzWlYZ5Rgv+lNVvIcqQb2fC7wbcvQJovxjlu1miMHILBzfrDWKfUY+j4hH8m/Barvz47
 lSCU1XoRHP2G00fE2f9m8cOLTxNyD5fu7NeJYQVjY41gu+MFVCNmkm8IrJUHK9/PN/Dx
 OuzGJyfksfM3u2yUyrT+S6903SMGtYZVcgCTQVb9simMdmrZcacsbjhzTR+ugPPCWIdS
 IZEKr3xMYPWlBzKIsu6U2EJxLu8alv/9Xnx3wDxI+sWHlX7A5nz43sfZH7v1qNYW0sfG
 L/Rg==
X-Gm-Message-State: AOAM530Ws6ljmlpGbiEVp2aEHO7N6j5I7/17XaI2xyij3BA5qIX6s6gN
 eZtJM1li03yAkj6Myf1xozi3IA==
X-Google-Smtp-Source: ABdhPJzbxoFGEjfg8n2qdCoZciaU6iaAmzzTD/E49i7BEuwCXVtOugEP0V8mBMNJhr7we8XSJrHylA==
X-Received: by 2002:a63:5a5c:0:b0:378:73b1:e1d8 with SMTP id
 k28-20020a635a5c000000b0037873b1e1d8mr10654109pgm.364.1646105960314; 
 Mon, 28 Feb 2022 19:39:20 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 j13-20020a056a00130d00b004f1025a4361sm15173699pfu.202.2022.02.28.19.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 19:39:19 -0800 (PST)
Date: Tue, 1 Mar 2022 11:39:13 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 8/8] dt-bindings: phy: qcom,qmp: Mark
 'vdda-pll-supply' & 'vdda-phy-supply' as optional
Message-ID: <20220301033913.GD269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-9-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-9-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_193921_812219_EBD2D574 
X-CRM114-Status: GOOD (  14.67  )
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

On Mon, Feb 28, 2022 at 06:00:19PM +0530, Bhupesh Sharma wrote:
> Fix the following 'make dtbs_check' warnings, by marking the
> 'vdda-pll-supply' & 'vdda-phy-supply' properties as 'optional' in
> 'qcom,qmp-phy' dt-binding:
> 
> arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
>  phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
> 
> arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
>  phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index f8a43acd229a..82b102b7d42c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -436,9 +436,6 @@ allOf:
>            items:
>              - const: phy
>              - const: common
> -      required:
> -        - vdda-phy-supply
> -        - vdda-pll-supply

Not sure this change is correct.  In phy-qcom-qmp driver, sm8350_usb3phy_cfg
has qmp_phy_vreg_l assignment.

static const char * const qmp_phy_vreg_l[] = {
        "vdda-phy", "vdda-pll",
};

static const struct qmp_phy_cfg sm8350_usb3phy_cfg = { 
        .vreg_list              = qmp_phy_vreg_l,
        .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
};

That means for "qcom,sm8350-qmp-usb3-phy" device, these two supplied are
required.  The sony-xperia-sagami-pdx215 may work only because
devm_regulator_bulk_get() call in qcom_qmp_phy_vreg_init() doesn't fail
because of dummy regulator support.

Shawn

>    - if:
>        properties:
>          compatible:
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
