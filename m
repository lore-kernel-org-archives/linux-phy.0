Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E3FAC7EE29
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 11:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtDLkAEzn8q9s09s3PCaQG7rGTk9pN758I9XqNendpc=; b=B9RptXOl/NCOU+
	ekxPM0TNQe2ntjf/2lD98Cdms1p7Mi42l6BD1Uh0dg5/9QY7Z93wGPSKQXHQTxAovOF1Kv+YQt0FD
	0gvtMXHMjzvaE4ybXJyS2aKtyFU+U7tH+Fy8ZpOBNFCAEjqky77RamVelLNlJM6aYTJCyqb7ktw/5
	jAE/kAtLLS5a5JwS89OtCMar4GSuXkOhekmp9+NcCpdzLaALZQYzseDF6mQgSwFu4BGZLzrcLZuSg
	0Ql05nsOhwWfg4GK3/ny0Sd8M17a0TFkySmHrBvzyJJ51NHrEqPsdum2C9UWdhWyxSNAb1xxxIGyb
	rydJz2xZ77I8gO3Uev9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rLS-005eHG-0D;
	Wed, 07 Jun 2023 11:28:54 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rLO-005eGY-0Q
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 11:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1686137330; x=1717673330;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=e7TMZ16KljFDcwznRpSLNhv1XRuSoLTaPVtloCJ3DK4=;
  b=Xy7DzVR90gRJwAkipfj3hQWT/Htx9AY6x2vK0wNh53YMB+vhhdwUjHhC
   bISoFyQXX73ozb7aV/jRZJCUJqQFH4eiL11jucQxpA8IatLTxFNqfkHME
   Y4eYRFkQFArRHwa9ic14kAx3s5Uzq1n2GH/PQA+qaVZvIY42er10Sg969
   6Hq2q6FNreeaSqEJGc5e7Mk5rGxomSOd4qWzGAJ/98hyWOJRW+34CJBgV
   zopXi5+2Aa7wBb0JA9fEExx8O4U99Eke32LJO4tPsnHhnY+4jx9GE8+Ez
   qnmyZYeT8C9BrpjRw4K5JFXyVzkJB4G8rND5f+ik8cAuJZZFdi8vBZsVp
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="337319818"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; 
   d="scan'208";a="337319818"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2023 04:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="739193982"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; 
   d="scan'208";a="739193982"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 07 Jun 2023 04:26:59 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1q6rJa-0006VX-0m;
	Wed, 07 Jun 2023 11:26:58 +0000
Date: Wed, 7 Jun 2023 19:26:48 +0800
From: kernel test robot <lkp@intel.com>
To: Stanley Chang <stanley_chang@realtek.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: oe-kbuild-all@lists.linux.dev,
	Stanley Chang <stanley_chang@realtek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Matthias Kaehlcke <mka@chromium.org>, Ray Chi <raychi@google.com>,
	Flavio Suligoi <f.suligoi@asem.it>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Message-ID: <202306071901.mhcH1Kcc-lkp@intel.com>
References: <20230607062500.24669-2-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607062500.24669-2-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_042850_186981_C5D83CEE 
X-CRM114-Status: GOOD (  14.53  )
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

Hi Stanley,

