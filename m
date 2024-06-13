Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85DDBC27C75
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jun 2024 23:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaWsPMaH7V+x5jJSK8rD9M47A4So0M70pwTVJQQv2ko=; b=Y2eo+246Ehgjuv
	GslTslXFsWPT96FOY/7pkW41SaPQzq/B2KwzUkuXWQQxI42v43NBL77YhrtrAFan5rTF25XHHXmw1
	zMGgahIKHtzeFJuIUbjxeutrfd7sFanrJxDkCHfNVemB5PeplbG+JPD6nCW0sret81IzJ59zY83ta
	AZIUxuKJaEJc9P5d0xOuNghhjMk3iLm9bywLupLrNAyjUiYZVKCW3sut/htLesVizSNGat/wgkknG
	b/ZbOwOIlDessRVQzOF5UrdIcP2exaw8CDayJSq3bpBWdJYp++XbUx5Rk36JXPQLnispxuWYh4skr
	KacYTOrjB7q659n+ZB/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuIN-00000000q6W-01n5;
	Thu, 13 Jun 2024 23:55:55 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuIK-00000000q4M-1SBA
	for linux-phy@lists.infradead.org;
	Thu, 13 Jun 2024 23:55:53 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-52bbdb15dd5so1963070e87.3
        for <linux-phy@lists.infradead.org>; Thu, 13 Jun 2024 16:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718322950; x=1718927750; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l4hbm8OoTLo4l2aiuFtHBEILqr9ou2NQIRsDH6v++2M=;
        b=f/DFEqhVrs9zrnuxNU4Ux5nenme5krOBeeIpu97PzHlA+WsTk3SLkl7QPWVDDmH/RV
         gx43tmoo94CQgUbzyH4EJPtDpPIiaAtl44I6TvKat/DLbevOkhKfKyEALDCZYAIm70qM
         HSv3SKzVbiM9I2lhOpLrIj4//qSPIgBj0DFc5lZpDG1x40hlmJ7htPsAXYajAuJAWUXQ
         MsZ6e+uy5QcZHYoj5dCx5lYnsW6bxBmkmG9q3413GoxyHXrtG1PxDUQ9f9+ILrtXpLWn
         zoGQZukkZiLjeDl7XC6TEhnh4REJx5M6eJeAojUojtL1SH26mywgYo+cp+dEJFsbvP9h
         M1gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718322950; x=1718927750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l4hbm8OoTLo4l2aiuFtHBEILqr9ou2NQIRsDH6v++2M=;
        b=iU8eVNmVXCmM5a4fUYnOigZNhQ9OGPCxZVBLJyfIaAWB0s+NUXk9Ek816QNxxhmI6C
         F2StP3WvrRhTGylVN7h6uYNz7rThSN7g9+ysxrvc6e4ljllqnUUNLUDN3IfwnSvgXN1M
         B3bLB9nhqzRr5DOtASN+IOj+MAlIpNv/ywEn2/WJG8ibzMByQV12jqCwawc2+OZP8N0w
         LcRIi13H6Yfr6ZyPU7/NWlQd/VEmAZJp3Nrd1wSlivX+DpnqrSh41K0mpQ+zzOCXVruY
         npVJp98ksPSuSpLxIi+DW0YXbR+uQeb3oTe4ZSJA5liFksE28cQ0I0Ikr0mjsh/nv2Kk
         krNg==
X-Forwarded-Encrypted: i=1; AJvYcCU6KBJAcAzFneAqT+4FMPIyWVgKhF+uSp0V5/sLdIZsr0w18m8NZfDtpYHZ2h4dnR3M3N0qJwq1l/ugkhV2BBel5w25ppQyFciMvakGIg==
X-Gm-Message-State: AOJu0Yw0I0yCYsG8YfWcIUkIgsfTHhbNSVDGLvHy+dvEd8p6I4hYnqIB
	BgHHAjteCpHtmdLgSdCXuaCmwi5NnCJLBZoI/zuoFVEtLdat7q8iH8Je2E6uPxThxFt0K/AmY7o
	KWmw=
X-Google-Smtp-Source: AGHT+IHCIqESmXtjRH3QmZKEoSYUbL+jyllLs3Umw8Kq2gKsHG0tbHwmo7UfWfTrve9WZBJNRWwgxQ==
X-Received: by 2002:ac2:555e:0:b0:52c:9a1f:52e7 with SMTP id 2adb3069b0e04-52ca6e988a6mr682371e87.58.1718322950103;
        Thu, 13 Jun 2024 16:55:50 -0700 (PDT)
