Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B8FE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 00:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq8gkAdZOLsnIOM7vj1Vuy76nck3DBWbaFDuwR5+LkA=; b=JGBvz+Rq0wNxFS
	uiUwloqqwI499xD56ziSxoli6a5z83MaNW3FQAfbNkYTdvoGwRrmx//YHQ7sDiHDee6lSsT/dbJuv
	GuW3asleqI9bn9HHNwnvoNoeJK2eC6n8ttHZ3z1yVjV7IGzViqkOAGvvk5QEpNVKfCmxlC+X8Hl//
	1N83zlywX8NsDNULJDiZAMVWczfQ7Ofp2+Hchegc3Fr2FHGuP9mST69w7YY69z70go9Ppf/M93lf3
	vC6Udws4D9iu/631XZp//4C3Bv/BamVuq0cJLJM0cTIVO5h/eUzAH4CfGHzs4qd/P5/hmeYsOjgUS
	lv/kWD/xdpfRhOO5NUTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQlf-00000003SLr-3ge7;
	Fri, 20 Dec 2024 00:21:23 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQke-00000003S5F-12Sf
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 00:20:21 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso1346337e87.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 16:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734654018; x=1735258818; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aGfaJoG1T2GqAeho5K1MGIVQ1DuQHl43bpzlBdelgis=;
        b=Ey+YsyHIiMGhzhsnEp7jbJeeEW+3qkhxt6z6nth8BdpQNGCFkKUJUytNX58Z0vhMAW
         Sv9NsBPidrICY4qi1umwRCHbNuub+SIl9dYPooUJLwx6LHRjLI1m0XpIUhkatvEgVYHi
         6kDN0tlU7RzRiPU2i2GA0Adh37HPa12ZfuFCaOONpr4brntSyLQYhzwcfQZCB3pczMjx
         AKf8ucd/gm3tjrpM8VX5oWtOn1bQAvoWWSWTlF5mnQB32OmWUW0r55LQCexkdGzwloBh
         wtNzWX9KLNxj1nbcNoy+vA/l70jool/L/4cSY7+fG569PGyuJwqRViCpr9o+MM2YJiJr
         6GNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734654018; x=1735258818;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGfaJoG1T2GqAeho5K1MGIVQ1DuQHl43bpzlBdelgis=;
        b=NwIHkirpeElVpaaA802COxAoY5WhfIBy+ZHL90ddiQjeBUi8KFXkf0BNHKDfg0CVw3
         3ulUxkPYlCuozN2kklrqYGBrUs556nX/4o0daTrYUOmbjLICBilzEzPUE8NW2bJKXK4G
         ye5qju6zu4PySMw+sdnY5ADDvgBIRMYTNEQMji0bfE7WE92vxUcsh8YkhUdTvLrZbVBJ
         HcuCwY+QAWXebc49ntEDaYWWnDAP3w1i6WuHLDlqgjt4tfH6eRwQ7e4bs8E2zKISnaeT
         sKjt6W5++AIbOay/so+daNLMUMUwMpJfXiNDcKPFNLw+5m+Mual6L0H3lr0MBaQSAX5d
         gUhA==
X-Forwarded-Encrypted: i=1; AJvYcCX/3CVGO4nyfhDwBmdX4m+MAtHt2t+ISiiZf58BOpJBF5SlvX4K0ZJh/BiO92qjWt4f8Uad4KndR4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5v0vgGLQ/VdAWieG1Knrk83PXADc7MpBvm4cdFRny2k+f2qsF
	GnKhuGkGIoHWCJv/c7dUdRzNfhzb5uLbAiMoFBU072PBr5b+/tbM8ScLSf4v5RaD8w+7ZbUckmg
	o
X-Gm-Gg: ASbGnctFEGn4K4DLJbwxXycx1DJdD2PK4a4DtMCeFQzZp2YdkraPvx0NvdJmmmIX+eF
	5iHg5ntOevILh+Bip2+ycTQ8yyhzD4mEZssKHYb24mIt6UT9kh51yMmXYkATJ2EBHWe4NDBawtp
	3u4zj25hu3CIncyozyyYfQWxuDvNk51Ex1hNneLj1XriydzRZLcTj1RDTcPUz0LiuSAfYkKbMEM
	roX+oapz+DDxuF/L8pDSocy+nuqTsDv/DezoHv/Nfy9k4dydMWjAgrGLuPGFh7m78JsAy3TAfHi
	hCysWet+HvmmvpWw9xdXa+XFy/BJ4puyl6CK
X-Google-Smtp-Source: AGHT+IFre8iAJ8qmAC/GMNvKWBPlrLOwqvhJV/vx+wZq/0GVkU2u75qwt0RAs2Qd9uPRT+dmO47+yQ==
X-Received: by 2002:a05:6512:114a:b0:540:1d0a:5812 with SMTP id 2adb3069b0e04-54229533ad6mr159865e87.23.1734654018559;
        Thu, 19 Dec 2024 16:20:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238136a8sm317995e87.163.2024.12.19.16.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:20:18 -0800 (PST)
Date: Fri, 20 Dec 2024 02:20:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 14/15] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
Message-ID: <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-15-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-15-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_162020_303834_3B908B87 
X-CRM114-Status: GOOD (  18.23  )
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

On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> - Add edp-panel node
> - Set pinctrl of pwm12 for backlight
> - Enable edp0/hdptxphy0/vp2
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Remove brightness-levels and default-brightness-level properties in
>   backlight node.
> - Add the detail DT changes to commit message.
> 
> Changes in v3:
> - Use aux-bus instead of platform bus for edp-panel.
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..9547ab18e596 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
>  
> @@ -238,6 +239,41 @@ &combphy2_psu {
>  	status = "okay";
>  };
>  
> +&edp0 {
> +	force-hpd;
> +	status = "okay";
> +
> +	aux-bus {
> +		panel {
> +			compatible = "lg,lp079qx1-sp0v";

Why do you need the particular compat string here? Can you use the
generic "edp-panel" instead? What if the user swaps the panel?

> +			backlight = <&backlight>;
> +			power-supply = <&vcc3v3_lcd_edp>;
> +
> +			port {
> +				panel_in_edp: endpoint {
> +					remote-endpoint = <&edp_out_panel>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&edp0_in {
> +	edp0_in_vp2: endpoint {
> +		remote-endpoint = <&vp2_out_edp0>;
> +	};
> +};
> +
> +&edp0_out {
> +	edp_out_panel: endpoint {
> +		remote-endpoint = <&panel_in_edp>;
> +	};
> +};
> +
> +&hdptxphy0 {
> +	status = "okay";
> +};
> +
>  &i2c3 {
>  	status = "okay";
>  
> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
>  };
>  
>  &pwm12 {
> +	pinctrl-0 = <&pwm12m1_pins>;
>  	status = "okay";
>  };
>  
> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>  		};
>  	};
>  };
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vop {
> +	status = "okay";
> +};
> +
> +&vp2 {
> +	vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
> +		reg = <ROCKCHIP_VOP2_EP_EDP0>;
> +		remote-endpoint = <&edp0_in_vp2>;
> +	};
> +};
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
