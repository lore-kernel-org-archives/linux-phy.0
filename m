Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3655C87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 31 Jul 2025 04:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nxo+P0l4zoWKz/kJzkt/gVCQ3VaYorxzFaDYqE74yUQ=; b=kMd3rAFCR9cmX0
	yX7d7RhNSwicY4HA0GO4abSM5jV9pwM6oT/sMKZbmGn9O2ge7c77d0pbp6i0TXntEorDWrBMPkjOr
	NYpAFde5y9qNwd06VOME6W5ygWdfaCBNSjcC7KWRBr7Bn1GPZyUsfxCJtsm81bIbvScKcEYkIXrRw
	dJjv1GAzbRpRp/S+7pz6JoEEnBn1PRUILURsF9puFD9dqgWG//4FbNxKiUDUBON6oWvWYLgPuisP2
	hBP/x9WB0u3fMtLUWcoN14jReHL/XHv/JqBcSAbWve1ss/TWqLEAtiFT5OnqqcqWUa+FvoE2vsdEI
	BKGTsrOuHhbLD8DpFADQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhKSY-00000002rB3-1pzM;
	Thu, 31 Jul 2025 04:00:02 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhKSW-00000002rAM-0IHV
	for linux-phy@lists.infradead.org;
	Thu, 31 Jul 2025 04:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753934400; x=1785470400;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OcrZsUyHq3wWNpX5cgXufQ+ZLvYsQ6Y63zo9gqCOHL4=;
  b=TiNBGAaXlu6OEnHALgN2m6PscmHjtsqTHcUx3Dwx23QvRsaSZnZBfhgD
   TlIvcUrDTOc9wZR/0lDQ/Ept96k0kC5J/gYShvlSzWRWritbI9S9NIWp6
   Jn+G1xSVWqtoj1VNqDiAZ4Sg5I7orkCQdomWEyrN90AIHcZEcmsz6u6ON
   uvdCCCaxBsmkJK00C7a/PMBqL5psKS/kX6XXdkJELYoJnGBnt6boYBiXS
   clGu//Mf9+xiGKRZF3oWwwVM8HDEVbGAwdefOw0g6drlBnbmpZNzf2OZd
   GoOzuE3WCv6laNzzDVpRy/Oh/DIeULmhzrKFs9AcDB7w766dUK/k3cGqN
   Q==;
X-CSE-ConnectionGUID: 0b4il6LiS+iS0rbP8a+Ivg==
X-CSE-MsgGUID: /pn1GSObSP6HiAf4RLzj6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56336423"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; 
   d="scan'208";a="56336423"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2025 20:59:59 -0700
X-CSE-ConnectionGUID: gYjm9tjYSkK3pLYlL9EdZg==
X-CSE-MsgGUID: p6F5ISCGQ2S6IQroCGXimQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; 
   d="scan'208";a="194138761"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 30 Jul 2025 20:59:54 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uhKSN-0003Oi-0h;
	Thu, 31 Jul 2025 03:59:51 +0000
Date: Thu, 31 Jul 2025 11:59:47 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
	casey.connolly@linaro.org
Subject: Re: [PATCH v3 4/7] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <202507311150.5ofvQlKl-lkp@intel.com>
References: <20250730112645.542179-5-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250730112645.542179-5-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_210000_182054_7FE4BB3A 
X-CRM114-Status: GOOD (  10.92  )
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

Hi AngeloGioacchino,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250730]
[cannot apply to jic23-iio/togreg sre-power-supply/for-next char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.16 v6.16-rc7 v6.16-rc6 v6.16]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/spmi-Implement-spmi_subdevice_alloc_and_add-and-devm-variant/20250730-193217
base:   next-20250730
patch link:    https://lore.kernel.org/r/20250730112645.542179-5-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v3 4/7] phy: qualcomm: eusb2-repeater: Migrate to devm_spmi_subdevice_alloc_and_add()
config: arm64-randconfig-002-20250731 (https://download.01.org/0day-ci/archive/20250731/202507311150.5ofvQlKl-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250731/202507311150.5ofvQlKl-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507311150.5ofvQlKl-lkp@intel.com/

All errors (new ones prefixed by >>):

>> aarch64-linux-ld: Unexpected GOT/PLT entries detected!
>> aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: drivers/phy/qualcomm/phy-qcom-eusb2-repeater.o: in function `eusb2_repeater_probe':
   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:228:(.text+0x5a8): undefined reference to `devm_spmi_subdevice_alloc_and_add'
>> aarch64-linux-ld: drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:236:(.text+0x61c): undefined reference to `__devm_regmap_init_spmi_ext'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
