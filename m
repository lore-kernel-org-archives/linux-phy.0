Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B13C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPgVQ3G4mrY8vKgacUghe5T90UKw4XCsC476lu6/M1w=; b=F6Mfv98bsd+TSd
	SVkNt4Q4tDJKLrD8UnyzMuTx1nPYNYpDSGSj5sSdSZi8Ur1z5IsKUyVtHY7/DlIumLCbp/TZMebmy
	0Sd1Wj5uRkMZKLwBVKRtCgqie0JV0M/BmTyATd/w6os5BFs1a48PE4kLmGM7gAIJW04Zy5EYBPqCU
	Ie4j4FQ40MjuLIkteLmbQdEZZitROwet5MnzGcfW0qJir6DJ5UTUE3WQD5Z6/sfUhvp/ua4xgrkQ3
	6/fbIyFiR7nVJmmunCsqWGSwCNqUqmrHg3hioCZew0PgIs+mDO61/RTF7gcyX62bB1fR66xyBsPLB
	IkeFCHCsf/v7BsAMxugw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QsX-000000061xH-3D65;
	Tue, 15 Sep 2026 10:59:09 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QsU-000000061wh-0tGB
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789469943;
	bh=OF6s/8vapHXvidtw33VYXC6IH3wg1QPKzTj+mPuHxvo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LkSfh/M4J0abz0GhCV9ib4q2Axf8YD8S3w806jqZ3ZNP0tHdemlV44qBHgUpcKMxq
	 NeEiI3XFV6Jlam5YBWkUBUAtNXrkTASc/Q3DM4EV2hUFDMEeklt9BTnkMsoq2rQO3E
	 ReQmZHAjG6m4gP0sjNE7zsFtHCARVVAYhh0/qHJ15aEUirOf2QGacwwEHey/N5RDBL
	 NLQQp4fiw8aEU480nAA02AUUdqo+PG26X/80bwP93emriesnwj9i8gkMFjdt+hxM8w
	 hYm2K8hY+5PVQkoSXFeS5qU+romtr1zEOLNCYIvvI4P3GplcLfodpNiwG4DzqAZBkN
	 S09VZCBRjkBUA==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AE78217E015A;
	Tue, 15 Sep 2026 12:59:02 +0200 (CEST)
Message-ID: <58666d38-f453-4aa7-94d8-0f0370704df4@collabora.com>
Date: Tue, 15 Sep 2026 12:59:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: mediatek: Add support for PCI-Express Gen4
 S-PHY
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
 conor+dt@kernel.org, olteanv@gmail.com
References: <20260915101022.23852-1-angelogioacchino.delregno@collabora.com>
 <20260915101022.23852-3-angelogioacchino.delregno@collabora.com>
 <20260915102629.EFF231F00893@smtp.kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260915102629.EFF231F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_035906_418417_1F38CE73 
X-CRM114-Status: GOOD (  23.09  )
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

On 9/15/26 12:26, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] phy: mediatek: endianness bug when reading split NVMEM cells in mtk_pcie_sphy_get_one_cal_para()
> --
> 
> commit ab276d5dc9414b3b5618ea96c84dcc086bdf9036
> Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> phy: mediatek: Add support for PCI-Express Gen4 S-PHY
> 
> This commit introduces the driver for the PCI-Express Gen4 S-PHY found in
> recent MediaTek SoCs such as MT6991 and MT8196. It implements the PHY
> initialization routines and handles reading eFuse calibration data from
> the NVMEM framework.
> 
>> diff --git a/drivers/phy/mediatek/phy-mtk-pcie-sphy.c b/drivers/phy/mediatek/phy-mtk-pcie-sphy.c
>> new file mode 100644
>> index 0000000000000..2bf10346ea97a
>> --- /dev/null
>> +++ b/drivers/phy/mediatek/phy-mtk-pcie-sphy.c
> [ ... ]
>> +static int mtk_pcie_sphy_get_one_cal_para(struct device *dev, const char *name, u8 max_val)
>> +{
>> +	u16 buf;
>> +	u8 tmp;
>> +	int ret;
>> +
>> +	/*
>> +	 * All of the calibrations are always max 8 bits long, but some may
>> +	 * be split between two different 8-bits cells: handle this corner
>> +	 * case by retrying reading as u16.
>> +	 */
>> +	ret = nvmem_cell_read_u8(dev, name, &tmp);
>> +	if (ret == 0)
>> +		buf = tmp;
>> +	else
>> +		ret = nvmem_cell_read_u16(dev, name, &buf);
> 
> [Severity: Medium]
> When an 8-bit (or smaller) NVMEM cell crosses a byte boundary in hardware,
> the NVMEM core evaluates its length as 2 bytes, causing nvmem_cell_read_u8()
> to fail with -EINVAL.
> 
> Does falling back to nvmem_cell_read_u16() cause an endianness issue here?

No, it reads fine.

> 
> Because the NVMEM core populates the buffer with a direct memory copy, the
> shifted valid data is placed in the first byte and zeroes in the second byte.
> On big-endian architectures

But this runs only on LE architectures.

>, interpreting this buffer directly as a native
> u16 variable evaluates to buf[0] << 8, which effectively multiplies the
> calibration value by 256. This could lead to spurious -ERANGE failures or
> incorrect calibration values being written to the PHY.
> 
> Would it be safer to use nvmem_cell_read_variable_le_u32() to handle these
> split cells robustly across different architectures?
> 
>> +
>> +	if (ret == -ENOENT) {
>> +		dev_info(dev, "No calibration for %s. Using defaults\n", name);
>> +		return -ENOENT;
>> +	} else if (ret)
>> +		return dev_err_probe(dev, ret,
>> +				     "Cannot get calibration data for %s\n", name);
>> +
>> +	if (buf > max_val)
>> +		return dev_err_probe(dev, -ERANGE,
>> +				     "Bad value %u retrieved for %s.\n", buf, name);
>> +
>> +	return buf;
>> +}
> [ ... ]
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
