Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6335AC77B60
	for <linux-phy@archiver.kernel.org>; Wed, 26 Apr 2023 14:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieZ7yAzglneoAEFzbVjhyW55/JzLXDoDFZMYO9esfK8=; b=pn3u0Cvj5/8unG
	PftBRb+y6oOWVYyuBFeKr3S73jfIQL7J9vmrbl4rnFIeKXapMeoGUj0bm4L34bMnrlZFqgUmzZyxJ
	r/fXEePTefyCavSEslPbw0DyafX56Wpd3cKoTw55Q8gEPngZ3PPfiOBw7osknwTLA5u34yB4GBQDX
	JDJYrIZm47irunTeWxYDMr1m8/UlaH8b/ceA2umgUY107ia6So8whlRdx2zLXix0oRgi/PM1r1Ed6
	JBfo9LAmnf/qm4arz4GYdTKHqe4dUf9tkwGfkuX9O+HrM+YGlesd08PeE9iFg9ltx8K73ABVpiatH
	oPF0N1oZffnvxOU1rC7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prg5w-004CNG-00;
	Wed, 26 Apr 2023 14:26:08 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prg5t-004CLa-2c
	for linux-phy@lists.infradead.org;
	Wed, 26 Apr 2023 14:26:07 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-2f8405b3dc1so4471539f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 26 Apr 2023 07:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682519161; x=1685111161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OfmaskdBjQn3V5pOU3nprV90+II0lcnGqRpRtitTHfw=;
        b=ejTmsmGfYQfwJCYh6kZezZgGeKRbb0HzEjKYT/IboF11o/HdoNgxLOpZAZsrm2vC8i
         ia7HvN71f04tSXEL5MQS74Sj/NqB3UZVN+My+uY8NpNR/2NNeFyWPchfQsGGPM0q0buZ
         PVkLzJMvIyL1wg7fKdzDsyuBvSiH+/DkkcLbpEIlAjDxQ8roicZVcMkrcN6FQjge62Zo
         OFkCa2wn8c+SIBktB+C5PVCj2dzNBZBKNQEqz0YBr319hwWwHXOHCLctdzsx4camiqS/
         dZwfnuPLy2GpXpLBsQdyMyOx0dN9Y4lpDqmg/RZG+jjCVPVOaKeRztbWkF/Gai8OskA9
         vKdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682519161; x=1685111161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OfmaskdBjQn3V5pOU3nprV90+II0lcnGqRpRtitTHfw=;
        b=EHZ03OLjR0Ydc7XYRczshC1iO0Or5kDd/sifrzkE5zhFEQHwwsT9E+BYJ1Uuc7lKLG
         FzvMvAMADaG+HKV+rBi97est2hh1NmyuPQw3hpzGSyv81POeccE8L/D9YDkWR63ug50Z
         DVzJb2nOuJfILGnnP+Jshokj6SA1zHM7YPPqt0ZD5L5G+WAYnX1F7LUP/be2ukFaFOh7
         bEZNLAu0GnF8w3f47nMrGDqL5fTYCJnTIkH0B97wdVfPhKYed2MOhI8KZPC06xlU7MqS
         /NZv/fD/nGm/8DyipPA+TrLvyWtctJcRYnbdFA4xOj+6AkdX/xty37N7M7aqNIYumN3n
         e1mQ==
X-Gm-Message-State: AAQBX9c61QlBoOLBf1Y8CPXBBZImg9f1+a6MTX9MjQ+3XGBjFvukhMHJ
	Nn7dgeKbm47r2a3YD4k7jRn7tw==
X-Google-Smtp-Source: AKy350azFtxzLU/AHkuy/1AtdTBiM0pSm/amOMmVdp7ABZ+fS+j9uw2EfwnjcnvcZ0si6esLY5S6Ww==
X-Received: by 2002:a5d:6708:0:b0:2f5:8116:6458 with SMTP id o8-20020a5d6708000000b002f581166458mr14728187wru.66.1682519160710;
        Wed, 26 Apr 2023 07:26:00 -0700 (PDT)
Received: from linaro.org ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id m4-20020adffa04000000b002fe96f0b3acsm15944215wrr.63.2023.04.26.07.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:25:59 -0700 (PDT)
Date: Wed, 26 Apr 2023 17:25:58 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] phy: qcom-qmp-combo: Support orientation switching
Message-ID: <ZEk0dnfoV9IlHlyt@linaro.org>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_072605_850734_6C629A36 
X-CRM114-Status: GOOD (  10.20  )
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

On 23-04-24 20:40:03, Bjorn Andersson wrote:
> This adds support for USB and DisplayPort orientation switching to the
> QMP combo PHY, as well as updating the sc8280xp devices to include the
> QMP in the SuperSpeed graph.
> 

Tested this entire patchset on my X13s. Therefore:

Tested-by: Abel Vesa <abel.vesa@linaro.org>

> Bjorn Andersson (7):
>   dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and
>     orientation-switch
>   phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
>   phy: qcom-qmp-combo: Introduce orientation variable
>   phy: qcom-qmp-combo: Introduce orientation switching
>   phy: qcom-qmp-combo: Introduce drm_bridge
>   arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
>   arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
> 
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  51 ++++
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     |  28 ++-
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |  28 ++-
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  34 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 227 ++++++++++++++----
>  5 files changed, 309 insertions(+), 59 deletions(-)
> 
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
