Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CAA9C7EE31
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 21:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWBntMfrfEPapiyxEW5vxjy2vrdCrN5xrRe4mAV7A3U=; b=n8qh3Ne71R+tq1
	gKBVKDUCgkO+TH+3kz15VYTDfGH9EToVwB3bA7JCleFvVRG4PGba4BIr5cukzLgpkbGZw0aQNifqn
	qiyl5mbrizDyrEUljspUwBtvStoqOSQ7ALILoDC0ZD9TJVCUExiLyz59QCAxCAikHiVyYSbDBHlOc
	wHMMkBVQgf6mf2BAcf7sTqcT0Wvye9CdJlkHEferiB5EZFcpb0fBOvLFDFO8f7xWs9tbKFxAzSr0w
	kBgEd1d0l7cu2mw0VnOHBHc8//AlW3z8jm48u0yLrAZtxj1OqMyuW9STkwY4+Q0paHIylBdocNjSh
	I3eYHxQutHE6GuRYytXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUXpW-00000009yfy-0XBn;
	Wed, 25 Jun 2025 21:38:54 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUVbf-00000009jBt-2oHh
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 19:16:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1750878987; x=1782414987;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jQ6meuQJB7EAkIgLMqxwrSHNKFvoSijnin1Z/61bJus=;
  b=Klc8A0R/JYGIt+Nbq+UgV4OLuaxUHOhY6FPq3D5l0X4UEui1fa+aFfOj
   Tuy2H4GRaLlCRoeE2f8keOLG39E1/CUTuf/Etc1N1py6mK+QXZpaIUanG
   CO/WmIQYNtmkWDbNchtl+U+qBpcD62pWajm+iiPCSCv9BYBX75GrTJSke
   Xf/T46FBuCm8umWePuTBWCjECR3CtX/JHGGpev3CSuNn7bCZvVwXsOTE3
   EHrpo9N8B1nYUbenJgCR5HIJcqSWCwtpU0/v4a5z1o5DLlOwfp7uFb6A2
   qDEd7HkPpKmZUnv6wNxY5LRBdDSx9JWNcSut5zGsqk0iHdW8jDv5NhNa+
   A==;
X-CSE-ConnectionGUID: AdmgMPPtTSKsUcpyfC950w==
X-CSE-MsgGUID: wmqDOa3HSQyYhdYvgNfl4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="52280294"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; 
   d="scan'208";a="52280294"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2025 12:16:24 -0700
X-CSE-ConnectionGUID: DiGq+pIDQrWqFy1yzVRG6g==
X-CSE-MsgGUID: NNEVO8+jQdi+eQljjP0tqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; 
   d="scan'208";a="157800608"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 25 Jun 2025 12:16:18 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uUVbU-000TQO-28;
	Wed, 25 Jun 2025 19:16:16 +0000
Date: Thu, 26 Jun 2025 03:15:55 +0800
From: kernel test robot <lkp@intel.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, andersson@kernel.org,
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v3 1/3] PCI: qcom: Add equalization settings for 8.0 GT/s
Message-ID: <202506260310.BUxJgnmS-lkp@intel.com>
References: <20250625085801.526669-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625085801.526669-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_121627_719094_BF2B61F9 
X-CRM114-Status: GOOD (  10.12  )
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

Hi Ziyue,

kernel test robot noticed the following build warnings:

[auto build test WARNING on e04c78d86a9699d136910cfc0bdcf01087e3267e]

url:    https://github.com/intel-lab-lkp/linux/commits/Ziyue-Zhang/PCI-qcom-Add-equalization-settings-for-8-0-GT-s/20250625-170049
base:   e04c78d86a9699d136910cfc0bdcf01087e3267e
patch link:    https://lore.kernel.org/r/20250625085801.526669-2-quic_ziyuzhan%40quicinc.com
patch subject: [PATCH v3 1/3] PCI: qcom: Add equalization settings for 8.0 GT/s
config: i386-buildonly-randconfig-002-20250626 (https://download.01.org/0day-ci/archive/20250626/202506260310.BUxJgnmS-lkp@intel.com/config)
compiler: clang version 20.1.7 (https://github.com/llvm/llvm-project 6146a88f60492b520a36f8f8f3231e15f3cc6082)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250626/202506260310.BUxJgnmS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506260310.BUxJgnmS-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/pci/controller/dwc/pcie-qcom-common.c:15:17: warning: unused variable 'dev' [-Wunused-variable]
      15 |         struct device *dev = pci->dev;
         |                        ^~~
   1 warning generated.


vim +/dev +15 drivers/pci/controller/dwc/pcie-qcom-common.c

    10	
    11	void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
    12	{
    13		u32 reg;
    14		u16 speed, max_speed = PCIE_SPEED_16_0GT;
  > 15		struct device *dev = pci->dev;
    16	
    17		/*
    18		 * GEN3_RELATED_OFF register is repurposed to apply equalization
    19		 * settings at various data transmission rates through registers namely
    20		 * GEN3_EQ_*. The RATE_SHADOW_SEL bit field of GEN3_RELATED_OFF
    21		 * determines the data rate for which these equalization settings are
    22		 * applied.
    23		 */
    24		if (pcie_link_speed[pci->max_link_speed] < PCIE_SPEED_32_0GT)
    25			max_speed = pcie_link_speed[pci->max_link_speed];
    26	
    27		for (speed = PCIE_SPEED_8_0GT; speed <= max_speed; ++speed) {
    28			reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
    29			reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
    30			reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
    31			reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
    32				  speed - PCIE_SPEED_8_0GT);
    33			dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
    34	
    35			reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
    36			reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
    37				GEN3_EQ_FMDC_N_EVALS |
    38				GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
    39				GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
    40			reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
    41				FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
    42				FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
    43				FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
    44			dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
    45	
    46			reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
    47			reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
    48				GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
    49				GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
    50				GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
    51			dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
    52		}
    53	}
    54	EXPORT_SYMBOL_GPL(qcom_pcie_common_set_equalization);
    55	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
