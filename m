Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C49C83F1A
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 15:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2wg6p4kG6v1XLtwPkxOqpuRsqUS1h9ZS5R9SoJWbwM=; b=RK62W1zX/ucNp0
	dxD+Yf2JDEq1nA+LIzA22yxLPhvJl+QUa1A8OEpVMyHftHTdT52tiPTGLjwxR+GzZYnALqEbEv0jE
	KxzLVeCRplSUlr+smZBsYcgOMuLfUi/m85euKZSWZsN5nhx6qw5Rvl0+XYcjqiKPjjm6fgGSM3f2R
	4q6dma6FBC1RL69zLnLKaDrCoh/4pWBcbQvGtC3UuuZ3QPKk3nzaJuwrhanNPqfUVWZdWWrP8pY48
	Ek2JrxgfDtedgcB+PN3mYd1eeiDky9rfhxbm9tXBq8l2vp8SxNL8K/2dmvXe3uK+Ymy7GnSJmo0We
	bRL+jMkZ18D6LgUOmCRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueEyX-00000002sh9-2NDO;
	Tue, 22 Jul 2025 15:32:17 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDo0-00000002fmA-2TFX
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 14:17:22 +0000
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4bmfSL5p7Xz6H7Wq;
	Tue, 22 Jul 2025 22:15:46 +0800 (CST)
Received: from frapeml500008.china.huawei.com (unknown [7.182.85.71])
	by mail.maildlp.com (Postfix) with ESMTPS id C4510140114;
	Tue, 22 Jul 2025 22:17:10 +0800 (CST)
Received: from localhost (10.203.177.66) by frapeml500008.china.huawei.com
 (7.182.85.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 22 Jul
 2025 16:17:09 +0200
Date: Tue, 22 Jul 2025 15:17:08 +0100
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
CC: <sboyd@kernel.org>, <jic23@kernel.org>, <dlechner@baylibre.com>,
	<nuno.sa@analog.com>, <andy@kernel.org>, <arnd@arndb.de>,
	<gregkh@linuxfoundation.org>, <srini@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <sre@kernel.org>, <krzysztof.kozlowski@linaro.org>,
	<u.kleine-koenig@baylibre.com>, <linux-arm-msm@vger.kernel.org>,
	<linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>,
	<kernel@collabora.com>, <wenst@chromium.org>, <casey.connolly@linaro.org>
Subject: Re: [PATCH v2 6/7] iio: adc: qcom-spmi-iadc: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <20250722151708.00000873@huawei.com>
In-Reply-To: <20250722101317.76729-7-angelogioacchino.delregno@collabora.com>
References: <20250722101317.76729-1-angelogioacchino.delregno@collabora.com>
	<20250722101317.76729-7-angelogioacchino.delregno@collabora.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.203.177.66]
X-ClientProxiedBy: lhrpeml500011.china.huawei.com (7.191.174.215) To
 frapeml500008.china.huawei.com (7.182.85.71)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_071720_780175_AA3E5CCA 
X-CRM114-Status: GOOD (  15.62  )
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

On Tue, 22 Jul 2025 12:13:16 +0200
AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:

> Some Qualcomm PMICs integrate an Current ADC device, reachable
> in a specific address range over SPMI.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device and
> initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Mostly fine. Trivial comments inline.

Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>

>  
>  static int iadc_reset(struct iadc_chip *iadc)
> @@ -270,7 +269,7 @@ static int iadc_poll_wait_eoc(struct iadc_chip *iadc, unsigned int interval_us)
>  
>  static int iadc_read_result(struct iadc_chip *iadc, u16 *data)
>  {
> -	return regmap_bulk_read(iadc->regmap, iadc->base + IADC_DATA, data, 2);
> +	return regmap_bulk_read(iadc->regmap, IADC_DATA, data, 2);

Perhaps not the time for it, but I'd prefer that 2 replaced with sizeof(*data)

>  }
>  
>  static int iadc_do_conversion(struct iadc_chip *iadc, int chan, u16 *data)
> @@ -483,12 +482,22 @@ static const struct iio_chan_spec iadc_channels[] = {
>  
>  static int iadc_probe(struct platform_device *pdev)
>  {
> +	struct regmap_config iadc_regmap_config = {
> +		.reg_bits = 16,
> +		.val_bits = 8,
> +		.max_register = 0x100,
> +		.fast_io = true,
> +	};
>  	struct device_node *node = pdev->dev.of_node;
>  	struct device *dev = &pdev->dev;
> +	struct spmi_subdevice *sub_sdev;
> +	struct spmi_device *sparent;
>  	struct iio_dev *indio_dev;
>  	struct iadc_chip *iadc;
>  	int ret, irq_eoc;
> -	u32 res;
> +
> +	if (!dev->parent)

How would this happen?

> +		return -ENODEV;
>  


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
