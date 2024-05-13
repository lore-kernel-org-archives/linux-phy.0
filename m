Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5691C25B10
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 13:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTr/cwjNsiFq+flg4J31kGUe1T9uTCqTUsQsSF7OwuA=; b=dW7uEk/3//ix8Y
	WJ+tx0DXElJDUBOI8SyNnyeG6k2/LfjizZ7FO4bpVP797D6h4o3iiVyS/tr6NC7JO9l/upX0U5HBr
	dChnc39e96w/r6xSjtz24NaIRjP2PtmcHvFOICm4QFAmibjrha3MV2zptP8rPy/Dh2phUsG7Eg54a
	W+aWhrd0o9Ie0ixVx0NJVMIab7xOLd03zS+Zdt66kPZEMRdJ58cNRPkUY9XZkd6JptwgcFsIVncWT
	klVhHT0R42f/vmwjNKGZincBJ9m1boIy+oE3ofswAq9Mf5PvQj8AmGYgGGcgZ1sJZWYq7z9ePQkFG
	ECyOHrgz+aeK2OOmZ8rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6VZs-0000000CyLj-1ORX;
	Mon, 13 May 2024 13:18:52 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6VZn-0000000CyK2-3lKb;
	Mon, 13 May 2024 13:18:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715606325;
	bh=t97Unp7RFvu8X9BfWzZrMSSAs1Et06nWvHkA4YhFGn8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hc9LoSrIediHL21bEQssqc4OEfA1pW8MNWtd+d9jj7fS8JuxW/QttImJo2H41AUpS
	 mCUfHhzXgdilnT2BcdD10WM23jq0JVvwGaRUFiTFEKrooQEV23mDkB+2nuIxHxpIrX
	 rMBuZfnTQdvTZEV/Bp00vJ/goA2fnPeOxcdA7Fo8G8bClr9U73Iijmgm7lyuP3sBgt
	 3dfncasCB0Kt+kqGTu1B/3JMAe3HL+GMSVN50CQC0s6hziAkbM7gUJq8ERyhwmx/Sy
	 bs3X93g/fevYXo/fAoO4rLSepd1IvJ7BjP8J0iRaSoBEU2v1i5WLtLtn4SSrY2AJne
	 86zfpKsWTXLMw==
Received: from [IPV6:fd00::2a:39ce] (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 894CE3782017;
	Mon, 13 May 2024 13:18:44 +0000 (UTC)
Message-ID: <b6bb36aa-cb8c-4e13-8ee3-233d1c76dd50@collabora.com>
Date: Mon, 13 May 2024 15:18:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com
References: <cover.1715527166.git.lorenzo@kernel.org>
 <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_061848_321657_5656927E 
X-CRM114-Status: GOOD (  14.26  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> Introduce support for Airoha PCIe PHY controller available in EN7581
> SoC.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   MAINTAINERS                        |    8 +
>   arch/arm64/configs/defconfig       |    1 +
>   drivers/phy/Kconfig                |   10 +
>   drivers/phy/Makefile               |    1 +
>   drivers/phy/phy-airoha-pcie-regs.h |  476 +++++++++++
>   drivers/phy/phy-airoha-pcie.c      | 1227 ++++++++++++++++++++++++++++
>   6 files changed, 1723 insertions(+)
>   create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
>   create mode 100644 drivers/phy/phy-airoha-pcie.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ce9fac46f741..d918d41a80a3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -653,6 +653,14 @@ S:	Supported
>   F:	fs/aio.c
>   F:	include/linux/*aio*.h
>   
> +AIROHA PCIE PHY DRIVER
> +M:	Lorenzo Bianconi <lorenzo@kernel.org>
> +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> +F:	drivers/phy/phy-airoha-pcie-regs.h
> +F:	drivers/phy/phy-airoha-pcie.c
> +
>   AIROHA SPI SNFI DRIVER
>   M:	Lorenzo Bianconi <lorenzo@kernel.org>
>   M:	Ray Liu <ray.liu@airoha.com>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index a53c58584bcf..c0eacced5d41 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig

No, this should be in a different commit.

> @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
>   CONFIG_RESET_QCOM_PDC=m
>   CONFIG_RESET_RZG2L_USBPHY_CTRL=y
>   CONFIG_RESET_TI_SCI=y
> +CONFIG_PHY_AIROHA_PCIE=y
>   CONFIG_PHY_XGENE=y
>   CONFIG_PHY_CAN_TRANSCEIVER=m
>   CONFIG_PHY_SUN4I_USB=y
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 787354b849c7..8f9a7a6c4bba 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -72,6 +72,16 @@ config PHY_CAN_TRANSCEIVER
>   	  functional modes using gpios and sets the attribute max link
>   	  rate, for CAN drivers.
>   
> +config PHY_AIROHA_PCIE
> +	tristate "Airoha PCIe-PHY Driver"
> +	depends on ARCH_AIROHA || COMPILE_TEST
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Say 'Y' here to add support for Airoha PCIe PHY driver.

Say Y here (without quotes)

Apart from that:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> +	  This driver create the basic PHY instance and provides initialize
> +	  callback for PCIe GEN3 port.
> +
>   source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/broadcom/Kconfig"


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
