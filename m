Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BEDCAC598
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rDq+py8X7ohhgT1z2AYZgfVBkL9umWukPJbdRV4oB4=; b=27BVupoEpIgllp
	xZ8P+Q2QSo903aZZKzw1BJAkvfiIqgbU5wz6rPq4xSSJ04o9cmvtPaJKZHlpX9yiu1oHOXIYOa4IS
	pJW8hRZlNRQa6XAGfSXDOACBthHG3QOTdYdBKDydHA6jZ+hiapyEp9ixe5lWzXGIIHO0ZkfIL+IVY
	k0RNylQTG/UB05EUfwaWzvMnVLJBF5MJW2Qk+jPNQDlysZIIs60EmnOdewAXqzRu6FwDNE0KkU7eF
	j2RGRXbChaVX1yvIY75kjg3eP+FZ5vGX0DcMsuWGimTZUVU5ErHQqKQGF3wUGgmmtUz9AlQdLUPo3
	0iLUmD051Cj21uVd2EDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyoVb-0000000AnRU-0eV6;
	Wed, 17 Sep 2025 09:31:27 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyoVZ-0000000AnQn-0DKy
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 09:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758101485; x=1789637485;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4jpzCIoZu50VJNQx/tE5PCeb01WHwNr3Npziju95tg4=;
  b=ce2zHK1pfYl9RuxXZ7x+RRanqYWbOL+orJN09IxVqrP8O7x6C51EegHF
   Wbj/rRjGThrbZ1zZFPdyay1e79fUrBbFR8FuQsDHmgSEw6wzdhAxujccD
   1OxJ+U055Nm8PYuMqoXsTb/7Xkrg40VJfx/roq6O+h6FBXx04zMV5O3pb
   xByua520WklyfRrRdkCIR8n2knUqWo8CmDSOEp5qTidyw+RXykbZKgHI7
   GqmDBwZpWsJuN8RY+b+Av4VA2RrwE4PiGnaT2ncISSdkfrKnqAGjIwg5u
   kPand6CXbUT+43kxxX9WIQwZOBqoFjeExJ9jTuel/dXaHmjwrtSIfP7Ry
   w==;
X-CSE-ConnectionGUID: U0NEqzvmQpy/BL03igf4Ag==
X-CSE-MsgGUID: YCjUhC0kRCGd6XWsTOMTWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="71028311"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; 
   d="scan'208";a="71028311"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2025 02:31:24 -0700
X-CSE-ConnectionGUID: 5BIt0BKbRI6p0i6AjQZtBg==
X-CSE-MsgGUID: Z8c/mGQ6T5WqQxDzRg37Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; 
   d="scan'208";a="179201709"
Received: from lkp-server01.sh.intel.com (HELO 84a20bd60769) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 17 Sep 2025 02:31:19 -0700
Received: from kbuild by 84a20bd60769 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uyoVP-0001JX-32;
	Wed, 17 Sep 2025 09:31:15 +0000
Date: Wed, 17 Sep 2025 17:30:26 +0800
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
	casey.connolly@linaro.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 4/7] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <202509171640.JfR2hhcz-lkp@intel.com>
References: <20250916084445.96621-5-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250916084445.96621-5-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_023125_101163_1531C86D 
X-CRM114-Status: GOOD (  10.88  )
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

[auto build test ERROR on next-20250915]
[cannot apply to jic23-iio/togreg char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus sre-power-supply/for-next linus/master v6.17-rc6 v6.17-rc5 v6.17-rc4 v6.17-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/spmi-Implement-spmi_subdevice_alloc_and_add-and-devm-variant/20250916-164807
base:   next-20250915
patch link:    https://lore.kernel.org/r/20250916084445.96621-5-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v4 4/7] phy: qualcomm: eusb2-repeater: Migrate to devm_spmi_subdevice_alloc_and_add()
config: i386-buildonly-randconfig-001-20250917 (https://download.01.org/0day-ci/archive/20250917/202509171640.JfR2hhcz-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250917/202509171640.JfR2hhcz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509171640.JfR2hhcz-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/phy/qualcomm/phy-qcom-eusb2-repeater.o: in function `eusb2_repeater_probe':
   phy-qcom-eusb2-repeater.c:(.text+0x315): undefined reference to `devm_spmi_subdevice_alloc_and_add'
   ld: drivers/base/regmap/regmap-spmi.o: in function `regmap_spmi_base_read':
>> regmap-spmi.c:(.text+0x79): undefined reference to `spmi_register_read'
   ld: drivers/base/regmap/regmap-spmi.o: in function `regmap_spmi_base_gather_write':
>> regmap-spmi.c:(.text+0xbe): undefined reference to `spmi_register_zero_write'
>> ld: regmap-spmi.c:(.text+0xe5): undefined reference to `spmi_register_write'
   ld: drivers/base/regmap/regmap-spmi.o: in function `regmap_spmi_ext_read':
>> regmap-spmi.c:(.text+0x1a0): undefined reference to `spmi_ext_register_read'
>> ld: regmap-spmi.c:(.text+0x1c7): undefined reference to `spmi_ext_register_readl'
   ld: drivers/base/regmap/regmap-spmi.o: in function `regmap_spmi_ext_gather_write':
>> regmap-spmi.c:(.text+0x228): undefined reference to `spmi_ext_register_write'
>> ld: regmap-spmi.c:(.text+0x24f): undefined reference to `spmi_ext_register_writel'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for REGMAP_SPMI
   Depends on [m]: SPMI [=m]
   Selected by [y]:
   - PHY_QCOM_EUSB2_REPEATER [=y] && OF [=y] && (ARCH_QCOM || COMPILE_TEST [=y])
   Selected by [m]:
   - HI6421V600_IRQ [=m] && OF [=y] && SPMI [=m] && HAS_IOMEM [=y]
   - PINCTRL_QCOM_SPMI_PMIC [=m] && PINCTRL [=y] && (ARCH_QCOM || COMPILE_TEST [=y]) && OF [=y] && SPMI [=m]
   - QCOM_SPMI_TEMP_ALARM [=m] && THERMAL [=y] && (ARCH_QCOM && OF [=y] || COMPILE_TEST [=y]) && OF [=y] && SPMI [=m] && IIO [=y]
   - MFD_HI6421_SPMI [=m] && HAS_IOMEM [=y] && OF [=y] && SPMI [=m]
   - REGULATOR_MT6315 [=m] && REGULATOR [=y] && SPMI [=m]
   - QCOM_SPMI_ADC5 [=m] && IIO [=y] && SPMI [=m]
   - NVMEM_APPLE_SPMI [=m] && NVMEM [=y] && (ARCH_APPLE || COMPILE_TEST [=y]) && SPMI [=m]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
