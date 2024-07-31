Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AA97C3DA64
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 11:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxWrvBSZegJSKQoj4OCV2SJ/t95T9DoFtFH78xN88FU=; b=IIy2rOYqR/aEm9
	hDhqseGn24uO+10xcAiItU2c88VYHiaew8qaifWPQ5D2LKl/8pDubch4O1b7pTSO9Me8QTcqNtOU1
	JQU52cgCSz/s8BvDugg79p6DV05XbXDAEsR1DPeZwh81or55AzaMzsEUj0gIBD1LoG15HWDtQuS1S
	BavchmapKS81sGAvOYBq9PEz8Mi8N0NlBECYn1k4l746UJgLiki3k8oUxEegMNpAahMyGbkQG9E/+
	53sQtu4qfCfbp5bbLmO8Xg7NSOiwlbnXvEJG1RqrSjcWCCwP7i9h3VTNk1AKs/EpfCd+ZbDGo3hIT
	RjhD+gVnG7Z1tQbDczTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7Tb-00000000tbJ-02gD;
	Wed, 31 Jul 2024 11:26:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7TX-00000000taA-1JKl
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 11:26:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 04E0BCE0E74;
	Wed, 31 Jul 2024 11:26:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7C45C116B1;
	Wed, 31 Jul 2024 11:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722425192;
	bh=muOwvDjLZQ6jQCCyNA06/OumuJh2BZIgrN5mnstcahw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t6KivKpyu57v6fsSEr9zYcvDW2nzoYZ1sT1hBEIFn3+J9vd1WzhdFmsXKHbKEjIrX
	 RPxmttPgHglaQgdE8RHlQRgSAvwmxWVJjLFLTDJ9N30Zza6BInQ29h+EpZvbc/fgkT
	 qv5qQo+iZw2wu8Wm1mkhlDmhJ3lELQjZQbs1crz1dHtvtPOgg1dXg0R7MRQ6JZjdzr
	 6nBTJOAOR/4HouOjXXiUY25NQFpb4fSGsdrHpw7CKGhMyxNXo2qkLwX2iuzVeEf8SF
	 VwqPkQh4fcRz/Rk3zPvg5cwAKU+8JEJoFsBL+3Jfmtw5a8f/L6x0PU2dE3n/LqCGyF
	 i2J0aVDZ8q9OQ==
Date: Wed, 31 Jul 2024 16:56:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-pcie: Fix X1E80100 PCIe Gen4 PHY
 initialisation
Message-ID: <ZqofZNF71zA8kTxN@matsya>
References: <20240726-x1e80100-phy-qmp-pcie-fix-config-v1-1-b569f03c0c48@linaro.org>
 <ZqOysDk0LqwxG4OF@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZqOysDk0LqwxG4OF@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_042635_576807_689E567C 
X-CRM114-Status: GOOD (  15.77  )
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

On 26-07-24, 16:29, Johan Hovold wrote:
> On Fri, Jul 26, 2024 at 10:16:56AM +0300, Abel Vesa wrote:
> > Update the PCIe Gen4 PHY init sequence with the latest based on internal
> > Qualcomm documentation.
> 
> Any hints about what these updates imply?

I am not sure if we have insights

> 
> > Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 23 ++++++++++++++++-------
> >  1 file changed, 16 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 5b36cc7ac78b..8b624afbf014 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> 
> >  static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
> > @@ -1286,12 +1287,15 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_rx_tbl[] = {
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_1, 0x01),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_2, 0x01),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_3, 0x45),
> > -	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0b),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0A, 1),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0B, 2),
> 
> Please use lower-case hex consistently.

Yes pretty please, that is consistent and the norm

> 
> > +	QMP_PHY_INIT_CFG(QSERDES_V6_20_VGA_CAL_CNTRL1, 0x00),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
> >  	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
> > -	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x3A, 1),
> > +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38, 2),
> 
> Ditto.
> 
> Johan

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
