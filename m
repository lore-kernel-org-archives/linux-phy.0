Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0A90EE36A9
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQl97qi/+fVRY+2ezC2SgU97MZeGIsxYB+LcoghKtfE=; b=1lEr3SZJVH6o6V
	sJK3mYdV5A9AL2hjIuIXZi3Liwz58PvQT8QHNsPqXNVMZF9AfTvQeZ5KIiezlDXABIQxGlzygFi0S
	ug7/ObfBwoT4nG8EO1s701sDJm52aNk011qcYkw3fePWR5Nk8tjolrKz2pPacwtIlT3Y96hhH5F84
	xcwQ5d3tEZUfT4Nyu29vgbGWtaeTSm1ZTWZlIXIKpaF2o5nvsoOJ+aSINwUyzc2fcLZc/0EgrNyha
	x8UfJLWdRNZtDDy09y1H2FP6ynh+qsap8+de9uqIqmSZ7i/voVwNwDZveno9a62YW1v0YftKWe0nD
	CYP4q1CS5W+L69Cm5nig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZyw-00000002PGJ-28dm;
	Thu, 12 Feb 2026 16:55:58 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZyt-00000002PEo-45fp
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 16:55:57 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-483245a8547so41025e9.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 08:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770915354; x=1771520154; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EWH52hHDoZsOt/pe7QFROJLUmHx4Nch/byKXwRcnIQ8=;
        b=bqt9e6d8l0/6erekakBfnTsF1YwxJCcgo1vADajOPT5fpO9AAkdD6AkFveH4LTV79l
         x4O8+BrPP6RQ0072KU/lIGvYAgrjySDBtR4yNjgr7f2fD9vdQdoMpx0O1xDEf6mdcQC9
         dA4A1ATCqj2og64UpuV045UDHoXxou8lDPRGpeLyTmQFl8hY70YzIZWl+6mwXSmvSdVp
         km78M/kreNupTffUn7K2NVvEtB6tZHAo8vdsG5ikxTwthjyY2D4tP3/q171E5nEhYjoJ
         ksKW57M1sdb5hLE+H4w88ueMut0JtgV9HTdTF4YpKjJZWh46joHmvOyUSmaewg74jSa3
         tOmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770915354; x=1771520154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWH52hHDoZsOt/pe7QFROJLUmHx4Nch/byKXwRcnIQ8=;
        b=XP1coZCU5Qnl129/lRp56methQRelONeSyD3+etKN7nqS4dZc/qoBa0q8Cj3Ffl1YX
         SM9ma5rvwR90KHcPWPRGjxXFKZG0EnZQWjCNZ66MNFrmfTgmt2gWnzU71NH7BygFYL9O
         DbBu9oVEikdQM2CPZF5gPRopTZSf1T8YlRsOPBROT65klQbT43igDEnk9/2HK3GZMWeb
         MWL0h6PoLGJ3+6QpJgDhHcT7X1LY9d7o0L8/MMx74sN0IRGDhm/QCF8VrZdSklIngek6
         YWCofDkupqfuWVEGXtlivMJdwA6eQec/Z/05GKDNTdhXOGX8pg/d72o4t/mtqfiLyeT3
         divA==
X-Forwarded-Encrypted: i=1; AJvYcCX4/oK3OVKhUVE2UsuXaIyx2B/ERdj4GvUxbDmX/KVZN7+SSJLtiHB+I9tI9FvlvmRgTKEDqAWdgUE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDziyV7kbYdWVEXpP7b8LmRW0G2jmRm/2n1BtimNboHH33kvGY
	9RT9csGLvs48L2v63lRUIDOR06ThOny3HTksUyutnc+FLvU+2jLJIu6I
X-Gm-Gg: AZuq6aI6v/zEnH39JLu1e9TcKqeBtLd2yRnPtMDrEGVCb+l9fEHpPcsZLSyYuKJmbl1
	kwnvaMCnrKnGvtSdqZraO30qjTAoHZhsAKQVHITesdN/1RdmUyyVLZ7grML981lYhF4UmRpnO+t
	RgWowDSWHSoCHyijGlTiC44GyX4D9RFrtdGFo20r10QR7JGRhyMXxzC79v1sMaV3lXocdDGGuw5
	waahUddeMhGv3b2x9vOwFTTZuyIecSYkwDViMFe5ZrNhW8E3j8cb7u1QACfe2MkJ5XV4Rfel97g
	jlv6fhtzQOLJYJEE2OE1sKoW4sApqt/Dh/wrkAHyIM0vsaYMhDC3i5NO39FTADr+8+5vo56XK9z
	2vrrv4It1lHAHyAcnp4QPul/F8nkmL9Pe7JQSGu/vIXPBxm6FrkkfYEDCxuHwVh1yejpADfrH28
	knhtdkRDLJHfyBd/k=
X-Received: by 2002:a05:600c:a09:b0:477:9fa8:bc99 with SMTP id 5b1f17b1804b1-4836570e260mr29901335e9.4.1770915353815;
        Thu, 12 Feb 2026 08:55:53 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:2f75:bf70:f0b9:4586])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835dd20519sm222156105e9.15.2026.02.12.08.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 08:55:53 -0800 (PST)
Date: Thu, 12 Feb 2026 18:55:50 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add USB2.0 PHY for RK3368
Message-ID: <20260212165550.mju3377fvphdsqoe@skbuf>
References: <20250909132958.26423-1-cn.liweihao@gmail.com>
 <20250909132958.26423-3-cn.liweihao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250909132958.26423-3-cn.liweihao@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_085556_062262_538AB944 
X-CRM114-Status: GOOD (  16.64  )
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

On Tue, Sep 09, 2025 at 09:29:56PM +0800, WeiHao Li wrote:
> RK3368 has one USB2.0 PHY with two ports, This adds device tree node for
> it.
> 
> Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi | 29 ++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index 1b21787269..b09e431a64 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -766,11 +766,40 @@ cru: clock-controller@ff760000 {
>  	grf: syscon@ff770000 {
>  		compatible = "rockchip,rk3368-grf", "syscon", "simple-mfd";
>  		reg = <0x0 0xff770000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;

This introduces a device tree warning. You cannot mix nodes with no unit
address (io-domains) with nodes with a unit address (usb2-phy@700) on
the same hierarchical level. You have to pick a format and stick to it.

>  
>  		io_domains: io-domains {
>  			compatible = "rockchip,rk3368-io-voltage-domain";
>  			status = "disabled";
>  		};
> +
> +		u2phy: usb2-phy@700 {
> +			compatible = "rockchip,rk3368-usb2phy";
> +			reg = <0x700 0x2c>;
> +			clocks = <&cru SCLK_OTGPHY0>;
> +			clock-names = "phyclk";
> +			clock-output-names = "usb480m_phy";
> +			#clock-cells = <0>;
> +			status = "disabled";
> +
> +			u2phy_otg: otg-port {
> +				interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "otg-bvalid", "otg-id",
> +						  "linestate";
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +
> +			u2phy_host: host-port {
> +				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "linestate";
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +		};
>  	};
>  
>  	wdt: watchdog@ff800000 {
> -- 
> 2.47.2
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
