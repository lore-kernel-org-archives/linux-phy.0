Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D0A5C54E94
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jan 2023 23:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eV8pJOg4Z19cCwIE2eppzmKzLiF8E1/Vm1cBv7VI8lY=; b=3csQokwkxwwjK8
	SsnoIBdvzqSApK/KFg/kdRGIIxYjPcb46CsENtsJ7d9AOqcNC/gmXHx86MhI4fZBwyGmT9rnF1jEA
	fo8xj9fYKBx1iwIuX+PsL19wBh+Q5NdPrbysD2BwpReA5vCLk1zt2RIwrkpbJ13jW1vMKg/7h6cq8
	ctQO5aAwTHBhSo1jM8u3QEbVUmsjAcsEr3VfLS4ziObRs/vHp2NoMAd5X8nXsKZOPFxEj2aqWH4vS
	zHwXMmDUFH90bwEDdV1Bvs5d658Cf8HBF1KimVtNCtVxB4d88Ey14EqrvYnjCRZHyDlsNgHJ6J4zN
	hki6/Fk7HNmG3NglRHrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKpVr-0095iC-SM; Wed, 25 Jan 2023 23:49:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKpVg-0095fa-LA; Wed, 25 Jan 2023 23:48:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 05FA7616A8;
	Wed, 25 Jan 2023 23:48:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB6B3C433D2;
	Wed, 25 Jan 2023 23:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674690535;
	bh=XEe8zkYl5BVybaU3QY5R7IM0pyPQXzr1kJej+KUlLj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gDWtAfWb3BXcxxlGNhh9AdTAPGhupaDp/wf6H+M9VheIaTriDe0fg+q4s6R3byKQN
	 BaJPXnM1w/51P50L0Bo+2Gv3SAm52g51NVPi2L2yn3MrDd+FoXmOdngr0/idJUCKQ2
	 yZTTcIS4iRErb4dVBNSwuhQrqGa6YgTvYyzwm6YV6j5vOhjwzmHLENdxd8occSHlt7
	 MHtgsIQkjvBLlE5snAAko0z7clXa3T42JcCyYuZxGKVutzoh7sUSC5nLh1qVKAJWmi
	 V7vZp4GjNy/fKzgR1VwodgzkTRQCe/+hy29bcjJjDayaqzrwStKk72GOoVVln6/24a
	 2jUTkEPIe0v9w==
Date: Thu, 26 Jan 2023 07:48:46 +0800
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
Subject: Re: [PATCH v9 08/10] arm64: dts: ls1088a: Add serdes bindings
Message-ID: <20230125234845.GE20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-9-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221230000139.2846763-9-sean.anderson@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_154856_758721_2F7FFDAA 
X-CRM114-Status: GOOD (  17.15  )
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

On Thu, Dec 29, 2022 at 07:01:37PM -0500, Sean Anderson wrote:
> This adds bindings for the SerDes devices. They are disabled by default
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
> - New
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 260d045dbd9a..ecf9d830e36f 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -238,6 +238,24 @@ reset: syscon@1e60000 {
>  			reg = <0x0 0x1e60000 0x0 0x10000>;
>  		};
>  
> +		serdes1: serdes@1ea0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1ea0000 0x0 0x2000>;

Can we start the properties with compatible (and reg) like most of other
device nodes?

Shawn

> +			status = "disabled";
> +		};
> +
> +		serdes2: serdes@1eb0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1eb0000 0x0 0x2000>;
> +			status = "disabled";
> +		};
> +
>  		isc: syscon@1f70000 {
>  			compatible = "fsl,ls1088a-isc", "syscon";
>  			reg = <0x0 0x1f70000 0x0 0x10000>;
> -- 
> 2.35.1.1320.gc452695387.dirty
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
