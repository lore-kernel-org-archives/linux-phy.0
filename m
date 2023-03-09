Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A1BC6FD19
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 21:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOCxcuwU8qZJX+jGUvkPjc7t9p2jGnlPL+MAQrjYVPE=; b=3+DRiNQQZXrh1A
	vEmAA36FdEXFDVPmB8pKQG381OUQRQWLXfejfnUO1FsjhPwcEE9J3AcYinN7Zx00EECXlxybZC2KV
	AMFb4Va3t6vTB+yPqvRgjRjugYmPvrrF7eCzOYBnrmP2gYltSJTLZ0C7vREkdt9N0PvZMgnLENLtO
	tsw5RcXBXwnJL/ag2jtHhsl1dhVlW5TyK95gzeJD6S9u8kVPVaO0lX6+9bvoDstpoMwslSU/zvZBj
	vs0PbYcU3NE9Iw1IjbI75maFLVT5+i+Bm/t0dwoErREofz0ASjgWvAt6OifqzfGt8YU/8hTAT6fDg
	DPBYvzY33fPWS8m3t+2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paNrZ-00C0Aa-6r
	for linux-phy@archiver.kernel.org; Thu, 09 Mar 2023 21:31:49 +0000
Received: from mga02.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paNrW-00C09m-2o
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 21:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678397506; x=1709933506;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fuhD00gZ/JN8iEBEai4g97h2vmgpf08x/wSh/QlgdRg=;
  b=EoIhTCqlpoBrMiDsXR/fSRlC7ueQO7iQ9nNK5MTOHp8loxqOzL1oqWYx
   L5QJIcWhoD3QypABYWhhTkbjszPDK0kh3HmtH5fFkr16i3SlQOE8hbROt
   WaNv08A3gmuHysxn5ieSeShyiBafcaJrbQPCK8aTk1Xlsr6hn2FDpDjME
   z2zrg0NWSQAizeQn2RIG3Yi+A8eDp0VUDLNcWp70kZR8jxY15EnpoX6fG
   n8Yeo3aqjZqd20YtBoVKZgpjI9QRpGLoW0wSfAaO8CyKC0GWkmNk3xhbH
   YWKi0uiNeklUKlAXmaYUPUAiLxCe2tY3XoxcPOMVVoTZqmRchxrlreE7x
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="324924270"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="324924270"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 13:31:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="746474002"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="746474002"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 09 Mar 2023 13:31:41 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1paNrQ-0003EP-08;
	Thu, 09 Mar 2023 21:31:40 +0000
Date: Fri, 10 Mar 2023 05:31:05 +0800
From: kernel test robot <lkp@intel.com>
To: Danila Tikhonov <danila@jiaxyga.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, davidwronek@gmail.com,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM7150 support
Message-ID: <202303100518.rMD2XKLn-lkp@intel.com>
References: <20230309185049.170878-3-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230309185049.170878-3-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_133146_208661_892A9CE1 
X-CRM114-Status: GOOD (  15.78  )
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

Hi Danila,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.3-rc1 next-20230309]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Danila-Tikhonov/dt-bindings-phy-Add-QMP-UFS-PHY-comptible-for-SM7150/20230310-025222
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20230309185049.170878-3-danila%40jiaxyga.com
patch subject: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM7150 support
config: arc-randconfig-r043-20230308 (https://download.01.org/0day-ci/archive/20230310/202303100518.rMD2XKLn-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/95e826acacaf3b5ba79c06b481199a17abed44ba
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Danila-Tikhonov/dt-bindings-phy-Add-QMP-UFS-PHY-comptible-for-SM7150/20230310-025222
        git checkout 95e826acacaf3b5ba79c06b481199a17abed44ba
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arc SHELL=/bin/bash drivers/phy/qualcomm/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303100518.rMD2XKLn-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:380:3: error: expected identifier or '(' before ')' token
     380 | };)
         |   ^
>> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:972:35: error: 'sm8150_ufsphy_serdes' undeclared here (not in a function); did you mean 'sm8550_ufsphy_serdes'?
     972 |                 .serdes         = sm8150_ufsphy_serdes,
         |                                   ^~~~~~~~~~~~~~~~~~~~
         |                                   sm8550_ufsphy_serdes
   In file included from include/linux/container_of.h:5,
                    from include/linux/kernel.h:21,
                    from include/linux/clk.h:13,
                    from drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:6:
   include/linux/build_bug.h:16:51: error: bit-field '<anonymous>' width not an integer constant
      16 | #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
         |                                                   ^
   include/linux/compiler.h:232:33: note: in expansion of macro 'BUILD_BUG_ON_ZERO'
     232 | #define __must_be_array(a)      BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
         |                                 ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:55:59: note: in expansion of macro '__must_be_array'
      55 | #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
         |                                                           ^~~~~~~~~~~~~~~
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:973:35: note: in expansion of macro 'ARRAY_SIZE'
     973 |                 .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
         |                                   ^~~~~~~~~~
   include/linux/build_bug.h:16:51: error: bit-field '<anonymous>' width not an integer constant
      16 | #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
         |                                                   ^
   include/linux/compiler.h:232:33: note: in expansion of macro 'BUILD_BUG_ON_ZERO'
     232 | #define __must_be_array(a)      BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
         |                                 ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:55:59: note: in expansion of macro '__must_be_array'
      55 | #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
         |                                                           ^~~~~~~~~~~~~~~
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:1005:35: note: in expansion of macro 'ARRAY_SIZE'
    1005 |                 .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
         |                                   ^~~~~~~~~~


vim +380 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c

   370	
   371	static const struct qmp_phy_init_tbl sm7150_ufsphy_pcs[] = {
   372		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL2, 0x6f),
   373		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
   374		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
   375		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SYM_RESYNC_CTRL, 0x03),
   376		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
   377		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL1, 0x0f),
   378		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_MIN_HIBERN8_TIME, 0xFF),
   379		QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 > 380	};)
   381	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
