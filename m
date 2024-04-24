Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8DDDC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 05:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5xJIklezBNAz9aDkankx+gWYqEOsqeag5yg34WPJzI=; b=KnyxvgqhayA1N2
	c31j0K74QZAyamjkWzkmGwGcpU1Wode+K1gsgGMwWSWi+DSiRyuOcFomwRk6SyN1EAa6P/znwJvzS
	D+67mRc1f7LXRb9qFb18f9gaJ4ZF6ZVGTA3CnZ6kwtB7hZNW+MCD5fLIRJnvKArpbf4uVUUiuweUg
	Z0cXvqtl4ctQm6N/lCG2z7L/JVg/v08btfX21HNSxXTwcIFfPy+yowWrT4sNGUSgp8z0L+xsrzj+W
	0ep3SKvIwwiDGU+QamO0fo/+xXSWyD6WIzB+O5SBM6Vs0ED+EKcirmptFTjcHffUUxhcWEEiwZhsR
	uicJnxoVel4OoJq2LLfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzVbz-00000002m6w-1rd5;
	Wed, 24 Apr 2024 05:56:07 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzVbx-00000002m6P-1gGb;
	Wed, 24 Apr 2024 05:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713938166; x=1745474166;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=MmFvorY7gdBLyILy8HsnyPUc10sAeQ2JHQgtvJRFK64=;
  b=SqwO6nk5agLn6m6pxfuUx8uE8UgqsBC/Z8dY5Gg+SCO14Iz/QfDfc1A6
   zFJD/Zl0JF0OfQOKBqyU3JGpnRngpUIRIP8nfg3y2OdhVvNVP+lfJwmj3
   QBrRSq2b8HWzBLA599AH6gGiqY5fpqedjOJbrw57KNuNgwrRJrJjnbNml
   cPwviyuxkSpSjEV12Wo2of0doppGjMmRdbmgfKIvtVmu1N8RTrcEWhlgv
   mHqFIpjkj4kCK8rGdKpUNjgLY8hDCIpj/2NV5UZAAlyxU1PQvZvnhI+iX
   UNHdBDHJR2dG6141cixfB+J0V2FtNF7PEm7wIp67gpOF2cfIWdH73uFWr
   Q==;
X-CSE-ConnectionGUID: 69VPRggzQQS2mnC/6dDqDA==
X-CSE-MsgGUID: wwkhid1zRFK79m7Zrl1IGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9711402"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="9711402"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2024 22:56:04 -0700
X-CSE-ConnectionGUID: IEp0NPycSwC2Q10qHl6C7g==
X-CSE-MsgGUID: 1qTgJxvsSta4ObBy1k4UNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="55560223"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 23 Apr 2024 22:55:59 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rzVbo-0000vA-29;
	Wed, 24 Apr 2024 05:55:56 +0000
Date: Wed, 24 Apr 2024 13:55:01 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>
Cc: oe-kbuild-all@lists.linux.dev, Tudor Ambarus <tudor.ambarus@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Subject: Re: [PATCH 7/7] phy: exynos5-usbdrd: support Exynos USBDRD 3.1 combo
 phy (HS & SS)
