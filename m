Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 078EDC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 07:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEuXrvLAYKO9AKf7z92vBYZfE5ccg3SVPbfa1rKCnHM=; b=wQf1YuiOKyZZm4
	pz0BLL6wsFPS+3P980EcR8bQGKoDq5ka3dfF5HoIIYB16ugrWhXZONBwmDqeLeOIuTAefwJqZI9aJ
	cH1bxoswWDy/xTNo550+NqegONogXFOW+2OBs1xNl6z9XwshZJwhB6PWgojcWN/Ex9QNRlaNBW6Y4
	yG6f0SYg19szahiB8l/1EFEwDFyBGRfdxYSlki3xzq+I3vSM4KxDfxoFU87vPyfxbAiVkysojmz4+
	j+XIijQQefXp20VWDmKu/i+amV9p3rUluJPm6i6utXGfXo2gKDK7yT20pl7nFmaMzWGHG1NRVtGmF
	vUYk0wss3KvSzPbCZbiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzXGe-000000038QC-2oYO;
	Wed, 24 Apr 2024 07:42:12 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzXGb-000000038Ov-3dVW;
	Wed, 24 Apr 2024 07:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713944530; x=1745480530;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=ifFeTKdxYgYlphUeuvIFx+Dv+oAd/73UKyLH3o1TNbk=;
  b=EewxqDVDnMI0AgLdDy81GDgMDUpR2xWK+Wqkq5bGHHNgbcEYZJUlorGx
   iAOX9ESHowbgtOeCr2rHo8FCG4ImEtSigg7HzfI7m33KT3bhjZRv3wbQN
   MDSCUQVPozbwAuTIIsRlFHDlmDTE+pONqKXEa74xfMwDVHG1FsNvGENVs
   Pl0Rztp2fG/1JR+O8N9qCYZGhZL6O8qKXYmAiSNsbxNFcQNvIoiAeF7BV
   5cOBA2Rmr1WGMa00UYj0Ea9Dm6fLenGNwffj8nDB5uX5JHQYGRtZCnyN5
   bl6BUf9WiZUGvstPXxT2+b4Ffp7HXFZ+5ijdeJp0XqSbxOB9z6Urhrm9v
   g==;
X-CSE-ConnectionGUID: Ab6zVWxaRy+2glqAjQ9k6Q==
X-CSE-MsgGUID: p/EmyKZBQqOBhtHXLontwg==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9390866"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="9390866"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2024 00:42:07 -0700
X-CSE-ConnectionGUID: zIrYEmJQTtywSUHadvP5bw==
X-CSE-MsgGUID: vmWh2OsmQvu5mTjoxh3LlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="24692451"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
  by fmviesa008.fm.intel.com with ESMTP; 24 Apr 2024 00:42:02 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rzXGR-000104-2d;
	Wed, 24 Apr 2024 07:41:59 +0000
Date: Wed, 24 Apr 2024 15:41:58 +0800
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
Subject: Re: [PATCH 4/7] phy: exynos5-usbdrd: set ref clk freq in
 exynos850_usbdrd_utmi_init()
