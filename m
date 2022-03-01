Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63920C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qH9etsJlBhPNEmqCzBAOV8TqeUb078SGTal+gyiGvBY=; b=wopFuVPhR3lbGt
	vZKI4vxRZryrf1ga4mmYqlZis5IwiMvlYO8JTM480v+CRJ+D1bnMD+TSiojrRO3REBHH0A2e2mt8W
	xVqNpGMwwoj0Z7YN3D9mPlSQ/scjdJUFFu1Dg6GwlhXpySSkonkQDBJ0ielgqpXEzpNy2Z6wkMqe9
	ynDg0iIpkcZip1wDAx9skqz5UrA9bGEjNiugMGW50MapOGMAbSX1C6yfZTeIkUO/GZTeV6bPanx59
	5Yiq66w86CNeRGHMwVp8oK7KBqN/BJ8s+UPfTnYyLzGhuO+WO7TduIiHhk7ZyMe8FUCUUk4gunlCA
	v12x8qkpYk3vVqq3xjhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOu1w-00EsIW-RY; Tue, 01 Mar 2022 04:22:32 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOu1u-00EsHF-FZ
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 04:22:31 +0000
Received: by mail-pl1-x62c.google.com with SMTP id z11so4081256pla.7
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 20:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=er1+nF+4ONhOGnKGy9pN0cgSQ+ll2TiqgLcg/njPFr8=;
 b=oipGy61VYoVU8qK0vDv+oTTQJDjlwLNQ/7BP7du86NT3zcCh8TcDtQC8K42swbDpum
 I3E9IrpJcDKPhXuZ4X/Mwr93XJtS8XyTGZ1H4vDeAVyDDjBO4QFbUuycOCTvOTZifpFd
 IR1NnYAESHnlLxwtrAEhmyiMV1FeFZnSHo1tcBvA6k2SgQ2W9JhcmpaOYn7IcFMdP7u8
 IthW0hX1gh1wQ1UaLwKwcxtPh1YCnAY/In8ZCHWA3r1/ZKT+rtgiVb1o+wwdWWtEES/b
 GOmADlQUigu87w7la849TIv8sMsQLW3K55M8Ttm0qEVJkZqdfJCGDCEvOeD4iVWXL1MG
 14ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=er1+nF+4ONhOGnKGy9pN0cgSQ+ll2TiqgLcg/njPFr8=;
 b=3EvJGuUlr3LKUlW7ZPDv1VtV5JmqKZG0FtoBiKvOViw7CEW2k8BWDP1OJPEImvq/vW
 q8GWBGIZYV335VgVwJAN10dmO3FToizRhu2EHF86FAaaSuUEExIDJwYRFgtKj0MgbuXR
 pITleBU58JfHwWLi8iopgYc3gS4rPwwDZ258gx6mtt5NPVHFEi6Rr2TE7tYqoyJLgX2F
 UKD0tC1mvWc/q/z62UA2nfiqs8Tcn6JJVgRldvNU0i45i62JB7hMcuEHyjjqay+BebgK
 pNKNgP7Se+3lRBpNvnKdBqLHQ9vyZEP+L5APJPvXz1qFyZrxPdxJfgGzfN2PBVdzdCsV
 Tslg==
X-Gm-Message-State: AOAM5321pvP8gxfWAdMo3diL3j4E6I+xxLWg0QPNIg3t0bcnjUGxdJrB
 TsMhlVnc3APIP78huhZKMx2zfA==
X-Google-Smtp-Source: ABdhPJz5ksmIRw0B3/MxjyFEI3mi/rvPVvfZBj5u1kfSb7EtS9xUAp83HI6xgpzP9yDKKSCwRJUq2g==
X-Received: by 2002:a17:902:7892:b0:14e:c520:e47d with SMTP id
 q18-20020a170902789200b0014ec520e47dmr22953335pll.105.1646108549538; 
 Mon, 28 Feb 2022 20:22:29 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 y8-20020a056a00180800b004e156f7191esm14549503pfa.213.2022.02.28.20.22.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 20:22:28 -0800 (PST)
Date: Tue, 1 Mar 2022 12:22:23 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2 3/8] arm64: dts: qcom: msm8996-xiaomi: Drop
 max-microamp and vddp-ref-clk properties from QMP PHY
Message-ID: <20220301042223.GK269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-4-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-4-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_202230_547950_9AFA5DEF 
X-CRM114-Status: GOOD (  15.05  )
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

On Mon, Feb 28, 2022 at 06:00:14PM +0530, Bhupesh Sharma wrote:
> The following properties are not supported and causing dtbs_check
> warnings.
> 
>     - vdda-phy-max-microamp
>     - vdda-pll-max-microamp
>     - vddp-ref-clk-max-microamp
>     - vddp-ref-clk-always-on
> 
> arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dt.yaml: phy@627000:
>    'vdda-phy-max-microamp', 'vddp-ref-clk-always-on', 'vddp-ref-clk-max-microamp'
>     do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Drop them from QMP PHY nodes for 'msm8996-xiaomi' dts.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
> index 7a9fcbe9bb31..f6f6b2e89a36 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
> @@ -337,12 +337,7 @@ &ufsphy {
>  	vdda-phy-supply = <&vreg_l28a_0p925>;
>  	vdda-pll-supply = <&vreg_l12a_1p8>;
>  
> -	vdda-phy-max-microamp = <18380>;
> -	vdda-pll-max-microamp = <9440>;
> -
>  	vddp-ref-clk-supply = <&vreg_l25a_1p2>;

I do not see this is supported by qmp-phy driver.  Maybe we should drop
it from bindings and clean up from DTS as well?

Shawn

> -	vddp-ref-clk-max-microamp = <100>;
> -	vddp-ref-clk-always-on;
>  };
>  
>  &venus {
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
