Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5381DCC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 13:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Cx1CpiFXHmCppS+UFdudENpcLqsv/pdUd9ZcIb5rhI=; b=LaJ4G2AQfklUAq
	wA8pDkdrZHtpnZEd4AWFTzJA9dgZvlZ5GJSEBNotd6+16mv6lJjioeJyrvIuX46+OKSt+Q1FUoJ5Y
	Li6jUsbCxRvF8xIvvjFRIuVbj7pdHiSXnhuh4MrG8c3n4jSrjqh6gG/DpwjLKgWFFvOi6hkqKbJWX
	putEdz+T8l+Myiw4s3mhWskuonjo1Q1SK7Lnj1ZRpm/40uZCUxGiv7Z9fzAe0PaRHjIM0zXgf2VNM
	ODXYqqgoQSqKnftjmskdWCvmNSLtuuvng77GCEIALmLrigXhXP6EfW9l7AMu98QHE7qrDglMce3bu
	V/EtTcNUtVwhRhkpThhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhhC-000000030pS-1yiV;
	Fri, 16 Oct 2026 13:10:02 +0000
Received: from ixit.cz ([84.42.129.46])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhh9-000000030o9-0vf5
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 13:10:01 +0000
Received: from [IPV6:2a02:830a:f787:8f00:d622:eaa3:3dd6:8f5e] (unknown [IPv6:2a02:830a:f787:8f00:d622:eaa3:3dd6:8f5e])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id D416C53407C7;
	Fri, 16 Oct 2026 14:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1792153487;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ZUcM5vWKLfam7a7VYZQ/bOBV8s2Pn4a8iyb1gpC1DhI=;
	b=W9NZqwo4/o2uTz9OchdKEyGJEet0GRxovTM9Sg8EqX3Cic6H+QKlJmofj9qAR4Fr9QG2Uf
	CwSRN7uuwPsRCsgbR/qRhxpufBthaizACWXRaTK8MjCG0g0ED5418icEB8fXXIBIeP/DKB
	oFhFhO50eMHL6k7YA+Au0cWrf6OJf6s=
Message-ID: <5009ea04-c715-4273-a1cf-81c4162d5b02@ixit.cz>
Date: Fri, 16 Oct 2026 14:24:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 4/4] phy: qcom-mipi-csi2: Add C-PHY support for
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
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <20261016-x1e-cphy-rfc-v2-4-377654253193@gmail.com>
Content-Language: en-US, cs-CZ
From: David Heidelberg <david@ixit.cz>
Autocrypt: addr=david@ixit.cz; keydata=
 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
In-Reply-To: <20261016-x1e-cphy-rfc-v2-4-377654253193@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_060959_499045_902CF980 
X-CRM114-Status: GOOD (  21.93  )
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

On 16/10/2026 12:57, George Neacsu via B4 Relay wrote:
> From: George Neacsu <geocausa@gmail.com>
> 
> The CSI2 PHY schema already allows bus-type C-PHY, but the driver
> rejects it. Accept it on SoCs that provide a C-PHY sequence, with up to
> three trios and no lane polarities. The endpoint's bus-type now sets the
> PHY mode, set_mode() only accepts that mode, and in C-PHY mode
> configure() takes the symbol rate and keeps the matching link frequency,
> so clock scaling works as for D-PHY.
> 
> lanes_enable() picks the sequence for the mode and is split into
> helpers: the CTRL5 lane mask, where the trios are the odd bits and the
> D-PHY data lanes the even ones plus the clock bit, and the D-PHY lane
> polarities. The settle count is computed in both modes. With a C-PHY
> link frequency of half the symbol rate, the unit interval in the
> existing formula is one symbol, which is also how David Heidelberg's
> CAMSS C-PHY series computes it. Sequence delays now use fsleep(), as
> the C-PHY sequence waits 3 ms after its reset exit.
> 
> The X1E80100 sequence is Qualcomm's for the v2.1.2 3PH PHY at 2.5 Gsps,
> taken from the downstream camera driver's GPL-2.0
> cam_csiphy_2_1_2_hwreg.h (csiphy_3ph_v2_1_2_reg, datarate_212_2p5Gsps
> and the 3PH reset exit), as the D-PHY sequence above it is. Its three
> settle count entries are the ones downstream marks as such.
> 
> Tested on the Surface Pro 11 (X1E80100) with an IMX681 on CSIPHY2, one
> trio at 2.4 Gsym/s, and raw capture through CSID1 and an RDI interface,
> with David's CAMSS C-PHY series and two CAMSS patches on top:
> 3844x2640 at 30 fps, and the sensor's colour bars are byte-identical to
> the same pattern captured with an out-of-tree driver. The timer runs at
> 400 MHz and the computed settle count is 28; forcing anything from 6 to
> 48 gives the same frames. D-PHY is unchanged: an OV13858 on CSIPHY1
> over four lanes streams at 29.9 fps with the same settle count as
> before.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: George Neacsu <geocausa@gmail.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 216 ++++++++++++++++++---
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  53 ++++-
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   2 +
>   3 files changed, 242 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> index b2d4ec3e8..39e48e7ac 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> @@ -161,6 +161,137 @@ mipi_csi2phy_lane_regs lane_regs_x1e80100[] = {
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
> +	{.reg_addr = 0x0268, .reg_data = 0xf1, .param_type = CSIPHY_DEFAULT_PARAMS},

as you can see repeating pattern (e.g. another lane), please use macros.

I would suggest something like I did in

https://lore.kernel.org/all/20260729-qcom-cphy-v9-6-1f8d9fdab037@ixit.cz/


David

> +	{.reg_addr = 0x0294, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0288, .reg_data = 0x20, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0278, .reg_data = 0x20, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x026c, .reg_data = 0x3d, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x028c, .reg_data = 0x30, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0270, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
> +	{.reg_addr = 0x0274, .reg_data = 0x03, .param_type = CSIPHY_DEFAULT_PARAMS},
> +
> +	{.reg_addr = 0x0668, .reg_data = 0xf1, .param_type = CSIPHY_DEFAULT_PARAMS},

^ (reference)

David

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
