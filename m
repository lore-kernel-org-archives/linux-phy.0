Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 851D1D31A2A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVenfVnJX1OFsZ/tETfWLB40doS+1W0d7L2EXiEJkEo=; b=AK0dU6izowaxOu
	Oo1tchlYvJ/f/31ZUfgwZVTQlczbl3+VPKz1/MdjI1TXY1W9jfjk83CjgaUomW2z84TXrj8PCq1Ig
	4I0MqnKyUbgNPnPFgWTboa0m1GOcS+2r91bx9CekeY+dlsFLr+3yAEk6smhk3crm39PHvIlN5aSaF
	ElXa1VGxSV7KGcy+fbtwCjhDEO0Ud3qxJrUyTPzGf7TazIkSoYGfh/N+2+2pWGywnuvbBYMXJ1fO2
	V1CHrev3hGA2H7+Ou42hk5dJJWXW5EyjqaERMBNQgdxdU7d6u7ICc4aD0bX+clulkyzELaQpswa66
	H7IK80S0jIe5cKCTK2hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwjD-00000008RUx-1AJU;
	Wed, 14 Jan 2026 08:59:47 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwjA-00000008RTt-3mOb
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768381182;
	bh=8hZT4zra/v0163hZ69ozogA/KUazMXg9TgoP6Ded9M0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lAqkVuls+rU3h7w+XRLmkzVTJ4PfIEHQ0cf+BP8u8Es599RGdgXhjRS7YT4NGD5HG
	 d3y6Egd9MHe67Zhc+Q3f0kz1O3t3l9cEtaLhOfH0W7RYW6LPJKhbe25tWGafnNHnbP
	 4D6Z3JFAR3Vp47EY19uZPhg/Q9StxkLlxto3SYzY63hIMiBowuh0Aav6HkIsDrGyVS
	 i73E2OJ3pY04eXmWY/k1uJ6GkdMEzyQ6+TH9xbuKbvy3d3VV79MUAl0HNTZhWlCVA1
	 ow0fqwv2EhQhC+3h24NX7na8zcdyR+v/FQKQ6Dol8u0kKQ20UvaiuKeSDHp919MD96
	 qCYJNOOackq6Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 79CFF17E1416;
	Wed, 14 Jan 2026 09:59:41 +0100 (CET)
Message-ID: <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
Date: Wed, 14 Jan 2026 09:59:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
 sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
 dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
 melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
 ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com,
 konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com,
 krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <aWdaWY2tWUMllOHH@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_005945_121384_E73E3ACF 
X-CRM114-Status: GOOD (  14.66  )
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

Il 14/01/26 09:56, Andy Shevchenko ha scritto:
> On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:
>> Some Qualcomm PMICs integrate a SDAM device, internally located in
>> a specific address range reachable through SPMI communication.
>>
>> Instead of using the parent SPMI device (the main PMIC) as a kind
>> of syscon in this driver, register a new SPMI sub-device for SDAM
>> and initialize its own regmap with this sub-device's specific base
>> address, retrieved from the devicetree.
>>
>> This allows to stop manually adding the register base address to
>> every R/W call in this driver, as this can be, and is now, handled
>> by the regmap API instead.
> 
> ...
> 
>> +	struct regmap_config sdam_regmap_config = {
>> +		.reg_bits = 16,
>> +		.val_bits = 8,
> 
>> +		.max_register = 0x100,
> 
> Are you sure? This might be a bad naming, but here max == the last accessible.
> I bet it has to be 0xff (but since the address is 16-bit it might be actually
> 257 registers, but sounds very weird).
> 

Yes, I'm sure.

>> +		.fast_io = true,
>> +	};
> 
> ...
> 
>> +	rc = of_property_read_u32(dev->of_node, "reg", &sdam_regmap_config.reg_base);
> 
> Why not device_property_read_u32(dev, ...) ?
> 
> ...
> 
>> +	sdam->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &sdam_regmap_config);
>> +	if (IS_ERR(sdam->regmap))
>> +		return dev_err_probe(&pdev->dev, PTR_ERR(sdam->regmap),
> 
> You have "dev".
> 
>> +				     "Failed to get regmap handle\n");
> 

For the other comments: Done in v8.

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
