Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C0E3C77B6C
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 09:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpYjDnbnLdGh581Cct9akSSGGcV5zY/pxlpak+KBhXw=; b=bBp7AJ5mfLdtnX
	H+hs/SykACSa3qIsPL5CfcFo15TiQfWp3YnIL4haqfAnuNmY7e/NTdkUM22GeF3yizybny4Qo8nR7
	Te0Y+io3nHqcS4KXVOEvmbKwbNwhC0UXhkCN+SsTPWmZyee05OINiCDxGnkOSnREFmnAovRnkK8ZC
	yI5I7rF5tt9TPR294yAWEjJ6wGqFBpMeNRBt6vNNixTHOezbMDXFVCfr443yt99KAMadOr2na7kYO
	c9TGUsXSjnSol7HuUkRF10xaTujmP/vSGE3pY+slfbQ1CG99P31wOVgUo/HIbRZQ4S189PIOukXgM
	Ub7Pz+un4c21BXG7jTqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzEZ-003uhn-2S;
	Wed, 05 Apr 2023 09:15:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzEW-003ugv-2a
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 09:15:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B49F3638D3;
	Wed,  5 Apr 2023 09:15:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4AB1C433D2;
	Wed,  5 Apr 2023 09:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680686111;
	bh=1WC5vJKuvluemVN0pPhdXxQ0pptk2co2rAHuQbcKB5o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=npzp0IapxWh2AC21LFOQLZpCmgK2L4U/NaHNpP/Fy9po3DwbKKR6LWB2do4soCC8v
	 c3Zpxfvm1cBBonKB/NJ09lRt2BGDnXn+WbsQMGgt2mnuxX7YEBqDXO31TWbAMi68eS
	 8T3LUQTHxM1Pa2qAbbGeDzZxQoR1istR9JHBv1qcAGire8SdiYZu8NUYyZ6tVJvZch
	 Knd4e8KH3pBvnT3FtwWuGT3jBr9pfDBZouF+wDBl/GlN2eb+/crxCZI0oCBJWN9v3W
	 xBa98ADF9Alsi+f9SqJ7q9ww6zqZpg1S72CiTtGgasVhWxm2V9CgAqD74gEpm3vMUL
	 ZylnA/wFEkQgQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pjzEz-00020g-0w; Wed, 05 Apr 2023 11:15:41 +0200
Date: Wed, 5 Apr 2023 11:15:41 +0200
From: Johan Hovold <johan@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Message-ID: <ZC08PfY+TN3+lBT4@hovoldconsulting.com>
References: <cover.1680682939.git.quic_varada@quicinc.com>
 <aaf44ceccef9c7b20a08b8c9fa534f99468f8856.1680682939.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaf44ceccef9c7b20a08b8c9fa534f99468f8856.1680682939.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_021512_899427_7C46AF29 
X-CRM114-Status: GOOD (  11.57  )
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

On Wed, Apr 05, 2023 at 02:26:42PM +0530, Varadarajan Narayanan wrote:
> Add USB phy and controller related nodes
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v6:
> 	- Introduce fixed regulators for the phy
> 	- Resolved all 'make dtbs_check' messages
 

> +		usb_0_qmpphy: phy@7d000 {
> +			compatible = "qcom,ipq9574-qmp-usb3-phy";
> +			reg = <0x0007d000 0xa00>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&gcc GCC_USB0_AUX_CLK>,
> +				 <&xo_board_clk>,
> +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&gcc GCC_USB0_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",

Looks like you just ignored my comment that you need to rename this
clock (and update the binding). :(

	https://lore.kernel.org/lkml/ZCaznloORtzgioOP@hovoldconsulting.com/

> +				      "pipe";
> +
> +			resets = <&gcc GCC_USB0_PHY_BCR>,
> +				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
> +			reset-names = "phy",
> +				      "phy_phy";
> +
> +			vdda-pll-supply = <&reg_usb_1p8>;
> +			vdda-phy-supply = <&reg_usb_0p925>;
> +
> +			status = "disabled";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb0_pipe_clk";
> +		};A

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
