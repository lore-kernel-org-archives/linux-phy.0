Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECD6CD31A2A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tS/2qW/bvQJyOYqiFz1APHtuJKYGU4U5w2xG5HAW4+A=; b=1YFQgiYCsT02n2
	mPcXW9velQ9pH61PDnut4YaGDbliIqugphxqKBFYugZ6K7Vl7ZesFznyswI95BBG95cMPZ7kND0c4
	CW306ODkKH57efQ0bdgCQSfnhWv2/KBC0H+lzTolnyeP6oU7Kpz4hfW+PwnWnUHIfLhYKQCWqqNVf
	2lC4FtTfVv8b8dqsOa7JxYhxziriZVZNltltRrGphrKGTZOx205heBKJPRYpmlVC4dWnQssdlPIc7
	yAZw+EU2UiOwlkxdd6eh1QZ+NhTKWzl+Kt8t449v5GEm8RpPmy9RDpblk5pO4AbpDro743iz1spkc
	WEtVH1UgLWXTTsx7qIXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwhS-00000008Quy-1BQi;
	Wed, 14 Jan 2026 08:57:58 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwhQ-00000008Qtj-2TjF
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768381076; x=1799917076;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=092LXwRtl3E3+JMBPc+hQPk7+1GDnDFvIMA9uYo3EgI=;
  b=dDXYFZ27i97WJRqT4g5ILRhup06BCwKbz+zIhvCoucmdz4OrqoQaZVnT
   o5p3kxH/O71pSuB4J4AZB7pbG5tpPgc4pjzvTysZLoXXKLGoOpB7Ahd4O
   LNvhq/MPO/c+9vwUVCWetN9QHvMVR3FxP8Srs4jbpsEpJvmb3AIoMsTpp
   fOaNsDVtUTuS9jPy/IhSce3nTO3Tg8TRUkQkEcDoC2xbi93ArldFGhSnB
   GRguFwqgAqY7fyE/9LJn87iIVNQ/BA9vDx5YaeWGyHOdvZY7Sffp95hM+
   YN2tul2UkJlIp7CKp5ZTe+2+Pwn7r/vkuOXVwujYmyW05AXUcqOidNg5u
   g==;
X-CSE-ConnectionGUID: yHyVX3NnRdKTvyVqSbm7IA==
X-CSE-MsgGUID: eQIMRsyhRw2PEsrckCoXHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="68882801"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="68882801"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:57:55 -0800
X-CSE-ConnectionGUID: 7YkKbVRHRcKhwYylcXtH/Q==
X-CSE-MsgGUID: BIuXDWFRSvWAcOZPm03Njg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="205045288"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:57:48 -0800
Date: Wed, 14 Jan 2026 10:57:46 +0200
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
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v7 06/10] power: reset: qcom-pon: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aWdailGSr_RmJrP2@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-7-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114083957.9945-7-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_005756_680741_634C37B4 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

On Wed, Jan 14, 2026 at 09:39:53AM +0100, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrates a Power On device supporting pwrkey
> and resin along with the Android reboot reason action identifier.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for PON
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.

Same comments as per previous patch.


-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