Message-ID: <202404241533.iud4U7SP-lkp@intel.com>
References: <20240423-usb-phy-gs101-v1-4-ebdcb3ac174d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240423-usb-phy-gs101-v1-4-ebdcb3ac174d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_004210_054973_D137814A 
X-CRM114-Status: GOOD (  11.88  )
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
patch link:    https://lore.kernel.org/r/20240423-usb-phy-gs101-v1-4-ebdcb3=
ac174d%40linaro.org
patch subject: [PATCH 4/7] phy: exynos5-usbdrd: set ref clk freq in exynos8=
50_usbdrd_utmi_init()
config: hexagon-randconfig-r123-20240424 (https://download.01.org/0day-ci/a=
rchive/20240424/202404241533.iud4U7SP-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae=
42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce: (https://download.01.org/0day-ci/archive/20240424/202404241533.i=
ud4U7SP-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404241533.iud4U7SP-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/phy/samsung/phy-exynos5-usbdrd.c:13:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:548:31: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:561:61: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + a=
ddr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from =
macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/phy/samsung/phy-exynos5-usbdrd.c:13:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:574:61: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + a=
ddr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from =
macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/phy/samsung/phy-exynos5-usbdrd.c:13:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:585:33: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:595:59: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:605:59: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
>> drivers/phy/samsung/phy-exynos5-usbdrd.c:798:10: error: call to undeclar=
ed function 'FIELD_PREP_CONST'; ISO C99 and later do not support implicit f=
unction declarations [-Wimplicit-function-declaration]
                   reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 7);
                          ^
   6 warnings and 1 error generated.


vim +/FIELD_PREP_CONST +798 drivers/phy/samsung/phy-exynos5-usbdrd.c

   750	=

   751	static void exynos850_usbdrd_utmi_init(struct exynos5_usbdrd_phy *ph=
y_drd)
   752	{
   753		void __iomem *regs_base =3D phy_drd->reg_phy;
   754		u32 reg;
   755	=

   756		/*
   757		 * Disable HWACG (hardware auto clock gating control). This will fo=
rce
   758		 * QACTIVE signal in Q-Channel interface to HIGH level, to make sure
   759		 * the PHY clock is not gated by the hardware.
   760		 */
   761		reg =3D readl(regs_base + EXYNOS850_DRD_LINKCTRL);
   762		reg |=3D LINKCTRL_FORCE_QACT;
   763		writel(reg, regs_base + EXYNOS850_DRD_LINKCTRL);
   764	=

   765		/* Start PHY Reset (POR=3Dhigh) */
   766		reg =3D readl(regs_base + EXYNOS850_DRD_CLKRST);
   767		reg |=3D CLKRST_PHY_SW_RST;
   768		writel(reg, regs_base + EXYNOS850_DRD_CLKRST);
   769	=

   770		/* Enable UTMI+ */
   771		reg =3D readl(regs_base + EXYNOS850_DRD_UTMI);
   772		reg &=3D ~(UTMI_FORCE_SUSPEND | UTMI_FORCE_SLEEP | UTMI_DP_PULLDOWN=
 |
   773			 UTMI_DM_PULLDOWN);
   774		writel(reg, regs_base + EXYNOS850_DRD_UTMI);
   775	=

   776		/* Set PHY clock and control HS PHY */
   777		reg =3D readl(regs_base + EXYNOS850_DRD_HSP);
   778		reg |=3D HSP_EN_UTMISUSPEND | HSP_COMMONONN;
   779		writel(reg, regs_base + EXYNOS850_DRD_HSP);
   780	=

   781		/* Set VBUS Valid and D+ pull-up control by VBUS pad usage */
   782		reg =3D readl(regs_base + EXYNOS850_DRD_LINKCTRL);
   783		reg |=3D LINKCTRL_BUS_FILTER_BYPASS(0xf);
   784		writel(reg, regs_base + EXYNOS850_DRD_LINKCTRL);
   785	=

   786		reg =3D readl(regs_base + EXYNOS850_DRD_UTMI);
   787		reg |=3D UTMI_FORCE_BVALID | UTMI_FORCE_VBUSVALID;
   788		writel(reg, regs_base + EXYNOS850_DRD_UTMI);
   789	=

   790		reg =3D readl(regs_base + EXYNOS850_DRD_HSP);
   791		reg |=3D HSP_VBUSVLDEXT | HSP_VBUSVLDEXTSEL;
   792		writel(reg, regs_base + EXYNOS850_DRD_HSP);
   793	=

   794		reg =3D readl(regs_base + EXYNOS850_DRD_SSPPLLCTL);
   795		reg &=3D ~SSPPLLCTL_FSEL;
   796		switch (phy_drd->extrefclk) {
   797		case EXYNOS5_FSEL_50MHZ:
 > 798			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 7);
   799			break;
   800		case EXYNOS5_FSEL_26MHZ:
   801			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 6);
   802			break;
   803		case EXYNOS5_FSEL_24MHZ:
   804			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 2);
   805			break;
   806		case EXYNOS5_FSEL_20MHZ:
   807			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 1);
   808			break;
   809		case EXYNOS5_FSEL_19MHZ2:
   810			reg |=3D FIELD_PREP_CONST(SSPPLLCTL_FSEL, 0);
   811			break;
   812		default:
   813			dev_warn(phy_drd->dev, "unsupported ref clk: %#.2x\n",
   814				 phy_drd->extrefclk);
   815			break;
   816		}
   817		writel(reg, regs_base + EXYNOS850_DRD_SSPPLLCTL);
   818	=

   819		/* Power up PHY analog blocks */
   820		reg =3D readl(regs_base + EXYNOS850_DRD_HSP_TEST);
   821		reg &=3D ~HSP_TEST_SIDDQ;
   822		writel(reg, regs_base + EXYNOS850_DRD_HSP_TEST);
   823	=

   824		/* Finish PHY reset (POR=3Dlow) */
   825		udelay(10); /* required before doing POR=3Dlow */
   826		reg =3D readl(regs_base + EXYNOS850_DRD_CLKRST);
   827		reg &=3D ~(CLKRST_PHY_SW_RST | CLKRST_PORT_RST);
   828		writel(reg, regs_base + EXYNOS850_DRD_CLKRST);
   829		udelay(75); /* required after POR=3Dlow for guaranteed PHY clock */
   830	=

   831		/* Disable single ended signal out */
   832		reg =3D readl(regs_base + EXYNOS850_DRD_HSP);
   833		reg &=3D ~HSP_FSV_OUT_EN;
   834		writel(reg, regs_base + EXYNOS850_DRD_HSP);
   835	}
   836	=


-- =

0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
