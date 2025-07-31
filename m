Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9BFCC87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 31 Jul 2025 07:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RbOp24OP+NbblvZ4jtgMoDLVQ6oiicPRTc4O8CrjJw=; b=oEvmJMa4vdg3Tu
	FpgGeg7W22Acb2zQHxzIwpmq6zwfTIwskj8qlniYh+ozmufj1sRlmEFiQsjMSEKqSGoPq1wcU0Ftv
	f0NRsPlu4GZf4htl456EQqOMnHMxfgkuOh3woNbuD3Fyk3BUmdYLY9i04ywkGKGCPncYp6xJXF58K
	ksRFBYLKnM40cz6FymBfK9PhpehmKQaBP4yxuLRy0BpHOMTVMjqDP6XBx0Rh+wM8V6YohBW48q4NC
	mr4xoN4iR/Pw2upOp7Mqba0DZGZ0kLXI8RY2EN8K1BgANugvuqBAsUfkXYix+c5bhCvTqozBiXtio
	TlJUO0xlj6z7NwdCm8KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhNKU-000000031cx-0lUD;
	Thu, 31 Jul 2025 07:03:54 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhNKR-000000031bW-1Pll
	for linux-phy@lists.infradead.org;
	Thu, 31 Jul 2025 07:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753945431; x=1785481431;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=CXzVxwTdB/SNNsSbQvexNowg0uk3C5YQ17L4jcVD2Nk=;
  b=IuKe/59/ic0XkO2WS99tTsl6oip4AzVdYh50t04crBbrBGkJZ0V4hZxA
   w0ZBx202FRi201hzBhchoXY8PIFFrHnKegxdR6tW5qg6vMuv45jAUxFil
   A7tn8UtQ/23JRaor1kuAlnmG4xzC8eXPcDwaz16YEiRTagaCmwJjw2HZr
   otCMPu8w7HLaUbhUhCI+VafkkoRFcK1QIObYpIDKYBMVJ2zXs48a4HBzF
   PrJYAf3dNjjViP2T2DUdcYtU96B56ceE2HHqcye9DGKeoCElCcSFoxHLl
   RI7qNifMzgW/ZBsA0sdquFcpjRlSfNfwkqFNsJEwH9qf+XRayh8vDnf/e
   A==;
X-CSE-ConnectionGUID: grSgiiFXTtmFsrJz0Bq5kg==
X-CSE-MsgGUID: /QW4DXXaQa6T1j2pbl7Ppw==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56223124"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; 
   d="scan'208";a="56223124"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2025 00:03:16 -0700
X-CSE-ConnectionGUID: Or7C1xtbR2Wis/RZOYKRTA==
X-CSE-MsgGUID: ktuZm740QVqaO3QI7lYWEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; 
   d="scan'208";a="168462836"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 31 Jul 2025 00:03:11 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uhNJl-0003VQ-0e;
	Thu, 31 Jul 2025 07:03:09 +0000
Date: Thu, 31 Jul 2025 15:02:23 +0800
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
Subject: Re: [PATCH v3 5/7] misc: qcom-coincell: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <202507311446.eqv2ucNm-lkp@intel.com>
References: <20250730112645.542179-6-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250730112645.542179-6-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_000351_417214_77D6DD04 
X-CRM114-Status: GOOD (  10.45  )
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
patch link:    https://lore.kernel.org/r/20250730112645.542179-6-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v3 5/7] misc: qcom-coincell: Migrate to devm_spmi_subdevice_alloc_and_add()
config: arm64-randconfig-002-20250731 (https://download.01.org/0day-ci/archive/20250731/202507311446.eqv2ucNm-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250731/202507311446.eqv2ucNm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507311446.eqv2ucNm-lkp@intel.com/

All errors (new ones prefixed by >>):

   aarch64-linux-ld: Unexpected GOT/PLT entries detected!
   aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: drivers/phy/qualcomm/phy-qcom-eusb2-repeater.o: in function `eusb2_repeater_probe':
   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:228:(.text+0x5a8): undefined reference to `devm_spmi_subdevice_alloc_and_add'
   aarch64-linux-ld: drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:236:(.text+0x61c): undefined reference to `__devm_regmap_init_spmi_ext'
   aarch64-linux-ld: drivers/misc/qcom-coincell.o: in function `qcom_coincell_probe':
   drivers/misc/qcom-coincell.c:109:(.text+0x10c): undefined reference to `devm_spmi_subdevice_alloc_and_add'
>> aarch64-linux-ld: drivers/misc/qcom-coincell.c:113:(.text+0x14c): undefined reference to `__devm_regmap_init_spmi_ext'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
