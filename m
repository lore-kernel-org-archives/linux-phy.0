Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD307C7EE25
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 17:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydNPTfiGkWdzRffo7ny9kmfq0fN3lFyEssvAeMy7JTY=; b=1g4tcSbw0k8vFT
	lJc8IQoXbwB1+WkKC5/2TwoYlrC5pLaD3xVug2cYakBunQHFvBI1n4tm2JnLIJgD0Ibp/ky72bsYZ
	sXRdu6tWu+x5IjBH/tZZkrOsUlJyrvwNWbzyzDncyjq8c3zsQ4tKygOO07fIkrFnD05ogmQl48FFd
	O01MrgMkPp+rFbANeMJgg/P2udb9f70ggUR8IqZ4nmXejd8ZUTGzr089kTus1CHgbzlX0oyFaMIIk
	6Bg53yVAR3Os1HwD6vLHNuOpZxZG/1wwb58WG8UmQFnDIWqzmFfbK4frQ1feiIDVKqUw42bXdq+3n
	zcQMx0oizfyBb9JP2+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6x13-006iSv-11;
	Wed, 07 Jun 2023 17:32:13 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6x10-006iRf-2r
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 17:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1686159130; x=1717695130;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=AsVSg3Faz1IxnTa3HiL4YpkQZ7wQ38kBaOY0hJhpXrU=;
  b=FDMuiukawiuZwkwz5mi0bLGNYJGhAVo8WavW9XqmYB2FtuZ0mjIXmnlP
   X3qvvuXcKE9wnNno6i9Fu9ZUY4LPMet86NIB3VI0tWUTyxFvPxsPGIBPF
   Y4TW4RmZPl12jqjqahYJrzcBLbKYkLbxbnYOwaYu6511LlHaLInBT1bIl
   WXxv/d+6hJgipqyxh3Gwt0rNaMwqOq9KQUt67sILIgJrnJVmrd0qaPEnq
   Sc35lr4GFaOdCi2f5Af0jbHQlEpqB2Vjt3daakGTZEdexa2VGurFhUAFT
   tls4ZtoDFxeFLYbWAe5dJ5hBa1GYxR12w8XYDLE9QvpVcwnb20eUHNUnS
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="420614931"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; 
   d="scan'208";a="420614931"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2023 10:32:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="854002886"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; 
   d="scan'208";a="854002886"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2023 10:32:04 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1q6x0u-0006mA-0K;
	Wed, 07 Jun 2023 17:32:04 +0000
Date: Thu, 8 Jun 2023 01:31:15 +0800
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
Message-ID: <202306080128.Gh3c2H1O-lkp@intel.com>
References: <20230607062500.24669-2-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607062500.24669-2-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_103210_965386_F3584A69 
X-CRM114-Status: GOOD (  13.57  )
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
config: arm64-randconfig-r014-20230607 (https://download.01.org/0day-ci/archive/20230608/202306080128.Gh3c2H1O-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.3.0
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
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306080128.Gh3c2H1O-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

ERROR: modpost: "devm_usb_get_phy_by_phandle" [drivers/power/supply/wm831x_power.ko] undefined!
>> ERROR: modpost: "devm_usb_get_phy" [drivers/power/supply/da9150-charger.ko] undefined!

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for USB_PHY
   Depends on [n]: USB_SUPPORT [=n]
   Selected by [y]:
   - PHY_RTK_RTD_USB2PHY [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
