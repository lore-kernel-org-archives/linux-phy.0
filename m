Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C51E4C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 04:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTJammf4wxyIL3DOTQmTwXACjU/w/hVemwy/mcB3BWU=; b=NY580ooW3eVsOK
	YtUplBa7hZh7TkXnmk8vhl6x7fqVHF+J27ohDrPyu6ScXMlKRIRy2GPR49LGRGdRLp9bkpnxg5LMR
	gRs4THEAA+LztXfLlMKF85Qxrk0qHieosedimuTCTat0395qlp8ToGX0NxtwnUCy6CqgGES3WhZyT
	kAv5QDgOJXtToUO6+q91IHxI1hfFutOW0vGD/EZqHw71XxfoI1ToCrP4VVpvtCblxTvxpVXm/PBJX
	q4n+QixNuMFFBrrwoJLFiHDaaSbyOBhYRtEODMO3jZBoaOj1P2SAOy6rm7NoXr6ncIgvGsK1lrUM2
	EhaDHeijrggFM0ZeU3KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtri-00EqDt-7x; Tue, 01 Mar 2022 04:11:58 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtrf-00EqCn-IP
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 04:11:56 +0000
Received: by mail-pf1-x42c.google.com with SMTP id z15so13023502pfe.7
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 20:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ow+x/A02/p6wuhxlMKjVF6tagFa+f42YnShr2G/XUGE=;
 b=XAGgI92Vz0aYAS+wtIPI0bam6zx4Ppv4RucLqApTLTuBp70WUnJ4JC6eogliNV5N/X
 OA3rzgKJrRwN4lc3jfuHChOi/O9nibbF8Ox3fDl1mWaGbRXIZuDebMyYt4B6NzJO+3PA
 FOgJ25trZ8+JmmyfMo2S8qC6rHKH0GJU5rQMQK4CNHiEj0iEq3gRrJenKzK0Db+q8O9C
 bvnIUUjxav2osj6EVLAIDBHzs6ClEBFZv9i1lGAToLOIf4SiiVSg9sRE+W6jP0kMQrLx
 rBOAkbZbkgQmQr7zl7zP6nkAdH3520cq7vcsLH4kd6r0dRt442CSGZUwbqeYfBRL+9YW
 JR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ow+x/A02/p6wuhxlMKjVF6tagFa+f42YnShr2G/XUGE=;
 b=I3Q1O48sq5YXs5Ips21sfRWga4hKbjbHde3nIgwrIi9MqallFtod47qEmGeCjNih33
 WncLRKStqx8zDTR6FcDF9YRsiXi3/uaFPkR18NwfQ+/wb+uycR5RWSdWPzZFvxft6eXW
 SRJrZdIJRjvo5gKnqMmST6yUZ6fy8VHSlAN0+/LoWToiTKL7XK0xtGF8w3n7wEkvgAxH
 Q28UVWE5RmQSXv46Nw/jux23BghMbunRwhwtH3VoWXOUbVz8pKxPKLb7xptPhxQ8UKGr
 sTEyJPOfdN//9+gcYW7nrUyE14IBoZLcyTs9NTH7ltctSm8Q5j25hznRacE48EMFDmRb
 4YDw==
X-Gm-Message-State: AOAM5307/AwHvlnTNIHa84PJO/q4ln1SnpxNa8IVq53j8Lz9NwtcxhOE
 0o4gxFVqZ+ToFcFWm6UonE0GNg==
X-Google-Smtp-Source: ABdhPJxKMbY2StYAlC6eIjI0FC7YY4N2VGA4FpyTazwS6B6sBlH9cQSMhhoZRsUHz4J6ZoiLvnEiTA==
X-Received: by 2002:a65:4cc4:0:b0:373:d441:f999 with SMTP id
 n4-20020a654cc4000000b00373d441f999mr19908063pgt.387.1646107913781; 
 Mon, 28 Feb 2022 20:11:53 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 z23-20020aa79597000000b004e1bf2f5818sm15915098pfj.87.2022.02.28.20.11.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 20:11:53 -0800 (PST)
Date: Tue, 1 Mar 2022 12:11:47 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: ipq6018: Fix qmp usb3 phy node
Message-ID: <20220301041147.GI269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-7-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-7-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_201155_639829_A6E68B42 
X-CRM114-Status: GOOD (  14.61  )
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

On Mon, Feb 28, 2022 at 06:00:17PM +0530, Bhupesh Sharma wrote:
> Fix the following 'make dtbs_check' warning(s) by
> using phy@ instead of lanes@ and by moving '#clock-names' to

s/clock-names/clock-cells

> sub-node:
> 
> arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml: ssphy@78000:
>  'lane@78200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Other than that:

Reviewed-by: Shawn Guo <shawn.guo@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 66ec5615651d..ad7914e49532 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -674,7 +674,6 @@ ssphy_0: ssphy@78000 {
>  			reg = <0x0 0x78000 0x0 0x1C4>;
>  			#address-cells = <2>;
>  			#size-cells = <2>;
> -			#clock-cells = <1>;
>  			ranges;
>  
>  			clocks = <&gcc GCC_USB0_AUX_CLK>,
> @@ -686,12 +685,13 @@ ssphy_0: ssphy@78000 {
>  			reset-names = "phy","common";
>  			status = "disabled";
>  
> -			usb0_ssphy: lane@78200 {
> +			usb0_ssphy: phy@78200 {
>  				reg = <0x0 0x00078200 0x0 0x130>, /* Tx */
>  				      <0x0 0x00078400 0x0 0x200>, /* Rx */
>  				      <0x0 0x00078800 0x0 0x1F8>, /* PCS */
>  				      <0x0 0x00078600 0x0 0x044>; /* PCS misc */
>  				#phy-cells = <0>;
> +				#clock-cells = <1>;
>  				clocks = <&gcc GCC_USB0_PIPE_CLK>;
>  				clock-names = "pipe0";
>  				clock-output-names = "gcc_usb0_pipe_clk_src";
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
