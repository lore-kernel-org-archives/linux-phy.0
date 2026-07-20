Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B29C7C4452B
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 15:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WgWzmsLL4a5/hmeh2ThioHwAndyoEYxR7B2dUK6qHg=; b=X36JTbMVCvxgBf
	jNp/7GV/+bSibxZOJ4kTdWPDAKUYQd8adkAk94dBk2Bf2Sf2ES0PsIbl07wBz34bTuxW1EQMZpmvb
	Xnqi8orwbYuv+uunwVFJUDcC7R8zdkT9TT13ROq5zLazWQUM5PfpT3D3feN3XRAE7Xz0C1yAvB0pa
	ahaMHQBh93p9foArBzmzZFhDYKgqDc/sFR67JFrS++6t7GjwwWvdfaz7kSynD1qdCvq7dvsVnRZ2K
	79/p8LpOGB807dhm9Uhj5R8Sh5Jn7Y+7ZefKpIfLVIlFOTLxzZBHD0+V+6XMYg5++u/UDXESCyPjG
	KmuVPEixm35lhMZ0fTuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpmi-00000007A9v-1jCK;
	Mon, 20 Jul 2026 15:20:00 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpmf-00000007A8D-2bSV
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 15:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784560795;
	bh=1D1sKEa/Qff+Tb9URO3TIUV9ce1vUhdd8hBkVZX90rg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VK/ALKAXQxOxYHh226uH+caIytyBVCaIOBA9zt/VVVEGDl9ExoSiOYFjrU4Af17Ou
	 kkq5BwPsh9hCU8BO6wp7SwsaAmrMgXw6DogvJO1iiAL5WlIvr9Hflz0upeQWa1M8Bm
	 jXdv96ZecpKVgT6VwO+8pkqQ9v1Hcu4usO2jp8UzQO4lw1fkdCLep4NKEgr3SIGRto
	 5A2zkyD/aM7G+vC7HA/VnPirpqwpzHJYXo7IYftLbygheoFT4Xj+ZCGNaNXwtpS0sd
	 RcdMCaA2pdkO+54xrtqi44pQkAIkulfG5L7GTO53+xlxOQze1A65RR0xVz4Pu+yf45
	 RgbHse1py/Vxw==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7D2D817E07A2;
	Mon, 20 Jul 2026 17:19:55 +0200 (CEST)
Message-ID: <e41075b9-8999-48f4-9a61-56b85042b0c5@collabora.com>
Date: Mon, 20 Jul 2026 17:19:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: mediatek: Add support for PCI-Express Gen4
 S-PHY
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org,
 vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org,
 robh@kernel.org
References: <20260720135344.84183-1-angelogioacchino.delregno@collabora.com>
 <20260720135344.84183-3-angelogioacchino.delregno@collabora.com>
 <20260720141301.482441F00A3A@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260720141301.482441F00A3A@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_081957_837557_F689D7BB 
X-CRM114-Status: GOOD (  32.52  )
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

On 7/20/26 16:13, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 4 potential issue(s) to consider:
> - [High] Improper handling of missing or unsupported NVMEM calibration data causes spurious error logs and hard probe failures.
> - [Medium] A valid calibration value of 0 is incorrectly treated as missing data, discarding all calibrations.
> - [Low] The TX_IMPSEL registers are updated twice with identical values during initialization.
> - [Low] Macros for AEQ_EGEQ_RATIO are defined but unused in favor of literal magic numbers.
> --
> 
> --- Patch [2]: [PATCH v2 2/2] phy: mediatek: Add support for PCI-Express Gen4 S-PHY ---
> commit d91c6c0718440c44adc7e6a83f5aeca706a6c3d5
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Subject: phy: mediatek: Add support for PCI-Express Gen4 S-PHY
> 
> This patch adds support for the PCI-Express Gen4 S-PHY found in the latest
> MediaTek SoCs, including MT8196 and MT8894.
> 
>> --- a/drivers/phy/mediatek/phy-mtk-pcie-sphy.c
>> +++ b/drivers/phy/mediatek/phy-mtk-pcie-sphy.c
> [ ... ]
>> +#define PEXTP_DIG_LN_RX2_AEQ_EDGE_0			0x6004
>> +#  define RG_XTP_LN_RX_AEQ_EGEQ_RATIO_GEN3		GENMASK(21, 16)
>> +#  define RG_XTP_LN_RX_AEQ_EGEQ_RATIO_GEN4		GENMASK(29, 24)
>> +#  define AEQ_EGEQ_RATIO_GEN3_TO_22			0x16
>> +#  define AEQ_EGEQ_RATIO_GEN4_TO_22			0x16
> [ ... ]
>> +		mtk_phy_update_field(sif_lane_base + PEXTP_DIG_LN_RX2_AEQ_EDGE_0,
>> +				     RG_XTP_LN_RX_AEQ_EGEQ_RATIO_GEN3, 22);
>> +
>> +		mtk_phy_update_field(sif_lane_base + PEXTP_DIG_LN_RX2_AEQ_EDGE_0,
>> +				     RG_XTP_LN_RX_AEQ_EGEQ_RATIO_GEN4, 22);
> 
> [Severity: Low]
> Is there a reason the literal 22 is used here instead of the
> AEQ_EGEQ_RATIO_GEN3_TO_22 and AEQ_EGEQ_RATIO_GEN4_TO_22 macros defined
> earlier?
> 

