Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14071C6FA86
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 16:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0DZ/Hh8Dne18qNNO6Tj4YgYJht6V6HRx3qa+yaRcUg=; b=i0kFQsFav9oR/k
	mktIvi1HSsuL8kqJ8Qp9qak5/NBdbGFFHJiWsrrwPU1L1Fa1rpxrl2wheY5cLpgk4UugF53QKjyIp
	TZXDyYRRNG5v3oK6BkSY9yfipu8UVW9n1Kd6su6sHfpt+lW3m3qsic3udt8qLHvt/9qN3K0LdKUS5
	e9yfy+F8uFR2aIIc986NRbgNooSKvaHzmUH3lGu5PGIHRrK1rdyiemGFAc0SthKcZ61skRNX9KHej
	gc+noqA2lVwLDAK2l4UPAC3cYD44nro483aEUdN51Gd1v4g5LfJnf1M2g1ng00SWnLKIylFruQCMj
	i+rjwNS7lXT+YSX5DB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJiY-00Cv3m-FN; Mon, 19 Sep 2022 16:33:58 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJiU-00Cv1n-JH
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 16:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663605234; x=1695141234;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+aMmESksKhzCnQk5R8nRr+S8KIYQXjUvUvTxGZinTS0=;
  b=JvaOp3xJ8p/eS58eu7LMYzVRy2iOQsFzkPN3WmKVagPIX9g6OSUmt+t1
   Zbe/fJNrJNdmvHXwiMbQTH4KUbHvOfPyt27XporMT3QALxGcyKo8BA7Go
   15ufsp4gqc5ZIKhC159BcTrtoeSSqfy729kR5nO7fZuoGc0F09EdN7GTw
   XJvJDycK01oKuk7VJc3FkZ4F7Z3Z1WQOviOwxrKR0o1ATmnM7ajV3eHBJ
   dxxbTZA6OHF58fjZpiRC5cVK/NycMeKIicdP7ZGMRUW2Tx0xjlCHnH5Y9
   KXZsJoR7l7CZngKDDhy+RAlJ6OO2YtCBgk/PubgHbe6OCvr2Tfp0wKn1t
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300824055"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; 
   d="scan'208";a="300824055"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 09:33:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; 
   d="scan'208";a="760935799"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2022 09:33:46 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oaJiL-000261-2G;
	Mon, 19 Sep 2022 16:33:45 +0000
Date: Tue, 20 Sep 2022 00:33:28 +0800
From: kernel test robot <lkp@intel.com>
To: Vidya Sagar <vidyas@nvidia.com>, lpieralisi@kernel.org, robh@kernel.org,
	kw@linux.com, bhelgaas@google.com, thierry.reding@gmail.com,
	jonathanh@nvidia.com, kishon@ti.com, vkoul@kernel.org,
	mani@kernel.org, Sergey.Semin@baikalelectronics.ru,
	ffclaire1224@gmail.com
Cc: kbuild-all@lists.01.org, linux-pci@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, kthota@nvidia.com,
	mmaddireddy@nvidia.com, vidyas@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V1 8/9] phy: tegra: p2u: Set ENABLE_L2_EXIT_RATE_CHANGE
 in calibration
Message-ID: <202209200038.mZZFPD7g-lkp@intel.com>
References: <20220919143627.13803-9-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220919143627.13803-9-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_093354_714207_FD8ED51D 
X-CRM114-Status: GOOD (  13.01  )
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

Hi Vidya,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on helgaas-pci/next]
[also build test WARNING on tegra/for-next linus/master v6.0-rc6 next-20220919]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vidya-Sagar/Enhancements-to-pcie-tegra194-driver/20220919-224101
base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
config: ia64-allyesconfig (https://download.01.org/0day-ci/archive/20220920/202209200038.mZZFPD7g-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/3b12c1aea8ddaae70567a332fc676c76076bf624
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vidya-Sagar/Enhancements-to-pcie-tegra194-driver/20220919-224101
        git checkout 3b12c1aea8ddaae70567a332fc676c76076bf624
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=ia64 SHELL=/bin/bash drivers/phy/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/phy/tegra/phy-tegra194-p2u.c:89:5: warning: no previous prototype for 'tegra_p2u_calibrate' [-Wmissing-prototypes]
      89 | int tegra_p2u_calibrate(struct phy *x)
         |     ^~~~~~~~~~~~~~~~~~~


vim +/tegra_p2u_calibrate +89 drivers/phy/tegra/phy-tegra194-p2u.c

    88	
  > 89	int tegra_p2u_calibrate(struct phy *x)
    90	{
    91		struct tegra_p2u *phy = phy_get_drvdata(x);
    92		u32 val;
    93	
    94		val = p2u_readl(phy, P2U_CONTROL_CMN);
    95		val |= P2U_CONTROL_CMN_ENABLE_L2_EXIT_RATE_CHANGE;
    96		p2u_writel(phy, val, P2U_CONTROL_CMN);
    97	
    98		return 0;
    99	}
   100	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
