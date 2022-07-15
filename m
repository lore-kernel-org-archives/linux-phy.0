Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BB43C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 01:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRY7JlviVWwSv1r5FQ5zUmAzxCOaGI3pBc80V2idJL8=; b=Ed7DoRkDWDAfJe
	b/EbuMwf/4qCfjkir3RyvrCE/xk0fQAYLgk3lI639Uy2FUMjVAWpZShgeTWxo3i1AEcEIkPiQpnBd
	awB44nd8Fs7mXlLULqkzpFi5Tm9WBxpDUUQrPdNEhY8VSaMo+a+qvrT6D4lB/+K26oeLc+m9sTBlM
	R/xPj9mJDUO9J1ZiBbfAxky85c/fclMa2m4VThIPFbk49WjKD4ACWukFJQrPsByo5O8K7yKcVuMTy
	5l6MjgXFeuuzj6NthkTNYx7SKt2ScS9BCQGb9qyeJiI2fjgroPO/uJeSMiuONRaXGIg3xB8pYM2m2
	i4VAA0RpZHOT2nWbr63A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCAYo-003Lc3-E3; Fri, 15 Jul 2022 01:56:06 +0000
Received: from mga07.intel.com ([134.134.136.100])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCAYl-003La9-Tu
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 01:56:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657850163; x=1689386163;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KChe3YiLWvtfY16v3Wrv+LYGFrMr3lG5eJioM1UXoK8=;
  b=HueIi0ktKx+4+UK2s84g3j/49QxWDLG1owBYR/IIKXyG29fRqOjvAty/
   XMSZODw96USQQLeXPPLzCqbbOGYpnyjPIxrN8LGkJ3vG5ikotuGo9WkmI
   3PU0WEKnHdWNLscfv4573EfWVjcvdmkTZqQe9Sl646K9jLpR8R8/nua1g
   ZGf/87WCO5uTDUgnzF1aOyqwWb5CjMLwmGG6i1xsFGE+tv5BSvUFDX5C9
   xVKs1DBiGXkuDRzhzG05saFmlV/0MfQfq0D/sbjQN5fdz+lJF/7gtAF6r
   7m+3wTVqADU0OWuVW/E9XCgvKyFsjNy/I1Y6pcndirkGmTfxF2cZN8y+Q
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="349642800"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; 
   d="scan'208";a="349642800"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2022 18:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; 
   d="scan'208";a="600335169"
Received: from lkp-server01.sh.intel.com (HELO fd2c14d642b4) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 14 Jul 2022 18:55:57 -0700
Received: from kbuild by fd2c14d642b4 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1oCAYe-0001Pp-Fp;
	Fri, 15 Jul 2022 01:55:56 +0000
Date: Fri, 15 Jul 2022 09:55:18 +0800
From: kernel test robot <lkp@intel.com>
To: Vincent Shih <vincent.sunplus@gmail.com>, kishon@ti.com,
	vkoul@kernel.org, p.zabel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
	wells.lu@sunplus.com
Cc: Paul Gazzillo <paul@pgazz.com>,
	Necip Fazil Yildiran <fazilyildiran@gmail.com>,
	kbuild-all@lists.01.org, Vincent Shih <vincent.sunplus@gmail.com>
Subject: Re: [PATCH v3 1/2] phy: usb: Add USB2.0 phy driver for Sunplus SP7021
Message-ID: <202207150959.Pamg8oYO-lkp@intel.com>
References: <1657529403-18084-2-git-send-email-vincent.sunplus@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1657529403-18084-2-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_185604_045915_1E3F25AF 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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

Hi Vincent,

I love your patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on pza/reset/next linus/master v5.19-rc6 next-20220714]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vincent-Shih/Add-USB2-0-phy-driver-for-Sunplus-SP7021/20220711-165347
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: (https://download.01.org/0day-ci/archive/20220715/202207150959.Pamg8oYO-lkp@intel.com/config)
reproduce:
        # https://github.com/intel-lab-lkp/linux/commit/7370e305e24f576291c9f474664b068188d6de57
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vincent-Shih/Add-USB2-0-phy-driver-for-Sunplus-SP7021/20220711-165347
        git checkout 7370e305e24f576291c9f474664b068188d6de57
        # 1. reproduce by kismet
           # install kmax per https://github.com/paulgazz/kmax/blob/master/README.md
           kismet --linux-ksrc=linux --selectees CONFIG_NVMEM_SUNPLUS_OCOTP --selectors CONFIG_PHY_SUNPLUS_USB -a=i386
        # 2. reproduce by make
           # save the config file to linux source tree
           cd linux
           make ARCH=i386 olddefconfig

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>


kismet warnings: (new ones prefixed by >>)
>> kismet: WARNING: unmet direct dependencies detected for NVMEM_SUNPLUS_OCOTP when selected by PHY_SUNPLUS_USB
   
   WARNING: unmet direct dependencies detected for NVMEM_SUNPLUS_OCOTP
     Depends on [n]: NVMEM [=n] && (SOC_SP7021 || COMPILE_TEST [=y]) && HAS_IOMEM [=y]
     Selected by [y]:
     - PHY_SUNPLUS_USB [=y] && OF [=y] && (SOC_SP7021 || COMPILE_TEST [=y])

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
