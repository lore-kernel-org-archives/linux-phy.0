Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84C23D70DE6
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnikbowSE5NXuPTNZi80JwrbSPXcEqGHVYm0hbsZDDM=; b=269LTmnmy2q75m
	0NbXeo2koGzmt3XNqZONHqNmAomQ3kgWGKVzeFhQXpAhQnb9b8JGjs+atbwf87t3WFA/pMxjQzX2O
	dUOb79VV88MciBC9H/tUTEU+x/y6sEOgItLpeDsvKR+xV+FTdU+jnsmsvhmCaRih/CNGJ6LZbw4mI
	0I0FpNXXSNDdnMaQOqA56+S+0gxcOO6it5YE8zJfqn/Ijf5NJMwyyfcW/fQ7Wu4H8cw/1piQz3atp
	IqptQ+qAu2GopLeywECkghwIvNMZTqdQJt1Ukjq8224m/jC0OmSBHEf7YQfGHtImeAV3OYbtFBB0B
	bLujJ07shE73M6ol2aLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGhcO-0000000G1Tw-2zKx;
	Thu, 28 Nov 2024 16:43:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGhcL-0000000G1TU-49vB
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 16:43:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A46F5C5DDD;
	Thu, 28 Nov 2024 16:43:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 822B1C4CECE;
	Thu, 28 Nov 2024 16:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732812228;
	bh=cfGnX3HhW0ZLkB6Rpk07vfYDD6bx5vOherGOdZSl7mA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iEfZGUbGESxjukgGsMx0W1DMiYtp3MPy0kCVcFl89B4W5MoUzR/7pA9fWq0j/gY1d
	 9EAFbqwIrZeYgfUqmMtxaltDKpCa08muuIUscn0Th2A4Al/43KDkOy0BuA8pSG96Fu
	 XKdWVe35z6BNhlsa3elcuFwdf+Q8EmjqoLKV8+704pDR6U4OJ7GJ0oJtFR6QUHaSAK
	 U67PlWV0JyEP0fDIV6irBIkMZF9k7g3iIEAPqYbObbtfVw9co/lRQSTOs5E/HsmYU/
	 H8Mdi1RL5qwAugOuMlODoIaDJM6xixfhdCKI1ISbJSlGf8aj4k9dS68plxbY0cuJEA
	 3eSvq2a6NpnPg==
Date: Thu, 28 Nov 2024 10:43:45 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Song Xue <quic_songxue@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Manu Gautam <mgautam@codeaurora.org>, 
	Vivek Gautam <vivek.gautam@codeaurora.org>, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom-qusb2: Add regulator_set_load to Qualcomm
 usb phy
Message-ID: <vbuo2yel2pdcwnmz32f4t5pb6v3ptt2bcs2t6ybab2jxnkd6e7@rjnsbawj4zpb>
References: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241121-add_set_load_to_qusb_phy-v2-1-1c5da1befec0@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_084350_114352_0EF0BC4E 
X-CRM114-Status: GOOD (  27.86  )
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

On Thu, Nov 21, 2024 at 04:09:27PM +0800, Song Xue wrote:
> Set the current load before enable regulator supplies at QUSB phy.
> 
> Encountered one issue where the board powered down instantly once the UVC
> camera was attached to USB port while adding host mode on usb port and
> testing a UVC camera with the driver on QCS615 platform. The extensible
> boot loader mentioned that OCP(Over Current Protection) occurred at LDO12
> from regulators-0 upon powered on board again. That indicates that the
> current load set for QUSB phy, which use the regulator supply, is lower
> than expected.
> 
> As per QUSB spec, set the maximum current load at 30mA to avoid overcurrent
> load when attach a device to the USB port.
> 
> Fixes: 937e17f36a32 ("phy: qcom-qusb2: Power-on PHY before initialization")
> Signed-off-by: Song Xue <quic_songxue@quicinc.com>

The patch looks good. But if we describe the regulator(s) with
regulator-allow-set-load; and not all the consumers vote for load, the
sum of the load when USB phy is disabled goes to 0 and we will enter
LPM.

For this reason we're not doing any load requests today. Can you confirm
that this works fine with a dtb where only HPM is permitted (as well as
LPM and HPM)? If so I'd be in favor of us merging this change, but
keeping the dts HPM-only until someone confirms that all consumers of
these regulators specify load-votes.

Regards,
Bjorn

> ---
> Changes in v2:
> - Removed "---" above the Fixes. 
> - Link to v1: https://lore.kernel.org/r/20241121-add_set_load_to_qusb_phy-v1-1-0f44f3a3290e@quicinc.com
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index c52655a383cef008552ed4533b9f31d1cbf34a13..80f0d17c42717e843937255a9a780bbae5998535 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -722,16 +722,27 @@ static int __maybe_unused qusb2_phy_runtime_resume(struct device *dev)
>  	return ret;
>  }
>  
> +#define QUSB2PHY_HPM_LOAD 30000 /*uA*/
> +
>  static int qusb2_phy_init(struct phy *phy)
>  {
>  	struct qusb2_phy *qphy = phy_get_drvdata(phy);
>  	const struct qusb2_phy_cfg *cfg = qphy->cfg;
>  	unsigned int val = 0;
>  	unsigned int clk_scheme;
> -	int ret;
> +	int ret, i;
>  
>  	dev_vdbg(&phy->dev, "%s(): Initializing QUSB2 phy\n", __func__);
>  
> +	/* set the current load */
> +	for (i = 0; i < ARRAY_SIZE(qphy->vregs); i++) {
> +		ret = regulator_set_load(qphy->vregs[i].consumer, QUSB2PHY_HPM_LOAD);
> +		if (ret) {
> +			dev_err(&phy->dev, "failed to set load at %s\n", qphy->vregs[i].supply);
> +			return ret;
> +		}
> +	}
> +
>  	/* turn on regulator supplies */
>  	ret = regulator_bulk_enable(ARRAY_SIZE(qphy->vregs), qphy->vregs);
>  	if (ret)
> 
> ---
> base-commit: decc701f41d07481893fdea942c0ac6b226e84cd
> change-id: 20241121-add_set_load_to_qusb_phy-d1327c797ffe
> 
> Best regards,
> -- 
> Song Xue <quic_songxue@quicinc.com>
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
