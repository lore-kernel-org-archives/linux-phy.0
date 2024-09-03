Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DF0ACD37AA
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 17:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aChjURvnHl0WkAdMRNxzR+d9pSJ326UhVdzaSdhF+hM=; b=lNaqaXohIQi6Hu
	vruCzdzFlb9TlAeteFXpi5Y4CxdUOUshBTHR4hxNY/j/kKsMsxxlEhj5zUToPvGV6eSHpxYkAnrJh
	vu0dzaeeZPfRlKPTpz9gVGDQJfPlwc5dPnAFerinLVWsRyDG3BPldrojyzrcwniUbYd1fHIa4iabD
	L5h/+raYpS06k8MH6F9CdYeTVfC3b/dkdt4zrp6aHLylkAPCjZ+rR02EyZ9HBIBfh69xCxUUBMVLv
	Rf/Qs7xOQ2fOUYzkb5BJLvR90XXHiuyMm8BVcdPoB4t1zp4BFPkWaULPY//UX+t71ogLkZdhQlHbD
	47559lmsrTILlvULJh1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slXhA-00000001NMw-0hun;
	Tue, 03 Sep 2024 17:52:00 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slXge-00000001NF2-1DgQ
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 17:51:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725385888; x=1756921888;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ygzor0MKxxVktMqVp1C7zOEUkofTr+JdIn10dAzHNAc=;
  b=ADRTp8oiJ/HZ75EdcxkcfGQIP4/1F7/eX0rZk2m0Z6KMRhcDbADICUCA
   ba9tdMRuM1QAzh6QxrsaVf7I6MZrYeeRyVRlNjsfWePz/CJN0GSOAXmg7
   +OGZjeaRDxUV7FySkfdOOOuF8/LIEWL8hBXJKmbBBtguETx/1xvHjqH+V
   AE2Ywb5A3XV8BO9V30STvKwJB4sEp71MaNYwiW8CMCHPtkV/El6pPRzCh
   FtHHlqfY+wrG0kbzSBb+MO6K1C8jaot3kba3AytyuwkPyPqPPUtIeKucK
   6mykw4ex8mk+yEVPOEm2WYflFK8nB7BQ7I5vIFHYoIfflIszVJkvCtJIS
   A==;
X-CSE-ConnectionGUID: zGFoQqaaRsG0pyuSjpNyLQ==
X-CSE-MsgGUID: 6yXzfKLLRti+DzWJ4GmzCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="49410319"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="49410319"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2024 10:51:26 -0700
X-CSE-ConnectionGUID: FdJd3AB4QY6GrLurhOpSXw==
X-CSE-MsgGUID: NeGxIv0nTCCKxYsZD/MqYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; 
   d="scan'208";a="64675624"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 03 Sep 2024 10:51:24 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1slXgX-0006zM-2j;
	Tue, 03 Sep 2024 17:51:21 +0000
Date: Wed, 4 Sep 2024 01:50:57 +0800
From: kernel test robot <lkp@intel.com>
To: Josua Mayer <josua@solid-run.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH v2] phy: mvebu-cp110-utmi: support swapping d+/d- lanes
 by dts property
Message-ID: <202409040139.hNh9K4iF-lkp@intel.com>
References: <20240903-mvebu-utmi-phy-v2-1-7f49c131fad0@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903-mvebu-utmi-phy-v2-1-7f49c131fad0@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_105128_410922_706A511F 
X-CRM114-Status: UNSURE (   9.35  )
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

Hi Josua,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 8400291e289ee6b2bf9779ff1c83a291501f017b]

url:    https://github.com/intel-lab-lkp/linux/commits/Josua-Mayer/phy-mvebu-cp110-utmi-support-swapping-d-d-lanes-by-dts-property/20240903-164826
base:   8400291e289ee6b2bf9779ff1c83a291501f017b
patch link:    https://lore.kernel.org/r/20240903-mvebu-utmi-phy-v2-1-7f49c131fad0%40solid-run.com
patch subject: [PATCH v2] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by dts property
config: arc-randconfig-r071-20240903 (https://download.01.org/0day-ci/archive/20240904/202409040139.hNh9K4iF-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240904/202409040139.hNh9K4iF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409040139.hNh9K4iF-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/marvell/phy-mvebu-cp110-utmi.c:110: warning: Function parameter or struct member 'swap_dx' not described in 'mvebu_cp110_utmi_port'


vim +110 drivers/phy/marvell/phy-mvebu-cp110-utmi.c

2fc989f74b8dac Konstantin Porotchkin 2021-03-07   97  
2fc989f74b8dac Konstantin Porotchkin 2021-03-07   98  /**
2fc989f74b8dac Konstantin Porotchkin 2021-03-07   99   * struct mvebu_cp110_utmi_port - PHY port data
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  100   *
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  101   * @priv: PHY driver data
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  102   * @id: PHY port ID
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  103   * @dr_mode: PHY connection: USB_DR_MODE_HOST or USB_DR_MODE_PERIPHERAL
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  104   */
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  105  struct mvebu_cp110_utmi_port {
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  106  	struct mvebu_cp110_utmi *priv;
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  107  	u32 id;
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  108  	enum usb_dr_mode dr_mode;
7208af25e8a67e Josua Mayer           2024-09-03  109  	bool swap_dx;
2fc989f74b8dac Konstantin Porotchkin 2021-03-07 @110  };
2fc989f74b8dac Konstantin Porotchkin 2021-03-07  111  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
