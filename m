Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0063BCF044A
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 11:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCma9WrmA1eljmTzcJPl7q4h22wbjPAJJDDdvYfwjDg=; b=JS9m9lUFeRxvDZ
	Wufbctt/GRRPw2RlMYIB2dPF5D910rm9MoHbRBga8/KarJ5fDYsJPiPEzxgE1ZreSKOLxY2E3VUYl
	VQowJdyeWLu1lN0cZcgHDhOPeelcEz8ijvvuThFYW3PJzLEkIcrCN3ggmSLyQX5EILWvVh7H3dDQs
	9JNj6CZ24GRWb/CvU9evHvTDzEjx6NcM442LFn6isyL3o/SzwYrnrCJTbtMC51GaIpN5srhjLv1Ur
	1D3rLRoIgOo63m72lM7MJnzhM+uO4mxkhLX9+f5TR/u5Iq8ixppDanfdixaayAeSsE3d6SjIAJsNM
	lIv4I+AwE8PRCE3YDomQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syUQx-00000008yZN-2xO2;
	Wed, 09 Oct 2024 11:00:47 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syTOA-00000008lE9-2OEY;
	Wed, 09 Oct 2024 09:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728467631; x=1760003631;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NIyPMmhdZjGAs7fBYKVzyddUl0tMwlIKJxqntEDOS0U=;
  b=HjvCV0F9P4QTayIHOqOYzBQJDBczIYjbXf3KubdQk82fEJex9RxWiqTX
   hk6l9QMISV3A8rtWh3C3rsOykMcCsoxOrGzFdtTCaaI4KhuUCAcS7gSGx
   imySEcvEJIFNiBHyqSlzn19kvMOjr+FMBAR7tNhSsbIvpMdJACrMxCqME
   kdrqzab7+kuF3EYioUIFVgdZrhsOknY2Q/6m0Pn42iHrjTR4bV4fT+umd
   GGTUUeJ9nG7oBvauY5SSRBQjMlxdz0oerZOxRDodLoOnuHkLy+TtQctMZ
   C9J9cT3tZ2X9vgqBLSTnnb+bv0zB1A4aJHmyZxwgILHzS/n4MJnc9tRls
   A==;
X-CSE-ConnectionGUID: TRBBeF8kRH2hxVVSRBBn/Q==
X-CSE-MsgGUID: cyUMD4ZNTbCxcZiLcOgsFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27649797"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; 
   d="scan'208";a="27649797"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2024 02:53:49 -0700
X-CSE-ConnectionGUID: tMctLKAAQnSQz9R1a7sZow==
X-CSE-MsgGUID: /L/cKijTS2CyMnLn+ctVzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; 
   d="scan'208";a="75789835"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 09 Oct 2024 02:53:45 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1syTO2-00094m-2v;
	Wed, 09 Oct 2024 09:53:42 +0000
Date: Wed, 9 Oct 2024 17:52:54 +0800
From: kernel test robot <lkp@intel.com>
To: Xu Yang <xu.yang_2@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, gregkh@linuxfoundation.org,
	peter.chen@kernel.org, herve.codina@bootlin.com
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH v6 1/3] phy: fsl-imx8mq-usb: add tca function driver for
 imx95
Message-ID: <202410091742.HgStY96T-lkp@intel.com>
References: <20241008062744.2211539-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241008062744.2211539-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_025350_685007_F19D83ED 
X-CRM114-Status: GOOD (  12.96  )
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

Hi Xu,

kernel test robot noticed the following build warnings:

[auto build test WARNING on shawnguo/for-next]
[also build test WARNING on linus/master v6.12-rc2 next-20241008]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Xu-Yang/arm64-dts-imx95-add-usb3-related-nodes/20241008-152345
base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
patch link:    https://lore.kernel.org/r/20241008062744.2211539-1-xu.yang_2%40nxp.com
patch subject: [PATCH v6 1/3] phy: fsl-imx8mq-usb: add tca function driver for imx95
config: arm-randconfig-r121-20241009 (https://download.01.org/0day-ci/archive/20241009/202410091742.HgStY96T-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.1.0
reproduce: (https://download.01.org/0day-ci/archive/20241009/202410091742.HgStY96T-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410091742.HgStY96T-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/phy/freescale/phy-fsl-imx8mq-usb.c:264:24: sparse: sparse: Using plain integer as NULL pointer
>> drivers/phy/freescale/phy-fsl-imx8mq-usb.c:272:27: sparse: sparse: incorrect type in return expression (different address spaces) @@     expected struct tca_blk * @@     got void [noderef] __iomem *base @@
   drivers/phy/freescale/phy-fsl-imx8mq-usb.c:272:27: sparse:     expected struct tca_blk *
   drivers/phy/freescale/phy-fsl-imx8mq-usb.c:272:27: sparse:     got void [noderef] __iomem *base
   drivers/phy/freescale/phy-fsl-imx8mq-usb.c: note: in included file (through include/linux/mmzone.h, include/linux/gfp.h, include/linux/umh.h, include/linux/kmod.h, ...):
   include/linux/page-flags.h:235:46: sparse: sparse: self-comparison always evaluates to false
   include/linux/page-flags.h:235:46: sparse: sparse: self-comparison always evaluates to false

vim +264 drivers/phy/freescale/phy-fsl-imx8mq-usb.c

   254	
   255	static struct tca_blk *imx95_usb_phy_get_tca(struct platform_device *pdev,
   256					struct imx8mq_usb_phy *imx_phy)
   257	{
   258		struct device *dev = &pdev->dev;
   259		struct resource *res;
   260		struct tca_blk *tca;
   261	
   262		res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
   263		if (!res)
 > 264			return 0;
   265	
   266		tca = devm_kzalloc(dev, sizeof(*tca), GFP_KERNEL);
   267		if (!tca)
   268			return ERR_PTR(-ENOMEM);
   269	
   270		tca->base = devm_ioremap_resource(&pdev->dev, res);
   271		if (IS_ERR(tca->base))
 > 272			return tca->base;
   273	
   274		mutex_init(&tca->mutex);
   275	
   276		tca->orientation = TYPEC_ORIENTATION_NORMAL;
   277		tca->sw = tca_blk_get_typec_switch(pdev, imx_phy);
   278	
   279		return tca;
   280	}
   281	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
