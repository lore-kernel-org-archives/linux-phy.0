Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0E3BCA0ED4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Sep 2023 10:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwoQ9FDqrzcdBCgz4pr9inCxWnrsH1rol7ZQ5vSpRTQ=; b=J1NMXK2/YVQl59
	QIg/CUI/7EXe5FPqqAGgRFXedbLuyqNfTmrHjDV5rxcWI/lk/xQbzgOn1ulXOY4SbuTL/qrC24ZDN
	fT2HuUKaLfvbfEJHb1IdgilJD2B5OMXE0PJg2GGwnmKILU55EpRDotzHLOTnoLPRkbnSCyR3YIz63
	2woXogdRfPnAr3f/KEr2MGXJmgd8zAqUnCCLuYKm8RZMoM9pocdhllzDZXS4mUBiQN/Z1SD069hK6
	ZysXpoSBB7ziihBxofNTayk5qUwUR3TvS4AoLs3Zvi6l2AW1qvwz66xuW8XEC7ujzj9F/9J8h+Jlv
	YwdRFdx/curQ925xWZmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg0Ij-002sAS-2J;
	Tue, 12 Sep 2023 10:07:21 +0000
Received: from mgamail.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg0If-002s6s-2r
	for linux-phy@lists.infradead.org;
	Tue, 12 Sep 2023 10:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1694513237; x=1726049237;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eK2t15mGnsXgSy49KZauX10qwOfSdZIw/vwbiA8F8s0=;
  b=dZps8B0klawbSBdIih3dzHgHkIBdRfh+FgQryub+HcTKYRR+Z61TXuqj
   DNU79fLxftg9e4jbN+JS8l08OJQDtNAuy75NW+eEEh78xh3ZbAQBF9tEe
   TlKjwujfLBm5B3dGcGMhJATtZXVzQKVEbgLR/qFANW8e2hJQpTVV1gKhM
   B4SJs5rKWID3DRMcyGdbFr3ovjTzus8tKnwxoR3JP60pYkYhMDv/5MswB
   4X6fAB6zwyQ4CqSCkNNDzkoc8mTMCgCTc0YNQjwVJtAJ1qLvUqdkOBxd7
   JkfvlrEY3KJeGvfpxOwp9ArShb75nbzWH4EIz2XuXO8xaVy/ltxRZpr+S
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="368589854"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; 
   d="scan'208";a="368589854"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Sep 2023 03:07:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="778738399"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; 
   d="scan'208";a="778738399"
Received: from lkp-server02.sh.intel.com (HELO 1e56c5165d33) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 12 Sep 2023 03:07:06 -0700
Received: from kbuild by 1e56c5165d33 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qg0IP-0000Ej-0o;
	Tue, 12 Sep 2023 10:07:01 +0000
Date: Tue, 12 Sep 2023 18:06:13 +0800
From: kernel test robot <lkp@intel.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2 1/2] phy: qcom-qmp-combo: Square out 8550
 POWER_STATE_CONFIG1
Message-ID: <202309121747.8Ln8K1XY-lkp@intel.com>
References: <20230829-topic-8550_usbphy-v2-1-a72f43311d19@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230829-topic-8550_usbphy-v2-1-a72f43311d19@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_030717_988163_17B15BC7 
X-CRM114-Status: GOOD (  14.30  )
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

Hi Konrad,

kernel test robot noticed the following build errors:

[auto build test ERROR on linus/master]
[also build test ERROR on v6.6-rc1 next-20230912]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Konrad-Dybcio/phy-qcom-qmp-combo-initialize-PCS_USB-registers/20230912-072106
base:   linus/master
patch link:    https://lore.kernel.org/r/20230829-topic-8550_usbphy-v2-1-a72f43311d19%40linaro.org
patch subject: [PATCH v2 1/2] phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
config: arm-randconfig-r016-20230912 (https://download.01.org/0day-ci/archive/20230912/202309121747.8Ln8K1XY-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project.git 4a5ac14ee968ff0ad5d2cc1ffa0299048db4c88a)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230912/202309121747.8Ln8K1XY-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309121747.8Ln8K1XY-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-qmp-combo.c:865:19: error: use of undeclared identifier 'QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1'
     865 |         QMP_PHY_INIT_CFG(QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
         |                          ^
>> drivers/phy/qualcomm/phy-qcom-qmp-combo.c:1837:21: error: invalid application of 'sizeof' to an incomplete type 'const struct qmp_phy_init_tbl[]'
    1837 |         .pcs_usb_tbl_num        = ARRAY_SIZE(sm8550_usb3_pcs_usb_tbl),
         |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:57:32: note: expanded from macro 'ARRAY_SIZE'
      57 | #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
         |                                ^~~~~
   2 errors generated.


vim +/QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1 +865 drivers/phy/qualcomm/phy-qcom-qmp-combo.c

   863	
   864	static const struct qmp_phy_init_tbl sm8550_usb3_pcs_usb_tbl[] = {
 > 865		QMP_PHY_INIT_CFG(QPHY_USB_Q6_PCS_USB3_POWER_STATE_CONFIG1, 0x68),
   866		QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
   867		QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
   868		QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
   869		QMP_PHY_INIT_CFG(QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
   870	};
   871	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
