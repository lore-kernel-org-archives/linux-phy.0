Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA29EB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 15:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emk/UODbIG0Xzi09PKGdbo3p1zeUOLwMoV4/WGtXXqE=; b=35255Yhc0RUjiR
	yt0g57nSXLwdqn+xPkUWTcIzYoCMxC1n4EBFX99cD+L/0qJxpKrqVNsNIUySbanJv9Gv8adBO319K
	IY4zjpHCtkNeSzON7CAHrkzLY/apd/gHQ+ykMzMQD8JJihLEBmrGdNpcl2xStyB4LTNh08wt8/8Wl
	s6sSB7mIivNZs3yMHwtMBg4M+228VWGzrcg92sQGddzMsojg4O0XCJVhmbgFddvCYpXnBWhhtybzs
	Kr+pUt3SRo8yN0F/eGQV7LKIb1sncBn4f8Vbo2cpxXFar+9Kb+NT8ALAeTrfVOYbKsUR+XebPCtPR
	RjF3Jp6COg5cnw4iKDBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SCC-00C1ob-0H;
	Wed, 14 Jun 2023 15:14:04 +0000
Received: from mga09.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SC9-00C1mw-0L
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 15:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1686755641; x=1718291641;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YX4y7lBqNFFJ0PedIid4kUnTJJmVgsFKsE3ZJAbPjMQ=;
  b=Rty8hWsDnxG2NJVujR3p7w5zcOV3gDJmWy/JwNQDRWr+H/4W3HRGEuia
   hnFzmNzDGRi2gQuVlzwvXhaPUXCGQYCmFMs8JrxnjZdL0QY02dWnnNwTg
   TEbBQGD64R5Lticp9IjfzjMVZZP8PXtdCuWEWZzItLXqOYMOHsa8MQHLI
   ehRJ9Fa1kdEqhBuQ7gvVKFRFFHImuLrX/XwRkBvQAkFMeNJVY3MbuBxjJ
   F4bqAlxNazQQI2kYwpI2Yhl2E30/b1spLTaUAgkvWSJ/rCJFFOrhcYCIA
   XjdFDO6Va/MySH/kk/mPO+BeqNkjk8nietOGzVBak2YTjr0dWftJbxyz7
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="361117402"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; 
   d="scan'208";a="361117402"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2023 08:13:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="745115832"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; 
   d="scan'208";a="745115832"
Received: from lkp-server02.sh.intel.com (HELO d59cacf64e9e) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 14 Jun 2023 08:13:52 -0700
Received: from kbuild by d59cacf64e9e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1q9SBz-0000n5-2J;
	Wed, 14 Jun 2023 15:13:51 +0000
Date: Wed, 14 Jun 2023 23:10:51 +0800
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
	Flavio Suligoi <f.suligoi@asem.it>,
	Douglas Anderson <dianders@chromium.org>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Matthias Kaehlcke <mka@chromium.org>, Ray Chi <raychi@google.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v4 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Message-ID: <202306142352.e4eBd3HX-lkp@intel.com>
References: <20230614092850.21460-2-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230614092850.21460-2-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_081401_182499_35034A4E 
X-CRM114-Status: GOOD (  16.24  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on usb/usb-testing]
[also build test WARNING on usb/usb-next usb/usb-linus robh/for-next linus/master v6.4-rc6 next-20230614]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Stanley-Chang/phy-realtek-usb-Add-driver-for-the-Realtek-SoC-USB-2-0-PHY/20230614-173349
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
patch link:    https://lore.kernel.org/r/20230614092850.21460-2-stanley_chang%40realtek.com
patch subject: [PATCH v4 2/5] phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20230614/202306142352.e4eBd3HX-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 12.3.0
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
        git fetch usb usb-testing
        git checkout usb/usb-testing
        b4 shazam https://lore.kernel.org/r/20230614092850.21460-2-stanley_chang@realtek.com
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=sparc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=sparc SHELL=/bin/bash drivers/phy/realtek/

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306142352.e4eBd3HX-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/phy/realtek/phy-rtk-usb2.c: In function 'parse_phy_data':
>> drivers/phy/realtek/phy-rtk-usb2.c:1229:25: warning: variable 'phy_cfg' set but not used [-Wunused-but-set-variable]
    1229 |         struct phy_cfg *phy_cfg;
         |                         ^~~~~~~


vim +/phy_cfg +1229 drivers/phy/realtek/phy-rtk-usb2.c

  1224	
  1225	static int parse_phy_data(struct rtk_phy *rtk_phy)
  1226	{
  1227		struct device *dev = rtk_phy->dev;
  1228		struct device_node *node;
> 1229		struct phy_cfg *phy_cfg;
  1230		struct phy_parameter *phy_parameter;
  1231		int ret = 0;
  1232		int index;
  1233	
  1234		node = dev->of_node;
  1235		phy_cfg = rtk_phy->phy_cfg;
  1236	
  1237		rtk_phy->phy_parameter = devm_kzalloc(dev, sizeof(struct phy_parameter) *
  1238							rtk_phy->num_phy, GFP_KERNEL);
  1239		if (!rtk_phy->phy_parameter)
  1240			return -ENOMEM;
  1241	
  1242		for (index = 0; index < rtk_phy->num_phy; index++) {
  1243			phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
  1244	
  1245			phy_parameter->phy_reg.reg_wrap_vstatus = of_iomap(dev->of_node, 0);
  1246			phy_parameter->phy_reg.reg_gusb2phyacc0 = of_iomap(dev->of_node, 1) + index;
  1247			phy_parameter->phy_reg.vstatus_index = index;
  1248	
  1249			if (of_property_read_bool(node, "realtek,inverse-hstx-sync-clock"))
  1250				phy_parameter->inverse_hstx_sync_clock = true;
  1251			else
  1252				phy_parameter->inverse_hstx_sync_clock = false;
  1253	
  1254			if (of_property_read_u32_index(node, "realtek,driving-level",
  1255						       index, &phy_parameter->driving_level))
  1256				phy_parameter->driving_level = DEFAULT_DC_DRIVING_VALUE;
  1257	
  1258			if (of_property_read_u32_index(node, "realtek,driving-compensate",
  1259						       index, &phy_parameter->driving_compensate))
  1260				phy_parameter->driving_compensate = 0;
  1261	
  1262			if (of_property_read_u32_index(node, "realtek,disconnection-compensate",
  1263						       index, &phy_parameter->disconnection_compensate))
  1264				phy_parameter->disconnection_compensate = 0;
  1265	
  1266			get_phy_data_by_efuse(rtk_phy, phy_parameter, index);
  1267	
  1268			update_dc_driving_level(rtk_phy, phy_parameter);
  1269	
  1270			update_hs_clk_select(rtk_phy, phy_parameter);
  1271		}
  1272	
  1273		return ret;
  1274	}
  1275	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