Received: from ?IPV6:2a00:f41:900a:a4b1:fbed:73e4:f21c:5826? ([2a00:f41:900a:a4b1:fbed:73e4:f21c:5826])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca287aae2sm364886e87.219.2024.06.13.16.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 16:55:49 -0700 (PDT)
Message-ID: <348e16f1-0a1b-4cad-a3f0-3f7979a99a02@linaro.org>
Date: Fri, 14 Jun 2024 01:55:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Marc Gonzalez <mgonzalez@freebox.fr>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240613-hdmi-tx-v4-0-4af17e468699@freebox.fr>
 <20240613-hdmi-tx-v4-4-4af17e468699@freebox.fr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240613-hdmi-tx-v4-4-4af17e468699@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_165552_438299_FE4C2275 
X-CRM114-Status: GOOD (  15.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 6/13/24 17:15, Marc Gonzalez wrote:
> From: Arnaud Vrac <avrac@freebox.fr>
> 
> Port device nodes from vendor code.
> 
> Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---

[...]

> +
> +			hdmi: hdmi-tx@c9a0000 {
> +				compatible = "qcom,hdmi-tx-8998";
> +				reg =	<0x0c9a0000 0x50c>,
> +					<0x00780000 0x6220>,
> +					<0x0c9e0000 0x2c>;
> +				reg-names = "core_physical",
> +					    "qfprom_physical",
> +					    "hdcp_physical";

The way qfprom is accessed (bypassing nvmem APIs) will need to be reworked..
but since we already have it like that on 8996, I'm fine with batch-reworking
these some time in the future..

> +
> +				interrupt-parent = <&mdss>;
> +				interrupts = <8>;
> +
> +				clocks = <&mmcc MDSS_MDP_CLK>,

Not sure if the MDP core clock is necessary here. Pretty sure it only
powers the display-controller@.. peripheral

> +					 <&mmcc MDSS_AHB_CLK>,
> +					 <&mmcc MDSS_HDMI_CLK>,
> +					 <&mmcc MDSS_HDMI_DP_AHB_CLK>,
> +					 <&mmcc MDSS_EXTPCLK_CLK>,
> +					 <&mmcc MDSS_AXI_CLK>,
> +					 <&mmcc MNOC_AHB_CLK>,

This one is an interconnect clock, drop it

> +					 <&mmcc MISC_AHB_CLK>;

And please confirm whether this one is necessary

> +				clock-names =
> +					"mdp_core",
> +					"iface",
> +					"core",
> +					"alt_iface",
> +					"extp",
> +					"bus",
> +					"mnoc",
> +					"iface_mmss";
> +
> +				phys = <&hdmi_phy>;
> +				#sound-dai-cells = <1>;
> +
> +				pinctrl-names = "default", "sleep";
> +				pinctrl-0 = <&hdmi_hpd_default
> +					     &hdmi_ddc_default
> +					     &hdmi_cec_default>;
> +				pinctrl-1 = <&hdmi_hpd_sleep
> +					     &hdmi_ddc_default
> +					     &hdmi_cec_default>;

property
property-names

please

and use <&foo>, <&bar>; for phandle arrays instead of <&foo bar>
(this is a really old dt and we still haven't got around to cleaning
up old junk for style issues..)

> +
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						hdmi_in: endpoint {
> +							remote-endpoint = <&dpu_intf3_out>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						hdmi_out: endpoint {
> +						};
> +					};
> +				};
> +			};
> +
> +			hdmi_phy: hdmi-phy@c9a0600 {
> +				compatible = "qcom,hdmi-phy-8998";
> +				reg = <0x0c9a0600 0x18b>,
> +				      <0x0c9a0a00 0x38>,
> +				      <0x0c9a0c00 0x38>,
> +				      <0x0c9a0e00 0x38>,
> +				      <0x0c9a1000 0x38>,
> +				      <0x0c9a1200 0x0e8>;
> +				reg-names = "hdmi_pll",
> +					    "hdmi_tx_l0",
> +					    "hdmi_tx_l1",
> +					    "hdmi_tx_l2",
> +					    "hdmi_tx_l3",
> +					    "hdmi_phy";
> +
> +				#clock-cells = <0>;
> +				#phy-cells = <0>;
> +
> +				clocks = <&mmcc MDSS_AHB_CLK>,
> +					 <&gcc GCC_HDMI_CLKREF_CLK>,
> +					 <&rpmcc RPM_SMD_XO_CLK_SRC>;
> +				clock-names = "iface",
> +					      "ref",
> +					      "xo";

GCC_HDMI_CLKREF_CLK is a child of xo, so you can drop the latter.
It would also be worth confirming whether it's really powering the
PHY and not the TX.. You can test that by trying to only power on the
phy (e.g. call the phy_power_on or whatever APIs) with and without the
clock

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
