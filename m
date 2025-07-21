Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95399C83F25
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 14:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBsB+5t9SEYzIlYzT4Oi4OREdS+MugiDJX6F21fWEKY=; b=YakQUBHjgiSDXe
	P4CT0QW/GJ885EorRzM2c3eELFVD6yoS0LwjM5AswEo9AmMBbX+V38gEeVcqFB+LtuAsRzISrcScz
	BojKEttUBRJW+wGPzI3U3rZHYlSZxJVWZ05wu4RcIlRcRlAyPUF5dXPhhlBcka3q0hST/UGAtAtYU
	pCdvGfFUhRPTWUFfD9/+pB3dWRv7bK9aDl+0uFY1dQ0hZ5I+hXlsKAZttJmYLuloVQ/Ib4kJ33ltH
	T9jzVCM1xAkMMXUufVCXYMh0xa5ZV0mfKA1kVF2NLtqcCModX1j0oUN3VcxZ0FGaHSXhvv16ZykMn
	lNA0HXlrc2XF/QvHngAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udrUo-0000000HWlp-1Uqi;
	Mon, 21 Jul 2025 14:28:02 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udqHp-0000000HM2g-2bf5
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 13:10:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753103433; x=1784639433;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=luwLkYm8gQFwFpI76K4uYcGeuowE05nWYbzbnD01+2g=;
  b=iJfRudupxUpaE3Tx+SV1QzQ40twgM/h6VSG6a6FXxo6BnizRYDdqskKO
   LenkZcl3BQbF4eqvtT5rklixJCqdnoMbEkusJGMZneKIGCetKH54iiBl4
   Nf+3hpYmG9BzWguARp115zL+61ussfU1G19eJmVV6uLYBfGgv7sKfXSdM
   hA95P6Bdb4F3jjo7oi4J458HEtiRB3ioq7+kxegmDletgCdJAxCCk5pCz
   4us2IrOckBHDybbUocZ8AI7msCVpHzFiIlOV0kwRsD66rZkMLhrt1fKqh
   LUJX+dWfBvtFODorGnk1ryMMRd6DJKUdwh/czcmtBBRlu0In5zPi/PtER
   A==;
X-CSE-ConnectionGUID: F1NqWiwNQY6TAxvbx8SJDA==
X-CSE-MsgGUID: Zr9nruv9RGmiQ3RkXEclOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55197015"
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; 
   d="scan'208";a="55197015"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 06:10:32 -0700
X-CSE-ConnectionGUID: Y6R9J9HlTRaHSZntVq6X3A==
X-CSE-MsgGUID: gY8tmDqDTPOp7DfZ78RoJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,329,1744095600"; 
   d="scan'208";a="158144253"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by orviesa010.jf.intel.com with ESMTP; 21 Jul 2025 06:10:27 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1udqHh-000Goj-09;
	Mon, 21 Jul 2025 13:10:25 +0000
Date: Mon, 21 Jul 2025 21:10:13 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, jic23@kernel.org,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
	arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, sre@kernel.org,
	krzysztof.kozlowski@linaro.org, u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org
Subject: Re: [PATCH v1 4/7] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <202507212056.GmiGorFf-lkp@intel.com>
References: <20250721075525.29636-5-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250721075525.29636-5-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_061033_732013_0FB634CB 
X-CRM114-Status: GOOD (  13.42  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20250718]
[cannot apply to jic23-iio/togreg sre-power-supply/for-next char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.16-rc7 v6.16-rc6 v6.16-rc5 v6.16-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/spmi-Implement-spmi_subdevice_alloc_and_add-and-devm-variant/20250721-155809
base:   next-20250718
patch link:    https://lore.kernel.org/r/20250721075525.29636-5-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v1 4/7] phy: qualcomm: eusb2-repeater: Migrate to devm_spmi_subdevice_alloc_and_add()
config: i386-buildonly-randconfig-002-20250721 (https://download.01.org/0day-ci/archive/20250721/202507212056.GmiGorFf-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250721/202507212056.GmiGorFf-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507212056.GmiGorFf-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:221:59: warning: variable 'sparent' is uninitialized when used here [-Wuninitialized]
     221 |         sub_sdev = devm_spmi_subdevice_alloc_and_add(&pdev->dev, sparent);
         |                                                                  ^~~~~~~
   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:202:29: note: initialize the variable 'sparent' to silence this warning
     202 |         struct spmi_device *sparent;
         |                                    ^
         |                                     = NULL
   1 warning generated.


vim +/sparent +221 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c

   193	
   194	static int eusb2_repeater_probe(struct platform_device *pdev)
   195	{
   196		struct regmap_config eusb2_regmap_config = {
   197			.reg_bits = 16,
   198			.val_bits = 16,
   199			.max_register = 0x100,
   200			.fast_io = true
   201		};
   202		struct spmi_device *sparent;
   203		struct eusb2_repeater *rptr;
   204		struct spmi_subdevice *sub_sdev;
   205		struct device *dev = &pdev->dev;
   206		struct phy_provider *phy_provider;
   207		struct device_node *np = dev->of_node;
   208		int ret;
   209	
   210		rptr = devm_kzalloc(dev, sizeof(*rptr), GFP_KERNEL);
   211		if (!rptr)
   212			return -ENOMEM;
   213	
   214		rptr->dev = dev;
   215		dev_set_drvdata(dev, rptr);
   216	
   217		rptr->cfg = of_device_get_match_data(dev);
   218		if (!rptr->cfg)
   219			return -EINVAL;
   220	
 > 221		sub_sdev = devm_spmi_subdevice_alloc_and_add(&pdev->dev, sparent);
   222		if (IS_ERR(sub_sdev))
   223			return PTR_ERR(sub_sdev);
   224	
   225		ret = of_property_read_u32(np, "reg", &eusb2_regmap_config.reg_base);
   226		if (ret < 0)
   227			return ret;
   228	
   229		rptr->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &eusb2_regmap_config);
   230		if (IS_ERR(rptr->regmap))
   231			return -ENODEV;
   232	
   233		ret = eusb2_repeater_init_vregs(rptr);
   234		if (ret < 0) {
   235			dev_err(dev, "unable to get supplies\n");
   236			return ret;
   237		}
   238	
   239		rptr->phy = devm_phy_create(dev, np, &eusb2_repeater_ops);
   240		if (IS_ERR(rptr->phy)) {
   241			dev_err(dev, "failed to create PHY: %d\n", ret);
   242			return PTR_ERR(rptr->phy);
   243		}
   244	
   245		phy_set_drvdata(rptr->phy, rptr);
   246	
   247		phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
   248		if (IS_ERR(phy_provider))
   249			return PTR_ERR(phy_provider);
   250	
   251		return 0;
   252	}
   253	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
