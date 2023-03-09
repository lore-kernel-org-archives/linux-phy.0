Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0DA2C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 22:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eg77HSBPenHRFDPCMTdnOz1f3t1F+NrW4ylWcbe66bM=; b=x23AC2SkvMj8Wr
	7COygzH/ZCKPjc4YqD9q3qeAj4U0PP99sQ7iES19wm3+QyS0x3ZEpR+tZ6g9DHyITayLApNvCjslF
	XNcDBF2LPHEPVftRiIRB8b3lD9INRbA/HsIUw94+mfyV4dP9PThaRBsywIgD6pDnYswCisQ7rzBdC
	zTX39CNO13okTCNkv66NhXpCSG+Z42/yBy8Z0sWa1arAKkHlQynY2I7lzi634a6eAjsFlZ81sBD5H
	jxAE/qGuo8rhJssoOSgrF5Ft97zyXsvsWvtn1Ww60GDHXMUcvRsIIDbOqObKyFWw+XA2CzvAvySEw
	CvUOBPXQEAkxHgVjbnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paOyP-00CEDw-7v
	for linux-phy@archiver.kernel.org; Thu, 09 Mar 2023 22:42:57 +0000
Received: from mga04.intel.com ([192.55.52.120])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paOyK-00CEBO-C7
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 22:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678401772; x=1709937772;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fBE1n3VDHKOa0my/fpWQs/hh4OEzhEHXYLpvjY/5Y0Q=;
  b=WQHzz/H6UdbSGr6rDV4Za6zXnwOx+EOUj6kZbnZuTXXw5Rstvfcb6ds4
   ATy2a0a8TGpCqbsER9SVUH72TVp40HfyI+LtAOGlxO1a/jal4QDyTxe9f
   /0NuZ3gHWmidxuPxQs4f3aR/2RCtR+Q/ChWtDOmmtrvGjBqwE+YlbUvRQ
   /BshDnbrG+B83pMJeFwQJhGohVcjJJ/f9rBAPFzdEhHq11h5OAHobCUAF
   djULPZ3tDXTzkO9lC/mNcbxlhr7IgfLcvC6lSaFfFgbDWW1EAWuCgQlhN
   SJ8Q9ieiswJgczKBqxFr9MkJ+bWBGHaCJjfyjMcYVbKHSd3injMkbDKqK
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="335289372"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="335289372"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 14:42:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="654953046"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="654953046"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 09 Mar 2023 14:42:42 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1paOy9-0003H1-2U;
	Thu, 09 Mar 2023 22:42:41 +0000
Date: Fri, 10 Mar 2023 06:42:35 +0800
From: kernel test robot <lkp@intel.com>
To: Danila Tikhonov <danila@jiaxyga.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	davidwronek@gmail.com, Danila Tikhonov <danila@jiaxyga.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM7150 support
Message-ID: <202303100615.2vRPxq4R-lkp@intel.com>
References: <20230309185049.170878-3-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230309185049.170878-3-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_144252_498077_8B730ADE 
X-CRM114-Status: GOOD (  11.93  )
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
config: arm64-randconfig-r023-20230308 (https://download.01.org/0day-ci/archive/20230310/202303100615.2vRPxq4R-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 67409911353323ca5edf2049ef0df54132fa1ca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/95e826acacaf3b5ba79c06b481199a17abed44ba
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Danila-Tikhonov/dt-bindings-phy-Add-QMP-UFS-PHY-comptible-for-SM7150/20230310-025222
        git checkout 95e826acacaf3b5ba79c06b481199a17abed44ba
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/phy/qualcomm/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303100615.2vRPxq4R-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:380:3: error: expected identifier or '('
   };)
     ^
>> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:972:14: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
                   .serdes         = sm8150_ufsphy_serdes,
                                     ^
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:973:28: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
                   .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
                                                ^
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:973:28: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:973:28: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:1004:14: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
                   .serdes         = sm8150_ufsphy_serdes,
                                     ^
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:1005:28: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
                   .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
                                                ^
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:1005:28: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c:1005:28: error: use of undeclared identifier 'sm8150_ufsphy_serdes'
   9 errors generated.


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
