Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4727FCC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 15:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4rE2CWpS2jJAt2Gi3R33IO1Lzl1qoZBi9LfMz4QVek=; b=2GhHGVCvVk3y+q
	C1SgrgfZ0tlKQVq4heV5sOB9wRp+lWy273Qg9icoyYDmiYdMmSGa7V5UjhXxBqfimXtgmkQfsnUEs
	9aRBPfTRAzUxM4wN7RtFokhSgLBH+DMf4cg3MCAU5IGPLOwYC9yANb1o1e35PlofdaSQA4feOH94R
	PTXQbHAWmUkbHvhujT2pE8KWWDOVm9qSAgmljKZ/26DXQse9KR/8izup92MU9KUcrLSGHPkgXfKAX
	zysutUCgXZbcsiXyJsyO2otvIpiM7JOg++SagaW2AgzMXmWp6MlkUZmICV9qs9n/zRoswULLrZbOh
	+EdrdBomswLuEZpswIog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjaE-00000003FPS-2s1f;
	Fri, 16 Oct 2026 15:10:58 +0000
Received: from ixit.cz ([2a02:830a:f787:8f00::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjaB-00000003FOa-2XzU
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 15:10:57 +0000
Received: from [IPV6:2a02:830a:f787:8f00:d622:eaa3:3dd6:8f5e] (unknown [IPv6:2a02:830a:f787:8f00:d622:eaa3:3dd6:8f5e])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 16E005340102;
	Fri, 16 Oct 2026 17:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1792163447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=QSbPIIfHI7hCR7OXahnluOwRFZcVkztin1awtcKuU8o=;
	b=FE8ZFDFDisPTrwmGuY/cYQ6TxQ2onfHWpL/VDrPIOSWcLlGhAlhSy/6qMAy5wTRPdELqFJ
	CRmTrcrMAXTfdQJ8qpTf+yBEA9bbh1x7ponjDGpzGf710CvE/BkOmh8G0CIJYn9c84hLl1
	p9Q7rM+nQKUg9ApzRTQdI4NtxF7rgyE=
Message-ID: <6564f9f8-6ecd-4912-b029-c92dfba792c1@ixit.cz>
Date: Fri, 16 Oct 2026 17:10:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] phy: qcom-mipi-csi2: Add C-PHY support for
 X1E80100
To: geocausa@gmail.com, Bryan O'Donoghue <bod@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
 <20261016-x1e-cphy-rfc-v3-6-40a346a72153@gmail.com>
Content-Language: en-US, cs-CZ
From: David Heidelberg <david@ixit.cz>
Autocrypt: addr=david@ixit.cz; keydata=
 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
In-Reply-To: <20261016-x1e-cphy-rfc-v3-6-40a346a72153@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_081055_938171_217A487A 
X-CRM114-Status: GOOD (  22.13  )
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

On 16/10/2026 16:56, George Neacsu via B4 Relay wrote:
> From: George Neacsu <geocausa@gmail.com>
> 
> The CSI2 PHY schema already allows bus-type C-PHY, but the driver
> rejects it. Accept it on SoCs that provide a C-PHY sequence, with up to
> three trios and no lane polarities. The endpoint's bus-type now sets the
> PHY mode, set_mode() only accepts that mode, and in C-PHY mode
> configure() takes the symbol rate and keeps the matching link frequency,
> so clock scaling works as for D-PHY.
> 
> In C-PHY mode, lanes_enable() powers up the trios on the odd CTRL5 bits,
> skips the D-PHY lane polarities and writes the C-PHY sequence. The
> settle count is computed as for D-PHY: with a C-PHY link frequency of
> half the symbol rate, the unit interval in the existing formula is one
> symbol, which is also how David Heidelberg's CAMSS C-PHY series
> computes it.
> 
> The X1E80100 sequence is Qualcomm's for the v2.1.2 3PH PHY at 2.5 Gsps,
> taken from the downstream camera driver's GPL-2.0
> cam_csiphy_2_1_2_hwreg.h (csiphy_3ph_v2_1_2_reg, datarate_212_2p5Gsps
> and the 3PH reset exit), as the D-PHY sequence above it is. Its three
> settle count entries are the ones downstream marks as such. The trios
> sit in lane slots 1, 3 and 5, so the per-trio registers are written
> with a CSIPHY_LN_CTRLn() address macro.
> 
> Tested on the Surface Pro 11 (X1E80100), booting next-20261015 with
> this series, David Heidelberg's CAMSS C-PHY series v9 and two CAMSS
> patches on top: the IMX681 on CSIPHY2, one trio at 2.4 Gsym/s, streams
> 3844x2640 at 30 fps through CSID1 and an RDI, and its colour bars are
> byte-identical to the same pattern captured with an out-of-tree driver.
> The timer runs at 400 MHz and the computed settle count is 28. D-PHY is
> unchanged: an OV13858 on CSIPHY1 over four lanes streams at 29.9 fps.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: George Neacsu <geocausa@gmail.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 168 ++++++++++++++++++++-
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  53 ++++++-
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   2 +
>   3 files changed, 212 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> index 84c45f67fd..f09ef9b41c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -22,6 +22,7 @@
>   #define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
>   
>   #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)		((0x200 * (n)) + 0x24)
> +#define CSIPHY_LN_CTRLn(ln, n)			((0x200 * (ln)) + 0x4 * (n))
>   
>   /*
>    * 3 phase CSI has 19 common status regs with only 0-10 being used
> @@ -161,6 +162,144 @@ mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
>   	{.reg_addr = 0x0c64, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
>   };
>   
> +/* Qualcomm's 2.5 Gsps settings, from the GPL-2.0 cam_csiphy_2_1_2_hwreg.h */
> +static const struct
> +mipi_csi2phy_lane_regs lane_regs_v2_1_2_cphy[] = {
> +	/* Power up lanes 3ph mode */
> +	{.reg_addr = 0x101c, .reg_data = 0x7a, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x1018, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +
> +	/* datarate_212_2p5Gsps: AFE settings */
> +	{.reg_addr = CSIPHY_LN_CTRLn(1, 26), .reg_data = 0xf1, .param_type = CSIPHY_DEFAULT_PARAMS},

Thank you for the change. While the lane being decimal number is completely 
fine, I believe the register passed should stay in hex :)

Otherwise LGTM.

David

[...]

[...]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
