Return-Path: <SRS0=98aa=PA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28547C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 11:27:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D257B60D42
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 11:27:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D257B60D42
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Erc30CCw1GVLvnQMrGfrSRMonSgz6I9MGkOPlSs9JsQ=; b=FfhOCFGq9iC+dt
	ih+J5Bs7GlBOiDeVe8RCztYYu+lFZ9Dv/r/4ioQPUoWMlG86PAMUozBW/rTlVSuxLN7uWXxKEyYGB
	+QEGvDmLng++CGsUKdN1pQLJbjcYAk9YcPHudaP/qyYyBCwNT6/ciuWcrFrrJnuG9ERggsjE15Fiq
	8tb8xwfOrPeOTfb6K3n6s9g40q7IUErlEjOdiUqwWvsM/US3YLxCG0tlNCQjpO6k+zM+QIQ+/5Spi
	LgronHxn5VInUNrSNcyZFfsmUuh0JdcxIeH7kPfctMUlTlHfUNWIGJ99+iv5n9xLZ+5n0D0NQKrs0
	s+WVD4FmTWo9Xyc5NhDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maFwO-00CbMH-4H; Tue, 12 Oct 2021 11:27:28 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maFtX-00CaKD-TX; Tue, 12 Oct 2021 11:24:33 +0000
Received: by mail-lf1-x12c.google.com with SMTP id r19so83714956lfe.10;
 Tue, 12 Oct 2021 04:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XVOm5FGSYg3Wq94ChxX1Do2Ep5eV8n1vjTJF2QVl0/0=;
 b=BWZ+p8qDQDxGbNrPcN16gX5ktfYM5CuLC9Yl7J9QByxYXfR9WKt69BG9hhcogYnIB4
 ds+KDyyHEAaeP4dnmIxfDKyYfB5I3DpcyH4hxOamp8KzS79SQuKO8hFnUzGZM4C4YqS1
 wLK8yANYm2DetRPmP22pYyNOi61V1SagzxWblNXKTPkSrnu+YdgP1e8s2sjeIv/c7uGy
 gcJ5ZEZpkcQnomPsmexcxqb4peUv12VVCf6Hfb77i/czvGtUzGe+TVKuOCS3AacNsYdc
 p2aBWMKkn3NkzQlXUI8LZGWGBK2OFQSSWo4VlSFjNq+LP1Q8I+C1VIZHujCb9hyZYx72
 G0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XVOm5FGSYg3Wq94ChxX1Do2Ep5eV8n1vjTJF2QVl0/0=;
 b=Q9iEVGp+/QaxWQ1pff+RuEc7IrkHqDht2vrAoeW4VumPtmMH9R3B9h2Q8lM3FYVtf/
 NiZtNNwDSVsYe4Mt/oACnqzwGw2/LcGNM7so2TfEgaGB6at+unS9Qtf9N6ryAVR6MAAj
 iDnodWSnoB9nt3BVeZt48m8oxr7mwpeUGYCwOY4celi2pf9NJwtZ0qNx01dd8TxuoArr
 zpcpUvzr76o7c6fXA5LamahbW71pDIT1SxmUaM+x+7GMtUaNaOfYDP2Q2JjFthv4WqSU
 GMJtEzqczksA1p3IkiozFyIhwYDmniO+URUxqp0+/TJqPQVnkpPGF4vJW8VIauADfVbM
 VRfA==
X-Gm-Message-State: AOAM530yxhtKGtHGh0v3yu0MU9cDlIKy2bpN9VOsf9tjn2/TMufQIGxS
 8bcIp4gOQi/Sv+QC5nzkRAE=
X-Google-Smtp-Source: ABdhPJzcjto+YCbFvFXmN/xZUnyBv5qEou5lZu159EZ2ncRvDB3X9yyFRAhPMnFi5b6nrSOvNQ9DYg==
X-Received: by 2002:a05:651c:1615:: with SMTP id
 f21mr28174162ljq.318.1634037870108; 
 Tue, 12 Oct 2021 04:24:30 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o6sm157218lfr.19.2021.10.12.04.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 04:24:29 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, vkoul@kernel.org, michael.riesch@wolfvision.net,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
 p.zabel@pengutronix.de
Subject: Re: [PATCH v1 3/3] arm64: dts: rockchip: add naneng combo phy nodes
 for rk3568
Date: Tue, 12 Oct 2021 13:24:27 +0200
Message-ID: <13667811.Il6DKqvvJ9@archbook>
In-Reply-To: <20210826123844.8464-4-yifeng.zhao@rock-chips.com>
References: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
 <20210826123844.8464-4-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_042432_039362_87F32D37 
X-CRM114-Status: GOOD (  13.92  )
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

On Thursday, 26. August 2021 14:38:44 CEST Yifeng Zhao wrote:
> Add the core dt-node for the rk3568's naneng combo phys.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 68 ++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d89831bee1eb..b421e3d52412
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -214,11 +214,31 @@
>  		};
>  	};
> 
> [...]
> 
> +	combphy0_us: phy@fe820000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe820000 0x0 0x100>;
> +		#phy-cells = <1>;
> +		clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
> +		reset-names = "combphy-apb", "combphy";
> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
> +		status = "disabled";
> +	};

RK3566 doesn't have this PHY I believe so it shouldn't be in the
rk356x.dtsi file. It needs to be moved to rk3568.dtsi.

The other two combphy nodes are shared between the two SoCs so
they can stay here.

> +
> +	combphy1_usq: phy@fe830000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe830000 0x0 0x100>;
> +		#phy-cells = <1>;
> +		clocks = <&pmucru CLK_PCIEPHY1_REF>, <&cru PCLK_PIPEPHY1>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_P_PIPEPHY1>, <&cru SRST_PIPEPHY1>;
> +		reset-names = "combphy-apb", "combphy";
> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
> +		status = "disabled";
> +	};
> +
> +	combphy2_psq: phy@fe840000 {
> +		compatible = "rockchip,rk3568-naneng-combphy";
> +		reg = <0x0 0xfe840000 0x0 0x100>;
> +		#phy-cells = <1>;
> +		clocks = <&pmucru CLK_PCIEPHY2_REF>, <&cru PCLK_PIPEPHY2>,
> +			 <&cru PCLK_PIPE>;
> +		clock-names = "ref", "apb", "pipe";
> +		assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
> +		assigned-clock-rates = <100000000>;
> +		resets = <&cru SRST_P_PIPEPHY2>, <&cru SRST_PIPEPHY2>;
> +		reset-names = "combphy-apb", "combphy";
> +		rockchip,pipe-grf = <&pipegrf>;
> +		rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
> +		status = "disabled";
> +	};
> +
>  	pinctrl: pinctrl {
>  		compatible = "rockchip,rk3568-pinctrl";
>  		rockchip,grf = <&grf>;


Regards,
Nicolas Frattaroli



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
