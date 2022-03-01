Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47B6FC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 04:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCpwSZYzo5lY/4yenuQ2GmmEKpbof3q9PNGIaNXwwag=; b=xskOB7OlOxM0PU
	EnMWwtKvSEXSUOxHBGgwk+JjzbRzY/4PFTVPimXP1adoh8W2L+eEB6IxQpCl2YBiRyYPmVYz8+gry
	Ef7rebR57caPJDZFamSFXvO0k5IV8jnuKTVCtxPStQ8HuCun0udMn2fMcon7d6xd/Y/FGp11mLeqT
	iV3v28VQoQLZyT4LIMUz7YIl18xIoUTwzxlbcJFXBO3DLLg5Dx+Qaalg2YzAnzEeTC3MXLlggHwNH
	ndwQu1yGVAGKwEs2S9JOxUFP+KDZrx+WqGCiUaqjcPmNGtWwHU74rKZVH189ylPFKSzwCvU0AwPNT
	QFFguEJBSHCwAoH6TuWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtvi-00Eqjj-PT; Tue, 01 Mar 2022 04:16:06 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtvg-00EqjI-5i
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 04:16:05 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 q8-20020a17090a178800b001bc299b8de1so1118628pja.1
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 20:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KhWC54mH+BIWxrEus55KBPvsAOUPn79ymjvbcax9p8k=;
 b=W/+o+gzPs0IucCzQpXe/hW7oHCroBWchswx4x+IW1T8ikPLDEevOIe12bLh3Zr+8e+
 uiyAUzIziIqljsw8DZHFoOZRgUr7l0phA2WiuuLZvJ4liy0CSByqY3vGStiUALNWwd8j
 8IrbdA4CkPgDrHESTOhcDW+OAsnwnH+pzzaCJH3tbdSt5c7wFTU1IFPZln6BJ8023MMj
 oihelxVUqWgZ3H65KUlCyVS39o9AFr/9Y7zr+6kJVlfIxQYwvCl5k2CY2oDOEBADqEkh
 jg7DfMSf5n5AdzPcTiVIEKfNxb5cTyiEOT9aVPstpGQkorKzjI00cw0dmJFnQdbgcPWe
 MAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KhWC54mH+BIWxrEus55KBPvsAOUPn79ymjvbcax9p8k=;
 b=Vy898R+IrSfn+Bqi5k0oHG3JkBZetz4AIU0LGGkP5eFQB6b+wHax/O26B0WOBAHTn6
 oiaWyQJOpcLLEcg/xjzGjJzj8lzFlaekuvMrC+mEpGSUf5Is0VlSviySyEi4gaenU0dN
 xmhxzRdk2ZVseC++99OUGBUYVmc9Uvg6w+ns6XzvKRDmCVKrL+vnJ7EGYCLT46w37Iyy
 XNKQMHnS4zYyHAM6Atg8uNDWiSTSAyA288KKF0LqFi/nfnKbr50UETHtWRBPvG/ZZ530
 ZiWMFTHbkhL5LRsFI4S7LFvCc7LNA072uK4O7HQs8J44YXibNZxc0KaGwjNL83IgU7Ua
 Oa5Q==
X-Gm-Message-State: AOAM531ARPVqbJJkMvoIowoaHFq3mN/AtLteYArxwu92w5mYENBZlTDB
 0ceGCM52gvP+XUvogIbfhbVRtw==
X-Google-Smtp-Source: ABdhPJx+KDbaCtnr5/iSs/iENqUtZNEYQYW6xikSgRQFLKJekESfaH4ej9ewUCPL03855qHDRMiBwA==
X-Received: by 2002:a17:90b:3d02:b0:1bc:85fa:e24 with SMTP id
 pt2-20020a17090b3d0200b001bc85fa0e24mr19926186pjb.239.1646108163083; 
 Mon, 28 Feb 2022 20:16:03 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 f13-20020a056a001acd00b004f0f9a967basm15588688pfv.100.2022.02.28.20.16.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 20:16:02 -0800 (PST)
Date: Tue, 1 Mar 2022 12:15:56 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Message-ID: <20220301041556.GJ269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-3-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-3-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_201604_241940_85A73DF3 
X-CRM114-Status: GOOD (  16.05  )
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

On Mon, Feb 28, 2022 at 06:00:13PM +0530, Bhupesh Sharma wrote:
> Since a few boards based on QCoM qmp phy use the
> 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> describe the ufs phy nodes, add them to the dt-bindings doc as well.

Does qmp-phy driver actually use them?

Shawn

> 
> This fixes the following '$ make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
>    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 48cd6b6171a1..70e7cd75e173 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -87,6 +87,14 @@ properties:
>      minItems: 1
>      maxItems: 3
>  
> +  vdda-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from phy supply.
> +
> +  vdda-pll-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from pll supply.
> +
>    vdda-phy-supply:
>      description:
>        Phandle to a regulator supply to PHY core block.
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
