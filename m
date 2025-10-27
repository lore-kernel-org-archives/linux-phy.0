Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45EDCCCF9EA
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 22:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcNkqkjfuL/7KgC4HkZq+qwHNbQy2rHEa1ss2Rbv7F0=; b=AcFQinAm8ug0QT
	y2/BcOf1fh04OiA0KEDInls5Snb3GGxECYewmIUFMqyEnZvhHFATDRY973LZflYNMKfO42Ra5IHtl
	a/bpJMLOy/XZx9wO1MWLyfsfJWNbKf6JaMvxyUnSYY6fPsU+Q9TagZn3r2JA0PMeQ8FBvf4Y57Nrq
	PRFgc4JapboUmLi3jNGhDcVmCcB4ZeN1+6oCm8l+ffZB91p8cgiU1imBZDjwGmmdgKHXfXOfMxWgk
	52SGxFmCkckad3E+GqcBJQQws3/YlaeAp7Sz3XC2VScgzHqWMv+jAejMeJnulMPKMyAWTQifDJ1QJ
	7wMf/IrRbQHx9AW/12aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVX5-0000000Equg-3gdU;
	Mon, 27 Oct 2025 22:17:43 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVX4-0000000Equ8-1MGb
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 22:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761603462; x=1793139462;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=LnEMgE/x17qT33vbhJOy4L+6r8csHSGMtdfdlckf+jg=;
  b=DieTegfv+GcqNXVolUPGSCS0toGRI3p1FF0/9G6e8DzXmOTFPh0TU2Xk
   /+Q0cZKSot+Y+lZ0Q5lhqaL6PU+jpmKXRG4X2LvuUEQp5puYirtOGFluh
   2YoFSK93I6VMIYFLY3OsOdNY8tBrBzib7q+AtlYpUL1C7fgap9yN0vt77
   OFnMhsMCNsAknXa+DkC6xYndmLTD1Aj6W4DFAcH5CgpX2gl7oCCu1zfjJ
   Ow9e6YeU//MypjtsUUGjPM9krKPrGoSr6SXKOuhSH45nVGJvgta8ZL22W
   gH5OOuzgjMxm1lOFuZeObWvp1qQkGkmx9uE+x82JF31QMP/ituYOGCOOw
   A==;
X-CSE-ConnectionGUID: ia1lwRzfRZaoGjIeJsCyvw==
X-CSE-MsgGUID: 7m/N1ODNQqy2AXpd62RlSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="89165077"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; 
   d="scan'208";a="89165077"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2025 15:17:42 -0700
X-CSE-ConnectionGUID: PnyRSWRdSliwVE5cOE6Eww==
X-CSE-MsgGUID: UOMBThvtTMKZvp6QtmnRgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; 
   d="scan'208";a="185634646"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
  by fmviesa009.fm.intel.com with ESMTP; 27 Oct 2025 15:17:39 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vDVWs-000IW5-0T;
	Mon, 27 Oct 2025 22:17:32 +0000
Date: Tue, 28 Oct 2025 06:17:09 +0800
From: kernel test robot <lkp@intel.com>
To: Prashanth K <prashanth.k@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
Message-ID: <202510280637.c18uAF98-lkp@intel.com>
References: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_151742_403242_D3986D9B 
X-CRM114-Status: GOOD (  11.24  )
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

Hi Prashanth,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on v6.18-rc3 next-20251027]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Prashanth-K/phy-qualcomm-m31-eusb2-Add-runtime-pm-ops/20251027-142647
base:   linus/master
patch link:    https://lore.kernel.org/r/20251027062458.1411096-1-prashanth.k%40oss.qualcomm.com
patch subject: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
config: sh-randconfig-002-20251028 (https://download.01.org/0day-ci/archive/20251028/202510280637.c18uAF98-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 13.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251028/202510280637.c18uAF98-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510280637.c18uAF98-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-m31-eusb2.c:253:12: warning: 'm31eusb2_phy_runtime_resume' defined but not used [-Wunused-function]
     253 | static int m31eusb2_phy_runtime_resume(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/phy/qualcomm/phy-qcom-m31-eusb2.c:243:12: warning: 'm31eusb2_phy_runtime_suspend' defined but not used [-Wunused-function]
     243 | static int m31eusb2_phy_runtime_suspend(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/m31eusb2_phy_runtime_resume +253 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c

   242	
 > 243	static int m31eusb2_phy_runtime_suspend(struct device *dev)
   244	{
   245		struct m31eusb2_phy *phy = dev_get_drvdata(dev);
   246	
   247		dev_dbg(dev, "Suspending M31 eUSB2 Phy\n");
   248		clk_disable_unprepare(phy->clk);
   249	
   250		return 0;
   251	}
   252	
 > 253	static int m31eusb2_phy_runtime_resume(struct device *dev)
   254	{
   255		struct m31eusb2_phy *phy = dev_get_drvdata(dev);
   256		int ret = 0;
   257	
   258		dev_dbg(dev, "Resuming M31 eUSB2 Phy\n");
   259		ret = clk_prepare_enable(phy->clk);
   260		if (ret)
   261			dev_err(dev, "failed to enable ref clock, %d\n", ret);
   262	
   263		return ret;
   264	}
   265	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
