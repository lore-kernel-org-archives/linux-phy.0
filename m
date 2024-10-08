Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C423CED274
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 08:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWw7crMEA+vcX0oXgkpnsf/rV7XX68tznLehmFT1WXs=; b=dPnyf8G6mdUXch
	vJLoHmw65fdj0JzYqsU8sIXnQOkPRAj+BaNjz7kIengzbCPImWYuKtBkMrg45ouevRh6uaVE3MtkC
	FIe8zbW1/w5J3m/09MA1v85oxWViYAXdCROXYg2Le18M5eOWDcGB9Qd4aQlR1VwZ1A4CiQYtEt7P7
	BFpTdbP2nwiHfiPyOUcfX0RmGr7EG3aeYpC1B4L0js/WT9Y7idOJQ5JDYZV6pwef+l5H5aQ7EnA2g
	CwsuiTysI91s0T0VREhxyhbWn9Syib+zahIxmdc5GMecODq6TEG5aYwvmBSOr3tDZqTh7ZfXXBJ1s
	y/U2gcBYlG2C45db40pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy5iM-000000054vo-1Svs;
	Tue, 08 Oct 2024 08:37:06 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy5TV-0000000508R-3fBz
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 08:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728375706; x=1759911706;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=VDpf9/wkNVw6+eD/6ygGxcYnIzmLwJk/4ULDXyGGR80=;
  b=MPE78sLvSyNJKa4L8eGbfo1fw4RetNdi5rUbarg2yX9djR6wjj8Y4azq
   P49PhjEn3dIzAH1ObNHbiB6T7a5arUlDfAHbib64xqeDEnVmCWYkj5QCP
   QzvAl2d5AJ6dkym/WhXHSROXdsMDhiOm87pduxVPEOuJ87Vmn2BcqMpC/
   i2+/wXv0VoqTho+mxvxc4NJgYtlDa4JQGksbgZUoZPZ2RtRcRpuv3KYU/
   2we8+MDUdApRgUXrmqqA+BJqPF74OCZnGDVwcEAufYMYqEFzfs8TtKVzY
   80KarGAFyETyFUzl94avG6F1bSGH04/YQsANKfqk3DjGQLZIDICHPxdLJ
   g==;
X-CSE-ConnectionGUID: loVmjYaDQHeRseCijSGR3A==
X-CSE-MsgGUID: tO7hzsnHRGCQLVqHaKMiFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38118280"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; 
   d="scan'208";a="38118280"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2024 01:21:45 -0700
X-CSE-ConnectionGUID: 7Oez9WmLSUuIu35SHXCIhw==
X-CSE-MsgGUID: 3dZ7tbTCRUqnAvtDqZvINg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; 
   d="scan'208";a="113216392"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 08 Oct 2024 01:21:43 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sy5TQ-00065U-1a;
	Tue, 08 Oct 2024 08:21:40 +0000
Date: Tue, 8 Oct 2024 16:21:28 +0800
From: kernel test robot <lkp@intel.com>
To: Markus Stockhausen <markus.stockhausen@gmx.de>,
	linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, krzk@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: Re: [PATCH v2 3/3] phy: Integrate Realtek Otto SerDes driver into
 build system
Message-ID: <202410081607.EKE62jfx-lkp@intel.com>
References: <20241007163623.3274510-4-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007163623.3274510-4-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_012145_988199_92F9A254 
X-CRM114-Status: GOOD (  11.05  )
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

Hi Markus,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on krzk-dt/for-next linus/master v6.12-rc2 next-20241004]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Markus-Stockhausen/dt-bindings-phy-add-realtek-otto-serdes-PHY-binding/20241008-003929
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20241007163623.3274510-4-markus.stockhausen%40gmx.de
patch subject: [PATCH v2 3/3] phy: Integrate Realtek Otto SerDes driver into build system
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20241008/202410081607.EKE62jfx-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241008/202410081607.EKE62jfx-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410081607.EKE62jfx-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/phy/realtek/phy-rtk-otto-serdes.c:490:15: warning: overlapping comparisons always evaluate to true [-Wtautological-overlap-compare]
     490 |         if (sid >= 2 || sid <= 9)
         |             ~~~~~~~~~^~~~~~~~~~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c:509:15: warning: overlapping comparisons always evaluate to true [-Wtautological-overlap-compare]
     509 |         if (sid >= 2 || sid <= 9)
         |             ~~~~~~~~~^~~~~~~~~~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c:686:6: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
     686 |         if (ret)
         |             ^~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c:677:9: note: initialize the variable 'ret' to silence this warning
     677 |         int ret;
         |                ^
         |                 = 0
   drivers/phy/realtek/phy-rtk-otto-serdes.c:706:6: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
     706 |         if (ret)
         |             ^~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c:697:9: note: initialize the variable 'ret' to silence this warning
     697 |         int ret;
         |                ^
         |                 = 0
   drivers/phy/realtek/phy-rtk-otto-serdes.c:723:7: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
     723 |         if (!ret)
         |              ^~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c:717:9: note: initialize the variable 'ret' to silence this warning
     717 |         int ret;
         |                ^
         |                 = 0
