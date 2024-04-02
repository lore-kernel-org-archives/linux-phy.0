Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E452C6FD1F
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 18:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSXMOQ+u2M3MJp5ga7kA/ch3ZlT4/u3G69JXZ5mlKNQ=; b=ZeZLBEzZNFqnZ7
	ZUSYATxOas9UycmOoiHxODX77T6YRzbI0roMiB7h5OurPGG6FicOG2wx3BbEoUMMKDjt2xOBOTKnH
	sELK1h2MKtRJmkPz0BScQPwohVeRYjLjkpE4AlOPPQGTC3/yMSTznuvc33x/73q3NLQVHHZrk+yyb
	LFqrWBNi7ic3goxlI8O/cSDFm7OOg9x3/sKFCgvfdcx7seawkVMJYfg4vqmbVcqWf6gzPsthv4iRB
	kBwv7sgPauLRrh7lUy4/GVRbWpCUzMgtzK6u2NjrPJ+A777WrPJuydeyZAXlTkbBh+46eKBzfzimj
	Mu0avvXYgjvU0iEiIE8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rriqU-0000000CMbv-2Qgw;
	Tue, 02 Apr 2024 18:26:54 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rriqR-0000000CMYv-3CuK;
	Tue, 02 Apr 2024 18:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1712082412; x=1743618412;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sz+2d1gs1ehBN3Q4pGBpK6maDbOhiUQSkQL1PjdfiB0=;
  b=KuWvj/g2I9fH1uEw4R83uGHaui7eaDzf4F0ZEXRqcSrBQheIaOXWsypd
   OH0Zhsw1cMWBITzZD/NPOlCo6oLcE2oCi4rdqF4wTRmAc1KKSq+r2NZNu
   y7H2Tg6CShasKkQlAgo+sUWSDVWUvQNBrz9h2EXDVG1pKHQoMNB7+k6K4
   3L7NKZdk5CM28BPcZdw+cYH39ZGi4+9T9bcCCKYcJfMUX8m6TUEgaFcMm
   4zhlzh8FJut1Gnor+a4KXEU+GUYaW6B/ceMSobyIC0nyKjVZKKRKd4Gw0
   vK4bjfGc7TKTMdhYqbcniVqQ8w65RMAlqwPGc9lYAlE0hPtgTiKngBOLx
   g==;
X-CSE-ConnectionGUID: 7Lk85XDDRaGymCNKK+wmDA==
X-CSE-MsgGUID: jgpZj9Z4Q86On3ULDJ5SSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="18635990"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="18635990"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2024 11:26:43 -0700
X-CSE-ConnectionGUID: JE8ygY+RRSuHgF03rDWXmg==
X-CSE-MsgGUID: fQuqhyGWTHWP9oNxtrYh5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="22898037"
Received: from lkp-server02.sh.intel.com (HELO 90ee3aa53dbd) ([10.239.97.151])
  by orviesa004.jf.intel.com with ESMTP; 02 Apr 2024 11:26:40 -0700
Received: from kbuild by 90ee3aa53dbd with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rriqD-0001Qm-14;
	Tue, 02 Apr 2024 18:26:37 +0000
Date: Wed, 3 Apr 2024 02:26:21 +0800
From: kernel test robot <lkp@intel.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com, conor+dt@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, imx@lists.linux.dev
Subject: Re: [PATCH v2 3/3] phy: freescale: imx8q-hsio: Add i.MX8Q HSIO PHY
 driver support
Message-ID: <202404030236.zuDJQOtw-lkp@intel.com>
References: <1712036704-21064-4-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1712036704-21064-4-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_112651_862477_A580AD06 
X-CRM114-Status: GOOD (  12.78  )
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

Hi Richard,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v6.9-rc2]
[cannot apply to next-20240402]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Richard-Zhu/dt-bindings-phy-phy-imx8-pcie-Add-binding-for-i-MX8Q-HSIO-SerDes-PHY/20240402-140347
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/1712036704-21064-4-git-send-email-hongxing.zhu%40nxp.com
patch subject: [PATCH v2 3/3] phy: freescale: imx8q-hsio: Add i.MX8Q HSIO PHY driver support
config: arm-allmodconfig (https://download.01.org/0day-ci/archive/20240403/202404030236.zuDJQOtw-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240403/202404030236.zuDJQOtw-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404030236.zuDJQOtw-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/freescale/phy-fsl-imx8q-hsio.c:34: warning: "MODE_MASK" redefined
      34 | #define MODE_MASK               GENMASK(20, 17)
         | 
   In file included from arch/arm/include/asm/ptrace.h:10,
                    from arch/arm/include/asm/irqflags.h:7,
                    from include/linux/irqflags.h:18,
                    from arch/arm/include/asm/bitops.h:28,
                    from include/linux/bitops.h:68,
                    from include/linux/kernel.h:23,
                    from include/linux/clk.h:13,
                    from drivers/phy/freescale/phy-fsl-imx8q-hsio.c:6:
   arch/arm/include/uapi/asm/ptrace.h:67: note: this is the location of the previous definition
      67 | #define MODE_MASK       0x0000001f
         | 


vim +/MODE_MASK +34 drivers/phy/freescale/phy-fsl-imx8q-hsio.c

    27	
    28	/* i.MX8Q HSIO registers */
    29	#define CTRL0			0x0
    30	#define APB_RSTN_0		BIT(0)
    31	#define APB_RSTN_1		BIT(1)
    32	#define PIPE_RSTN_0_MASK	GENMASK(25, 24)
    33	#define PIPE_RSTN_1_MASK	GENMASK(27, 26)
  > 34	#define MODE_MASK		GENMASK(20, 17)
    35	#define MODE_PCIE		0x0
    36	#define MODE_SATA		0x4
    37	#define DEVICE_TYPE_MASK	GENMASK(27, 24)
    38	#define EPCS_TXDEEMP		BIT(5)
    39	#define EPCS_TXDEEMP_SEL	BIT(6)
    40	#define EPCS_PHYRESET_N		BIT(7)
    41	#define RESET_N			BIT(12)
    42	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
