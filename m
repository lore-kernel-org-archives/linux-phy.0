Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BA44C27C76
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jan 2023 23:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3jVeRKOy3ti0wD2Vx7FtQ2nxH2J3ZWQtGYLDq8Jd9Q=; b=CmcMn3uFd44HKE
	V5KIsNHGPOzsfRUNjznLRTdp4bwaNeTJgMR4MUf5b79K4LuC/3vILD5BjeX11e2I6H7cToW06sMGm
	oWASbCKY0Fmuj5MGcMkGbjCL5LM6IGapgW4jBGL4Valfrsp/fbQbUm/xaZVRSqwKepzI1IN71JyZO
	FJbBm5OJwOK0gOJ9aFeHtKNXZi0a4IttdD7YGoia/edorSpoIRjtd2MmP8x/NiSc/MGFcWNXCxJhH
	jDIfDhPZlTH0I40CbjLt9bTQyVa7emz/j2fAUQaZhVvtlJ3eDb3q68WZQYmsmmlKUJaTJAzscQrgy
	N8DpCqTnvenVeYKYMh3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKpTp-0095Ga-1m; Wed, 25 Jan 2023 23:47:01 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKpTe-0095F1-Iy; Wed, 25 Jan 2023 23:46:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0AD15B8198A;
	Wed, 25 Jan 2023 23:46:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EF1CC433D2;
	Wed, 25 Jan 2023 23:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674690407;
	bh=yfSf5cHaKDbkpSmzL2FwktD546v/proNkErqGpnBwX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gL/8dw7t9/5nlOI0qo8M/8qUMBFXm33FHJiTxcfGLEFRZwCGw56YyTLCeK9KVKSv0
	 i2n22rnVZiKD279pwuacPeGD20K7pQlnKPLcmkzGVEEiKi6gG3vUsE7RGLy1yOJhAp
	 uhrlcozh2c9W8UzWu14PejAnUVdUvEdVnG4yrWkWi5pBtPKThI7M6r6uxa5Sv71AKe
	 C5aGLDVLrvlcBEK7eO8j3QFrR7RJPvZ8OwLaG5DfFyvRXZdvvlZzHL9b3lCAWyzKh9
	 tQnAThQ/udbX7dGM92LDTogHrIYtw1merWDPmNjx1haWaRcLtDukBT0jtAH1uDR3wq
	 MncRpgPWAMgGQ==
Date: Thu, 26 Jan 2023 07:46:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v9 06/10] arm64: dts: ls1046a: Add serdes bindings
Message-ID: <20230125234638.GD20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-7-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221230000139.2846763-7-sean.anderson@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_154650_791264_85D2CD31 
X-CRM114-Status: GOOD (  18.35  )
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

On Thu, Dec 29, 2022 at 07:01:35PM -0500, Sean Anderson wrote:
> This adds bindings for the SerDes devices. They are disabled by default

s/bindings/descriptions?

The term "bindings" generally means the schema/doc in
Documentation/devicetree/bindings/.

Shawn

> to prevent any breakage on existing boards.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> (no changes since v4)
> 
> Changes in v4:
> - Convert to new bindings
> 
> Changes in v3:
> - Describe modes in device tree
> 
> Changes in v2:
> - Use one phy cell for SerDes1, since no lanes can be grouped
> - Disable SerDes by default to prevent breaking boards inadvertently.
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> index a01e3cfec77f..12adccd5caae 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> @@ -424,6 +424,24 @@ sfp: efuse@1e80000 {
>  			clock-names = "sfp";
>  		};
>  
> +		serdes1: serdes@1ea0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1046a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1ea0000 0x0 0x2000>;
> +			status = "disabled";
> +		};
> +
> +		serdes2: serdes@1eb0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1046a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1eb0000 0x0 0x2000>;
> +			status = "disabled";
> +		};
> +
>  		dcfg: dcfg@1ee0000 {
>  			compatible = "fsl,ls1046a-dcfg", "syscon";
>  			reg = <0x0 0x1ee0000 0x0 0x1000>;
> -- 
> 2.35.1.1320.gc452695387.dirty
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
