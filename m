Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B51D31A2C
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+42aJP7a7hxrdttyPRnOXqmhK8/Zd9bZ/+nCf/wTfg=; b=quCs/Ytf/CqkXd
	Vp8m1TjAEAP3G3cUc9zA2MAk348ls7y40MdX/xiBy43Q4toaf1cMVnlmUOD9XU/+AZKolIhjP1WWx
	5NyGrO7KFVKYdxW6Q062W1gMxiwK6UuKgFPxZcwiE2t8HAeRv1cWO9xTG7z7j/gXiOjIGB5lJF/dD
	92lRK/tPgu5SR7+ELnjURcGX5UWTeNCBe/64C5y3ZLjYK+ruiVZrz/q1o2E+6lJt7AnsCNjuFkuA8
	RIO4XCMEPecOp6hMC92c4OAVj1QlgYy6a/8MfDHxx9bHYDxej8PdOwYP0HOoRZypVn42kp3ZunPQJ
	rPndPnAQ24royQESg0cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwpJ-00000008Soa-1S9F;
	Wed, 14 Jan 2026 09:06:05 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwpG-00000008SnH-17UQ
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768381562; x=1799917562;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=z8JMD/67eqjZ9kzPMFeujRha7sVyRHasdTbZAjbLZ7k=;
  b=WA6usuekNcVf+M95KUV0pBSAgFxkbAq1bdoYqi8+Auw2Fx6vLeZvaQSq
   ohjjGuweKWQE7C6Wh7wlw3kt3cxhj+7vi66p90kFhtgdPq7gjIKHasp0L
   MlhqAYPXbgsCAgsO/U0pGf3IdKQE3axKEiFqye99YObLPdM/xvnQjoj++
   kkVrj+RcA7BvGiz06/OxBRFSx6R92hWhQigY1AUTCAL/NInyS9khbEP7g
   125mwwgfVVm8yjExB7+rbt2Ium3lUZgkesO0SR6enjmwEnBa379arnSqg
   4jz7rQuJ6hDsA7dD5bGQrNq3KE9Ea9iwruqj5U0W6KDO8/0/8fjsDtwS3
   g==;
X-CSE-ConnectionGUID: OQFkY/LmTtCoOeor8NCMFg==
X-CSE-MsgGUID: k6bogE/NSoetqxSvUtl4rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69728878"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="69728878"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:06:01 -0800
X-CSE-ConnectionGUID: pRSBKz3ySZGVDB6pBJwWiQ==
X-CSE-MsgGUID: pHSYxn8WS/KQJ7fkbYseMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="209674205"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:05:55 -0800
Date: Wed, 14 Jan 2026 11:05:51 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
	srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
	sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
	luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com,
	Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: Re: [PATCH v7 09/10] iio: adc: qcom-spmi-iadc: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aWdcb9bTLJqhZ4Bf@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-10-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114083957.9945-10-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010602_316764_D5857EB4 
X-CRM114-Status: GOOD (  11.35  )
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

On Wed, Jan 14, 2026 at 09:39:56AM +0100, AngeloGioacchino Del Regno wrote:
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

> Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD

I see these tags, but just again pointing out that max_register in regmap !=
MAX! It's MAX - 1, i.e. the last *accessible* register. So, I find personally
weird the configurations which has 257 registers instead of 256.

This can be easily checked when dumping register contents via debugfs.

Plus the same comments applies here as I gave previously.


-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
