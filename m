Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6616C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Mar 2025 09:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uY2c6OP4EMMPOicZ5QFJc7a7Qd9ZUR7hivaOiLjGXik=; b=CwX4A11XTgV1se
	ZiIevLaCCNiCwjJplFOKcghGATBV/nW0NBz+kwHq/kNw3LNON+teEg9G4LuW0y6u0pe/PxYabSZid
	VugN3foOFGzB3j/tk8wUgTPxhF8WoqFxV/Cmq6KaoNCfrVSl8CVw0xfgNiRaO3ODwhBtewSzv6yd9
	uQUrbUP3wjb33/oEvbaHTJ59KWKCyamZGLMFGslF9WYIFh1MpoQB49iTukvlQyCAzBaBPUuX+vNlf
	2Nq3gYeFvS7p94tRgtSHzD9tAhK0oNHvA+ZDnhduksTECiXHJi5MUlqWiYswQ6EaC7FUCYnr3A4/N
	nmBD/pYbkcv8c86LDwxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trvjU-000000057Kd-0w89;
	Tue, 11 Mar 2025 09:17:04 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trvZS-000000055hS-2N0C
	for linux-phy@lists.infradead.org;
	Tue, 11 Mar 2025 09:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1741684003; x=1773220003;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Lf1ll/w54v7N4pMRqpFCRX6LM4srEfAQ8cYdNV9dHR0=;
  b=lgeoWLy9sCM28FPgdkFGoaz+thmUXWyuVD+MWef5AxXjLw9cqyH4zOG5
   XGeadQLzuT4N6+4qxpdT20mvhB2kS8n1Dpy/IhTNqWomxMvrjCiHgG/he
   hnyQc0b7xRzDTDPZQO8U7vM1M2GeED973s12R5B7tOHqqQ5iLJweOhl7r
   yZhcv10+rKsoScPmo1drobg/oYhPQFHsRkGwX+h8DtF7N+Um36MktXCqi
   341ul1lza9I9Bz2+uNW8e4+f0Elx9a1x8H4CeIRyK9bU5PlL3BIyiziet
   RFtrD5/EDjr/s0oUTwN5Log6DmJnqudZW+p8CM9Pd9CVqHABbYv1x2iBJ
   w==;
X-CSE-ConnectionGUID: +IFFHONGSdGpMorea277YQ==
X-CSE-MsgGUID: 7H7cVadRT1aTQsCPYh1HYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42427741"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; 
   d="scan'208";a="42427741"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2025 02:06:42 -0700
X-CSE-ConnectionGUID: QYf9xl73QsWOniN1NCeshQ==
X-CSE-MsgGUID: RvshfzS+QI+d6Cp3vR22QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; 
   d="scan'208";a="120484207"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
  by fmviesa008.fm.intel.com with ESMTP; 11 Mar 2025 02:06:36 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1trvZK-0006Vq-0G;
	Tue, 11 Mar 2025 09:06:34 +0000
Date: Tue, 11 Mar 2025 17:06:00 +0800
From: kernel test robot <lkp@intel.com>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, bhelgaas@google.com,
	lpieralisi@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	dmitry.baryshkov@linaro.org, neil.armstrong@linaro.org,
	abel.vesa@linaro.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	quic_ziyuzhan@quicinc.com, quic_qianyu@quicinc.com,
	quic_krichai@quicinc.com, johan+linaro@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: qcs615-ride: Enable PCIe
 interface
Message-ID: <202503111654.Uo5Nw44p-lkp@intel.com>
References: <20250310065613.151598-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310065613.151598-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_020643_182600_DE05A4CC 
X-CRM114-Status: UNSURE (   8.20  )
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

Hi Ziyue,

kernel test robot noticed the following build errors:

[auto build test ERROR on c674aa7c289e51659e40dda0f954886ef7f80042]

url:    https://github.com/intel-lab-lkp/linux/commits/Ziyue-Zhang/dt-bindings-PCI-qcom-Document-the-QCS615-PCIe-Controller/20250310-145902
base:   c674aa7c289e51659e40dda0f954886ef7f80042
patch link:    https://lore.kernel.org/r/20250310065613.151598-4-quic_ziyuzhan%40quicinc.com
patch subject: [PATCH v3 3/4] arm64: dts: qcom: qcs615-ride: Enable PCIe interface
config: arm64-randconfig-003-20250311 (https://download.01.org/0day-ci/archive/20250311/202503111654.Uo5Nw44p-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250311/202503111654.Uo5Nw44p-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503111654.Uo5Nw44p-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/qcom/qcs8300-ride.dts:288.1-6 Label or path pcie not found
>> Error: arch/arm64/boot/dts/qcom/qcs8300-ride.dts:298.1-10 Label or path pcie_phy not found
   FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
