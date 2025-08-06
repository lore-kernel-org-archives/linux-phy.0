Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B62C87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 23:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueJBoEsOMscF2Hh0mvvwGAKU6zhEV469aXng4IqyXdg=; b=dNI6ZUBeiQPH2t
	wDDMFDzwPPptHhDj9vhSFdwT59rA1WwE1ufKSK5hLbN3xZ8HpvB7aI0NRx8s6nWeebI0fPgk2Vj5q
	5lcm0mUvhMzB69t/TaOk5HbuMQafG4JNqCOmZMCfTC6948jixiXCQiupDjn5/CZsSNMAQyKXi9/3K
	YfHaSuFlrjghZWmLA9swNmpxqLgZkkClAOUU8jtssdxOWMGpRJn/oyeoKQTu+Oyr3Prje+SJX3xV2
	hc3KGuZq4hqPXRdQgGrt4AB3aUj1SZENGUvkkdMiJlboaYjgO8u2AS+zeRaaLIcWfgHAQyI0gq+UF
	W4465liiyb1iawwCZ57w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujnLU-0000000Gnj7-2l5s;
	Wed, 06 Aug 2025 23:14:56 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujkwk-0000000GRH3-0rP1
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 20:41:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1754512874; x=1786048874;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DFFBqOU97HE0nR2qSPkrnVv9gJuOVEFJ2zas/p2pGts=;
  b=dWgSyxrqkIlmW7mfIXa/mwVf2oraiJwxRjjX5EFlefhd7PiQ2FZj8Fwr
   R/mBGTFnxjXkvSMt6oN9DM6fcSI17aSreyFRniJvbgFCuM7K83+JoSyIZ
   dGDoAawp8c1PTsI+iglvo8dcFUSnbdtfv0FsKOT8wZlqxcn9ibvZFM1oA
   aLGu4g1Z4eB/4+43Mma8qGO/HSpxcINSFpa2G7LwQNezIGLn+nOuX6X+G
   u8hQc0Bt1Crrw5JIPUHtcOxl1J22Yb2g69saChfYwZIwikzwqqR6vDSuR
   c+166T80XDuXeEsqyiNhLUSvdMF/A7hGi0o5sbMqJPLPPlPAUMnnvKS2U
   g==;
X-CSE-ConnectionGUID: KPhQcJvNT7SuiTTMuky2Dg==
X-CSE-MsgGUID: mw0iuEcDS0GyTfrEHv5GXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74303195"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; 
   d="scan'208";a="74303195"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2025 13:41:14 -0700
X-CSE-ConnectionGUID: DCtWjkSnRVeS+4HjoSDtRQ==
X-CSE-MsgGUID: 22OCQZEfQlCArsJ/l0JX5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; 
   d="scan'208";a="164389454"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
  by fmviesa007.fm.intel.com with ESMTP; 06 Aug 2025 13:41:09 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ujkwa-00024u-0Q;
	Wed, 06 Aug 2025 20:41:04 +0000
Date: Thu, 7 Aug 2025 04:40:15 +0800
From: kernel test robot <lkp@intel.com>
To: Prabhakar <prabhakar.csengg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H
 SoC
Message-ID: <202508070430.wK3sK6kB-lkp@intel.com>
References: <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250805122529.2566580-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_134114_281419_64942982 
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

Hi Prabhakar,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250805]
[also build test ERROR on linus/master]
[cannot apply to geert-renesas-devel/next robh/for-next v6.16 v6.16-rc7 v6.16-rc6 v6.16]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Prabhakar/dt-bindings-phy-renesas-usb2-phy-Add-RZ-T2H-and-RZ-N2H-support/20250806-122832
base:   next-20250805
patch link:    https://lore.kernel.org/r/20250805122529.2566580-5-prabhakar.mahadev-lad.rj%40bp.renesas.com
patch subject: [PATCH 4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
config: riscv-randconfig-002-20250807 (https://download.01.org/0day-ci/archive/20250807/202508070430.wK3sK6kB-lkp@intel.com/config)
compiler: riscv32-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250807/202508070430.wK3sK6kB-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508070430.wK3sK6kB-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/phy/renesas/phy-rcar-gen3-usb2.c: In function 'rcar_gen3_init_otg':
>> drivers/phy/renesas/phy-rcar-gen3-usb2.c:82:31: error: implicit declaration of function 'FIELD_PREP_CONST'; did you mean 'FILE_REF_NOREF'? [-Werror=implicit-function-declaration]
    #define USB2_VBCTRL_VBLVL(m)  FIELD_PREP_CONST(USB2_VBCTRL_VBLVL_MASK, (m))
                                  ^~~~~~~~~~~~~~~~
   drivers/phy/renesas/phy-rcar-gen3-usb2.c:448:44: note: in expansion of macro 'USB2_VBCTRL_VBLVL'
       val = (val & ~USB2_VBCTRL_VBLVL_MASK) | USB2_VBCTRL_VBLVL(2);
                                               ^~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +82 drivers/phy/renesas/phy-rcar-gen3-usb2.c

    77	
    78	/* VBCTRL */
    79	#define USB2_VBCTRL_VBSTA_MASK		GENMASK(31, 28)
    80	#define USB2_VBCTRL_VBSTA_DEFAULT	2
    81	#define USB2_VBCTRL_VBLVL_MASK		GENMASK(23, 20)
  > 82	#define USB2_VBCTRL_VBLVL(m)		FIELD_PREP_CONST(USB2_VBCTRL_VBLVL_MASK, (m))
    83	#define USB2_VBCTRL_OCCLREN		BIT(16)
    84	#define USB2_VBCTRL_DRVVBUSSEL		BIT(8)
    85	#define USB2_VBCTRL_SIDDQREL		BIT(2)
    86	#define USB2_VBCTRL_VBOUT		BIT(0)
    87	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
