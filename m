Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B0BFCCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 05:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kFeop1iuVG1kv7sNKEXyNuGg4uuPFTEhvfWXm47J0E=; b=3lVYOhGCRmPOZE
	6hmcDu+MnPIxsssR3iNGPt+byEhPcOHLxp5N/vN7eaxQHOjXpYx/Swo3AvLiWrr4i4HEnGOHEaYNC
	uzIrckHoMHLY93TWbCmX9PzfG0TByYNUr8CEIMSlRX1KBtB75JRrShIyZn22WrHGBHKaZbIBMKAtr
	LygGEvWnZ2m05WEkYKiHopUj1Y+THQPOE/+yuZweXvgbXd+UUJnKv0H7Gl2p4WuN4hMKwXr0JII/7
	wWIhm+hHPqp/U4ppVC/kPCsItwlXJVMGFRlmoo492eb3DcRLeafnKoOtYKhTS0IOCZZzf+QW6hqOb
	zsrgiLoYsOeROnCjX11A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDcGZ-0000000FFbq-0gzl;
	Tue, 28 Oct 2025 05:29:07 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDcGW-0000000FFb9-2HVL;
	Tue, 28 Oct 2025 05:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761629345; x=1793165345;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dlWh/zMhp+rDF+uBlV6D16SzoOVp4obnPz8fi8OhNyY=;
  b=BJPhPudmdAxJ8veV79RIgztR8xq1+FhTw6GuQGWqJDCB58dribdq2pmc
   g/eIqv7ZJSrh7DG7i8ljEyhCDjp3eTF4gsO7wcqZl03kk8T3FgbmmStma
   oLpvF+c3ZB/+Vke2AhAsnNeSW4BvhSlrhQcNFZvtApgapaVEU0w1NIdN+
   03lgretfeA9wNNd553CwtkB8LrDhkPCeOXHzhJL6LvkaJ3/FrqZ4d0Edh
   lJ0QWTwDYWFjB5XGiC3fCZNVWvbw2/7SJTokGRCnKMrUM0Gmflw+BSfuD
   mfCnKhmXL3lwnY90YKXqq0gCOCX5QdPqRKYRdAGJ19V5/jxSXSXHs3G9h
   Q==;
X-CSE-ConnectionGUID: 37pOY8OhRaa2LwhPJxoBgA==
X-CSE-MsgGUID: VLIVXRIbR5yYVeaYRaVJpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="89189395"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; 
   d="scan'208";a="89189395"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2025 22:28:59 -0700
X-CSE-ConnectionGUID: +AIdehCFTIykviljMNK7Tg==
X-CSE-MsgGUID: i3gkCQTaT0CPXjmigZSDvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; 
   d="scan'208";a="208847212"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
  by fmviesa002.fm.intel.com with ESMTP; 27 Oct 2025 22:28:53 -0700
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vDcGG-000InF-0P;
	Tue, 28 Oct 2025 05:28:48 +0000
Date: Tue, 28 Oct 2025 13:27:21 +0800
From: kernel test robot <lkp@intel.com>
To: Jacky Chou <jacky_chou@aspeedtech.com>, lpieralisi@kernel.org,
	kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	joel@jms.id.au, andrew@codeconstruct.com.au, vkoul@kernel.org,
	kishon@kernel.org, linus.walleij@linaro.org, p.zabel@pengutronix.de,
	linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, jacky_chou@aspeedtech.com
Subject: Re: [PATCH v4 8/9] PCI: aspeed: Add ASPEED PCIe RC driver
Message-ID: <202510281310.tCGvqcsO-lkp@intel.com>
References: <20251027095825.181161-9-jacky_chou@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027095825.181161-9-jacky_chou@aspeedtech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_222904_650060_BB87BC28 
X-CRM114-Status: GOOD (  10.55  )
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

Hi Jacky,

kernel test robot noticed the following build warnings:

[auto build test WARNING on pci/next]
[also build test WARNING on pci/for-linus robh/for-next linusw-pinctrl/devel linusw-pinctrl/for-next linus/master v6.18-rc3 next-20251027]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jacky-Chou/dt-bindings-phy-aspeed-Add-ASPEED-PCIe-PHY/20251027-180856
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20251027095825.181161-9-jacky_chou%40aspeedtech.com
patch subject: [PATCH v4 8/9] PCI: aspeed: Add ASPEED PCIe RC driver
config: loongarch-randconfig-r113-20251028 (https://download.01.org/0day-ci/archive/20251028/202510281310.tCGvqcsO-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251028/202510281310.tCGvqcsO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510281310.tCGvqcsO-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/pci/controller/pcie-aspeed.c:1084:38: sparse: sparse: symbol 'pcie_rc_ast2600' was not declared. Should it be static?
>> drivers/pci/controller/pcie-aspeed.c:1093:38: sparse: sparse: symbol 'pcie_rc_ast2700' was not declared. Should it be static?

vim +/pcie_rc_ast2600 +1084 drivers/pci/controller/pcie-aspeed.c

  1083	
> 1084	const struct aspeed_pcie_rc_platform pcie_rc_ast2600 = {
  1085		.setup = aspeed_ast2600_setup,
  1086		.reg_intx_en = 0xc4,
  1087		.reg_intx_sts = 0xc8,
  1088		.reg_msi_en = 0xe0,
  1089		.reg_msi_sts = 0xe8,
  1090		.msi_address = 0x1e77005c,
  1091	};
  1092	
> 1093	const struct aspeed_pcie_rc_platform pcie_rc_ast2700 = {
  1094		.setup = aspeed_ast2700_setup,
  1095		.reg_intx_en = 0x40,
  1096		.reg_intx_sts = 0x48,
  1097		.reg_msi_en = 0x50,
  1098		.reg_msi_sts = 0x58,
  1099		.msi_address = 0x000000f0,
  1100	};
  1101	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
