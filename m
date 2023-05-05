Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B048EC7EE24
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 17:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhgPK3UNMVCb+2fHF41uy9SNKCCEHqtFdegl573rDrE=; b=5Dk1wBVRDA3c8G
	Q8tLevVkTFKDIk3HHCKYI3VcpJkmeel1W+ZDIRdwPW91Ji7LwoNikMkhjYSMZvwYMax1TTjI64R6k
	HEaFBGUWuj3zsHG0CORDwCQWCKADnVPh4hmZ0qoyyR6ivQW4CL+vgEqrvrlwAUAVXEe4xeuHMjgEa
	he3qcC8TEZLThqg48ISVK7rW/hPKy8O5JXMFnFRmOY587mJKYKP0bThhJoN5yCkTWgbj+/wCWbw8O
	reuMbLHlD8me55tFOza1TyRODyqcN2EdvcPUbpyQ8pQHLZQyud05QI6mDO5TTp07/lS5DByz/lzh0
	eewgRbf27Y0AYUGosvpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puz2p-00BOJN-10;
	Fri, 05 May 2023 17:16:35 +0000
Received: from mga05.intel.com ([192.55.52.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puz2m-00BOIk-21
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 17:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1683306992; x=1714842992;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=COkGdhmzVsdP87GQO1YqoDziPbpeYNGC0sWooQdVgSE=;
  b=OqahGNVemlZIfWERzN+zpIYNngSgU4PXkwp9gxzvcNzZhVwnbJINGTXd
   z/f/G5vQskBopAlBR8w0Ks8UPCz38MmVzhmA+lpIrbdGO8gBKJbpfE0T4
   Rg3JOyDg+SwVnlpeZfhFcJjUzfBrWx1eeDUeMw7JP1RC7s4mrg7be+Vj2
   36ux3BSaEnXt9eF8NXGpoVgStOKFBo5khouXg5AtP/nC5qaUpumql53Mr
   DskHFPaaj23yLsjhp0XU6XXpJpxaZckXb6m0VA1bNgY7vUkrluFp7PYm5
   FBVv1E3sb7FCDlJSUJQKLLDV5xj0923953F3fusLA1fUvpDoj7Kgtxf1+
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="435579045"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; 
   d="scan'208";a="435579045"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2023 10:16:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="675166695"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; 
   d="scan'208";a="675166695"
Received: from lkp-server01.sh.intel.com (HELO fe5d646e317d) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 05 May 2023 10:16:23 -0700
Received: from kbuild by fe5d646e317d with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1puz2d-0000mD-0U;
	Fri, 05 May 2023 17:16:23 +0000
Date: Sat, 6 May 2023 01:15:40 +0800
From: kernel test robot <lkp@intel.com>
To: Maxime Ripard <maxime@cerno.tech>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Peng Fan <peng.fan@nxp.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Sekhar Nori <nsekhar@ti.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
	Paul Cercueil <paul@crapouillou.net>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
	Abel Vesa <abelvesa@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Takashi Iwai <tiwai@suse.com>,
	Vinod Koul <vkoul@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>, linux-mips@vger.kernel.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	linux-sunxi@lists.linux.dev,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: Re: [PATCH v4 04/68] clk: Introduce
 clk_hw_determine_rate_no_reparent()
Message-ID: <202305060103.z9ddfq9A-lkp@intel.com>
References: <20221018-clk-range-checks-fixes-v4-4-971d5077e7d2@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221018-clk-range-checks-fixes-v4-4-971d5077e7d2@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_101632_721104_1B1EFA82 
X-CRM114-Status: UNSURE (   9.16  )
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

Hi Maxime,

kernel test robot noticed the following build errors:

[auto build test ERROR on 145e5cddfe8b4bf607510b2dcf630d95f4db420f]

url:    https://github.com/intel-lab-lkp/linux/commits/Maxime-Ripard/clk-Export-clk_hw_forward_rate_request/20230505-193724
base:   145e5cddfe8b4bf607510b2dcf630d95f4db420f
patch link:    https://lore.kernel.org/r/20221018-clk-range-checks-fixes-v4-4-971d5077e7d2%40cerno.tech
patch subject: [PATCH v4 04/68] clk: Introduce clk_hw_determine_rate_no_reparent()
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20230506/202305060103.z9ddfq9A-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/3acd93f10087c4a2905407786d6dc7af83c2a58c
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Maxime-Ripard/clk-Export-clk_hw_forward_rate_request/20230505-193724
        git checkout 3acd93f10087c4a2905407786d6dc7af83c2a58c
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305060103.z9ddfq9A-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "clk_hw_determine_rate_no_reparent" [drivers/clk/clk_test.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
