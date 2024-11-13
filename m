Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB7FD42BBF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 13:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7s5imZiQfMObnlM4GoF0kcH9fDqq8a/46RIb4OWrC4=; b=ZzIZ2mX7vrxLLf
	3Nqu1IrLVgpV5+4esv41jRr1bgJtIaI59UEyacVNz09bpaTZ/3QCcDNwAtonzhmm4CFEPFW3pwp33
	qva7ppTtJBOxDtD6mYUCv+pLgaOVix/OirwEtEnvQlRPc6402/38KHUIrtUpCJg5efX1aM85Wd7fV
	X+qaDIvmEMIMJFm/sGCcHXw/rNCguupUE1Or483ewCvRMCW4vpto85b3bujKqqRbyliWZjb0Wt/Us
	lXm/hvrr9o/ffXRIrgSMzAwltq88pRci/NqkSEEym7LWfVokAmxHJR69vpKSYfGh38iAuG1MqoEUw
	X9Lc0FwLPiCW15vM//gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDSw-00000006v9f-23dn;
	Wed, 13 Nov 2024 13:31:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCHL-00000006jJQ-3hM0
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 12:15:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F34ABA4024E;
	Wed, 13 Nov 2024 12:13:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4B95C4CED2;
	Wed, 13 Nov 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731500122;
	bh=9YWmqx9A/xktQm++PEdttt53SjkgS0Z1jMoa8DxBCeg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rMaNYGqZODAfOviPG9NNweaAZwNdMKPKm/r7m9y12m44Tec8i0OzAwTd7x4gjni4g
	 s3YtR7e+s/D0MmQTRdIcxCELtQQ9d7LAiGcLvzcfve621XsYGkhHSnKmkoIkhIVaRY
	 SEsGSmI5VP1jGC61MITWv986/Uv6h0dRiYyZrv82AxZCBIHGxI6EJFWXb19WqlSRcc
	 BgnyRacgEdUqccH8JyhSiLN86ypg5v0g3kBux/gAzRcn0Ps3kCdL/VYeYNVUtcWxUS
	 Fcv7kagYRz9cbT+bn+Sys0opSUgs0lM4zwRGR6JjCZCO827Gbv51UusFNeIi8Frrg8
	 bl0M6/d+FoZDQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1tBCHD-000000003zf-46qu;
	Wed, 13 Nov 2024 13:15:16 +0100
Date: Wed, 13 Nov 2024 13:15:15 +0100
From: Johan Hovold <johan@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org,
	andersson@kernel.org, konradybcio@kernel.org,
	dmitry.baryshkov@linaro.org, mantas@8devices.com,
	quic_rohiagar@quicinc.com, quic_kriskura@quicinc.com,
	manivannan.sadhasivam@linaro.org, abel.vesa@linaro.org,
	quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: Add USB controller and phy
 nodes for IPQ5424
Message-ID: <ZzSYU61pmFTcPf5_@hovoldconsulting.com>
References: <20241113072316.2829050-1-quic_varada@quicinc.com>
 <20241113072316.2829050-7-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241113072316.2829050-7-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_041524_009186_DBC8928E 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

On Wed, Nov 13, 2024 at 12:53:16PM +0530, Varadarajan Narayanan wrote:

> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -16,12 +16,71 @@ / {
>  	aliases {
>  		serial0 = &uart1;
>  	};
> +
> +	regulator_fixed_3p3: s3300 {

Fixed regulator nodes should have a "regulator-" prefix in their name.

And please use a shorter label, look at the existing DTs for
inspiration (e.g. "vreg_misc_3p3").


> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "fixed_3p3";
> +	};

But is this really an accurate description of these regulators? Are
they not part of some PMIC? Can they really not be turned off?

Also please use the names from the schematics for these. I doubt they
are named "fixed_3p3".

> +
> +	regulator_fixed_1p8: s1800 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "fixed_1p8";
> +	};
> +
> +	regulator_fixed_0p925: s0925 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <925000>;
> +		regulator-max-microvolt = <925000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "fixed_0p925";
> +	};
> +

Stray newline.

> +};

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