I forgot to remove those definitions. Will do for a v3 tomorrow.

> [ ... ]
>> +static void mtk_pcie_sphy_apply_calibration(struct mtk_pcie_sphy *pcie_sphy)
>> +{
> [ ... ]
>> +		mtk_phy_update_field(sif_lane_base + PEXTP_ANA_LN_TRX_A0,
>> +				     RG_XTP_LN_TX_IMPSEL_PMOS, cal->tx_impsel.pmos);
>> +
>> +		mtk_phy_update_field(sif_lane_base + PEXTP_ANA_LN_TRX_A0,
>> +				     RG_XTP_LN_TX_IMPSEL_NMOS, cal->tx_impsel.nmos);
>> +	}
>> +}
>> +
> [ ... ]
>> +static int mtk_pcie_sphy_init(struct phy *phy)
>> +{
> [ ... ]
>> +	if (pcie_sphy->calibration.supported) {
>> +		mtk_pcie_sphy_apply_calibration(pcie_sphy);
>> +
>> +		tx_impsel.pmos = pcie_sphy->calibration.tx_impsel.pmos;
>> +		tx_impsel.nmos = pcie_sphy->calibration.tx_impsel.nmos;
>> +	} else {
>> +		/* Set P=10, N=9 to prevent EMI if no calibration present */
>> +		tx_impsel.pmos = 10;
>> +		tx_impsel.nmos = 9;
>> +	}
>> +
>> +	/* Select TX Impedance on N and P MOSFETs */
>> +	for (i = 0; i < pcie_sphy->num_lanes; i++) {
>> +		void __iomem *sif_lane_base = pcie_sphy->sif_base + PEXTP_REG_LANE(i);
>> +
>> +		mtk_phy_update_field(sif_lane_base + PEXTP_ANA_LN_TRX_A0,
>> +				     RG_XTP_LN_TX_IMPSEL_PMOS, tx_impsel.pmos);
>> +
>> +		mtk_phy_update_field(sif_lane_base + PEXTP_ANA_LN_TRX_A0,
>> +				     RG_XTP_LN_TX_IMPSEL_NMOS, tx_impsel.nmos);
>> +	}
> 
> [Severity: Low]
> Are these register updates redundant?
> 
> When calibration is supported, mtk_pcie_sphy_apply_calibration() already
> writes cal->tx_impsel.pmos and cal->tx_impsel.nmos to PEXTP_ANA_LN_TRX_A0.
> 
> Then this loop immediately overwrites the same registers with the exact same
> values.
> 

Eh yes, fixed for v3.

> [ ... ]
>> +static int mtk_pcie_sphy_get_one_cal_para(struct device *dev, const char *name, u8 max_val)
>> +{
> [ ... ]
>> +	ret = nvmem_cell_read_u8(dev, name, &tmp);
>> +	if (ret == 0)
>> +		buf = tmp;
>> +	else
>> +		ret = nvmem_cell_read_u16(dev, name, &buf);
>> +
>> +	if (ret)
>> +		return dev_err_probe(dev, ret,
>> +				     "Cannot get calibration data for %s\n", name);
> 
> [Severity: High]
> Will this cause spurious error logs or fail the probe when calibration data is
> missing or unsupported?
> 
> If the system does not have CONFIG_NVMEM enabled, nvmem_cell_read_u8() returns
> -EOPNOTSUPP, which gets logged as an error here.
> 
> This error is then passed back up to mtk_pcie_sphy_get_calibration_data(),
> where it is not caught. This will cause the entire driver probe to fail.
> 
> Similarly, if the cell is simply missing from the Device Tree, it returns
> -ENOENT. This also triggers an error log via dev_err_probe(), even though
> missing calibration data is explicitly documented as non-fatal and optional.
> 
>> +
>> +	if (buf == 0) {
>> +		dev_info(dev, "No calibration for %s. Using defaults\n", name);
>> +		return -ENOENT;
>> +	}
> 
> [Severity: Medium]
> Is a value of 0 always indicative of missing calibration?
> 
> If a valid tuned calibration value is 0, this check will return -ENOENT and
> cause mtk_pcie_sphy_get_calibration_data() to discard all calibrations entirely.
> 
> This also seems to prevent the quirk for cal-version == 0 from ever being
> applied:
> 

Fixed for v3.

> [ ... ]
>> +static int mtk_pcie_sphy_get_calibration_data(struct mtk_pcie_sphy *pcie_sphy)
>> +{
> [ ... ]
>> +	ret = mtk_pcie_sphy_get_one_cal_para(dev, "cal-version", 15);
>> +	if (ret < 0)
>> +		goto end;
>> +	version = ret;
>> +
>> +	/* Quirk for eFuse calibration table versions 0 to 4 */
>> +	if ((version <= MTK_PCIE_SPHY_CALIBRATION_LAST_QUIRK_VER) &&
>> +	    cal->rx_leq_rl_ctle == 10) {
> 
> Because mtk_pcie_sphy_get_one_cal_para() returns -ENOENT when it reads a 0,
> the version == 0 condition will never be reached.
> 

Fixed for v3.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
