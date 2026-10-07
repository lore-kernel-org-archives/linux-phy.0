Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F810CA5FFF
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 11:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQS0p8bx+gDf9IWN4bXdKgmMw1k12PYnG/kuOeadEkE=; b=ichukhnb2uegwd
	uvlXnv8MEigHGOuifoULGrLqa707/y2cq3LeKLH1WpY0LAyU7a79u0f+KYP3RaonFt/2J/hHujJOK
	vJv8QHAU1Z9oojFlWEQ4AVLzgJsZxzPfdJUzSh8NpK2HomLz9TSiajD25Csprwj+GEQl9CvmhFe5k
	+u24a5TB9Q2UmoK7hK5J2wDlWDA3mbqy9992NNDXyobnGJx/chIuL3LEYztA+VpNznb7zYiw5nv1h
	uygaAq4TPey7F5dP3g9WnPLXR0PnElvcGJicdk5ALyED6PlQb9o0DgTOxPdIY57c25xyEyLAn4x6o
	XCnt+maSiAtHFeD+u7rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPNp-00000002Fws-0Q9T;
	Wed, 07 Oct 2026 11:00:25 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPNm-00000002Fw3-1HuD
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 11:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1791370822; x=1822906822;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=b9Y5JMuxHoZJDF9zlmTBWx0Lew2o5MI7bC+/DAQ4foI=;
  b=kbfd2LbgEy7ilhDcB7HFoonNXV0MWWbKlyGYbMKnaS4+/MmHB0p6p16B
   heoNuUqdHMT049UvgmDKUGHgv+DxSNC3YeA3MEz2d0w5ItAOffv6dyqET
   Oq77Sr5MT0jP7RqwfgmKqigPxqYeMgfFVQbv/sNy/RnSKjK4/YPBGeGpF
   EPs9fmCLXD8KYdCDUtnbmtxe9M2g4P44oCDhQ5EOYEsFqFYjb8tEiiTOW
   S3UcxZNIz+UtRJRDNsgvJy6HWMNCBUuZZ487fWaFhvp1gZZaqN6oRwWzj
   lzLaa9G119fZUro8SDx8/7/z85J1eAEBZCCESgc6iKdJ+wsVFzwv+jjZL
   A==;
X-CSE-ConnectionGUID: ThCj3kVhQqym89sLBsPXcA==
X-CSE-MsgGUID: 76tIoSxEQaKB/kYmZ3kfkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11927"; a="11087"
X-IronPort-AV: E=Sophos;i="6.27,144,1787036400"; 
   d="scan'208";a="11087"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2026 04:00:22 -0700
X-CSE-ConnectionGUID: zfD3bn2aRtSIQZEIveqeCg==
X-CSE-MsgGUID: hQVYRKRkSHSSfBEtUVHKTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,144,1787036400"; 
   d="scan'208";a="285349533"
Received: from lkp-server01.sh.intel.com (HELO 0caa9d2d175c) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 07 Oct 2026 04:00:17 -0700
Received: from kbuild by 0caa9d2d175c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1xEPNe-000000002sW-2UtY;
	Wed, 07 Oct 2026 11:00:14 +0000
Date: Wed, 7 Oct 2026 19:00:01 +0800
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: Re: [PATCH v5 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
Message-ID: <202610071844.6m37sk3H-lkp@intel.com>
References: <20261006-phy-v5-6-cbe9330a6449@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261006-phy-v5-6-cbe9330a6449@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_040022_398314_262DD5A8 
X-CRM114-Status: GOOD (  10.24  )
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
config: x86_64-buildonly-randconfig-1001-20261007 (https://download.01.org/0day-ci/archive/20261007/202610071844.6m37sk3H-lkp@intel.com/config)
compiler: clang version 22.1.3 (https://github.com/llvm/llvm-project e9846648fd6183ee6d8cbdb4502213fcf902a211)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20261007/202610071844.6m37sk3H-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202610071844.6m37sk3H-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:53: error: call to undeclared function 'FIELD_PREP_CONST'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
         |                                                            ^
   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:23: note: expanded from macro 'FSEL_24MHZ'
      39 | #define FSEL_24MHZ                              FIELD_PREP_CONST(FSEL_MASK, 2)
         |                                                 ^
>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:449:53: error: initializer element is not a compile-time constant
     449 |         { USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
         |                                                            ^~~~~~~~~~
   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:39:23: note: expanded from macro 'FSEL_24MHZ'
      39 | #define FSEL_24MHZ                              FIELD_PREP_CONST(FSEL_MASK, 2)
         |                                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   2 errors generated.


vim +/FIELD_PREP_CONST +449 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

   444	
   445	static const struct phy_reg_config hs_6nm_phy_pre_tuning[] = {
   446		{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, UTMI_PHY_CMN_CTRL_OVERRIDE_EN },
   447		{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, POR },
   448		{ USB2_PHY_USB_PHY_FSEL_SEL, FSEL_SEL, FSEL_SEL },
 > 449		{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
   450		{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, PLLBTUNE, PLLBTUNE },
   451		{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT },
   452		{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, VBUSVLDEXTSEL0, VBUSVLDEXTSEL0 },
   453		{ USB2_PHY_USB_PHY_HS_PHY_CTRL1, VBUSVLDEXT0, VBUSVLDEXT0 },
   454	};
   455	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
