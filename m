Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8F94CCD1AB
	for <linux-phy@archiver.kernel.org>; Fri, 24 Oct 2025 09:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/Izz5aCOe0dCeMd0g8BQHNAzAk7OXmEGXk0L5w9Aas=; b=txhNWTXrWA9u4N
	TSYx4ROCpQEvmXVti78QQmXJrf/qBDvS7JoPEbNKv/owaHqrIpl/1d7XYloyflOPioKk1cJqO9lHH
	o3k4+V+dniJUFDIDNJCG2p2jmlNb09nkpn5uE9yQpyofHuF726wP4pSjmuCaIL0DP4aIqfri7vf8J
	pGVjcRD0Heyl1dF8/CGFupsAneX79XSDts398ne72O4nWE/Lf4xmnEItJaveUJpOGTNysmD1u41CD
	UzJoLlEWKrBI642bORfjZbV2xYAqrBlXxo3t0IfYAaFPIRUu15+BOrtO/TJXyDbCgp9yvIXrnRHAb
	xv93KRisoblm+yaLA8aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDm9-00000008oi8-1qXd;
	Fri, 24 Oct 2025 09:07:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDm7-00000008og6-2Usp
	for linux-phy@lists.infradead.org;
	Fri, 24 Oct 2025 09:07:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vCDl3-0007sx-6E; Fri, 24 Oct 2025 11:06:49 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vCDl0-005CLv-1Y;
	Fri, 24 Oct 2025 11:06:46 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vCDl0-000000004N3-1aFM;
	Fri, 24 Oct 2025 11:06:46 +0200
Message-ID: <6915fde3171d0e063b931abbe04e3216375af8fd.camel@pengutronix.de>
Subject: Re: [PATCH v3 05/24] phy: mediatek: ufs: Add support for resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Alim Akhtar	
 <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, Bart Van
 Assche	 <bvanassche@acm.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger	 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Chunfeng Yun	
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Peter Wang <peter.wang@mediatek.com>,
 Stanley Jhu <chu.stanley@gmail.com>,  "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>
Cc: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
	kernel@collabora.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
Date: Fri, 24 Oct 2025 11:06:46 +0200
In-Reply-To: <20251023-mt8196-ufs-v3-5-0f04b4a795ff@collabora.com>
References: <20251023-mt8196-ufs-v3-0-0f04b4a795ff@collabora.com>
	 <20251023-mt8196-ufs-v3-5-0f04b4a795ff@collabora.com>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_020755_630272_1FB89A09 
X-CRM114-Status: GOOD (  17.93  )
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

On Do, 2025-10-23 at 21:49 +0200, Nicolas Frattaroli wrote:
> The MediaTek UFS PHY supports PHY resets. Until now, they've been
> implemented in the UFS host driver. Since they were never documented in
> the UFS HCI node's DT bindings, and no mainline DT uses it, it's fine if
> it's moved to the correct location, which is the PHY driver.
> 
> Implement the MPHY reset logic in this driver and expose it through the
> phy subsystem's reset op. The reset itself is optional, as judging by
> other mainline devices that use this hardware, it's not required for the
> device to function.
> 
> If no reset is present, the reset op returns -EOPNOTSUPP, which means
> that the ufshci driver can detect it's present and not double sleep in
> its own reset function, where it will call the phy reset.
> 
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Peter Wang <peter.wang@mediatek.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/phy/mediatek/phy-mtk-ufs.c | 71 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-ufs.c b/drivers/phy/mediatek/phy-mtk-ufs.c
> index 0cb5a25b1b7a..d77ba689ebc8 100644
> --- a/drivers/phy/mediatek/phy-mtk-ufs.c
> +++ b/drivers/phy/mediatek/phy-mtk-ufs.c
[...]
> @@ -163,8 +224,18 @@ static int ufs_mtk_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(phy->mmio))
>  		return PTR_ERR(phy->mmio);
>  
> +	phy->reset = devm_reset_control_get_optional(dev, NULL);

Please use devm_reset_control_get_optional_exclusive() directly.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
