Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 224BDC7EE25
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 01:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFBUQYTcEKVHIS0fl5mo8tNGDvPMTI7/BNF/FHWRw8A=; b=fxn1TLHcP4apO8
	bFtI5KG2cpsEZur+YzHphPsABN6V4I5UB3h3UxG9ef4wcH+6aHgOwmVjw3SXl+u6s2V+0DjAPrg1a
	w6njKmbSiKhYfvTCKL1hQVqn9OZFVSL7OscP8i5FfItpcpFPZ1MHdfXwGsgInXx+rv30F8lGkmBH8
	p8sg/S45CYVUwd3MQjTMU/mhrwGxyJdGQ7mHvwOf67bYHhk9ym+IFo4elWU4Fq8WF+bmRRPqoKqpn
	WozqQ5oYoLRP7ilEtwQD748Qh/2AQjq/xh8GDDdkucU7zJjMqtXpw82Y9axDN3Ndje3dnQkjtAicT
	paEvMUBLSoQmuelMya+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q74ZZ-007jV1-2D;
	Thu, 08 Jun 2023 01:36:21 +0000
Received: from mga18.intel.com ([134.134.136.126])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q74ZW-007jUP-0E
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 01:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1686188178; x=1717724178;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=B0VSdm1hETZ89zwsJ2li+Uinhg7LbDBnxsYq254PuxU=;
  b=PAmGAq0XFgLGjePu137MgqY4Yj9CP8ynzmkfspqkpxSTyttIdJVAXom6
   6ZHzgUahsiWAmziXVCozPMomNl97lTxToRJfezeyLSnkB0guRhMYYdpDg
   aUtJitvQAU4DBKgWHIrUHiy0Ql46vUcNEqpjDC6yVgRxE12vSXtyJppIE
   2QPuLzXnXTUcrkq3wSPAKFEvohDeyBhiKGVBbCJntNBPiM2OIi2uev7CO
   qwRU1xr5YgcGqMPWmcuVuqDaWrpfuecbzu8DiRCn47PikOBhrFAS5flaw
   HBPAIAeIH9XBs0PvL7dqAU5wEA7+S/PY2zDuTQgt9lvPMi2KJo6x0rStm
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="341822943"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; 
   d="scan'208";a="341822943"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2023 18:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="687205165"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; 
   d="scan'208";a="687205165"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 07 Jun 2023 18:36:10 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1q74ZO-00076D-0Q;
	Thu, 08 Jun 2023 01:36:10 +0000
Date: Thu, 8 Jun 2023 09:35:31 +0800
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
	Alan Stern <stern@rowland.harvard.edu>, Ray Chi <raychi@google.com>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	Flavio Suligoi <f.suligoi@asem.it>,
	Matthias Kaehlcke <mka@chromium.org>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 3/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 3.0 PHY
Message-ID: <202306080940.5Lcjwfck-lkp@intel.com>
References: <20230607062500.24669-3-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607062500.24669-3-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_183618_174504_910EE999 
X-CRM114-Status: GOOD (  13.51  )
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
patch link:    https://lore.kernel.org/r/20230607062500.24669-3-stanley_chang%40realtek.com
patch subject: [PATCH v3 3/5] phy: realtek: usb: Add driver for the Realtek SoC USB 3.0 PHY
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20230608/202306080940.5Lcjwfck-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 12.3.0
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
        git fetch usb usb-testing
        git checkout usb/usb-testing
        b4 shazam https://lore.kernel.org/r/20230607062500.24669-3-stanley_chang@realtek.com
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=s390 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=s390 SHELL=/bin/bash

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306080940.5Lcjwfck-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

ERROR: modpost: "usb_remove_phy" [drivers/phy/realtek/phy-rtk-usb2.ko] undefined!
ERROR: modpost: "usb_debug_root" [drivers/phy/realtek/phy-rtk-usb2.ko] undefined!
ERROR: modpost: "of_iomap" [drivers/phy/realtek/phy-rtk-usb2.ko] undefined!
ERROR: modpost: "usb_add_phy_dev" [drivers/phy/realtek/phy-rtk-usb2.ko] undefined!
>> ERROR: modpost: "usb_remove_phy" [drivers/phy/realtek/phy-rtk-usb3.ko] undefined!
>> ERROR: modpost: "usb_debug_root" [drivers/phy/realtek/phy-rtk-usb3.ko] undefined!
>> ERROR: modpost: "of_iomap" [drivers/phy/realtek/phy-rtk-usb3.ko] undefined!
>> ERROR: modpost: "usb_add_phy_dev" [drivers/phy/realtek/phy-rtk-usb3.ko] undefined!
ERROR: modpost: "devm_ioremap_resource" [drivers/dma/qcom/hdma.ko] undefined!
ERROR: modpost: "devm_platform_ioremap_resource" [drivers/dma/fsl-edma.ko] undefined!
WARNING: modpost: suppressed 26 unresolved symbol warnings because there were too many)

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for USB_PHY
   Depends on [n]: USB_SUPPORT [=n]
   Selected by [m]:
   - PHY_RTK_RTD_USB2PHY [=m]
   - PHY_RTK_RTD_USB3PHY [=m]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