kernel test robot noticed the following build errors:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on usb/usb-next usb/usb-linus robh/for-next linus/master v6.4-rc5 next-20230607]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Stanley-Chang/phy-realtek-usb-Add-driver-for-the-Realtek-SoC-USB-2-0-PHY/20230607-142704
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
patch link:    https://lore.kernel.org/r/20230607062500.24669-2-stanley_chang%40realtek.com
patch subject: [PATCH v3 2/5] phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY
config: sh-randconfig-r033-20230607 (https://download.01.org/0day-ci/archive/20230607/202306071901.mhcH1Kcc-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 12.3.0
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
        git fetch usb usb-testing
        git checkout usb/usb-testing
        b4 shazam https://lore.kernel.org/r/20230607062500.24669-2-stanley_chang@realtek.com
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir --shuffle=2827500481 ARCH=sh olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir --shuffle=2827500481 ARCH=sh SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306071901.mhcH1Kcc-lkp@intel.com/

All errors (new ones prefixed by >>):

   sh4-linux-ld: drivers/phy/realtek/phy-rtk-usb2.o: in function `rtk_usb2phy_remove':
>> drivers/phy/realtek/phy-rtk-usb2.c:1891: undefined reference to `usb_remove_phy'
   sh4-linux-ld: drivers/phy/realtek/phy-rtk-usb2.o: in function `create_debug_files':
>> drivers/phy/realtek/phy-rtk-usb2.c:1378: undefined reference to `usb_debug_root'
   sh4-linux-ld: drivers/phy/realtek/phy-rtk-usb2.o: in function `rtk_usb2phy_probe':
>> drivers/phy/realtek/phy-rtk-usb2.c:1882: undefined reference to `usb_add_phy_dev'
   sh4-linux-ld: drivers/power/supply/wm831x_power.o: in function `wm831x_power_probe':
>> drivers/power/supply/wm831x_power.c:695: undefined reference to `devm_usb_get_phy_by_phandle'
   sh4-linux-ld: drivers/power/supply/rt9455_charger.o: in function `rt9455_probe':
>> drivers/power/supply/rt9455_charger.c:1682: undefined reference to `devm_usb_get_phy'
   sh4-linux-ld: drivers/power/supply/isp1704_charger.o: in function `isp1704_charger_probe':
>> drivers/power/supply/isp1704_charger.c:73: undefined reference to `devm_usb_get_phy_by_phandle'
>> sh4-linux-ld: drivers/power/supply/isp1704_charger.c:73: undefined reference to `devm_usb_get_phy'
   sh4-linux-ld: drivers/power/supply/bq25890_charger.o: in function `bq25890_probe':
>> drivers/power/supply/bq25890_charger.c:1511: undefined reference to `devm_usb_get_phy'
   sh4-linux-ld: drivers/power/supply/bq256xx_charger.o: in function `bq256xx_probe':
>> drivers/power/supply/bq256xx_charger.c:1743: undefined reference to `devm_usb_get_phy'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for USB_PHY
   Depends on [n]: USB_SUPPORT [=n]
   Selected by [y]:
   - PHY_RTK_RTD_USB2PHY [=y]


vim +1891 drivers/phy/realtek/phy-rtk-usb2.c

  1802	
  1803	static int rtk_usb2phy_probe(struct platform_device *pdev)
  1804	{
  1805		struct rtk_usb_phy *rtk_phy;
  1806		struct device *dev = &pdev->dev;
  1807		struct device_node *node;
  1808		struct device_node *sub_node;
  1809		struct phy *generic_phy;
  1810		struct phy_provider *phy_provider;
  1811		int phyN, ret = 0;
  1812	
  1813		rtk_phy = devm_kzalloc(dev, sizeof(*rtk_phy), GFP_KERNEL);
  1814		if (!rtk_phy)
  1815			return -ENOMEM;
  1816	
  1817		rtk_phy->dev			= &pdev->dev;
  1818		rtk_phy->phy.dev		= rtk_phy->dev;
  1819		rtk_phy->phy.label		= "rtk-usb2phy";
  1820		rtk_phy->phy.notify_port_status = rtk_usb_phy_notify_port_status;
  1821	
  1822		if (!dev->of_node) {
  1823			dev_err(dev, "%s %d No device node\n", __func__, __LINE__);
  1824			goto err;
  1825		}
  1826	
  1827		node = dev->of_node;
  1828	
  1829		rtk_phy->usb_ctrl_regs = syscon_regmap_lookup_by_phandle(node, "realtek,usb-ctrl");
  1830		if (IS_ERR(rtk_phy->usb_ctrl_regs)) {
  1831			dev_info(dev, "%s: DTS no support usb_ctrl regs syscon\n", __func__);
  1832			rtk_phy->usb_ctrl_regs = NULL;
  1833		}
  1834	
  1835		phyN = of_get_child_count(node);
  1836		rtk_phy->phyN = phyN;
  1837		dev_dbg(dev, "%s phyN=%d\n", __func__, rtk_phy->phyN);
  1838	
  1839		rtk_phy->reg_addr = devm_kzalloc(dev,
  1840			    sizeof(struct reg_addr) * phyN, GFP_KERNEL);
  1841		if (!rtk_phy->reg_addr)
  1842			return -ENOMEM;
  1843	
  1844		rtk_phy->phy_data = devm_kzalloc(dev,
  1845			    sizeof(struct phy_data) * phyN, GFP_KERNEL);
  1846		if (!rtk_phy->phy_data)
  1847			return -ENOMEM;
  1848	
  1849		for (sub_node = of_get_next_child(node, NULL); sub_node != NULL;
  1850			    sub_node = of_get_next_child(node, sub_node)) {
  1851			ret = get_phy_parameter(rtk_phy, sub_node);
  1852			if (ret) {
  1853				dev_err(dev, "%s: get_phy_parameter fail ret=%d\n",
  1854					    __func__, ret);
  1855				goto err;
  1856			}
  1857		}
  1858	
  1859		platform_set_drvdata(pdev, rtk_phy);
  1860	
  1861		generic_phy = devm_phy_create(rtk_phy->dev, NULL, &ops);
  1862		if (IS_ERR(generic_phy))
  1863			return PTR_ERR(generic_phy);
  1864	
  1865		phy_set_drvdata(generic_phy, rtk_phy);
  1866	
  1867		phy_provider = devm_of_phy_provider_register(rtk_phy->dev,
  1868					    of_phy_simple_xlate);
  1869		if (IS_ERR(phy_provider))
  1870			return PTR_ERR(phy_provider);
  1871	
  1872		ret = usb_add_phy_dev(&rtk_phy->phy);
  1873		if (ret)
  1874			goto err;
  1875	
  1876		create_debug_files(rtk_phy);
  1877	
  1878	err:
  1879		dev_dbg(dev, "Probe RTK USB 2.0 PHY (ret=%d)\n", ret);
  1880	
  1881		return ret;
> 1882	}
  1883	
  1884	static void rtk_usb2phy_remove(struct platform_device *pdev)
  1885	{
  1886		struct rtk_usb_phy *rtk_phy = platform_get_drvdata(pdev);
  1887	
  1888		remove_debug_files(rtk_phy);
  1889	
  1890		usb_remove_phy(&rtk_phy->phy);
> 1891	}
  1892	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