Message-ID: <202404241343.bJvpqJob-lkp@intel.com>
References: <20240423-usb-phy-gs101-v1-7-ebdcb3ac174d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240423-usb-phy-gs101-v1-7-ebdcb3ac174d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_225605_539398_BE914EE0 
X-CRM114-Status: GOOD (  11.62  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Andr=E9,

kernel test robot noticed the following build errors:

[auto build test ERROR on a59668a9397e7245b26e9be85d23f242ff757ae8]

url:    https://github.com/intel-lab-lkp/linux/commits/Andr-Draszik/dt-bind=
ings-phy-samsung-usb3-drd-phy-add-gs101-compatible/20240424-011137
base:   a59668a9397e7245b26e9be85d23f242ff757ae8
patch link:    https://lore.kernel.org/r/20240423-usb-phy-gs101-v1-7-ebdcb3=
ac174d%40linaro.org
patch subject: [PATCH 7/7] phy: exynos5-usbdrd: support Exynos USBDRD 3.1 c=
ombo phy (HS & SS)
config: arc-randconfig-002-20240424 (https://download.01.org/0day-ci/archiv=
e/20240424/202404241343.bJvpqJob-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240424/202404241343.bJvpqJob-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404241343.bJvpqJob-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

   drivers/phy/samsung/phy-exynos5-usbdrd.c: In function 'exynos5_usbdrd_us=
bdp_g2_v4_ctrl_pma_ready':
   drivers/phy/samsung/phy-exynos5-usbdrd.c:615:16: error: implicit declara=
tion of function 'FIELD_PREP_CONST' [-Werror=3Dimplicit-function-declaratio=
n]
     615 |         reg |=3D FIELD_PREP_CONST(SECPMACTL_PMA_REF_FREQ_SEL, 1);
         |                ^~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c: In function 'exynos850_usbdrd_=
utmi_init':
>> drivers/phy/samsung/phy-exynos5-usbdrd.c:1147:20: error: implicit declar=
ation of function 'FIELD_GET' [-Werror=3Dimplicit-function-declaration]
    1147 |         ss_ports =3D FIELD_GET(LINKPORT_HOST_NUM_U3, reg);
         |                    ^~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c: At top level:
>> drivers/phy/samsung/phy-exynos5-usbdrd.c:302:24: error: initializer elem=
ent is not constant
     302 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1411:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PHY'
    1411 |         PHY_TUNING_ENTRY_PHY(EXYNOS850_DRD_HSPPARACON,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:302:24: note: (near initializat=
ion for 'gs101_tunes_utmi_postinit[0].val')
     302 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1411:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PHY'
    1411 |         PHY_TUNING_ENTRY_PHY(EXYNOS850_DRD_HSPPARACON,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: error: initializer elem=
ent is not constant
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1483:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1483 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_NS_VEC_PS1_N1, -1,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: note: (near initializat=
ion for 'gs101_tunes_pipe3_init[3].val')
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1483:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1483 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_NS_VEC_PS1_N1, -1,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: error: initializer elem=
ent is not constant
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1487:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1487 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_NS_VEC_PS2_N0, -1,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: note: (near initializat=
ion for 'gs101_tunes_pipe3_init[4].val')
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1487:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1487 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_NS_VEC_PS2_N0, -1,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: error: initializer elem=
ent is not constant
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1493:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1493 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_NS_VEC_PS3_N0, -1,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: note: (near initializat=
ion for 'gs101_tunes_pipe3_init[5].val')
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1493:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1493 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_NS_VEC_PS3_N0, -1,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: error: initializer elem=
ent is not constant
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1504:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1504 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_RX_CONTROL_DEBUG,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: note: (near initializat=
ion for 'gs101_tunes_pipe3_init[8].val')
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1504:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1504 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_RX_CONTROL_DEBUG,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: error: initializer elem=
ent is not constant
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1514:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1514 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_HS_TX_COEF_MAP_0,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: note: (near initializat=
ion for 'gs101_tunes_pipe3_init[9].val')
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1514:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1514 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_HS_TX_COEF_MAP_0,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: error: initializer elem=
ent is not constant
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1521:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1521 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_LOCAL_COEF,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: note: (near initializat=
ion for 'gs101_tunes_pipe3_init[10].val')
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1521:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1521 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_LOCAL_COEF,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: error: initializer elem=
ent is not constant
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1527:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1527 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_EBUF_PARAM,
         |         ^~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-exynos5-usbdrd.c:309:24: note: (near initializat=
ion for 'gs101_tunes_pipe3_init[12].val')
     309 |                 .val =3D (v),             \
         |                        ^
   drivers/phy/samsung/phy-exynos5-usbdrd.c:1527:9: note: in expansion of m=
acro 'PHY_TUNING_ENTRY_PCS'
    1527 |         PHY_TUNING_ENTRY_PCS(EXYNOS9_PCS_EBUF_PARAM,
         |         ^~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/FIELD_GET +1147 drivers/phy/samsung/phy-exynos5-usbdrd.c

  1130	=

  1131	static void exynos850_usbdrd_utmi_init(struct exynos5_usbdrd_phy *ph=
y_drd)
  1132	{
  1133		void __iomem *regs_base =3D phy_drd->reg_phy;
  1134		u32 reg;
  1135		u32 ss_ports;
  1136	=

  1137		/*
  1138		 * Disable HWACG (hardware auto clock gating control). This will fo=
rce
  1139		 * QACTIVE signal in Q-Channel interface to HIGH level, to make sure
  1140		 * the PHY clock is not gated by the hardware.
  1141		 */
  1142		reg =3D readl(regs_base + EXYNOS850_DRD_LINKCTRL);
  1143		reg |=3D LINKCTRL_FORCE_QACT;
  1144		writel(reg, regs_base + EXYNOS850_DRD_LINKCTRL);
  1145	=

  1146		reg =3D readl(regs_base + EXYNOS850_DRD_LINKPORT);
> 1147		ss_ports =3D FIELD_GET(LINKPORT_HOST_NUM_U3, reg);
  1148	=

  1149		/* Start PHY Reset (POR=3Dhigh) */
  1150		reg =3D readl(regs_base + EXYNOS850_DRD_CLKRST);
  1151		if (ss_ports) {
  1152			reg |=3D CLKRST_PHY20_SW_POR;
  1153			reg |=3D CLKRST_PHY20_SW_POR_SEL;
  1154			reg |=3D CLKRST_PHY_RESET_SEL;
  1155		}
  1156		reg |=3D CLKRST_PHY_SW_RST;
  1157		writel(reg, regs_base + EXYNOS850_DRD_CLKRST);
  1158	=

  1159		/* Enable UTMI+ */
  1160		reg =3D readl(regs_base + EXYNOS850_DRD_UTMI);
  1161		reg &=3D ~(UTMI_FORCE_SUSPEND | UTMI_FORCE_SLEEP | UTMI_DP_PULLDOWN=
 |
  1162			 UTMI_DM_PULLDOWN);
  1163		writel(reg, regs_base + EXYNOS850_DRD_UTMI);
  1164	=

  1165		/* Set PHY clock and control HS PHY */
  1166		reg =3D readl(regs_base + EXYNOS850_DRD_HSP);
  1167		reg |=3D HSP_EN_UTMISUSPEND | HSP_COMMONONN;
  1168		writel(reg, regs_base + EXYNOS850_DRD_HSP);
  1169	=

  1170		/* Set VBUS Valid and D+ pull-up control by VBUS pad usage */
  1171		reg =3D readl(regs_base + EXYNOS850_DRD_LINKCTRL);
  1172		reg |=3D LINKCTRL_BUS_FILTER_BYPASS(0xf);
  1173		writel(reg, regs_base + EXYNOS850_DRD_LINKCTRL);
  1174	=

  1175		reg =3D readl(regs_base + EXYNOS850_DRD_UTMI);
  1176		reg |=3D UTMI_FORCE_BVALID | UTMI_FORCE_VBUSVALID;
  1177		writel(reg, regs_base + EXYNOS850_DRD_UTMI);
  1178	=

  1179		reg =3D readl(regs_base + EXYNOS850_DRD_HSP);
  1180		reg |=3D HSP_VBUSVLDEXT | HSP_VBUSVLDEXTSEL;
  1181		writel(reg, regs_base + EXYNOS850_DRD_HSP);
  1182	=

  1183		reg =3D readl(regs_base + EXYNOS850_DRD_SSPPLLCTL);
  1184		reg &=3D ~SSPPLLCTL_FSEL;
  1185		switch (phy_drd->extrefclk) {
  1186		case EXYNOS5_FSEL_50MHZ:
  1187			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 7);
  1188			break;
  1189		case EXYNOS5_FSEL_26MHZ:
  1190			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 6);
  1191			break;
  1192		case EXYNOS5_FSEL_24MHZ:
  1193			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 2);
  1194			break;
  1195		case EXYNOS5_FSEL_20MHZ:
  1196			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 1);
  1197			break;
  1198		case EXYNOS5_FSEL_19MHZ2:
  1199			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 0);
  1200			break;
  1201		default:
  1202			dev_warn(phy_drd->dev, "unsupported ref clk: %#.2x\n",
  1203				 phy_drd->extrefclk);
  1204			break;
  1205		}
  1206		writel(reg, regs_base + EXYNOS850_DRD_SSPPLLCTL);
  1207	=

  1208		/* Power up PHY analog blocks */
  1209		reg =3D readl(regs_base + EXYNOS850_DRD_HSP_TEST);
  1210		reg &=3D ~HSP_TEST_SIDDQ;
  1211		writel(reg, regs_base + EXYNOS850_DRD_HSP_TEST);
  1212	=

  1213		/* Finish PHY reset (POR=3Dlow) */
  1214		udelay(10); /* required before doing POR=3Dlow */
  1215		reg =3D readl(regs_base + EXYNOS850_DRD_CLKRST);
  1216		if (ss_ports) {
  1217			reg |=3D CLKRST_PHY20_SW_POR_SEL;
  1218			reg &=3D ~CLKRST_PHY20_SW_POR;
  1219		}
  1220		reg &=3D ~(CLKRST_PHY_SW_RST | CLKRST_PORT_RST);
  1221		writel(reg, regs_base + EXYNOS850_DRD_CLKRST);
  1222		udelay(75); /* required after POR=3Dlow for guaranteed PHY clock */
  1223	=

  1224		/* Disable single ended signal out */
  1225		reg =3D readl(regs_base + EXYNOS850_DRD_HSP);
  1226		reg &=3D ~HSP_FSV_OUT_EN;
  1227		writel(reg, regs_base + EXYNOS850_DRD_HSP);
  1228	=

  1229		if (ss_ports)
  1230			exynos5_usbdrd_usb_v3p1_pipe_override(phy_drd);
  1231	=

  1232		if (phy_drd->drv_data->phy_tunes)
  1233			exynos5_usbdrd_apply_phy_tunes(phy_drd,
  1234						       PTS_UTMI_POSTINIT);
  1235	}
  1236	=


-- =

0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
