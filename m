Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 088C6C05027
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 14:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+d2Y90pF/HQJiCEGBN9uUxKJuMTEIILujDj7tV3Cq0=; b=bUqaEoM58VjLRo
	sPnShcRGIShHx8Lkx+eWryNA8CWhoAF+gS2mSg2Mk1eUZ7dHFWxf3DmRLOjdO4MXnciOQjfXggRB+
	yuoVRJHospEdcyL3WADEp873OiqI+WtxNMv519RHPHxydtPUz0Pd2Px2SMl2bhUnsHxg8piEzD2KF
	LIsepCIWuRbxWeJjAN+p47HKyl5H76Vy/PDGxAxH+DN6cpDb6tugijIdta62Ew7B3ayxYUWRK/kbs
	Rpe6xVhe5fB8Vsq8ysBQ1Jvr6vYQoL+e/KvkY+/4OxFM2ypcagu2t5mZVKk4utZVhzun5UDDuspT+
	UXxXwWRRKsqcdQfTZhfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxNW-00HUcd-Dp; Mon, 23 Jan 2023 14:00:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxNT-00HUaT-7Z
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 14:00:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C60FDB80DC4;
	Mon, 23 Jan 2023 14:00:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78D37C433A7;
	Mon, 23 Jan 2023 14:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674482448;
	bh=z1pi/IomC8EbMbAbqgEQrD1QfIJq2govIDjeXv0JcDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BrTE4MYz90htuGhdMHozhf0qVOkhuiq5r1brfrFtCpxYIClm5y7YTCfdN+ftVTBkn
	 7dkdNhIvEVdXqmKNN40xepQMrMXjmJDT1sEpF1X7W1+LvH6dMedMxd/op+sSTyoVyE
	 nqc6wMpWk5jUiabZK9oQKsa3FLmP1kF+zLLk57uLmVGbotjnv5oW1WmTrQB7DmAsG3
	 8SmRy/3Y+3jDuiIFMWCJrjcYHU3DkxJwWw4tFh+6+wCu8pqsPq/6ZaJwkAiTLDrdwQ
	 eHa6sCeXj9wYttP/glug6wfbQuef1BVuI78PFBY/J6hXdvwHyDuFugvbr7B2I4BHgj
	 QN4ePAXtLP6hQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJxNN-0003Ns-IN; Mon, 23 Jan 2023 15:00:46 +0100
Date: Mon, 23 Jan 2023 15:00:45 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom-qmp-combo: correct DP register offsets
Message-ID: <Y86TDYOKtpcLdZYx@hovoldconsulting.com>
References: <20230123120807.3101313-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123120807.3101313-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_060051_601856_3802D10E 
X-CRM114-Status: GOOD (  21.64  )
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

On Mon, Jan 23, 2023 at 02:08:07PM +0200, Dmitry Baryshkov wrote:
> Correct DP register offsets used with new DT bindings scheme. First, DP
> TX registers reside in separate regions, not in the same regions as USB
> TX registers do. Second, correct DP_PHY region offset to follow the
> offset used for earlier generations/bindings.

No, this patch is broken. SC8280XP is different, doesn't seem to have
separate DP TX regions and the DP_PHY registers lies at a different
offset than on previous generations.

You can't just pull these numbers out of your ... ;)

This is the only platform that I can test the DP part on and it is
working. If that happens to be by chance, then you need to blame the
commit adding support for sc8280xp (i.e. not the one that fixed the
binding). And note that this was added by Bjorn who do have access to
the documentation for this SoC (as well as actual hardware).

> Cc: Johan Hovold <johan+linaro@kernel.org>
> Fixes: 83a0bbe39b17 ("phy: qcom-qmp-combo: add support for updated sc8280xp binding")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 1f022e580407..c6634f92de19 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -807,6 +807,8 @@ struct qmp_combo_offsets {
>  	u16 usb3_pcs;
>  	u16 usb3_pcs_usb;
>  	u16 dp_serdes;
> +	u16 dp_txa;
> +	u16 dp_txb;
>  	u16 dp_dp_phy;
>  };
>  
> @@ -984,7 +986,9 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>  	.usb3_pcs	= 0x1400,
>  	.usb3_pcs_usb	= 0x1700,
>  	.dp_serdes	= 0x2000,
> -	.dp_dp_phy	= 0x2200,
> +	.dp_txa		= 0x2200,
> +	.dp_txa		= 0x2600,

You added dp_txa twice.

> +	.dp_dp_phy	= 0x2a00,
>  };
>  
>  static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
> @@ -2639,8 +2643,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
>  	qmp->pcs_usb = base + offs->usb3_pcs_usb;
>  
>  	qmp->dp_serdes = base + offs->dp_serdes;
> -	qmp->dp_tx = base + offs->txa;
> -	qmp->dp_tx2 = base + offs->txb;
> +	qmp->dp_tx = base + offs->dp_txa;
> +	qmp->dp_tx2 = base + offs->dp_txb;
>  	qmp->dp_dp_phy = base + offs->dp_dp_phy;
>  
>  	qmp->pipe_clk = devm_clk_get(dev, "usb3_pipe");

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
