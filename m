Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84FF9CAC5A7
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 17:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4idcdAIl+1Pchsfs5j5uH6xGDUPOqT0AbRoBgM5a6C0=; b=1CdRY/dBR5uoeK
	dvrDKo/+73rPfDeXxKJypfPr8D04uCes72l3OR4scigX+PEsnz/dmU6hdlajD+qzWVbd4I0NGr+dH
	SGRbrzGJ4K3cstlKzaRZUwO9WsoUv8D2Df7J75VYH3u04LSg2y0fQdFV+1xDiSl4+QsYLasJLfUxI
	Hpw5kveYOly9NU6r732QksEPcLIQ4jdmVMfILmU/AOwPk/sIWJI/zNGWdxKown9uuo3edoNMwwKnP
	ywYkivrqYSWIF/W2jQ0fqGDZnoQttTN7QufWcs2zMs7aX/J6bKhX2Zqkq6NO162FJ4hQekQksAXxs
	yAUCh8VOsYudZ3eE4MYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v018W-00000005fxR-0ymB;
	Sat, 20 Sep 2025 17:12:36 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v018T-00000005fwm-2lYs
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 17:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1758388353; x=1789924353;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=q79LSJRIN+4CMGDHGwwOtCi+446YUY7DGBcf9uK/a+8=;
  b=ScA55idWpjC1kQO1JU5cMOl1DRV2NvcehrFGEizwGZK/VpYVO8gyShiG
   kHHsxkodmqy/elbTckU2lTBWyC5mlz6KdxCChpEjaiLYXlCxMW+UBX9hP
   zfA7xBMDJ4VfE2xMhi0hQZlTRAZaKeRljFSJrmckEHmqmqMWbZAJ3UyzN
   oaX5km02uRzp3u5fKcDVjP8zLK+kOs58UufUIrkx4rSdG/cZK1P/9qUSM
   lqWy+vEbnMthbzSbHLvIz2exQ/0ilqyvnYv8qyPuuEj9NXfblI/La2REE
   5RnaW9AgVjlmz/WxscViCLuMrH3cOz1hsDHe7+b9v1BYSm/RFVs6mnqxE
   Q==;
X-CSE-ConnectionGUID: xtxes6d0QoyVv/ZzSZ3l8w==
X-CSE-MsgGUID: cqLvKUOpT5GU52cSFgbHxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="78316338"
X-IronPort-AV: E=Sophos;i="6.18,281,1751266800"; 
   d="scan'208";a="78316338"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2025 10:12:29 -0700
X-CSE-ConnectionGUID: pt82aHB0SAS5SO5GndB+ZQ==
X-CSE-MsgGUID: BsB7TnlMQ+qllss3tERJeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,281,1751266800"; 
   d="scan'208";a="180354343"
Received: from lkp-server01.sh.intel.com (HELO 84a20bd60769) ([10.239.97.150])
  by orviesa004.jf.intel.com with ESMTP; 20 Sep 2025 10:12:25 -0700
Received: from kbuild by 84a20bd60769 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1v018J-0005Zb-0J;
	Sat, 20 Sep 2025 17:12:23 +0000
Date: Sun, 21 Sep 2025 01:12:22 +0800
From: kernel test robot <lkp@intel.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
	conor+dt@kernel.org, kishon@kernel.org, vkoul@kernel.org,
	gregkh@linuxfoundation.org, robh@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH 6/9] phy: qualcomm: qmp-combo: Update QMP PHY with Glymur
 settings
Message-ID: <202509210051.o1oMhgXv-lkp@intel.com>
References: <20250920032108.242643-7-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-7-wesley.cheng@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_101233_710559_5530E81F 
X-CRM114-Status: UNSURE (   9.98  )
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

Hi Wesley,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on usb/usb-testing usb/usb-next usb/usb-linus linus/master v6.17-rc6 next-20250919]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Wesley-Cheng/dt-bindings-phy-qcom-sc8280xp-qmp-usb43dp-phy-Add-Glymur-compatible/20250920-112504
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250920032108.242643-7-wesley.cheng%40oss.qualcomm.com
patch subject: [PATCH 6/9] phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
config: x86_64-buildonly-randconfig-002-20250920 (https://download.01.org/0day-ci/archive/20250921/202509210051.o1oMhgXv-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250921/202509210051.o1oMhgXv-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509210051.o1oMhgXv-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-qmp-combo.c:1745:38: warning: unused variable 'glymur_usb43dp_pcs_misc_tbl' [-Wunused-const-variable]
    1745 | static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
         |                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +/glymur_usb43dp_pcs_misc_tbl +1745 drivers/phy/qualcomm/phy-qcom-qmp-combo.c

  1744	
> 1745	static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
  1746		QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),
  1747	};
  1748	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
