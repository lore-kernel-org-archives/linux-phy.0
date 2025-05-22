Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B7BC54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 11:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnUt0Y11T4m7Yyy73aWOeL6fmN6myP08HIF7TAf3k70=; b=WA4aAObgI5SR6t
	LBbLY1G0fHZyOH5fV+YZbhgviYPOKN7EZG8xYuTxfeUd3e+kLRgLy8q/N9DOPOEfBwNDQ7kz3nyFF
	04soskUWzNQeuXXl4G/Qs5vUljSGBDyZ6s1iBix+2EykJRoUiLUbL1TXKFBMdwoeDH1wigbSe2Z0O
	n3h9Hladhqo24qyigIlox5C8B0NyJlGBaUk/7V9YUkz4IbX9MF2a/ZN1rFEliSonTkRMsgXBU50gu
	aYEr//RDCKINsAwmQAUj5czpRMtHWMZ5dQWZi7RdLyJdOFeJj0IbCmK1P8/tAjeenbnSegNrhOtbq
	vXDa6o9wL5YHnEMeWemQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI47O-00000000ryQ-0aHZ;
	Thu, 22 May 2025 11:29:46 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI47L-00000000rxx-2peD
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 11:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1747913384; x=1779449384;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kA/1F2Zfzqa6vgUg26NcIoNzYwbZOoIGvMHQ8DxxvUc=;
  b=FyemD12NUSzddYW6tTb+naE+TY25hTkrRTr6cRjBRoihYCmENYAX3zMp
   KZ3gOjCefPD1htf1sS3NTw28CAOL2+Xv+C+H9B6HcZRZdrWFhfAlObgD0
   sDTUU1gIzD64zUrwhP+4d9sC1404RHH2+ZIwDe1QubV0n2HPB3hz2IJvi
   Xfv2jLPkEJ3xYlfKrZmDTgXWn9IeUFcFwhPHgG7FXLzTCN1FsbHJoOZ9+
   l9bzv3Z+woNzJF2/60oedEhXt0PMzzobgM2SUov+CfvwIeuT39jud/iBi
   sDULRCl39IlIklcS5P4lfBN55TBBNz6XNWwj2yEFOYz7kkf+uXE1VI2F7
   Q==;
X-CSE-ConnectionGUID: 9b0gHZxdRYOgNJOkOWxo8A==
X-CSE-MsgGUID: qVJSX9k+TmqD7K4jwNaPuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49051506"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; 
   d="scan'208";a="49051506"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2025 04:29:43 -0700
X-CSE-ConnectionGUID: alwEKqmtQ/S93/wdYInrtQ==
X-CSE-MsgGUID: GuAsb9XpR8mMwN2bOSSLzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; 
   d="scan'208";a="141090681"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
  by orviesa007.jf.intel.com with ESMTP; 22 May 2025 04:29:38 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uI47D-000PHI-2i;
	Thu, 22 May 2025 11:29:35 +0000
Date: Thu, 22 May 2025 19:29:03 +0800
From: kernel test robot <lkp@intel.com>
To: Claudiu <claudiu.beznea@tuxon.dev>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	p.zabel@pengutronix.de, geert+renesas@glider.be,
	magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
	kees@kernel.org, gustavoars@kernel.org, biju.das.jz@bp.renesas.com
Cc: oe-kbuild-all@lists.linux.dev, claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org, john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v3 08/12] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY signal
Message-ID: <202505221929.nUHscY04-lkp@intel.com>
References: <20250521140943.3830195-9-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250521140943.3830195-9-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_042943_738457_828798C8 
X-CRM114-Status: UNSURE (   9.53  )
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

Hi Claudiu,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250521]
[cannot apply to geert-renesas-devel/next pza/reset/next robh/for-next linus/master pza/imx-drm/next v6.15-rc7 v6.15-rc6 v6.15-rc5 v6.15-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Claudiu/soc-renesas-rz-sysc-Add-syscon-regmap-support/20250521-221703
base:   next-20250521
patch link:    https://lore.kernel.org/r/20250521140943.3830195-9-claudiu.beznea.uj%40bp.renesas.com
patch subject: [PATCH v3 08/12] reset: rzg2l-usbphy-ctrl: Add support for USB PWRRDY signal
config: sparc-randconfig-r111-20250522 (https://download.01.org/0day-ci/archive/20250522/202505221929.nUHscY04-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 12.4.0
reproduce: (https://download.01.org/0day-ci/archive/20250522/202505221929.nUHscY04-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202505221929.nUHscY04-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "rz_sysc_get_signal_map" [drivers/reset/reset-rzg2l-usbphy-ctrl.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
