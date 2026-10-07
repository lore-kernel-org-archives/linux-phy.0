Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1659ECA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 11:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hPV632Fnt1p0CiJ0dLzPZf+Zg+BCDUAPffdZ63rXSc=; b=yWo/yd+Xsi3RAB
	zB2YTkVygPxyxNKxJUKKHk64KR+arfSNSpewtRbXoIpp1BE3ITMyAh5g7zBnMRIacQ4Uo9MPd0eNX
	u89lGKNbWV0OOOayiKWRZwp3GFlmAVCnHjOLtdkAz7Idc7ZoD2T/qR1+78FzqE9VFiM9kB/KeDTeQ
	lBAaGE3DdX0M9pi0xRJbRvq6jQzt/kb7pe79tV26WxQokTaW18GA63IwP+H6+lNvFD/YGBIsxpjDp
	t3G3yQTsiK6MAbs83N6CGxekm5j7IfdPgJxYKzNdLkXdrjW7ubf8foE/nTaQBddXjbhbui0fFs+Vt
	xL+lFJAcx2fhGX/uP3+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPsp-00000002KAF-2fmE;
	Wed, 07 Oct 2026 11:32:27 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPsm-00000002K8f-1wD7
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 11:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1791372745; x=1822908745;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jU8W3uTLLilw0+w2z/HfS8+JPAexnPEoxrs7IvvBv/o=;
  b=g6Ig8+eQ1WBSqETYfhylQtpGhQGBZPVm8ROdgXQrKRU1d+otGHlohCqb
   903mvd589i6yYmKa/b+lnKkUqhBtLzVs7VYlVIN0YUMXKtecqPf5CHbhB
   pr/vpVvUs/jNxh1s2xVG7Sd1yA89OJoEn2cYD9nBK/jcNiacyztePFQAE
   Kv+n8sQdWn2TlN6D6iR8neu9bb6DwkJ9aCBOKG3RUQuiGoZVwsiY91VCy
   bfKaNjy3AR3Cd/d6AIWYzb46k/3A0+ihzS1onUe3itvmEBq3GwHchnJd/
   kNELYeA2Lo1iJ/DpEJiJ/OVfGQVh9GoHOObcrl2hLSp8715w5zOapuBHP
   Q==;
X-CSE-ConnectionGUID: p2dIIj5iSTSxo2UAjMOV9A==
X-CSE-MsgGUID: B39tgrcPTbWILyX16SGSuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11927"; a="134717"
X-IronPort-AV: E=Sophos;i="6.27,144,1787036400"; 
   d="scan'208";a="134717"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2026 04:32:24 -0700
X-CSE-ConnectionGUID: F1D4gIqQRIKWj+TCENWYEA==
X-CSE-MsgGUID: EcBYxUJsQx29EeyrLJa3+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,144,1787036400"; 
   d="scan'208";a="33426"
Received: from lkp-server01.sh.intel.com (HELO 0caa9d2d175c) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 07 Oct 2026 04:32:20 -0700
Received: from kbuild by 0caa9d2d175c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1xEPsf-000000002u4-0w5Q;
	Wed, 07 Oct 2026 11:32:17 +0000
Date: Wed, 7 Oct 2026 19:32:15 +0800
From: kernel test robot <lkp@intel.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Manu Gautam <mgautam@codeaurora.org>,
	Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <pza@pengutronix.de>
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: Re: [PATCH v5 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
Message-ID: <202610071946.Z4D9aPGU-lkp@intel.com>
References: <20261006-phy-v5-6-cbe9330a6449@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261006-phy-v5-6-cbe9330a6449@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_043224_606820_B7859ED6 
X-CRM114-Status: GOOD (  10.68  )
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

Hi Varadarajan,

kernel test robot noticed the following build errors:

[auto build test ERROR on 15551282e82db772bfc862f96a8abf14a60f4ea5]

url:    https://github.com/intel-lab-lkp/linux/commits/Varadarajan-Narayanan/dt-bindings-phy-qcom-qmp-usb-Add-IPQ9650-USB3-PHY/20261006-105915
base:   15551282e82db772bfc862f96a8abf14a60f4ea5
patch link:    https://lore.kernel.org/r/20261006-phy-v5-6-cbe9330a6449%40oss.qualcomm.com
patch subject: [PATCH v5 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
config: i386-buildonly-randconfig-1003-20261007 (https://download.01.org/0day-ci/archive/20261007/202610071946.Z4D9aPGU-lkp@intel.com/config)
compiler: gcc-13 (Debian 13.3.0-16) 13.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20261007/202610071946.Z4D9aPGU-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202610071946.Z4D9aPGU-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:49: error: implicit declaration of function 'FIELD_PREP_CONST' [-Werror=implicit-function-declaration]
      39 | #define FSEL_24MHZ                              FIELD_PREP_CONST(FSEL_MASK, 2)
         |                                                 ^~~~~~~~~~~~~~~~
   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:60: note: in expansion of macro 'FSEL_24MHZ'
     449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
         |                                                            ^~~~~~~~~~
>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:49: error: initializer element is not constant
      39 | #define FSEL_24MHZ                              FIELD_PREP_CONST(FSEL_MASK, 2)
         |                                                 ^~~~~~~~~~~~~~~~
   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:60: note: in expansion of macro 'FSEL_24MHZ'
     449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
         |                                                            ^~~~~~~~~~
   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:49: note: (near initialization for 'hs_6nm_phy_pre_tuning[3].val')
      39 | #define FSEL_24MHZ                              FIELD_PREP_CONST(FSEL_MASK, 2)
         |                                                 ^~~~~~~~~~~~~~~~
   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:60: note: in expansion of macro 'FSEL_24MHZ'
     449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
         |                                                            ^~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/FIELD_PREP_CONST +39 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

    33	
    34	#define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
    35	#define SIDDQ					BIT(2)
    36	#define RETENABLEN				BIT(3)
    37	#define FSEL_MASK				GENMASK(6, 4)
    38	#define FSEL_DEFAULT				(0x3 << 4)
  > 39	#define FSEL_24MHZ				FIELD_PREP_CONST(FSEL_MASK, 2)
    40	#define VATESTENB_MASK				GENMASK(1, 0)
    41	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
