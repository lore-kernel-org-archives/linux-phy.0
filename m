Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D648C25B74
	for <linux-phy@archiver.kernel.org>; Thu, 16 May 2024 09:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FInEsYl17mKb2DDa6Yavngztw9Dxmv2/LlLm6yZ6EWI=; b=VCWup0MA+TgxGR
	y44UvsDJhWajn3qNEpXnbDVSjQtg6jnur5KNR5Ub7QeSMY+ss0mLolh0WS9yaK5tKf4aLWtoYWfNg
	WJJZX53HaxdIUVvxj/OE3zvFU4NqX9pMPfnwAPa89QiptLkwD8ikWOWfErraM6v6ECQJ2Pfl8K9/p
	DTvACFs9h3BfkBPu1E3z3FnepQCR9teiBjbgA5FHdZ9OIiwelxzNOmtB+4gJpLEZz2VSuqd918p9G
	JAyIXciDddisPfHzdqQEWwBrXOicGkJtl8S4Q5Wn4z3EEWE8kRKg2cLzzdOLlrinbMmc3fNE5EEiq
	1OEBB0X0RVU7ysx3KnFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Xqz-00000004OeR-3cca;
	Thu, 16 May 2024 09:56:49 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Xqv-00000004OdV-0qFb;
	Thu, 16 May 2024 09:56:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715853403;
	bh=oA/UXMcp2VVqyN7tkM3AH9nS3G6Kq1aunr5jiHFLt+g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rA/cINwGkSzsLAL7KcqGstkdt8TDmRpH5b76KmEldzedihua7SdEHscNoZVoraOVW
	 zi4Et9ZSuM41ouSdntdPqa1jnoS+/Wzm9/H+zB68slKo+c1hAk8XlbUUNpCwnlcp5a
	 TrYvpusCXgJxjuMFTr8STP6VE/KI9G8dQDUNWWk+uOknu1b1NJOdY4fRAmbMntsy0T
	 QY2plDSG7qBSEN8jiEhZoW4cYdMYnoPtHYAkg+zUZ2Feq3CXeUH6vosR3k8w9Lkigf
	 ucIpi+FHBSjXtKBH+GSyWLElBJ9/n/oAt23xPofJwzpIBx2LQsu3y3C6Vxzza50KLv
	 MNOslchl4gsKA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id AE64F378143B;
	Thu, 16 May 2024 09:56:42 +0000 (UTC)
Message-ID: <8ef5e830-f677-494b-a7ec-85eac5f58e79@collabora.com>
Date: Thu, 16 May 2024 11:56:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: defconfig: Enable Airoha pcie phy driver
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
 conor@kernel.org, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com,
 amitsinght@marvell.com
References: <cover.1715769325.git.lorenzo@kernel.org>
 <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_025645_415584_71F84E34 
X-CRM114-Status: UNSURE (   9.27  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> Enables the PHY_AIROHA_PCIE config by default.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

What about setting that as =m ?

Ignoring initrd, PCIe is not even boot critical on that platform :-)

Cheers,
Angelo

> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index a53c58584bcf..c0eacced5d41 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
>   CONFIG_RESET_QCOM_PDC=m
>   CONFIG_RESET_RZG2L_USBPHY_CTRL=y
>   CONFIG_RESET_TI_SCI=y
> +CONFIG_PHY_AIROHA_PCIE=y
>   CONFIG_PHY_XGENE=y
>   CONFIG_PHY_CAN_TRANSCEIVER=m
>   CONFIG_PHY_SUN4I_USB=y


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
