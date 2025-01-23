Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FADCC02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 11:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XlQe2GI0VjyFYTsMgRaiwwHGkeH9bI89fG3E3HeE6c=; b=1Ou/v2lwg8V8Dx
	hjVWR+rR+KBdx9opKHYNsz4NPr1iWCyrNhGYKZUaopGbsLyEKGFzCBoTb9S1bz9+idzpM3x8jZi6Q
	5S2NQ/EkDeXkK9EKiPu0qHOOqrQ+xmigxYnXekfyFhwP++drkT55RBtgVZP/C6hYBQMmtjWFA1nba
	hsqVVEaQF8x27hwB0AyWgJD4rQStLo9El+BACevhnBWpRY88YIZCnkp/L7YnKaq9TYOw87me9ZTgn
	yrAWafHDc8IuG9TaokUBGXWCVcMYeUnUV2LXiGVhY2rPc9dsB4d/12tQWP1kYh3xo3P/kNz9pRaDL
	TkP2PuSg37XPMPAmxJyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tavTX-0000000CLT2-3LQa;
	Thu, 23 Jan 2025 11:34:19 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tavS3-0000000CL8W-3uA6
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 11:32:50 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-30613037309so7672021fa.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Jan 2025 03:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631966; x=1738236766; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+zMurHlZ7uGtqY8vr+C9le803uP9XgfHXwzvJheucbI=;
        b=vkHMKnig0ibUj3L79+7mpjx9UyVOLx4HvCtT43+3agczXq90VSPcivD8bbx/LRT0i3
         mPra7G5COno6CehNYh0s0vkE8ulJGp9uOwBogqNKDg9ONuURxAtRleBBwhi1IAnd5QGi
         YK2FRKZoLjBdR7DCrHSqqDb6QGs3+2TV+7RddvqX0UdCRT5ndMgpZ7/Cs5wHP5bdSYYI
         iw4IubwF/v4B26yzcxkEi+KZ5y9lPatoOn/olaP3wT5EobtO6aT2yQIN0SMf2BmpghLp
         EUEcPabKTu9RYocu0d3a8M18gSbx+eClJtmHZe2mKH7UzVJRVZFdmqeSfstwipGyGV/o
         mw/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631966; x=1738236766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zMurHlZ7uGtqY8vr+C9le803uP9XgfHXwzvJheucbI=;
        b=qE5uxYG4XBxpS1xSBVu8mww6wepJsbHfayvLm5Rg9mY/m+PQHSwGHa/R3x2TtryECt
         39L3tK9Qn4nyRZ+b+r1J60Q8/8pzHNH36EPdqZLg/CQseugDyGHHSChyBCtm6OeeydO2
         ELsYvFz+lH7buTvceSjIZOPeilkZ55TJHadHCSHy8fFGqKR5saCQnEJ5KM1k8hc6zJ6n
         6vRxO5vl5OPcdfMLcySB5bzjYPWvnPCAjhupzCsHoWJaO6n3bgPBQmesN8cJ+GeheW9w
         ts+4HgRibVtie7ByW4zuNP/voyNM8ulE9Vpu77QOGv3uB6WM4yp5oi+f/xCjgZuXVqJj
         4NzA==
X-Forwarded-Encrypted: i=1; AJvYcCVRnJKSJs76ejW+Wm2NZN0Fp1swX0tdhtKiQS2j79PYmykO4Dr94D8gl+77eyKe7HfiFntrohoSwdo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRaN0X/VuOLRig1kvnXj085KzVnZaDL1UE4HqPFiS2gnCVKPK/
	6b9a1zR+b2i0YRwzLDPsb8UPk8rIOvPZDGzZtF4UyIpJGdVnMxaBJfe5k80GPEo=
X-Gm-Gg: ASbGncsZhZulzr+m3qbYmjmTuwPvuYnMu+2W/i9Lr9zw53d7QLh5Wzq/ZJwLaDjxga1
	3MyjJ8Nng1mcMJcwIBwuflS2QqwuIQO08QE8z/HPaUbu1W+5RRXRDJEIXZWhWnPb9a9RVy30xwD
	8LGL1qmb27J4J+z/jrRp7DB7ibHpYaBvrCLvIrqJRjyG86ugMtKiw1KMcqtueumS9AXe3lj0NJC
	0ab4IK0KrbBhnTLA82jOE6Wb+3DK7Qi3uvMYQSw5+nJ/xDRqAjkboiloVcrxFwJloKSZQm1QqSk
	x9JbH/MPmFBs5dP7lWWolETqT69K+WAaxKXaK5GhMK8XEMh4uhgatW7Kr6+4
X-Google-Smtp-Source: AGHT+IGv3eRW1iX8AGSWOKHG3VFmFTMTVFcrPCnNhNO4BTbpmlhnROuDMhCvalg4dPHCeDzpS5d6Ng==
X-Received: by 2002:a2e:b90d:0:b0:304:4cec:29f9 with SMTP id 38308e7fff4ca-3072ca60ef9mr67919831fa.3.1737631966038;
        Thu, 23 Jan 2025 03:32:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a330764sm30489481fa.3.2025.01.23.03.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:32:44 -0800 (PST)
Date: Thu, 23 Jan 2025 13:32:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 14/14] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
Message-ID: <u3qiasthay5xrtu4bfu5ihag7x2wajrpbktrcs7bxutvc2iwrk@on5ymtwq5vwx>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-15-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-15-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_033247_970835_A723E6B7 
X-CRM114-Status: GOOD (  22.39  )
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

On Thu, Jan 23, 2025 at 06:07:47PM +0800, Damon Ding wrote:
> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> - Set pinctrl of pwm12 for backlight
> - Enable edp0/hdptxphy0/vp2
> - Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
> - Add aux-bus/panel nodes
> 
> For RK3588, the PLL_V0PLL is specifically designed for the VOP2. This
> means the clock rate of PLL_V0PLL can be adjusted according to the dclk
> rate of relevant VP. It is typically assigned as the dclk source of a
> specific VP when the clock of relevant display mode is unusual, such as
> the eDP panel 'lg,lp079qx1-sp0v' paired with RK3588S EVB1, which has a
> clock rate of 202.02MHz.
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
> 
> Changes in v4:
> - Add comments related to the use of panel compatible "lg,lp079qx1-sp0v"
>   in the commit message.
> 
> Changes in v5:
> - Use "edp-panel" instead of "lg,lp079qx1-sp0v"
> - Remove unnecessary comments in commit message
> - Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
> 
> Changes in v6:
> - Add PLL_V0PLL related descriptions in commit message
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..a8c151b41e21 100644
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

Why? Please mention the reason in the commit message.

> +	status = "okay";
> +
> +	aux-bus {
> +		panel {
> +			compatible = "edp-panel";
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
> @@ -1168,3 +1205,20 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>  		};
>  	};
>  };
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vop {
> +	assigned-clocks = <&cru DCLK_VOP2_SRC>;
> +	assigned-clock-parents = <&cru PLL_V0PLL>;
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
