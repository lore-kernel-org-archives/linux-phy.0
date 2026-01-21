Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F26FC44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv5BnJ/vMFgdT9n6hA6mtd0QkbJYo+wt+Ak+fvY/FU4=; b=ydd5UiLazBG31W
	gWI8gJxut1UWOQAPMg44xcxCl14sI2IyHR+iqxX7qIIxCypnZX8+JoZreAt53rpVwTfhU+NeFFi1B
	zOum5GyULi3EBr5YobeTOeB+dOgNZqAbzSo8Ejy/i1o3lX0mvv7UbUauUOxFW0LsnlkjGk6RQ2YWz
	buNQXZ+8H+pRM5XBT33SP54QCICJEqM5is/Eo38xayK7XMHupdM/NvqIhfpdWDguOllHlqE4WqEHf
	7Vu7IBvSP16ZvKV1u78CqQVl8hGcnvcI18K9/r/d4dOlNCsk9wXZHIU8D11iE1cg6ns8/qH12xlUq
	oCjlM+D61NzOuQ8C1tKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZWr-00000005fo4-0hdE;
	Wed, 21 Jan 2026 14:49:53 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZWn-00000005fmV-2d2s
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769006990; x=1800542990;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6LTNJOg2E8MaKxl1xCHKvy5jwJaoAeaRCG+agnK2yY8=;
  b=Suuiw+yBHaRopvzEsI+a60EcxBuD4QgXR2wwwj612+SChP+XFoARH0I8
   5YzfkeN/4lXoQwZSEOQP9jrj0xSDBBu/lBpgl0qnArEuTjCtahpOVgo4L
   MA7YsbZxclVnUlaZL/0Rx5DtN3RW5XSe9pp/KRCNRh6Cnk508a9QDM+V3
   C7nNDYu6y76IRDaictQ3ad8iO5zX7MlUUWRuznfVmUCPxqYkEPNDlwbUR
   0UlmtGtPFnoiQw8TfsqSTG16OPZalR1BEStVyroE/xS28Z84kXPz+LM2p
   4iZJ1mMFnbbV5WLIG+bXpltFL3CuDJmrRIcN3i8068yE9zxkc8gXKOvJB
   A==;
X-CSE-ConnectionGUID: /y4MCfkwQvWRKv6hRfDd/Q==
X-CSE-MsgGUID: 7iL/OLQxSnCYeX1Rn0FuXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="74087008"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; 
   d="scan'208";a="74087008"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2026 06:49:48 -0800
X-CSE-ConnectionGUID: n3tKdQlJR0Kh2goUKtuKHg==
X-CSE-MsgGUID: FgiU5irsRD68qf9iNbOS1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; 
   d="scan'208";a="229432837"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 21 Jan 2026 06:49:41 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1viZWc-00000000RJx-31ND;
	Wed, 21 Jan 2026 14:49:38 +0000
Date: Wed, 21 Jan 2026 22:49:09 +0800
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
Subject: Re: [PATCH v6 2/7] mux: Add helper functions for getting optional
 and selected mux-state
Message-ID: <202601212215.qNGA0wVh-lkp@intel.com>
References: <20260121-rz-sdio-mux-v6-2-38aa39527928@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121-rz-sdio-mux-v6-2-38aa39527928@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_064949_807136_55F7DB1A 
X-CRM114-Status: GOOD (  11.83  )
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

url:    https://github.com/intel-lab-lkp/linux/commits/Josua-Mayer/phy-can-transceiver-rename-temporary-helper-function-to-avoid-conflict/20260121-173607
base:   8f0b4cce4481fb22653697cced8d0d04027cb1e8
patch link:    https://lore.kernel.org/r/20260121-rz-sdio-mux-v6-2-38aa39527928%40solid-run.com
patch subject: [PATCH v6 2/7] mux: Add helper functions for getting optional and selected mux-state
config: i386-randconfig-001-20260121 (https://download.01.org/0day-ci/archive/20260121/202601212215.qNGA0wVh-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260121/202601212215.qNGA0wVh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601212215.qNGA0wVh-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/mux/core.c:56 struct member 'mstate' not described in 'devm_mux_state_state'
>> Warning: drivers/mux/core.c:56 struct member 'mstate' not described in 'devm_mux_state_state'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
