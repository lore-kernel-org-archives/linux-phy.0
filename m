Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1E5CCA1005
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moI7fCbL3nv+9qH5rKCzViH0Wy+VLeRHsUk3hjmyT2E=; b=WyGpmxI3XCflwC
	640smEGYYctFQeeKeS+PrDDO7kScUzZLU7NN2jaFM1bY1cpDHXXhcPsg0E1g115lkl4632jl/BlRD
	yXbrr6CZu/xUpXCfSrpy18W9jWzIYnMYskplZs8xbi5rbKjpVLHrhcvt+Vlp/qEIYoJikrPMD0/vO
	I6OCtQzS7jqhRygEpEF1seWi/dqcRtibGKxZu6wAw+jp+mgzH+LGgcnubZDPAmkCSP0wz/CYs7ldT
	R0aTiTLF34G8qLvO4FMZ4XGuRLR6qTnw7KmGrfCsxSecFo7LnoE07s7X+sxDNK9MZfaWaF4+vZ0Vs
	9hrkaMSNhxGxcSFkE7CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQBS-0000000HJml-3K91;
	Tue, 02 Sep 2025 12:32:22 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utOBQ-0000000Geuq-37Q3;
	Tue, 02 Sep 2025 10:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1756808653; x=1788344653;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=v5NDjFO8lUrsXYBoNk20x/0jTMsSJewfLyzSWN2NvCQ=;
  b=kB9mGtfcuA0QRGswH0l8MKRJysn3eD5noDeyI/wAzG86Y4zWE3tYwKvm
   725NxrVwV7mLuKTNwcDh7kap5+IMVyRet/MAIL429UCLFP30H1d3BV0xI
   r6h1D/XxqOY5EjWawVd0iFhN/dX7qZa8x6i0xic8Gh+dodxWXegOplvBK
   BsYWaNOIJnzEby7NQQvIDEOId21CaGiU8sQ2YjHh2ty9khkf27NvKGrOF
   0p/JcOvgt3E5JVIZmZZYTQILslfHp4zYnjCJ1qhqKd3e7Jshl9A+qj3V0
   1WDkdk1vbOFGO3lBdlTz0Zxoeu+0h2GQJESmD0ixsrJ+umZG2IUcBj4vt
   w==;
X-CSE-ConnectionGUID: TpBDPYu+Q7W+RmgjhDpD7A==
X-CSE-MsgGUID: f56TpsoqRmygT+wKzO8D4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="62719601"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; 
   d="scan'208";a="62719601"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2025 03:24:12 -0700
X-CSE-ConnectionGUID: I6HlhqjdSHGTNm9QxC555Q==
X-CSE-MsgGUID: qaZkQZ/4QvmaUvY93+nUTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; 
   d="scan'208";a="176556266"
Received: from lkp-server02.sh.intel.com (HELO 06ba48ef64e9) ([10.239.97.151])
  by orviesa005.jf.intel.com with ESMTP; 02 Sep 2025 03:24:06 -0700
Received: from kbuild by 06ba48ef64e9 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1utOBI-0001pP-0p;
	Tue, 02 Sep 2025 10:24:04 +0000
Date: Tue, 2 Sep 2025 18:23:07 +0800
From: kernel test robot <lkp@intel.com>
To: Jacky Chou <jacky_chou@aspeedtech.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
	vkoul@kernel.org, kishon@kernel.org, linus.walleij@linaro.org,
	p.zabel@pengutronix.de, linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, jacky_chou@aspeedtech.com
Subject: Re: [PATCH v3 07/10] PHY: aspeed: Add ASPEED PCIe PHY driver
Message-ID: <202509021806.1NtrcLpF-lkp@intel.com>
References: <20250901055922.1553550-8-jacky_chou@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250901055922.1553550-8-jacky_chou@aspeedtech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_032412_841231_3F6C71DE 
X-CRM114-Status: GOOD (  12.54  )
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

Hi Jacky,

kernel test robot noticed the following build errors:

[auto build test ERROR on pci/for-linus]
[also build test ERROR on robh/for-next linusw-pinctrl/devel linusw-pinctrl/for-next linus/master v6.17-rc4 next-20250902]
[cannot apply to pci/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jacky-Chou/dt-bindings-soc-aspeed-Add-ASPEED-PCIe-Config/20250901-140231
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git for-linus
patch link:    https://lore.kernel.org/r/20250901055922.1553550-8-jacky_chou%40aspeedtech.com
patch subject: [PATCH v3 07/10] PHY: aspeed: Add ASPEED PCIe PHY driver
config: arm-allmodconfig (https://download.01.org/0day-ci/archive/20250902/202509021806.1NtrcLpF-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250902/202509021806.1NtrcLpF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509021806.1NtrcLpF-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/phy/aspeed/phy-aspeed-pcie.c:14:
>> drivers/phy/aspeed/phy-aspeed-pcie.c:195:25: error: 'aspeed_pcie_of_match_table' undeclared here (not in a function); did you mean 'aspeed_pcie_phy_of_match_table'?
     195 | MODULE_DEVICE_TABLE(of, aspeed_pcie_of_match_table);
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/module.h:250:15: note: in definition of macro 'MODULE_DEVICE_TABLE'
     250 | static typeof(name) __mod_device_table__##type##__##name                \
         |               ^~~~
>> include/linux/module.h:250:21: error: '__mod_device_table__of__aspeed_pcie_of_match_table' aliased to undefined symbol 'aspeed_pcie_of_match_table'
     250 | static typeof(name) __mod_device_table__##type##__##name                \
         |                     ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/aspeed/phy-aspeed-pcie.c:195:1: note: in expansion of macro 'MODULE_DEVICE_TABLE'
     195 | MODULE_DEVICE_TABLE(of, aspeed_pcie_of_match_table);
         | ^~~~~~~~~~~~~~~~~~~
--
   In file included from phy-aspeed-pcie.c:14:
   phy-aspeed-pcie.c:195:25: error: 'aspeed_pcie_of_match_table' undeclared here (not in a function); did you mean 'aspeed_pcie_phy_of_match_table'?
     195 | MODULE_DEVICE_TABLE(of, aspeed_pcie_of_match_table);
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/module.h:250:15: note: in definition of macro 'MODULE_DEVICE_TABLE'
     250 | static typeof(name) __mod_device_table__##type##__##name                \
         |               ^~~~
>> include/linux/module.h:250:21: error: '__mod_device_table__of__aspeed_pcie_of_match_table' aliased to undefined symbol 'aspeed_pcie_of_match_table'
     250 | static typeof(name) __mod_device_table__##type##__##name                \
         |                     ^~~~~~~~~~~~~~~~~~~~
   phy-aspeed-pcie.c:195:1: note: in expansion of macro 'MODULE_DEVICE_TABLE'
     195 | MODULE_DEVICE_TABLE(of, aspeed_pcie_of_match_table);
         | ^~~~~~~~~~~~~~~~~~~


vim +195 drivers/phy/aspeed/phy-aspeed-pcie.c

   183	
   184	static const struct of_device_id aspeed_pcie_phy_of_match_table[] = {
   185		{
   186			.compatible = "aspeed,ast2600-pcie-phy",
   187			.data = &pcie_phy_ast2600,
   188		},
   189		{
   190			.compatible = "aspeed,ast2700-pcie-phy",
   191			.data = &pcie_phy_ast2700,
   192		},
   193		{ },
   194	};
 > 195	MODULE_DEVICE_TABLE(of, aspeed_pcie_of_match_table);
   196	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
