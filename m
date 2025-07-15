Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EA4FC83F27
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 22:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgoR5/Kc11Fb5AYY6xSbSM5KkRb0uEbvYP4X7BOH2cE=; b=YR/xefFpdvd352
	qHt1wse7cP1vdfYwSApQcQEEuocNMgfUgO2tbauFMMqWezHbqWxAFhFgWcB4izTNSYr++hpA4Cehi
	kcIpsYBPSUseVdWIBzAgGn1yIPnsiB67pQd2d74bE6Bi+sHTlabmckZ/YTawc8ORQ3+31ywjpe2uK
	iTYDVQbNloCsEwTHGMMMYH90bsCXzY3/hHlBKBcQ3nVYuOjQEBhOlUOOrbLL20EMhsi1wbXiNLDFM
	O6fEv4PG0w6ls3ex64QZeGbucE8in7DwvgmvCrzN+6Y83dNKv2EVBrcpEyFsXSWmc+qnamiJupfYz
	tPupCYeiRChNa+Hx9FxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubnqy-00000006J42-2rWh;
	Tue, 15 Jul 2025 22:10:24 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubnoX-00000006IlT-3J4t
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 22:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752617274; x=1784153274;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Zd8zXCwF0hQTiVzyVbw1IEp0HkYJGefGxnsNS4GWNqE=;
  b=hJxL1QV+HcyChGetheMDP19YQ896IpEDKkHe+4L8kFBRdlQeQcyzdich
   83n0FbvgHmfhEysMc7Ul731rOpFJ3UNTcYnLIFLKIsAIw+U8UzEVU7jSM
   qGF0DoNoQolL7zbLUERuU3HaPNg9ivUKbcOUHoZdMD/6CsBafxfc0Sz16
   YepXMYWeFKgmPGkLLUOspe5du070JBRdUdk9y2+OTAtJijKMkAabyVVgE
   yM7Ppz8pUPjZs9cL7JrqywlOUWUjUDx88Pp6o9JP2F95vdBR0PVS7H86q
   z0r+SOTNTYpy7FbBr+eBwj2JloZy6Kzv4BvRtj2od64MmLPZ/wGM5TUqv
   Q==;
X-CSE-ConnectionGUID: 9z367DUGT4iqbkK2q3jacg==
X-CSE-MsgGUID: 3TKeQ5Y3QAWbJUDSDWAhOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54826715"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; 
   d="scan'208";a="54826715"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2025 15:07:53 -0700
X-CSE-ConnectionGUID: 2/CTSCq4QzqxTY/7962AOA==
X-CSE-MsgGUID: h6UmUrYARBK8MvLyxd9OmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; 
   d="scan'208";a="156731421"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by orviesa010.jf.intel.com with ESMTP; 15 Jul 2025 15:07:47 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ubnoO-000BaZ-1F;
	Tue, 15 Jul 2025 22:07:44 +0000
Date: Wed, 16 Jul 2025 06:06:56 +0800
From: kernel test robot <lkp@intel.com>
To: Aaron Kling <webgeek1234@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
	Aaron Kling <webgeek1234@gmail.com>
Subject: Re: [PATCH 13/17] thermal: tegra: Add Tegra210B01 Support
Message-ID: <202507160557.t7TfWvFP-lkp@intel.com>
References: <20250714-t210b01-v1-13-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-13-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_150753_864088_E0D20EAD 
X-CRM114-Status: GOOD (  10.94  )
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

Hi Aaron,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 347e9f5043c89695b01e66b3ed111755afcf1911]

url:    https://github.com/intel-lab-lkp/linux/commits/Aaron-Kling/dt-bindings-arm-tegra-pmc-Document-Tegra210B01/20250715-160630
base:   347e9f5043c89695b01e66b3ed111755afcf1911
patch link:    https://lore.kernel.org/r/20250714-t210b01-v1-13-e3f5f7de5dce%40gmail.com
patch subject: [PATCH 13/17] thermal: tegra: Add Tegra210B01 Support
config: arm64-randconfig-003-20250716 (https://download.01.org/0day-ci/archive/20250716/202507160557.t7TfWvFP-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250716/202507160557.t7TfWvFP-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507160557.t7TfWvFP-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/thermal/tegra/tegra210-soctherm.c:47:49: warning: 'tegra210b01_tsensor_config' defined but not used [-Wunused-const-variable=]
    static const struct tegra_tsensor_configuration tegra210b01_tsensor_config = {
                                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/tegra210b01_tsensor_config +47 drivers/thermal/tegra/tegra210-soctherm.c

    46	
  > 47	static const struct tegra_tsensor_configuration tegra210b01_tsensor_config = {
    48		.tall = 16300,
    49		.tiddq_en = 1,
    50		.ten_count = 1,
    51		.tsample = 240,
    52		.tsample_ate = 480,
    53	};
    54	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
