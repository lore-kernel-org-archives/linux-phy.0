Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18E11C83F34
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 15:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JG+ArQPsvWujf2pDQ80UYhxQhfbmoDeRtS9IljfrThk=; b=XfucO2IVIi1RRS
	a33FPwt9sDD2PPwqSm4tDSgsz55jEfxPBJGMMNJnHviVQzayys6oB0zI6xtERvyYd7kNC0ukkeHwv
	fEHXb4Ww40V7NZzBIkoCmhEIJ8yMdygUkIfe5iKfO4DWUFwzj2CaZ4KbeL+04SpUoFTvnxMGbYPRd
	v89Zw8WCFk5reeoEm+4Fge/sZ1L2/NLwzHNk752KcjrhVz/Yj4Mc+LsTwVUETOzcXaM04S7T1NUi0
	EVShRXGnawAZ+tzBMVlAhUGbBZ3f2QZF2F1vu0gZBNr+FMqrLO5vrb91wW6weFgFY8uicq3ZpKZBc
	6IgiGgq50VuN+FfkPBMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueEyY-00000002si9-3QTX;
	Tue, 22 Jul 2025 15:32:18 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDqh-00000002gDL-0cIb
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 14:20:08 +0000
Received: from mail.maildlp.com (unknown [172.18.186.31])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4bmfWb5N70z6H7Kd;
	Tue, 22 Jul 2025 22:18:35 +0800 (CST)
Received: from frapeml500008.china.huawei.com (unknown [7.182.85.71])
	by mail.maildlp.com (Postfix) with ESMTPS id B7B751402C8;
	Tue, 22 Jul 2025 22:19:59 +0800 (CST)
Received: from localhost (10.203.177.66) by frapeml500008.china.huawei.com
 (7.182.85.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 22 Jul
 2025 16:19:58 +0200
Date: Tue, 22 Jul 2025 15:19:56 +0100
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
Subject: Re: [PATCH v2 7/7] iio: adc: qcom-spmi-iadc: Remove regmap R/W
 wrapper functions
Message-ID: <20250722151956.000043a0@huawei.com>
In-Reply-To: <20250722101317.76729-8-angelogioacchino.delregno@collabora.com>
References: <20250722101317.76729-1-angelogioacchino.delregno@collabora.com>
	<20250722101317.76729-8-angelogioacchino.delregno@collabora.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.203.177.66]
X-ClientProxiedBy: lhrpeml500011.china.huawei.com (7.191.174.215) To
 frapeml500008.china.huawei.com (7.182.85.71)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_072007_332684_BC385099 
X-CRM114-Status: GOOD (  10.27  )
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

On Tue, 22 Jul 2025 12:13:17 +0200
AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:

> This driver doesn't need to add any register base address to any
> regmap call anymore since it was migrated to register as a SPMI
> subdevice with its own regmap reg_base, which makes the regmap
> API to automatically add such base address internally.
> 
> Since the iadc_{read,write,read_result}() functions now only do
> call regmap_{read,write,bulk_read}() and nothing else, simplify
> the driver by removing them and by calling regmap APIs directly.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
One trivial comment following on from previous.
Either way

Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>

> @@ -267,11 +249,6 @@ static int iadc_poll_wait_eoc(struct iadc_chip *iadc, unsigned int interval_us)
>  	return -ETIMEDOUT;
>  }
>  
> -static int iadc_read_result(struct iadc_chip *iadc, u16 *data)
> -{
> -	return regmap_bulk_read(iadc->regmap, IADC_DATA, data, 2);
> -}
> -
>  static int iadc_do_conversion(struct iadc_chip *iadc, int chan, u16 *data)
>  {
>  	unsigned int wait;
> @@ -296,7 +273,7 @@ static int iadc_do_conversion(struct iadc_chip *iadc, int chan, u16 *data)
>  	}
>  
>  	if (!ret)
> -		ret = iadc_read_result(iadc, data);
> +		ret = regmap_bulk_read(iadc->regmap, IADC_DATA, data, 2);

sizeof(*data) would be better than the magic 2.  This is probably a good
place to tidy that up given you are replacing the line anyway.


>  exit:
>  	iadc_set_state(iadc, false);
>  	if (ret < 0)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
