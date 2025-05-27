Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B085C54F30
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQ0WNkqIMGPh67oSxSanK++DlOUNDTvsVLe35Lv6JGs=; b=yEHgdBLlBxMlmZ
	9dN6mjtouT3P1imAGWdmrxSyVSf5uia9Q8N26tW13Y/RcQvclr4ocsflgmRtEkTcYUsqhNOZHTCvm
	NsUPhMMOm9GSyY+sp036mQTGf37Rm50Rf1WY/0bI5r2vAopO6vPBnsoljG8b6WthBAogRSxwMYFKf
	pAriA9jrMDbEiufDx9y/9t/rkPx04kfK7K7uyK6bBajKqE62mExnnwilIWJMLww5hLIvkaL8N4Abh
	FjtCisFYzwhhAGATGjO4QKtd6p6N3Z25bw+JK9DgEZEPyVwdrQDhZEPr3VPXu1gZgvBPmLhiB+o5O
	t4HBAy6r+e5oXU1obLiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJqon-0000000AOit-3rmQ;
	Tue, 27 May 2025 09:41:57 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJqol-0000000AOi6-3cDp
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 09:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1748338915; x=1779874915;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fYkl94QEb1ALho8v0PxnjrLIwYg+9NBlW/B3pGxLm5c=;
  b=Sy08VWARbF8WMSfxm+Hmz71ywEXWidc3XngLWz1illk8MEfTvP+44u8T
   2M6oTpT7lEJ+IdSC+EHPJcCutqiDzhERHba/Mma9PuUZgM+la9lVnfUrG
   aWNVDlK4hPdiUrgP6lyKnjEmG/28FNJlb6u544xmwoNF8vGL2gjJwEFe2
   61AEEzAqjQeBnguVTwq1m5NzVoYXe4dFVGa24L+xHtwsZ85TxlYgthPWb
   wWwn70OuTKzDjOP0oCM+iqU5YWjAHXzIaUx2viwQ7y+wnFiSqWkoEF09q
   xDAhcdT2r0mJgs+ZbavfKqckTEomL+ebbQQiNgHBPiM7v+uRP0N0FXbsP
   Q==;
X-CSE-ConnectionGUID: pjsIwgTfQxa3y8Y0CmIQHw==
X-CSE-MsgGUID: P/J2ypfGRvW0cQGXmBH8ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="50430780"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; 
   d="scan'208";a="50430780"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2025 02:41:54 -0700
X-CSE-ConnectionGUID: ZnlmDMRWS06Xr0aezQk+ow==
X-CSE-MsgGUID: knpojbbkQE2MO9ElupVhuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; 
   d="scan'208";a="142735632"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 27 May 2025 02:41:53 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uJqog-000T52-2q;
	Tue, 27 May 2025 09:41:50 +0000
Date: Tue, 27 May 2025 17:40:58 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Dege <michael.dege@renesas.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: oe-kbuild-all@lists.linux.dev, Michael Dege <michael.dege@renesas.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: renesas: r8a779f0-ether-serdes: add new step
 added to latest datasheet
Message-ID: <202505271711.WM48TTTI-lkp@intel.com>
References: <20250527-renesas-serdes-update-v2-2-ef17c71cd94c@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527-renesas-serdes-update-v2-2-ef17c71cd94c@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_024155_947771_ED42535A 
X-CRM114-Status: GOOD (  13.39  )
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

Hi Michael,

kernel test robot noticed the following build errors:

[auto build test ERROR on a5806cd506af5a7c19bcd596e4708b5c464bfd21]

url:    https://github.com/intel-lab-lkp/linux/commits/Michael-Dege/phy-renesas-r8a779f0-ether-serdes-add-USXGMII-mode/20250527-150048
base:   a5806cd506af5a7c19bcd596e4708b5c464bfd21
patch link:    https://lore.kernel.org/r/20250527-renesas-serdes-update-v2-2-ef17c71cd94c%40renesas.com
patch subject: [PATCH v2 2/2] phy: renesas: r8a779f0-ether-serdes: add new step added to latest datasheet
config: arc-randconfig-001-20250527 (https://download.01.org/0day-ci/archive/20250527/202505271711.WM48TTTI-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 10.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250527/202505271711.WM48TTTI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202505271711.WM48TTTI-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/phy/renesas/r8a779f0-ether-serdes.c: In function 'r8a779f0_eth_serdes_read32':
>> drivers/phy/renesas/r8a779f0-ether-serdes.c:54:25: error: 'RENESAS_ETH_SERDES_BANK_SELECT' undeclared (first use in this function); did you mean 'R8A779F0_ETH_SERDES_BANK_SELECT'?
      54 |  iowrite32(bank, addr + RENESAS_ETH_SERDES_BANK_SELECT);
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                         R8A779F0_ETH_SERDES_BANK_SELECT
   drivers/phy/renesas/r8a779f0-ether-serdes.c:54:25: note: each undeclared identifier is reported only once for each function it appears in


vim +54 drivers/phy/renesas/r8a779f0-ether-serdes.c

    51	
    52	static u32 r8a779f0_eth_serdes_read32(void __iomem *addr, u32 offs,  u32 bank)
    53	{
  > 54		iowrite32(bank, addr + RENESAS_ETH_SERDES_BANK_SELECT);
    55	
    56		return ioread32(addr + offs);
    57	}
    58	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
