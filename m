Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F5CEC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 03:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYQb08/3Ulpam46uoIBZa5CEkAFBE2EFwwZ64+EX5RM=; b=qywk+T2RY0jRGe
	q70LGUsiTbEQ/8BAbJVMW9+cF5PjRpGZZwksaT0aRwZpEwHiBpiQaRXf39L9B702dyAHe1ZpQZY90
	3AY9fV/bawVEnZP7HroDQVXOuO0ysMXTzgzdsL5v1NVRwa065XCzfeRiPGH60VPoVBPDBeuYw+DiJ
	d60Ap7CPAfojZRi7rPhewRocQJgAMSndWqjPI0e10mmo4xqUTWoNol7vtmpZoUtmTJat7cZM/yr7M
	QULjYo9OObxc6LZjJLa9nAMhJXGTd23TarHPNGW+BTInxSUopHdCgKTsPtHxKtnLO1KJ0sj6ZSKyl
	31veGODMX39lzLgMcVKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtbg-00EpC3-HE; Tue, 01 Mar 2022 03:55:24 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtbd-00EpBJ-VM
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 03:55:23 +0000
Received: by mail-pl1-x62d.google.com with SMTP id ay5so9620750plb.1
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 19:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=15kO8bfahYJFiPLc1vZ8MJvVn1yYn8uPD0/+xIeiCzc=;
 b=EilyBazjY/CYJQ2FvktcGrpjYVDdZSwf5yyYmaY2goT1gbFkaye+c/ckNkZ1Ll8blJ
 Qr/rn5vksZA7AEnaBQFwQYJ18o+zYovqOqyhI6bNQoPdojEebEUPpLl3Ge4IUxL3ZVaf
 b7XjY+WneeUPE6Y3qY/mjHPmWQ+6/3Vs5p6Sc7IOcxBXxqS2CvuUweE69Fj2voyDSG23
 Zz1TNbiS3kDJA9NKKYrG8oAjeQj4EfLjaIsDIfj5WeeY60lz+M6TkMgj9xtpgufbSMk4
 NNsw8u3iKQOC9qva2Gsn3n2Ztopd/HR/UVTasU3n49dl7GAZZmvBamIvfylHv/pEzB57
 qqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=15kO8bfahYJFiPLc1vZ8MJvVn1yYn8uPD0/+xIeiCzc=;
 b=ph0xM6wmFQ08cxGcoWnBb0PBZyt/jNq9Zu2LRt62bBelxR4K5eYpx5MQmNOcgUxDnd
 d33B4mxCl1PQsZ4Aic0sNxmD561gKrn+UNmVdgJMQd7S6plIl/YLqoja6Wzu4f/hIDs4
 /RABMCEqA1cFqPaoVVm3oKP2DDXsInDBg/GXhqhDCgiKXjFEgxh0dMx1xh++kAD+8iX4
 4EEiQYvBUvqhinJBs1DDRvJEMP9G3t10u/QRjNBqk8txi1f8r0H/Xdue0xpQHk2mFRK8
 SB+7EKexybG2SnbRXN5ZdAZcmJ34QsESrAJEvnT7HxuNUq+ihxJsqzTHkEyOnJ2ttK6B
 k3lw==
X-Gm-Message-State: AOAM5314Q8c19wah8K8mWX99es8dpV2/x4LZrQ4C7LSaYaE4O8fzqpIJ
 nd1Sf37aSeehMBIvXdpSl6IzLQ==
X-Google-Smtp-Source: ABdhPJxuiB7k3oJfg/cJ8oTZlkYgj+RGZQnKNSV1zCmzNyKWhT6YBLHZprxiz8RDQXnXGJu5GNMQAQ==
X-Received: by 2002:a17:902:9a02:b0:14f:2d93:92f4 with SMTP id
 v2-20020a1709029a0200b0014f2d9392f4mr24778661plp.160.1646106921016; 
 Mon, 28 Feb 2022 19:55:21 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 h12-20020a056a00218c00b004c3a2450acasm16045071pfi.147.2022.02.28.19.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 19:55:20 -0800 (PST)
Date: Tue, 1 Mar 2022 11:55:14 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: phy: qcom,qmp: Mark '#clock-cells'
 as a 'optional' property
Message-ID: <20220301035514.GE269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-2-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_195522_035666_AC3EB647 
X-CRM114-Status: GOOD (  19.86  )
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

On Mon, Feb 28, 2022 at 06:00:12PM +0530, Bhupesh Sharma wrote:
> Since '#clock-cells' is not a required property for qmp-phy(s)
> (atleast in the '/' node, but is used in 'phy@' subnode),
> so mark it as an optional property instead.

My understanding is that '#clock-cells' shouldn't be a property of qmp-phy
node itself at all (not even optional), but a required property of 'phy'
subnode.

> 
> This fixes the following 'make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   '#clock-cells' is a required property
> 
> Also, make the dt-bindings confirm to changes
> already made via commit 82d61e19fccb ("arm64: dts: qcom: msm8996:
>  Move '#clock-cells' to QMP PHY child node"), by moving
> '#clock-cells' property from the '/' node to the 'phy@' subnode.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index e417cd667997..48cd6b6171a1 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -63,9 +63,6 @@ properties:
>        - description: Address and length of PHY's common serdes block.
>        - description: Address and length of PHY's DP_COM control block.
>  
> -  "#clock-cells":
> -    enum: [ 1, 2 ]
> -
>    "#address-cells":
>      enum: [ 1, 2 ]
>  
> @@ -109,11 +106,13 @@ patternProperties:
>      description:
>        Each device node of QMP phy is required to have as many child nodes as
>        the number of lanes the PHY has.
> +    properties:
> +      "#clock-cells":
> +        enum: [ 0, 1, 2 ]

I'm not sure how to specify this is a required property for the child
node.  Or is this already the case, @Rob?

>  
>  required:
>    - compatible
>    - reg
> -  - "#clock-cells"
>    - "#address-cells"
>    - "#size-cells"
>    - ranges
> @@ -461,7 +460,6 @@ examples:
>      usb_2_qmpphy: phy-wrapper@88eb000 {
>          compatible = "qcom,sdm845-qmp-usb3-uni-phy";
>          reg = <0x088eb000 0x18c>;
> -        #clock-cells = <1>;

These two changes look good to me.

Shawn

>          #address-cells = <1>;
>          #size-cells = <1>;
>          ranges = <0x0 0x088eb000 0x2000>;
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
