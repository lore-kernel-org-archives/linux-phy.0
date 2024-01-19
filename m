Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C24E1C4725D
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jan 2024 22:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQ6V/5kaIhcNrwpjI1DVkspLtUYv9GVukXu/7Icp2TE=; b=ikAXC5ih/IkfO7
	GAG+Tt22Vyg0t//hWOI3SBTKJI63oA3W+I5V5ySDkcYExCpOTXLujSJojGGWYeZDBoTcA9yPoHFTz
	PBjeupmkJ2msywqiimYWvSgxm0f8rKgOwn3HYo3m/J3sPazVERtGdIpsdhwsIVlqkiUrDDTcCraPt
	9GlYwlkelEUZvOYYvMRKEqxf8moDjtRbIF9MaYzuYVfOKJFdX5ugIyd+8JPT0mNX2B9X130Nu9N5t
	mOsv8w+VKUTHH+QYmGaL1ONrWJhS7WkM/hYuTP1KDc7rrVrr8sJdkl715H1ptoXtKi084iCvBCEo4
	9Pqh928ZC8s+RI55qDmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQx0q-006ki8-1G;
	Fri, 19 Jan 2024 22:06:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQx0n-006kh1-1X;
	Fri, 19 Jan 2024 22:06:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8097C6160B;
	Fri, 19 Jan 2024 22:06:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8E49C433F1;
	Fri, 19 Jan 2024 22:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705702012;
	bh=bAiP8neWkuFOr1UcviXY9sGWpEscgq5SMLZxG3s9Dt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H0eg5u8QwEQ6ypQgu+Ro/nkwaVoSk6fZjoWXqYEmXDBBypv3SaURpbSvuGPnkUm9o
	 0iLO54XqFDrY5SKuQZx1PtWWdbaWIgzQTzV0z70555OEw/cl0wpl9rZN9FKfkiyBAu
	 SnG9Ko2Xb/Ck170Mviz7ss9Pl+yNAe9Xg7Gdjqf86+CfI4wXVZ78Auk6i3XkpHvEn8
	 o34tv8O0Sbg6s3KM1vurE0tBmVLz8HbPfZTpKnkQxTLGN+n1rFaTju4cEt2Sd0Ic8a
	 RkPd0onKWlpH1K9oGo+Gggwbv4VFEK2eJRyldbIWTPpp09a5rhij2/rv2jp9evvYPK
	 wyA/FwbQHedSA==
Date: Fri, 19 Jan 2024 16:06:48 -0600
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: olivier.moysan@foss.st.com, gregkh@linuxfoundation.org,
	richardcochran@gmail.com, arnd@kernel.org,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org, mchehab@kernel.org, peng.fan@oss.nxp.com,
	pabeni@redhat.com, rcsekar@samsung.com,
	alexandre.torgue@foss.st.com, fabrice.gasnier@foss.st.com,
	linux-serial@vger.kernel.org, Oleksii_Moisieiev@epam.com,
	linux-spi@vger.kernel.org, will@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, lars@metafoo.de,
	conor+dt@kernel.org, linux-mmc@vger.kernel.org, kuba@kernel.org,
	linux-media@vger.kernel.org, arnaud.pouliquen@foss.st.com,
	andi.shyti@kernel.org, ulf.hansson@linaro.org,
	Frank Rowand <frowand.list@gmail.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-phy@lists.infradead.org, jic23@kernel.org,
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org, lee@kernel.org,
	catalin.marinas@arm.com, mkl@pengutronix.de,
	herbert@gondor.apana.org.au, linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org, hugues.fruchet@foss.st.com,
	edumazet@google.com, netdev@vger.kernel.org, vkoul@kernel.org,
	wg@grandegger.com, linux-i2c@vger.kernel.org, davem@davemloft.net
Subject: Re: [PATCH v9 02/13] dt-bindings: treewide: add access-controllers
 description
Message-ID: <170570200425.1132338.1743644162144723458.robh@kernel.org>
References: <20240105130404.301172-1-gatien.chevallier@foss.st.com>
 <20240105130404.301172-3-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240105130404.301172-3-gatien.chevallier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_140653_601214_CCB81042 
X-CRM114-Status: GOOD (  13.96  )
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


On Fri, 05 Jan 2024 14:03:53 +0100, Gatien Chevallier wrote:
> access-controllers is an optional property that allows a peripheral to
> refer to one or more domain access controller(s).
> 
> Description of this property is added to all peripheral binding files of
> the peripheral under the STM32 firewall controller. It allows an accurate
> representation of the hardware, where various peripherals are connected
> to a firewall bus. The firewall can then check the peripheral accesses
> before allowing its device to probe.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
> 
> Changes in V6:
> 	- Minor changes in commit message
> 	- Renamed access-controller to access-controllers
> 
> Changes in V5:
> 	- Discarded review tags as the content has changed
> 	- Renamed feature-domains to access-controller
> 
> Changes in V4:
> 	- Added Jonathan's tag for IIO
> 
> Changes in V2:
> 	- Add missing "feature-domains" property declaration
> 	  in bosch,m_can.yaml and st,stm32-cryp.yaml files
> 
>  Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml   | 4 ++++
>  Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml   | 4 ++++
>  Documentation/devicetree/bindings/dma/st,stm32-dma.yaml       | 4 ++++
>  Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml    | 4 ++++
>  Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml       | 4 ++++
>  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml   | 4 ++++
>  .../devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml       | 4 ++++
>  Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml   | 4 ++++
>  Documentation/devicetree/bindings/media/cec/st,stm32-cec.yaml | 4 ++++
>  Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml    | 4 ++++
>  .../bindings/memory-controllers/st,stm32-fmc2-ebi.yaml        | 4 ++++
>  Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml   | 4 ++++
>  Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml    | 4 ++++
>  Documentation/devicetree/bindings/mmc/arm,pl18x.yaml          | 4 ++++
>  Documentation/devicetree/bindings/net/can/bosch,m_can.yaml    | 4 ++++
>  Documentation/devicetree/bindings/net/stm32-dwmac.yaml        | 4 ++++
>  Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml  | 4 ++++
>  .../devicetree/bindings/regulator/st,stm32-vrefbuf.yaml       | 4 ++++
>  Documentation/devicetree/bindings/rng/st,stm32-rng.yaml       | 4 ++++
>  Documentation/devicetree/bindings/serial/st,stm32-uart.yaml   | 4 ++++
>  Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml     | 4 ++++
>  Documentation/devicetree/bindings/sound/st,stm32-sai.yaml     | 4 ++++
>  Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml | 4 ++++
>  Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml      | 4 ++++
>  Documentation/devicetree/bindings/spi/st,stm32-spi.yaml       | 4 ++++
>  Documentation/devicetree/bindings/usb/dwc2.yaml               | 4 ++++
>  26 files changed, 104 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
