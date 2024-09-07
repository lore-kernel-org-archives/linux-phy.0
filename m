Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4523AECE577
	for <linux-phy@archiver.kernel.org>; Sat,  7 Sep 2024 23:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+i09ar8OVeeGNA8mNVOsFV/sMsbh1EBuqFE+D2/wlc=; b=1V1x0HvqCBiW8n
	ZLTW3gCSlNCF7JPi+UNYSyj6Xv9EiEYjPo8F0MJvMnoTQUW8FxmptlwXovE0qxiw+XOhB+/tI3ke/
	E4QsvlNMRha2AinKMt63eOE7ccyLQ+roT+jeLccPvlZ8MWq3ESuTwhN0+NnNuG8+5MDnaSlzsS+RX
	1SAd4etM03VssO9TIh3fdmPpjCrLZVw7kasdKEzfyTRKBEK83GqbyS98O62VG+qdQqe7/U4P0WLki
	WiIxMh0VcfFDLw9jLzZWMf36PgFvOx7UxEiIOUYqvfZd2jKy+5ujaea0gVcc/8npCzOskSxFEImle
	Bvch092z/+6loAXDSVLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sn4lS-0000000FnuR-2pcS;
	Sat, 07 Sep 2024 23:22:46 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sn4lO-0000000Fnt3-2aWp
	for linux-phy@lists.infradead.org;
	Sat, 07 Sep 2024 23:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725751362; x=1757287362;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kPcUBRJYy8VX11c2WAZ63MKA4XepOxYnPs6fcTnrKlU=;
  b=C0yaYBFKG77TEXMZ6uM5mPzQg5CtYMoSgtxF1N71LCqRRIlhpoVaTv6E
   i55RlvddeV4TGBhLpdfS0q3nOIDJqzVyxON1yAAyUa4oTLKcqL9asyC2e
   KTsyKIhfsaQ26pp2p8u/JkNAEz5twMtR9fihDrZ4GbMd3JPeMagUEW1F3
   7CZ7Mue1ARmiL91dl0jE++Hq0r9bz6GmcN3L43vdb1/pX35zVyNLMB9oC
   8cLU2h1nOzAXT9LnqcOAIzGm23Qg4ckM7eyu935g+t6MwBF2cIS6EArbD
   OZM5LPxVx/K1Kt8SYteWKvyWIsW8uvwul9FYvEQmU88lh51lKkFb5qx/1
   g==;
X-CSE-ConnectionGUID: T1bdOK/EQK+mSnpbhDSqoA==
X-CSE-MsgGUID: zSBeL+fuQEWsENRzn1Aw9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11188"; a="24353040"
X-IronPort-AV: E=Sophos;i="6.10,211,1719903600"; 
   d="scan'208";a="24353040"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2024 16:22:37 -0700
X-CSE-ConnectionGUID: 50IcsTvqRxGv8PcQ4cgH2Q==
X-CSE-MsgGUID: Gook4d2aQJCjv6AhNR5CFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,211,1719903600"; 
   d="scan'208";a="66331779"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by fmviesa008.fm.intel.com with ESMTP; 07 Sep 2024 16:22:31 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sn4lA-000D6T-34;
	Sat, 07 Sep 2024 23:22:28 +0000
Date: Sun, 8 Sep 2024 07:22:15 +0800
From: kernel test robot <lkp@intel.com>
To: Jingyi Wang <quic_jingyw@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Robert Marko <robimarko@gmail.com>,
	Das Srinagesh <quic_gurus@quicinc.com>,
	Jassi Brar <jassisinghbrar@gmail.com>, Lee Jones <lee@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 19/19] arm64: dts: qcom: add base QCS8300 RIDE dts
Message-ID: <202409080754.6Zv1y3pX-lkp@intel.com>
References: <20240904-qcs8300_initial_dtsi-v1-19-d0ea9afdc007@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240904-qcs8300_initial_dtsi-v1-19-d0ea9afdc007@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_162242_691434_233FD951 
X-CRM114-Status: GOOD (  10.99  )
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

Hi Jingyi,

kernel test robot noticed the following build errors:

[auto build test ERROR on eb8c5ca373cbb018a84eb4db25c863302c9b6314]

url:    https://github.com/intel-lab-lkp/linux/commits/Jingyi-Wang/dt-bindings-remoteproc-qcom-sa8775p-pas-Document-QCS8300-remoteproc/20240904-164345
base:   eb8c5ca373cbb018a84eb4db25c863302c9b6314
patch link:    https://lore.kernel.org/r/20240904-qcs8300_initial_dtsi-v1-19-d0ea9afdc007%40quicinc.com
patch subject: [PATCH 19/19] arm64: dts: qcom: add base QCS8300 RIDE dts
config: arm64-randconfig-003-20240908 (https://download.01.org/0day-ci/archive/20240908/202409080754.6Zv1y3pX-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 05f5a91d00b02f4369f46d076411c700755ae041)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240908/202409080754.6Zv1y3pX-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409080754.6Zv1y3pX-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from arch/arm64/boot/dts/qcom/qcs8300-ride.dts:11:
>> arch/arm64/boot/dts/qcom/qcs8300.dtsi:6:10: fatal error: 'dt-bindings/clock/qcom,qcs8300-gcc.h' file not found
       6 | #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +6 arch/arm64/boot/dts/qcom/qcs8300.dtsi

984d43bac8bbd3 Jingyi Wang 2024-09-04  @6  #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04   7  #include <dt-bindings/clock/qcom,rpmh.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04   8  #include <dt-bindings/interconnect/qcom,icc.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04   9  #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04  10  #include <dt-bindings/interrupt-controller/arm-gic.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04  11  #include <dt-bindings/mailbox/qcom-ipcc.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04  12  #include <dt-bindings/power/qcom,rpmhpd.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04  13  #include <dt-bindings/power/qcom-rpmpd.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04  14  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
984d43bac8bbd3 Jingyi Wang 2024-09-04  15  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
