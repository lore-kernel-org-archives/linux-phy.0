Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CECABD4A5F4
	for <linux-phy@archiver.kernel.org>; Sun, 18 Jan 2026 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yX1dANLpeNauI22ej3jMf+oAcSdLFpsIiyTzgjCMy5k=; b=sf/OOT4M6/YKD5
	lFJNS/BozfQbccxl5Dq9JoQUSd2WqY7peDCaGhSIwJApMplm53X5ABiK9Vkalf1kR9dsBnbRI1vdX
	4KHYrD5XK3fD1X35Gz+U50LFaTnJXl2DdMaOszdRIpBW3AsE1dHpugHD8bndOsksmIACn6/SgWBq/
	Zn2YSRr27DbPJ0q6K9cOjzEyrtTgm8c/YbMN1OQ9OAlYAFXaOCbWGTCsHcxlLIh+phMCGGsJjwbg5
	U7dEAZkfon39L/u3SNrpiS4dt4bBmJxjJhol0YzhzfDoGoA4g3WAOl7Tho5nrxkzacja6hrZBK/dF
	7DCfRiEbzkdjd0xEWzoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhSq2-0000000073q-2Q82;
	Sun, 18 Jan 2026 13:29:06 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhSpz-0000000072H-0PX1
	for linux-phy@lists.infradead.org;
	Sun, 18 Jan 2026 13:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768742943; x=1800278943;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=e7fwkEkvRZA+e1UcnvOlHV1EjWnkRjPkDqZNfuYPU0E=;
  b=QIjcWK7YWV+fEpox2nN4SVe5QQHYhlPF6sYEqMSpxQvc/OsFloz2LpiG
   LpAJAH0DCDnsU1aBZykzUGNQfyJ4LNeh/iX5DR+hw9sp79BmwIjszK1sX
   JTpp1HS1LUXQoKsYTOrqnVnDSn/0hDnjbDFY4p/b3eewDIN+VPDOqC1pr
   t56qSWI5h9Y17paWH+ri4DrBkCiTLxd7wCe3f4y9Uaw+5RMpsEQpGmZjl
   VdJ9Tri7AQUjpT3GoidsP0ZCON61jphxnKP3cT3u5KYN+f8PeGa4qiFb3
   psGF36ZNUsmZNOZOMA9TAyhmV7JGukJLtI7C+sqMX+YPeEta9Kqvw8oS2
   A==;
X-CSE-ConnectionGUID: Y83QugNkSDOYxZsrPQSgpw==
X-CSE-MsgGUID: M8/1sDZkQQSEAysooZx8Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="80614384"
X-IronPort-AV: E=Sophos;i="6.21,235,1763452800"; 
   d="scan'208";a="80614384"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2026 05:29:00 -0800
X-CSE-ConnectionGUID: YvUFySQ8SbaNrK3OxdOYww==
X-CSE-MsgGUID: sQO3EhDTQDePjuW+f0Jb7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,235,1763452800"; 
   d="scan'208";a="210506492"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 18 Jan 2026 05:28:54 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vhSpn-00000000MyS-3TGd;
	Sun, 18 Jan 2026 13:28:51 +0000
Date: Sun, 18 Jan 2026 21:28:33 +0800
From: kernel test robot <lkp@intel.com>
To: Josua Mayer <josua@solid-run.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>
Cc: oe-kbuild-all@lists.linux.dev,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/7] mux: Add helper functions for getting optional
 and selected mux-state
Message-ID: <202601182117.l2nFZ5OB-lkp@intel.com>
References: <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260118-rz-sdio-mux-v5-2-3c37e8872683@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_052903_246415_0939F11B 
X-CRM114-Status: GOOD (  14.18  )
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

Hi Josua,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 8f0b4cce4481fb22653697cced8d0d04027cb1e8]

url:    https://github.com/intel-lab-lkp/linux/commits/Josua-Mayer/phy-can-transceiver-rename-temporary-helper-function-to-avoid-conflict/20260118-183905
base:   8f0b4cce4481fb22653697cced8d0d04027cb1e8
patch link:    https://lore.kernel.org/r/20260118-rz-sdio-mux-v5-2-3c37e8872683%40solid-run.com
patch subject: [PATCH v5 2/7] mux: Add helper functions for getting optional and selected mux-state
config: um-randconfig-r071-20260118 (https://download.01.org/0day-ci/archive/20260118/202601182117.l2nFZ5OB-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 9b8addffa70cee5b2acc5454712d9cf78ce45710)
smatch version: v0.5.0-8985-g2614ff1a
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260118/202601182117.l2nFZ5OB-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601182117.l2nFZ5OB-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/mux/core.c:774:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
     774 |         if (IS_ERR_OR_NULL(mstate))
         |             ^~~~~~~~~~~~~~~~~~~~~~
   drivers/mux/core.c:793:17: note: uninitialized use occurs here
     793 |         return ERR_PTR(ret);
         |                        ^~~
   drivers/mux/core.c:774:2: note: remove the 'if' if its condition is always false
     774 |         if (IS_ERR_OR_NULL(mstate))
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
     775 |                 goto err_mux_state_get;
         |                 ~~~~~~~~~~~~~~~~~~~~~~
   drivers/mux/core.c:767:9: note: initialize the variable 'ret' to silence this warning
     767 |         int ret;
         |                ^
         |                 = 0
   1 warning generated.


vim +774 drivers/mux/core.c

   748	
   749	/**
   750	 * __devm_mux_state_get() - Get the optional mux-state for a device,
   751	 *			    with resource management.
   752	 * @dev: The device that needs a mux-state.
   753	 * @mux_name: The name identifying the mux-state.
   754	 * @optional: Whether to return NULL and silence errors when mux doesn't exist.
   755	 * @init: Optional function pointer for mux-state object initialisation.
   756	 * @exit: Optional function pointer for mux-state object cleanup on release.
   757	 *
   758	 * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
   759	 */
   760	static struct mux_state *__devm_mux_state_get(struct device *dev, const char *mux_name,
   761						      bool optional,
   762						      int (*init)(struct mux_state *mstate),
   763						      int (*exit)(struct mux_state *mstate))
   764	{
   765		struct devm_mux_state_state *devm_state;
   766		struct mux_state *mstate;
   767		int ret;
   768	
   769		devm_state = devres_alloc(devm_mux_state_release, sizeof(*devm_state), GFP_KERNEL);
   770		if (!devm_state)
   771			return ERR_PTR(-ENOMEM);
   772	
   773		mstate = mux_state_get(dev, mux_name, optional);
 > 774		if (IS_ERR_OR_NULL(mstate))
   775			goto err_mux_state_get;
   776	
   777		if (init) {
   778			ret = init(mstate);
   779			if (ret)
   780				goto err_mux_state_init;
   781		}
   782	
   783		devm_state->mstate = mstate;
   784		devm_state->exit = exit;
   785		devres_add(dev, devm_state);
   786	
   787		return mstate;
   788	
   789	err_mux_state_init:
   790		mux_state_put(mstate);
   791	err_mux_state_get:
   792		devres_free(devm_state);
   793		return ERR_PTR(ret);
   794	}
   795	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
