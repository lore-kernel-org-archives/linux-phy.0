Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C0EEF0702
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 02:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FU//yXkgwY/hb1XZ53/Ky9myGOKSEjR4m+wBbfzGejg=; b=q/uFSZX2a6hW2a
	BND15HzSXWFp9HOHr7yqnzF1gJkxeBv93XIPdoaEL+V2o57wOBU5vJU5NHahgQdA4IQ+3RMnvVGhl
	dFfiht9w4oYD4ZsA2XvlN73Z+bM/27CLYvqXq9iWS27k1R7tnTj4AqGGPvasuXn39zu6CG7AQ3yPY
	EWptlECPPbuZAqGvJNEJMue8judF4TM9SAb9WFYvjBmuCre0wZK66lTGeL3sHWGDDtVeABC7Bg76T
	cR2WMADN38OisY3laL8SRWp2C06ZJaUqpVGW9ZFMduXT5BxbdmwLEqPp8XuN5LFN+zuqfIyetWdyH
	JgNssVGQXR84WjwU2QLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpGlb-0000000EgK3-0Q4Q;
	Mon, 09 Feb 2026 02:12:47 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpGlX-0000000EgJh-1LYV
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 02:12:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770603164; x=1802139164;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=li3Bz7MB9Db5p57EW1iDijoV/yjuamNyqKYmNRYo6WM=;
  b=Zk6fLe1egTzRkVB1MxnTi+mx3klVHcpdok3B2+KkoJUIKX1jGBsCv4ol
   egmO2mtj6NV6qgpZn+OvlXQijABBS9KmM6RLZyGzDx2wS6JY+4Zl81xDq
   IsWVIPXWR6n3nMYLOwTSXwPhFsESB2smozFAZ+sv/5XYUNkzxj01B/uEo
   aQy+x6XXQK1gnMlF3VhpI78KLQhIF/PpTJ9dh51lYXgyT07Tm2gAgcemb
   iSIrVNjROyjsQGvBa8KevIxU22veM54lgJwTJdbCrEnwF5MKJeJ6BiUrY
   2UgIhmGoPtsV80+JRGZ0fLKtXxpmShrQhUesQgu96cmHTv8Qy7hL5YyWY
   w==;
X-CSE-ConnectionGUID: sqDI7a3WSMmHyyNtp2Ussw==
X-CSE-MsgGUID: aBotNhNXSnKNByrQcG/32Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="83152672"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; 
   d="scan'208";a="83152672"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Feb 2026 18:12:41 -0800
X-CSE-ConnectionGUID: O3GWCk0XQz68cDcF85WjTA==
X-CSE-MsgGUID: h2jjiJw6QHyTvzyFF1iPiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; 
   d="scan'208";a="211241339"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 08 Feb 2026 18:12:34 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vpGlL-00000000mVm-0bVo;
	Mon, 09 Feb 2026 02:12:31 +0000
Date: Mon, 9 Feb 2026 10:12:03 +0800
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
Subject: Re: [PATCH v9 7/7] mmc: host: renesas_sdhi_core: support selecting
 an optional mux
Message-ID: <202602091037.wNIGJdbh-lkp@intel.com>
References: <20260208-rz-sdio-mux-v9-7-9a3be13c1280@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260208-rz-sdio-mux-v9-7-9a3be13c1280@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_181243_486150_39043869 
X-CRM114-Status: UNSURE (   9.17  )
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

Hi Josua,

kernel test robot noticed the following build errors:

[auto build test ERROR on 8f0b4cce4481fb22653697cced8d0d04027cb1e8]

url:    https://github.com/intel-lab-lkp/linux/commits/Josua-Mayer/phy-can-transceiver-rename-temporary-helper-function-to-avoid-conflict/20260208-234345
base:   8f0b4cce4481fb22653697cced8d0d04027cb1e8
patch link:    https://lore.kernel.org/r/20260208-rz-sdio-mux-v9-7-9a3be13c1280%40solid-run.com
patch subject: [PATCH v9 7/7] mmc: host: renesas_sdhi_core: support selecting an optional mux
config: s390-randconfig-r054-20260209 (https://download.01.org/0day-ci/archive/20260209/202602091037.wNIGJdbh-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260209/202602091037.wNIGJdbh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602091037.wNIGJdbh-lkp@intel.com/

All errors (new ones prefixed by >>):

   s390-linux-ld: drivers/mmc/host/renesas_sdhi_core.o: in function `renesas_sdhi_probe':
>> renesas_sdhi_core.c:(.text+0x1996): undefined reference to `devm_mux_state_get_optional_selected'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
