Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE592CCD19A
	for <linux-phy@archiver.kernel.org>; Sun, 16 Nov 2025 22:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXOiK1xbIuxEK2KXVHX5/BLWyYrVBDq28JNF8OPNuR0=; b=dMc9LJUSq8IGGz
	DcKHz3YMKzC/CJGTV4jT9xf6kGs2zB4n4jNGgAgdSIs0WoXil1m60wrR6Z4Cml6OlMn4v6Luw4d5p
	JwO+YyyHe7x+t/HTeCOFZlCueX7tag7sDtSQdIeJXET8RvYsFDmZ4sbqFTaKgF4zCdLBYAYQnvrbQ
	2cHqNrx/oIo8RdKK+iJ3TbD1hfsm5XcvmgJqsphL+xW42q9u1CZkNhZLKm+bYphKaojJmWw/SRgZ8
	7EXn9gU4GXpOnd+sREoTunfA5MF9Wl2PTCjrtr2VkoDdfw2YdpVSiGu+7TSVQvGZsXkfcMXk2vb1B
	6sy3BCFlerHg7bA6yJLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKlOw-0000000FAJe-39tb;
	Sun, 16 Nov 2025 22:39:18 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKlOs-0000000FAJD-3C2g
	for linux-phy@lists.infradead.org;
	Sun, 16 Nov 2025 22:39:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763332755; x=1794868755;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=02EvVrOPvHK3ycSr4xdL6Ct7ZgclQPlSgosQiWeSxpM=;
  b=HY4qELn+/OqRYyY1XWcttozTN0qlpWiGki0zEhjsf7YzKVTNSlW1Swm8
   aHw9hcnLlTWFQ64sWtS9zXl6t7vD0U6hAVwjJeOM+G0DnfLaAn97GfaR0
   h96WxdW55i6uNkB6m93+/EvtRXTs2f9djnc7Vn6B9E2O1LFFWvyB07/w9
   C2FAE5sx0/pwl1gE1LEBqLieY6SW9wze3g9mpXxluBRinxLzsOxDkBbfV
   O/MbhED9lwXClEXC1dV6PRmNR2k/0zVtRiyoH/v0pJCkVUlProZgbkPuJ
   ZQsLdeU6ggHGXgtt4t+bVEjIRF//vrprg/o0W0cPPiehK/JgMbxMmkQeB
   w==;
X-CSE-ConnectionGUID: yyr+KxGGQxaXKqGTNsCW8g==
X-CSE-MsgGUID: MoMlUEZ4SmSrNBewrQeYPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65270400"
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; 
   d="scan'208";a="65270400"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2025 14:39:12 -0800
X-CSE-ConnectionGUID: vdRJyfc7RWCVKcuvKEZ6eQ==
X-CSE-MsgGUID: uyuqrEC1RAig1JK2VQ0bPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; 
   d="scan'208";a="194618049"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
  by fmviesa005.fm.intel.com with ESMTP; 16 Nov 2025 14:39:08 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vKlOk-00097n-1V;
	Sun, 16 Nov 2025 22:39:06 +0000
Date: Mon, 17 Nov 2025 06:38:24 +0800
From: kernel test robot <lkp@intel.com>
To: Ma Ke <make24@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
	andriy.shevchenko@linux.intel.com, mchehab+huawei@kernel.org,
	mani@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix error handling in
 hi3670_pcie_get_resources_from_pcie
Message-ID: <202511170524.sEQYJ4MB-lkp@intel.com>
References: <20251116073231.22676-1-make24@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251116073231.22676-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_143915_292831_7CDFAC6E 
X-CRM114-Status: GOOD (  13.15  )
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

Hi Ma,

kernel test robot noticed the following build warnings:

[auto build test WARNING on akpm-mm/mm-everything]
[also build test WARNING on linus/master v6.18-rc5 next-20251114]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ma-Ke/phy-HiSilicon-Fix-error-handling-in-hi3670_pcie_get_resources_from_pcie/20251116-153458
base:   https://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm.git mm-everything
patch link:    https://lore.kernel.org/r/20251116073231.22676-1-make24%40iscas.ac.cn
patch subject: [PATCH] phy: HiSilicon: Fix error handling in hi3670_pcie_get_resources_from_pcie
config: m68k-randconfig-r072-20251117 (https://download.01.org/0day-ci/archive/20251117/202511170524.sEQYJ4MB-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 10.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251117/202511170524.sEQYJ4MB-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511170524.sEQYJ4MB-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/phy/hisilicon/phy-hi3670-pcie.c: In function 'hi3670_pcie_get_resources_from_pcie':
>> drivers/phy/hisilicon/phy-hi3670-pcie.c:564:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
     564 |  int ret = 0;
         |      ^~~


vim +/ret +564 drivers/phy/hisilicon/phy-hi3670-pcie.c

   558	
   559	static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
   560	{
   561		struct device_node *pcie_port;
   562		struct device *dev = phy->dev;
   563		struct device *pcie_dev = NULL;
 > 564		int ret = 0;
   565	
   566		pcie_port = of_get_child_by_name(dev->parent->of_node, "pcie");
   567		if (!pcie_port) {
   568			dev_err(dev, "no pcie node found in %s\n",
   569				dev->parent->of_node->full_name);
   570			return -ENODEV;
   571		}
   572	
   573		pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
   574		if (!pcie_dev) {
   575			dev_err(dev, "Didn't find pcie device\n");
   576			ret = -ENODEV;
   577			goto out_put_node;
   578		}
   579	
   580		/*
   581		 * We might just use NULL instead of the APB name, as the
   582		 * pcie-kirin currently registers directly just one regmap (although
   583		 * the DWC driver register other regmaps).
   584		 *
   585		 * Yet, it sounds safer to warrant that it will be accessing the
   586		 * right regmap. So, let's use the named version.
   587		 */
   588		phy->apb = dev_get_regmap(pcie_dev, "kirin_pcie_apb");
   589		if (!phy->apb) {
   590			dev_err(dev, "Failed to get APB regmap\n");
   591			ret = -ENODEV;
   592			goto out_put_device;
   593		}
   594	
   595	out_put_device:
   596		put_device(pcie_dev);
   597	out_put_node:
   598		of_node_put(pcie_port);
   599		return 0;
   600	}
   601	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
