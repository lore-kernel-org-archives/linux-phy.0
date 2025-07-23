Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DCFBC87FC5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWXST1Ym+9qm4M16t1PubdmiUBn2D3ubQHDJdKcYoBs=; b=iF83gynlKfVfwf
	IIHxV7pDIGdCVCoSf4q+QJK6PooxaW/aleyra6mDrYkfslSlmTnLPv2RruP6vIPmRMNZL6aJIJdpt
	U2h+O3zHQDF+oPvHqAPjawJcobMJeCgUUYVLE3xBPzWVl88cCeXf+imsrDZinghOqpwoD8xvLDOkl
	yumc6REQyKR8F0+HHzyZBoLpDWi3XH6u07fToo9ZQOxpPliPg+WiN2LAaXCa3txqf8rNLuUjEuVSm
	1Hm6KL8em7RAYqddcIvFx4tt2tjVMjwhzP4d7yqGtVCoGPCvCjST/9487GsVJwElFpDTFpXYpeIpg
	utKgRlmYKvE4F7SmUIrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWa2-00000004fFE-1EJ4;
	Wed, 23 Jul 2025 10:20:10 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWJg-00000004bsO-47El
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753264997; x=1784800997;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=IgGeQ0m8gC+koUHZIYM5w+vZO68unmZ9DltKgstIvlI=;
  b=nulBNLEZBZCvyEWy/C8KnYzipnlTm2jR7DwuJfvQg5UjHxUdozBwAXmC
   dGX/unGFHUXHF35SBBn0kNRsvzbMCO2pItAeSEo2WLXiksBCbSOi8fyJl
   UyJuht3zSVxAtV/qSM+ZwD3oEtPMov8HqQlYz9DWwAjdtrzSs7bhPylFD
   D+feX7IOr+ulwOH4lDnn98n6j5yrZPIpWeONf7fZSPPd9JRsrjKakuTPt
   Id858RNbjbkQuRdvyoLuIA0lk4GaIHblpHzDEFa9YAXYrrTiwui1vE6uF
   HImDnky5vtLWn4s17AzgP8aP24RzpnMybf+yALruwd3NESkCUbFl46oVY
   Q==;
X-CSE-ConnectionGUID: hwZVCOJuSsaQu+ej6HTlzg==
X-CSE-MsgGUID: C98f8jllSWCq8Mm3IFysmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55246050"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
   d="scan'208";a="55246050"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2025 03:03:16 -0700
X-CSE-ConnectionGUID: ft00YaJdTlqFioQ43nM3gA==
X-CSE-MsgGUID: wLiVLnrkS1mmgRzFTZqG0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; 
   d="scan'208";a="160130656"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by fmviesa010.fm.intel.com with ESMTP; 23 Jul 2025 03:03:11 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ueWJZ-000JDF-0O;
	Wed, 23 Jul 2025 10:03:09 +0000
Date: Wed, 23 Jul 2025 18:02:25 +0800
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
Subject: Re: [PATCH v2 4/7] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <202507231743.Z1ToUg4r-lkp@intel.com>
References: <20250722101317.76729-5-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250722101317.76729-5-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030317_063209_9BF88B11 
X-CRM114-Status: GOOD (  12.43  )
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

[auto build test ERROR on next-20250722]
[cannot apply to jic23-iio/togreg sre-power-supply/for-next char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.16-rc7 v6.16-rc6 v6.16-rc5 v6.16-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/spmi-Implement-spmi_subdevice_alloc_and_add-and-devm-variant/20250722-181911
base:   next-20250722
patch link:    https://lore.kernel.org/r/20250722101317.76729-5-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v2 4/7] phy: qualcomm: eusb2-repeater: Migrate to devm_spmi_subdevice_alloc_and_add()
config: sparc-randconfig-001-20250723 (https://download.01.org/0day-ci/archive/20250723/202507231743.Z1ToUg4r-lkp@intel.com/config)
compiler: sparc-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250723/202507231743.Z1ToUg4r-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507231743.Z1ToUg4r-lkp@intel.com/

All errors (new ones prefixed by >>):

   sparc-linux-ld: drivers/phy/qualcomm/phy-qcom-eusb2-repeater.o: in function `eusb2_repeater_probe':
>> drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:228: undefined reference to `devm_spmi_subdevice_alloc_and_add'
>> sparc-linux-ld: drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:236: undefined reference to `__devm_regmap_init_spmi_ext'


vim +228 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c

   193	
   194	static int eusb2_repeater_probe(struct platform_device *pdev)
   195	{
   196		struct regmap_config eusb2_regmap_config = {
   197			.reg_bits = 16,
   198			.val_bits = 8,
   199			.max_register = 0x100,
   200			.fast_io = true,
   201		};
   202		struct spmi_device *sparent;
   203		struct eusb2_repeater *rptr;
   204		struct spmi_subdevice *sub_sdev;
   205		struct device *dev = &pdev->dev;
   206		struct phy_provider *phy_provider;
   207		struct device_node *np = dev->of_node;
   208		int ret;
   209	
   210		if (!dev->parent)
   211			return -ENODEV;
   212	
   213		rptr = devm_kzalloc(dev, sizeof(*rptr), GFP_KERNEL);
   214		if (!rptr)
   215			return -ENOMEM;
   216	
   217		rptr->dev = dev;
   218		dev_set_drvdata(dev, rptr);
   219	
   220		rptr->cfg = of_device_get_match_data(dev);
   221		if (!rptr->cfg)
   222			return -EINVAL;
   223	
   224		sparent = to_spmi_device(dev->parent);
   225		if (!sparent)
   226			return -ENODEV;
   227	
 > 228		sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
   229		if (IS_ERR(sub_sdev))
   230			return PTR_ERR(sub_sdev);
   231	
   232		ret = of_property_read_u32(np, "reg", &eusb2_regmap_config.reg_base);
   233		if (ret < 0)
   234			return ret;
   235	
 > 236		rptr->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &eusb2_regmap_config);
   237		if (IS_ERR(rptr->regmap))
   238			return -ENODEV;
   239	
   240		ret = eusb2_repeater_init_vregs(rptr);
   241		if (ret < 0) {
   242			dev_err(dev, "unable to get supplies\n");
   243			return ret;
   244		}
   245	
   246		rptr->phy = devm_phy_create(dev, np, &eusb2_repeater_ops);
   247		if (IS_ERR(rptr->phy)) {
   248			dev_err(dev, "failed to create PHY: %d\n", ret);
   249			return PTR_ERR(rptr->phy);
   250		}
   251	
   252		phy_set_drvdata(rptr->phy, rptr);
   253	
   254		phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
   255		if (IS_ERR(phy_provider))
   256			return PTR_ERR(phy_provider);
   257	
   258		return 0;
   259	}
   260	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
