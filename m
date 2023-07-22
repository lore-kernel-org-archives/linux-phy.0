Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53A73EB64DA
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jul 2023 05:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOkzHbQvWpIdF81zRokEG1ZZSDegqxoMwIGhj7vkT1w=; b=D85NDsTjfgVeqd
	hHKH2aYflDfMbo13Uy50D6U77phi8MN4eF2emwOTQqrKd/HwW9vh+zZOC8Juwjzs2/x2oAJSGu9WW
	iECNeY0nNpf2iZ9JUCFvwlFpwYXzcsbxPMsGDcNZzwjXO4keNvLA2S4i5z+vAmOhtid4xmQwm6872
	g5+B55sr2GzPjjRbMoq7YychUxlP2pITF1tpl2NdxI4s4nzyUOhFlHatmehkPaSOTyBBeg/9aPBcw
	9nhIGlwDU2FQZ4jxXgQcZv6gkj1+mVthFwydlpty8f5oPt421rgs6aao5UvXtNY2N/lzk1DD60Xy8
	LghURb41DuPKhWJuFEIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qN4l2-00FqCw-0B;
	Sat, 22 Jul 2023 05:02:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qN4kz-00FqC3-2B;
	Sat, 22 Jul 2023 05:02:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1E6F660A4C;
	Sat, 22 Jul 2023 05:02:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF427C433C8;
	Sat, 22 Jul 2023 05:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690002136;
	bh=HWaSsOVQFBLjr5TPyQhbtTAD6D4au4p6zE6CDcjznMc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=armCxyQCBmqikVEixV71SB3LdGhESYkZKJLZ2/ebE8yQic7a+EZsBlV99hhGJaRgx
	 J1ZopmUBbm45Ae5L6nT/O297ZN4nPm11zWRkNaThOkbakm/ni8ePbrTVx/8bhZbPlc
	 Kvai4MUVQwp6wDVLnt92pxkytfqQdZoLz8pk9PtV5cd7Y+ADu8ghT74D5twuQIXsdI
	 CQHYfwFQC8oCBtem/Z0lt4fdgt9dtlqh+BDF6Su3NshgejPvRoCQXbm/i1WoWQtdph
	 2ZIE30QJXK0YTBK/SdbsX6HVtTu/qrjmppT7MD5mEEw75P+3eg1gJhhaVzR8IhD0cw
	 Xt1T9rxGq5L0g==
Date: Fri, 21 Jul 2023 22:05:34 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be, 
	neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl, 
	quic_srichara@quicinc.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 4/6] arm64: dts: qcom: ipq5332: Add USB related nodes
Message-ID: <kqbkmpnvbl5gf6fti4weiiulasdvupvzdkydlpmk3du3ykc6et@kjfduhclrisq>
References: <cover.1689913334.git.quic_varada@quicinc.com>
 <b9d94f32ae01298c3009286670bba47d74ae28d9.1689913334.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9d94f32ae01298c3009286670bba47d74ae28d9.1689913334.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_220217_760377_E57417EA 
X-CRM114-Status: GOOD (  10.46  )
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

On Fri, Jul 21, 2023 at 10:05:29AM +0530, Varadarajan Narayanan wrote:
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 8bfc2db..a22f340 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -405,6 +405,62 @@
>  				status = "disabled";
>  			};
>  		};
> +
> +		usbphy0: usb-phy@7b000 {

s/usb-phy/phy/

> +			compatible = "qcom,ipq5332-usb-hsphy";
> +			reg = <0x0007b000 0x12c>;

Sort your nodes under /soc by their address.

> +
> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +			clock-names = "cfg_ahb";
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb2: usb2@8a00000 {

usb@... drop the '2' in the node name (not in the label). Although, why
does usb2 use the phy labeled usb0?

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