>> drivers/phy/realtek/phy-rtk-otto-serdes.c:868:1: error: incompatible function pointer types passing 'ssize_t (struct seq_file *, void *)' (aka 'long (struct seq_file *, void *)') to parameter of type 'int (*)(struct seq_file *, void *)' [-Wincompatible-function-pointer-types]
     868 | DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/seq_file.h:223:27: note: expanded from macro 'DEFINE_SHOW_STORE_ATTRIBUTE'
     223 |         return single_open(file, __name ## _show, inode->i_private);    \
         |                                  ^~~~~~~~~~~~~~~
   <scratch space>:49:1: note: expanded from here
      49 | rtsds_dbg_mode_show
         | ^~~~~~~~~~~~~~~~~~~
   include/linux/seq_file.h:176:38: note: passing argument to parameter here
     176 | int single_open(struct file *, int (*)(struct seq_file *, void *), void *);
         |                                      ^
   drivers/phy/realtek/phy-rtk-otto-serdes.c:891:1: error: incompatible function pointer types passing 'ssize_t (struct seq_file *, void *)' (aka 'long (struct seq_file *, void *)') to parameter of type 'int (*)(struct seq_file *, void *)' [-Wincompatible-function-pointer-types]
     891 | DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/seq_file.h:223:27: note: expanded from macro 'DEFINE_SHOW_STORE_ATTRIBUTE'
     223 |         return single_open(file, __name ## _show, inode->i_private);    \
         |                                  ^~~~~~~~~~~~~~~
   <scratch space>:54:1: note: expanded from here
      54 | rtsds_dbg_reset_show
         | ^~~~~~~~~~~~~~~~~~~~
   include/linux/seq_file.h:176:38: note: passing argument to parameter here
     176 | int single_open(struct file *, int (*)(struct seq_file *, void *), void *);
         |                                      ^
   5 warnings and 2 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MODVERSIONS
   Depends on [n]: MODULES [=y] && !COMPILE_TEST [=y]
   Selected by [y]:
   - RANDSTRUCT_FULL [=y] && (CC_HAS_RANDSTRUCT [=y] || GCC_PLUGINS [=n]) && MODULES [=y]


vim +868 drivers/phy/realtek/phy-rtk-otto-serdes.c

40f1aea80b53b8 Markus Stockhausen 2024-10-07  847  
40f1aea80b53b8 Markus Stockhausen 2024-10-07  848  static ssize_t rtsds_dbg_mode_write(struct file *file, const char __user *userbuf,
40f1aea80b53b8 Markus Stockhausen 2024-10-07  849  				size_t count, loff_t *ppos)
40f1aea80b53b8 Markus Stockhausen 2024-10-07  850  {
40f1aea80b53b8 Markus Stockhausen 2024-10-07  851  	struct seq_file *seqf = file->private_data;
40f1aea80b53b8 Markus Stockhausen 2024-10-07  852  	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
40f1aea80b53b8 Markus Stockhausen 2024-10-07  853  	struct rtsds_ctrl *ctrl = macro->ctrl;
40f1aea80b53b8 Markus Stockhausen 2024-10-07  854  	int ret, hwmode, phymode, sid = macro->sid;
40f1aea80b53b8 Markus Stockhausen 2024-10-07  855  
40f1aea80b53b8 Markus Stockhausen 2024-10-07  856  	ret = kstrtou32_from_user(userbuf, count, 16, &hwmode);
40f1aea80b53b8 Markus Stockhausen 2024-10-07  857  	if (ret)
40f1aea80b53b8 Markus Stockhausen 2024-10-07  858  		return ret;
40f1aea80b53b8 Markus Stockhausen 2024-10-07  859  	/*
40f1aea80b53b8 Markus Stockhausen 2024-10-07  860  	 * Allow to set arbitrary modes into the SerDes to improve error analysis. Accept that
40f1aea80b53b8 Markus Stockhausen 2024-10-07  861  	 * this might confuse the internal state tracking.
40f1aea80b53b8 Markus Stockhausen 2024-10-07  862  	 */
40f1aea80b53b8 Markus Stockhausen 2024-10-07  863  	phymode = rtsds_hwmode_to_phymode(ctrl, hwmode);
40f1aea80b53b8 Markus Stockhausen 2024-10-07  864  	rtsds_phy_set_mode_int(ctrl, sid, phymode, hwmode);
40f1aea80b53b8 Markus Stockhausen 2024-10-07  865  
40f1aea80b53b8 Markus Stockhausen 2024-10-07  866  	return count;
40f1aea80b53b8 Markus Stockhausen 2024-10-07  867  }
40f1aea80b53b8 Markus Stockhausen 2024-10-07 @868  DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
40f1aea80b53b8 Markus Stockhausen 2024-10-07  869  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
