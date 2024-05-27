Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADC26C25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 09:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCcjWwftJaC4cEzIBAPBgmdUjZu3H5wFA4IHqZWEgBY=; b=hmz70VwZhejTF7
	KPlGa1CVxd272VcPH8sZDQ290PHO+XQBF4uG32Zg7STHFWP2L2y1UslzpnYrOPWUNO1iGtYeRNMWE
	P/HkDyJliQEqNkCWyy+p1rZSUw05VH6cr/03lATK9so0mxCxIhaAn5lmD64TqWvvZK5BKoomobm2j
	epyev4yA34yWLpHvRt9Cc0Io8rb0rpe5IGuihULTvCLtTXcktY6uTYzJhaHsDTQ3nzVlbGzngk1DI
	3OP0NgvzQQX4HfPvrGRY0wwFVCV5hdhkYhhkJL/YTAxBQg/puC5pYAVyFopThaJRaimSXQTO7UeYi
	Bu73mjH31N6emgVfXlBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWGY-0000000ELQ7-1lnz;
	Mon, 27 May 2024 09:03:38 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWGV-0000000ELPc-3WI6
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 09:03:37 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5241b49c0daso9044931e87.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 02:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800614; x=1717405414; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pDbfSg8Bk1OlV44IsJpk4n7yxHQg+kBBcGX0Pm6RSHY=;
        b=Lrxldp7ErtBjof7+IDMNM4Hk4IH2gT5EiuHSs0UcUDq16GM/nE+g+OjfFftSSCZVm+
         GTMjLG5x1BpI4jtAOPb0fc0nb20IsaWZiA7gy3ArbiPHSaWy90G6SIV/Z7/93o0d60en
         YOmPko9RbIXlQhn5PLCdDt3hxRr3eq5qkEQBEhT/m0DgiKMaNNel5M1v19qFWcw5+W6B
         I7pOxA6H888orKz58k4Ld3EewwcHS0ivc0/TLlzVRwn01pOk/dgy3KU7vrk/6gBcx0M9
         hSPmyKMd1urP0FayU2X4/l54Pg/751fYWN1fjizE49xXtSIRqUUzHRHVIkf/mgT2moTX
         /mpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800614; x=1717405414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pDbfSg8Bk1OlV44IsJpk4n7yxHQg+kBBcGX0Pm6RSHY=;
        b=vHjimLclBRURaIVNpI7ZQukMnc03uLF9vtMc1pVbdeRvfG35S9tmhIjaSrIqALfcV3
         DB2d31JyRaBcc1BF5KdjLHLrD7Ns49O5NgMqJTIqo+OKxgHrk0aU/QrO45cgQlHkE1dp
         PikdWDheEcz/N0B9Y5IiszEFnor0337U/VsRe4/xbxj9Bl0ye2RWNeh57KZ34r1x1ZDr
         CQP7X2PnOkgEnKBs2Nq2lK+EdhNpWMtwJlE8WcaWz4k3tCOayvTeEwe0fDJMrEYMuWA8
         /YPk2RY/KeXmS5Qs63lNyk4LE6zG70QFO0LyZqzBnbdj43ublnr+kHlvxnwZfmBFNFmR
         qhEg==
X-Forwarded-Encrypted: i=1; AJvYcCUO7EHJxtqlSpBJjfv2U3MPRcD5kbWWzJaEAsuRBbHXdKOVMFjUm7DAldSpVymBhnUt54w6+c/z/So/tqkwwhUa4u/IS/XQBHAdC3dnBQ==
X-Gm-Message-State: AOJu0Ywv1xoN15K/uV6sZphE0SLT/2sJCZyCKP+NsTHvaQNc3zRKZgK6
	meB8t41T6bEcN2Fzs24isE4gTi7+a1v2AfoGCbqyqih5Yit2Ag4XDYUn2nta93Q=
X-Google-Smtp-Source: AGHT+IEmCeUDXcsw6FPQgssqSnh256ZdtCG0rOxDKXtIzEh9uHIxpd7toGyYzGtLMhIFgkbWc1Awmw==
X-Received: by 2002:a05:6512:1d0:b0:527:a952:44c with SMTP id 2adb3069b0e04-52966ca6455mr4519498e87.55.1716800613864;
        Mon, 27 May 2024 02:03:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296ee4a9cfsm490355e87.75.2024.05.27.02.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:03:33 -0700 (PDT)
Date: Mon, 27 May 2024 12:03:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/7] arm64: dts: qcom-sm8550: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
Message-ID: <jwgt2aa662ig7max5k7f24uu4zpv4urvg5aplgl2pwo2ty4zp3@a644uqdn2avh>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-5-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-5-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_020335_915037_A057011B 
X-CRM114-Status: GOOD (  16.47  )
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

On Mon, May 27, 2024 at 10:42:37AM +0200, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHY to the Controller
> and allow mode-switch events to the QMP Combo PHY.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 3 ++-
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index ccff744dcd14..a95949c01f25 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -941,7 +941,7 @@ &mdss_dp0 {
>  
>  &mdss_dp0_out {
>  	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
> -	data-lanes = <0 1>;
> +	data-lanes = <0 1 2 3>;
>  };
>  
>  &pcie0 {
> @@ -1280,6 +1280,7 @@ &usb_dp_qmpphy {
>  	vdda-phy-supply = <&vreg_l3e_1p2>;
>  	vdda-pll-supply = <&vreg_l3f_0p88>;
>  
> +	mode-switch;
>  	orientation-switch;

Please rebase on top of https://lore.kernel.org/linux-arm-msm/20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org/

After that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>  
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> index 39ba3e9969b7..fbac5270b4d7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> @@ -795,7 +795,7 @@ &mdss_dp0 {
>  };
>  
>  &mdss_dp0_out {
> -	data-lanes = <0 1>;
> +	data-lanes = <0 1 2 3>;
>  	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
>  };
>  
> @@ -1142,6 +1142,7 @@ &usb_dp_qmpphy {
>  	vdda-phy-supply = <&vreg_l3e_1p2>;
>  	vdda-pll-supply = <&vreg_l3f_0p88>;
>  
> +	mode-switch;
>  	orientation-switch;
>  
>  	status = "okay";
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
