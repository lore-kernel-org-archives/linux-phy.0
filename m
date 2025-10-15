Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9B5ACCD193
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 10:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2U1LNvOSqbRQBaIysoQuAzyzc0ehYEZgS7uSj9zRONw=; b=1MlvCBojje3dJf
	aJ0FXWokhvXX6gkOrJZyKGeRRidqscmVZkVlEnRLICtMtGejUTNkirm+O3B//MRKrND+CZBYuWhg8
	LA9fDupSCj6XgY5e3IR3IJaddK6stxevOQHkYISgp8kLfU33OXKkqp3D35aab5fV16g0fePzKg6ZE
	Bw+0JViZWrhOpCXVhYKkkMN/CMBRirwIv9NKxQCTjYOg68dGKSobOQFPgcUyo/DKrTXPu/tPqRwAq
	7f0jjoJO+PEjrpuFN01Z6EKkkEdAEnGKwXvn1YD8rrfEUDQGFBrP0wpBlEHme+pp/X/PC7AF3yOnF
	N+MW0eBoXU7ZeJtKMqYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yQm-00000001EAw-2ECp;
	Wed, 15 Oct 2025 10:08:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yQi-00000001E8P-0ddy
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 10:08:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8yPu-00057X-NE; Wed, 15 Oct 2025 12:07:34 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8yPt-003hk2-23;
	Wed, 15 Oct 2025 12:07:33 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8yPt-000000007Ix-2FwJ;
	Wed, 15 Oct 2025 12:07:33 +0200
Message-ID: <6bea63bb14f2be814762fa719d3d7944bad39b6e.camel@pengutronix.de>
Subject: Re: [PATCH 5/5] scsi: ufs: mediatek: Rework resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Alim Akhtar	
 <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, Bart Van
 Assche	 <bvanassche@acm.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger	 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Stanley Chu	
 <stanley.chu@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Peter
 Wang	 <peter.wang@mediatek.com>, Stanley Jhu <chu.stanley@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, "Martin K.
 Petersen" <martin.petersen@oracle.com>
Cc: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
	kernel@collabora.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
Date: Wed, 15 Oct 2025 12:07:33 +0200
In-Reply-To: <20251014-mt8196-ufs-v1-5-195dceb83bc8@collabora.com>
References: <20251014-mt8196-ufs-v1-0-195dceb83bc8@collabora.com>
	 <20251014-mt8196-ufs-v1-5-195dceb83bc8@collabora.com>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_030824_264994_ED7A90B2 
X-CRM114-Status: GOOD (  25.55  )
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

Hi Nicolas,

On Di, 2025-10-14 at 17:10 +0200, Nicolas Frattaroli wrote:
> Rework the reset control getting in the driver's probe function to use
> the "_optional" function instead of defaulting to NULL on IS_ERR, so
> that actual real errors (as opposed to missing resets) can be handled as
> errors in the probe function.
> 
> Also move the MPHY reset into the PHY driver, where it should live, and
> remove all remnants of it ever having been in this driver.

Part of that happened in the previous patch.

> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/ufs/host/ufs-mediatek-sip.h |  8 -----
>  drivers/ufs/host/ufs-mediatek.c     | 67 +++++++++++++++++++++----------------
>  drivers/ufs/host/ufs-mediatek.h     |  1 -
>  3 files changed, 38 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-mediatek-sip.h b/drivers/ufs/host/ufs-mediatek-sip.h
> index d627dfb4a766..256598cc3b5b 100644
> --- a/drivers/ufs/host/ufs-mediatek-sip.h
> +++ b/drivers/ufs/host/ufs-mediatek-sip.h
> @@ -31,11 +31,6 @@ enum ufs_mtk_vcc_num {
>  	UFS_VCC_MAX
>  };
>  
> -enum ufs_mtk_mphy_op {
> -	UFS_MPHY_BACKUP = 0,
> -	UFS_MPHY_RESTORE
> -};
> -
>  /*
>   * SMC call wrapper function
>   */
> @@ -84,9 +79,6 @@ static inline void _ufs_mtk_smc(struct ufs_mtk_smc_arg s)
>  #define ufs_mtk_device_pwr_ctrl(on, ufs_version, res) \
>  	ufs_mtk_smc(UFS_MTK_SIP_DEVICE_PWR_CTRL, &(res), on, ufs_version)
>  
> -#define ufs_mtk_mphy_ctrl(op, res) \
> -	ufs_mtk_smc(UFS_MTK_SIP_MPHY_CTRL, &(res), op)
> -
>  #define ufs_mtk_mtcmos_ctrl(op, res) \
>  	ufs_mtk_smc(UFS_MTK_SIP_MTCMOS_CTRL, &(res), op)
>  
> diff --git a/drivers/ufs/host/ufs-mediatek.c b/drivers/ufs/host/ufs-mediatek.c
> index 758a393a9de1..ac40d4a3a800 100644
> --- a/drivers/ufs/host/ufs-mediatek.c
> +++ b/drivers/ufs/host/ufs-mediatek.c
> @@ -204,49 +204,60 @@ static void ufs_mtk_crypto_enable(struct ufs_hba *hba)
>  static void ufs_mtk_host_reset(struct ufs_hba *hba)
>  {
>  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> -	struct arm_smccc_res res;
> +	int ret;
>  
>  	reset_control_assert(host->hci_reset);
>  	reset_control_assert(host->crypto_reset);
>  	reset_control_assert(host->unipro_reset);
> -	reset_control_assert(host->mphy_reset);
>  
> -	usleep_range(100, 110);
> +	ret = phy_reset(host->mphy);
> +
> +	/*
> +	 * Only sleep if MPHY doesn't have a reset implemented (which already
> +	 * sleeps) or the PHY reset function failed somehow, just to be safe
> +	 */
> +	if (ret) {
> +		usleep_range(100, 110);
> +		if (ret != -EOPNOTSUPP)
> +			dev_warn(hba->dev, "PHY reset failed: %pe\n", ERR_PTR(ret));
> +	}
>  
>  	reset_control_deassert(host->unipro_reset);
>  	reset_control_deassert(host->crypto_reset);
>  	reset_control_deassert(host->hci_reset);
> -	reset_control_deassert(host->mphy_reset);
> -
> -	/* restore mphy setting aftre mphy reset */
> -	if (host->mphy_reset)
> -		ufs_mtk_mphy_ctrl(UFS_MPHY_RESTORE, res);
>  }
>  
> -static void ufs_mtk_init_reset_control(struct ufs_hba *hba,
> -				       struct reset_control **rc,
> -				       char *str)
> +static int ufs_mtk_init_reset_control(struct ufs_hba *hba,
> +				      struct reset_control **rc,
> +				      const char *str)
>  {
> -	*rc = devm_reset_control_get(hba->dev, str);
> +	*rc = devm_reset_control_get_optional(hba->dev, str);

Please use

	devm_reset_control_get_optional_exclusive()

directly, or see below for an alternative suggestion.

>  	if (IS_ERR(*rc)) {
> -		dev_info(hba->dev, "Failed to get reset control %s: %ld\n",
> -			 str, PTR_ERR(*rc));
> -		*rc = NULL;
> +		dev_err(hba->dev, "Failed to get reset control %s: %pe\n", str, *rc);
> +		return PTR_ERR(*rc);
>  	}
> +
> +	return 0;
>  }
>  
> -static void ufs_mtk_init_reset(struct ufs_hba *hba)
> +static int ufs_mtk_init_reset(struct ufs_hba *hba)
>  {
>  	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
> +	int ret;
> +
> +	ret = ufs_mtk_init_reset_control(hba, &host->hci_reset, "hci_rst");
> +	if (ret)
> +		return ret;
> +
> +	ret = ufs_mtk_init_reset_control(hba, &host->unipro_reset, "unipro_rst");
> +	if (ret)
> +		return ret;
> +
> +	ret = ufs_mtk_init_reset_control(hba, &host->crypto_reset, "crypto_rst");
> +	if (ret)
> +		return ret;

It looks to me like you could combine these into a

	devm_reset_control_bulk_get_optional_exclusive()

and operate the three resets with reset_control_bulk_assert/deassert().


regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
