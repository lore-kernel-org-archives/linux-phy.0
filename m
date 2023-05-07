Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0387C77B75
	for <linux-phy@archiver.kernel.org>; Sun,  7 May 2023 16:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gw1imcuzyPEPLMQf68RH1tS1TsP82H4QaHqMFfcYazw=; b=4cOBl2D7txIfaF
	gs3T9NBVXX9ZInl4TCkgnK6+GPOdIaWFlQLfWJzW0OiI1OH3c8OwO51KX1PecMiS8ZKui9C7GbTnC
	p7mx0E/bJ2vQUk1LDHaaG1jpesZUMFu4dF7G24+QgL/9S5GhSTrg/YUMh+BOVTZI1Yugn2YxReX9d
	SSKCTQwUe8qI77QMN/omn5ICWaup+oWc5GfS/EgUR8q1vfq+MFXpO7Auy4mHXbjYld/B3Jtr/PlIW
	D4BuW8AGCjANcBinwDf5YxpnJn00sdvKqLSow6lQ3xzhGvHcAx6R1NOjMSwRv/8Xiu+NLJMcRiAls
	zHdMzC4iAebgd4fFU40w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvhie-00GRqi-1l;
	Sun, 07 May 2023 16:58:44 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvhib-00GRq7-2s
	for linux-phy@lists.infradead.org;
	Sun, 07 May 2023 16:58:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1683478721; x=1715014721;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0Qst2DzvBBbU5FzPI4kuEPLqkO/8kAHLFByV3AgoYIE=;
  b=EzIG4pHsBtRKln9Qkp0138KHq5uZHbsH5znSkkfUPZ+ZgfVm381y8kAW
   F3aCEQA1en2n3CWEAJAqXG45C4Ji/5jo0tVkJbPLImfQwt2T+0fwsGxWl
   kXmLNii770OopQH5CzVMBTz4Wkq8RNKdAMwoqKH577xS6L6290nZymSGY
   OjyUa4UKPZehNPLADf/XWDhccfW3Yc+le6VujAWZ2QAUaYDCM1YzEd1ul
   YV1t/63tYbtb/OOz9k8XWzjqwiu8mB75ucKq0Oa8ul+amqCBS1BtvgUL+
   fFxDzTNoUzLeRDLjo/nZYQz7W82lqXW846Gq2C/3OjF2Ps6OG4MZj/j8U
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="329857491"
X-IronPort-AV: E=Sophos;i="5.99,257,1677571200"; 
   d="scan'208";a="329857491"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 May 2023 09:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="787842082"
X-IronPort-AV: E=Sophos;i="5.99,257,1677571200"; 
   d="scan'208";a="787842082"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 07 May 2023 09:58:36 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pvhiV-0000oL-1h;
	Sun, 07 May 2023 16:58:35 +0000
Date: Mon, 8 May 2023 00:57:53 +0800
From: kernel test robot <lkp@intel.com>
To: David Yang <mmyangfl@gmail.com>, linux-phy@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, David Yang <mmyangfl@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: hisilicon: Adopt phy-hisi-inno-usb2 to Hi3798MV100
Message-ID: <202305080013.kOt0Vzuc-lkp@intel.com>
References: <20230507154615.793942-1-mmyangfl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230507154615.793942-1-mmyangfl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230507_095841_949328_43759312 
X-CRM114-Status: GOOD (  14.00  )
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

Hi David,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on v6.3 next-20230505]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/David-Yang/phy-hisilicon-Adopt-phy-hisi-inno-usb2-to-Hi3798MV100/20230507-234747
base:   linus/master
patch link:    https://lore.kernel.org/r/20230507154615.793942-1-mmyangfl%40gmail.com
patch subject: [PATCH] phy: hisilicon: Adopt phy-hisi-inno-usb2 to Hi3798MV100
config: arm64-buildonly-randconfig-r001-20230507 (https://download.01.org/0day-ci/archive/20230508/202305080013.kOt0Vzuc-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/fe830916b152e401719061112b0b4fb140502d08
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review David-Yang/phy-hisilicon-Adopt-phy-hisi-inno-usb2-to-Hi3798MV100/20230507-234747
        git checkout fe830916b152e401719061112b0b4fb140502d08
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/phy/hisilicon/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305080013.kOt0Vzuc-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/phy/hisilicon/phy-hisi-inno-usb2.c: In function 'hisi_inno_phy_probe':
>> drivers/phy/hisilicon/phy-hisi-inno-usb2.c:165:22: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
     165 |         priv->type = (unsigned int) of_device_get_match_data(dev);
         |                      ^


vim +165 drivers/phy/hisilicon/phy-hisi-inno-usb2.c

   136	
   137	static int hisi_inno_phy_probe(struct platform_device *pdev)
   138	{
   139		struct device *dev = &pdev->dev;
   140		struct device_node *np = dev->of_node;
   141		struct hisi_inno_phy_priv *priv;
   142		struct phy_provider *provider;
   143		struct device_node *child;
   144		int i = 0;
   145		int ret;
   146	
   147		priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
   148		if (!priv)
   149			return -ENOMEM;
   150	
   151		priv->mmio = devm_platform_ioremap_resource(pdev, 0);
   152		if (IS_ERR(priv->mmio)) {
   153			ret = PTR_ERR(priv->mmio);
   154			return ret;
   155		}
   156	
   157		priv->ref_clk = devm_clk_get(dev, NULL);
   158		if (IS_ERR(priv->ref_clk))
   159			return PTR_ERR(priv->ref_clk);
   160	
   161		priv->por_rst = devm_reset_control_get_exclusive(dev, NULL);
   162		if (IS_ERR(priv->por_rst))
   163			return PTR_ERR(priv->por_rst);
   164	
 > 165		priv->type = (unsigned int) of_device_get_match_data(dev);
   166	
   167		for_each_child_of_node(np, child) {
   168			struct reset_control *rst;
   169			struct phy *phy;
   170	
   171			rst = of_reset_control_get_exclusive(child, NULL);
   172			if (IS_ERR(rst)) {
   173				of_node_put(child);
   174				return PTR_ERR(rst);
   175			}
   176	
   177			priv->ports[i].utmi_rst = rst;
   178			priv->ports[i].priv = priv;
   179	
   180			phy = devm_phy_create(dev, child, &hisi_inno_phy_ops);
   181			if (IS_ERR(phy)) {
   182				of_node_put(child);
   183				return PTR_ERR(phy);
   184			}
   185	
   186			phy_set_bus_width(phy, 8);
   187			phy_set_drvdata(phy, &priv->ports[i]);
   188			i++;
   189	
   190			if (i > INNO_PHY_PORT_NUM) {
   191				dev_warn(dev, "Support %d ports in maximum\n", i);
   192				of_node_put(child);
   193				break;
   194			}
   195		}
   196	
   197		provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
   198		return PTR_ERR_OR_ZERO(provider);
   199	}
   200	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
