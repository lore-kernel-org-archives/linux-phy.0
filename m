Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92E3BC87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 00:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVawWdWDzejDIqs8JXW35wCfqbN73S11yDVErtx3a+c=; b=qhcrBasS+mXp3+
	0LLsmXFB5WSpWHAWehe0PUIN5cD5s3Ytvo/+7w43RgQMPHaqr2VwZrUmvklXK2IBLY2S8dsL9EBEF
	kGYBlOBAMXXig/o8tIAZQ+eIkMMLbXzhOtfRDhFUzET1DktPF/mBNalYrFngIqWjHLni+IQquQZtR
	/NA1rpQR0noiCO7ftv1t1flTj2vpkOhzmB3yp9hwgOSehoSy7g2A5osDp3g7+OD18KDjNzkUiXuvK
	W++Dmlgp4GKfTnOC1HL6B/EFLSdjZSROde643kD2Bp+Mxq9UPdNO8qP3AGuw7TRMJ9qRaSFtNtA6+
	jOkJYPi3Rvxp0dBvVbMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugv2s-00000000PTL-453V;
	Wed, 30 Jul 2025 00:51:50 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugv2q-00000000PSi-0Oh0;
	Wed, 30 Jul 2025 00:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753836708; x=1785372708;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PRvj7/tY0gbPjZ9nvQIa9jtFtzC+d4gO88MH1ziiZgY=;
  b=Tybz5EJxBbZ7VnH7jLO89wQiSur4un6C4Qg4VyTI5Pi6fhn93SlUVEof
   qGnKo/FxXxEYGvOxgOzBdDOEbkPqGQQYn4uYEC8wrhsPKqX63yna2++hM
   uCjRbKlRh1PZ4zh4IiAivQ7bBZ7XSnRZkZMWD0fKlSATK7mpDiDDGmPlC
   Cgu/f1V8alNo+cQJY0XxSJXsz1RiNFPfiBhjqE2RiuFSL6Lt1dLARMT/A
   wqZL9MGt0lSya/luAuSTsrLCcf07/zyjpPfulCbmObcT+i7hVz9xtT3g/
   vNF54GOK2pQQgDIqG7OuYlduzAYII8wZ255dBaVlvGroyH43SEhb/qVyx
   Q==;
X-CSE-ConnectionGUID: f4K3NaLTQruQmkvc0jGfjQ==
X-CSE-MsgGUID: iOk4c+2YTUy1y2ibJ4nSDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="67566244"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; 
   d="scan'208";a="67566244"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2025 17:51:47 -0700
X-CSE-ConnectionGUID: 1Std8N5pSHOU8Hrf9kRN4A==
X-CSE-MsgGUID: tRwCDmk9QRGDzKVmAmsItA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; 
   d="scan'208";a="193840524"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 29 Jul 2025 17:51:40 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ugv2f-0001oh-2w;
	Wed, 30 Jul 2025 00:51:37 +0000
Date: Wed, 30 Jul 2025 08:50:39 +0800
From: kernel test robot <lkp@intel.com>
To: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 2/5] phy: rockchip: phy-rockchip-typec: Add
 typec_mux/typec_switch support
Message-ID: <202507300837.EQJOJgpi-lkp@intel.com>
References: <20250729090032.97-3-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250729090032.97-3-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_175148_237160_87EFA30F 
X-CRM114-Status: GOOD (  12.15  )
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

Hi Chaoyi,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250729]
[also build test ERROR on linus/master v6.16]
[cannot apply to robh/for-next rockchip/for-next krzk/for-next krzk-dt/for-next v6.16 v6.16-rc7 v6.16-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chaoyi-Chen/dt-bindings-phy-rockchip-rk3399-typec-phy-Support-mode-switch/20250729-170255
base:   next-20250729
patch link:    https://lore.kernel.org/r/20250729090032.97-3-kernel%40airkyi.com
patch subject: [PATCH v3 2/5] phy: rockchip: phy-rockchip-typec: Add typec_mux/typec_switch support
config: powerpc-randconfig-002-20250730 (https://download.01.org/0day-ci/archive/20250730/202507300837.EQJOJgpi-lkp@intel.com/config)
compiler: powerpc-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250730/202507300837.EQJOJgpi-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507300837.EQJOJgpi-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "drm_connector_oob_hotplug_event" [drivers/phy/rockchip/phy-rockchip-typec.ko] undefined!

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on [n]: SMP [=y] && (PPC_PSERIES [=n] || PPC_PMAC [=n] || PPC_POWERNV [=n] || FSL_SOC_BOOKE [=n])
   Selected by [y]:
   - PM_SLEEP_SMP [=y] && SMP [=y] && (ARCH_SUSPEND_POSSIBLE [=n] || ARCH_HIBERNATION_POSSIBLE [=y]) && PM_SLEEP [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
