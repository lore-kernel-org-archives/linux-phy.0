Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 547B8CED270
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 07:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5humIJMoGki3xOkf3STKhIwR8fNLfWXZxRUFpw7x8U8=; b=SdABCtbOBpKWMe
	OMdKhKyvvJsWdzboEh3Go+6Up0IA3C/oT1H5t9Cc3aBEdiFMEtNLMa93xawXdHS2nImrWdebw8Asn
	v6MICDrTZXTcTKJcWpWm/VPjyG44xBctrf1KwtFzNs9LBLPlLwf9S7D6uediTdXfEE47zmT6RR+hu
	cErbt3UDGiehy0o1U7umoWSQ4CTIG72lxrmVeFh2bI6RyS3BZEF49N/UkeAt3PF3ntTcahZTSY9u8
	7WHH9tV61c8awBTUEH4sHIKX1A4kC+FbKI46BCEUIoH+J/mehoqRDJzTvETGPvhtCvMwhQVMbw1HY
	jQZlHqWO+GM5OHo8R02Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy4WU-00000004lzZ-09ox;
	Tue, 08 Oct 2024 07:20:46 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy4WQ-00000004lyB-42Wu
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 07:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728372043; x=1759908043;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Rn1tdMF4LSwkuLbf4jm6VgwMbmYg+6fAZnOTNc7Z68U=;
  b=SiYHCYF5fZXnpq7JWn6tVAu4eATdWNAqjMmURO4nM3uRLA4n3Gkl09O3
   tyGNxcbAon7bOiKnNi3aY+RGx9lkI6vbU9wyHACoh6M6+oLnqrbuz72q6
   /UEZ8XCRd8urHc5kRYn64khiebbDrHWShidgR6n1j/ttKzfHQeZDdJqkS
   /d+TSD0IFn4UzIvuJam7yRy4ydwkr8Eqw5YBIY5Ml+/4tNsaGXK6cz8jd
   KZ0gaIwN9wU8HqnszJD3mmn1hO/io/UJJAut6Mq//AYEIvXv7fWr9+n4D
   t1Qm+5V3V9FGmevyeI69xsORFA7p7I72y69URn4keRtkdyWndDDgI7vlv
   A==;
X-CSE-ConnectionGUID: PlWYwuICTKmi6w4HXG6Smw==
X-CSE-MsgGUID: +NdEM33PShK6xQUSGsisHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27714326"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; 
   d="scan'208";a="27714326"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2024 00:20:42 -0700
X-CSE-ConnectionGUID: 2kh+tj+rSnqnTCl+hUh0XQ==
X-CSE-MsgGUID: aTJGazz7SLGMJjOmbvdKaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; 
   d="scan'208";a="75301280"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 08 Oct 2024 00:20:40 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sy4WM-00062C-1A;
	Tue, 08 Oct 2024 07:20:38 +0000
Date: Tue, 8 Oct 2024 15:20:02 +0800
From: kernel test robot <lkp@intel.com>
To: Markus Stockhausen <markus.stockhausen@gmx.de>,
	linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, krzk@kernel.org
Cc: oe-kbuild-all@lists.linux.dev,
	Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: Re: [PATCH v2 3/3] phy: Integrate Realtek Otto SerDes driver into
 build system
Message-ID: <202410081449.rLWpQtUj-lkp@intel.com>
References: <20241007163623.3274510-4-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007163623.3274510-4-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_002043_086201_B015D752 
X-CRM114-Status: GOOD (  13.04  )
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
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20241008/202410081449.rLWpQtUj-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241008/202410081449.rLWpQtUj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410081449.rLWpQtUj-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/debugfs.h:16,
                    from drivers/phy/realtek/phy-rtk-otto-serdes.c:7:
   drivers/phy/realtek/phy-rtk-otto-serdes.c: In function 'rtsds_dbg_mode_open':
>> drivers/phy/realtek/phy-rtk-otto-serdes.c:868:29: error: passing argument 2 of 'single_open' from incompatible pointer type [-Werror=incompatible-pointer-types]
     868 | DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
         |                             ^~~~~~~~~~~~~~
         |                             |
         |                             ssize_t (*)(struct seq_file *, void *) {aka long int (*)(struct seq_file *, void *)}
   include/linux/seq_file.h:223:34: note: in definition of macro 'DEFINE_SHOW_STORE_ATTRIBUTE'
     223 |         return single_open(file, __name ## _show, inode->i_private);    \
         |                                  ^~~~~~
   include/linux/seq_file.h:176:32: note: expected 'int (*)(struct seq_file *, void *)' but argument is of type 'ssize_t (*)(struct seq_file *, void *)' {aka 'long int (*)(struct seq_file *, void *)'}
     176 | int single_open(struct file *, int (*)(struct seq_file *, void *), void *);
         |                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/phy/realtek/phy-rtk-otto-serdes.c: In function 'rtsds_dbg_reset_open':
   drivers/phy/realtek/phy-rtk-otto-serdes.c:891:29: error: passing argument 2 of 'single_open' from incompatible pointer type [-Werror=incompatible-pointer-types]
     891 | DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);
         |                             ^~~~~~~~~~~~~~~
         |                             |
         |                             ssize_t (*)(struct seq_file *, void *) {aka long int (*)(struct seq_file *, void *)}
   include/linux/seq_file.h:223:34: note: in definition of macro 'DEFINE_SHOW_STORE_ATTRIBUTE'
     223 |         return single_open(file, __name ## _show, inode->i_private);    \
         |                                  ^~~~~~
   include/linux/seq_file.h:176:32: note: expected 'int (*)(struct seq_file *, void *)' but argument is of type 'ssize_t (*)(struct seq_file *, void *)' {aka 'long int (*)(struct seq_file *, void *)'}
     176 | int single_open(struct file *, int (*)(struct seq_file *, void *), void *);
         |                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/single_open +868 drivers/phy/realtek/phy-rtk-otto-serdes.c

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
