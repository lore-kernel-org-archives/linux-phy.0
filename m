Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFDA9C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 26 May 2022 10:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOADzrphgrJBrdvQl0tkUZBTVk/99HoVa5qJKHWhNIU=; b=SI6rmGcKY91mEd
	fpn70xQeGRyMNiXeX2ymAgpgg9kOL+aiG1+TsfRyNTLzgMD1asRMWgoGOldioc1yDZj7EwS7dBOe+
	xcYA/cPPztQkjOWQaDn5UDbEp/4pQgG27gvec2WNisZrAm9pEAqpPoIDv/Rr1FqyyFq4Kmn7//OEe
	0bnnckCvVW+pPww+e9h6xOFTDIp+HYs3D43VFS6w6FxEQ3iJePLd0bQ5HlDwYtAmHiPxjf3ppVW+K
	LgnlXH2UsaRLA2qUSYgcdTzs1uPB3ZLy1Nn0lufU4V+pflLYE/PVwZcIBfpwLVL5MTmZnn/Rue2Cz
	lFsS0rOt+1cVUu9bBWRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuAYT-00ENQS-BT; Thu, 26 May 2022 10:17:21 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuAYE-00ENL3-Hz; Thu, 26 May 2022 10:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653560226; x=1685096226;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/06/+LdbOWOmFUaiCyNfRy9awv3wYK5GdEyH2WSXjYw=;
  b=duaUt21NFcko0a1DR0Ee2RtOJIxILJRMXzqnO5a5MQ8G4TRA2jPrrVwq
   +cVwxMVe0vNiNO9lNtEjDN7tjiaY8mEyBNsqdh9uGd8fF5Q+DViZvbxdF
   OYXmUgVpbE0t8rwqCfD8KtPl/DSsNaVQmGWh2/SsbdytfXot+hZu2ndr+
   SBWM5o23HngRR6pTNzCnhsxC5Xb09PeyA5oyT7nU/bWvOYaOtQLnFOx64
   ZU0PkVR73xQtMxu8V3nQnuTsPRyS2QKOy15l5eUbVneBnuQTP5rwC57xm
   NGzKIF+qJZq/stVNVpDh3W5/LZKay3fnjoAAHMWcxYoNZ3sQgdbhnJ+TC
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="299445755"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; 
   d="scan'208";a="299445755"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2022 03:17:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; 
   d="scan'208";a="677402458"
Received: from lkp-server01.sh.intel.com (HELO db63a1be7222) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 26 May 2022 03:16:58 -0700
Received: from kbuild by db63a1be7222 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nuAY5-0003mO-1G;
	Thu, 26 May 2022 10:16:57 +0000
Date: Thu, 26 May 2022 18:16:04 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Paul Gazzillo <paul@pgazz.com>,
	Necip Fazil Yildiran <fazilyildiran@gmail.com>,
	kbuild-all@lists.01.org, Yong Deng <yong.deng@magewell.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v5 3/6] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <202205261808.Ob6yfFnu-lkp@intel.com>
References: <20220525190300.696269-4-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220525190300.696269-4-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220526_031706_698487_DDE64B64 
X-CRM114-Status: GOOD (  14.87  )
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

Hi Paul,

I love your patch! Perhaps something to improve:

[auto build test WARNING on sunxi/sunxi/for-next]
[also build test WARNING on media-tree/master clk/clk-next soc/for-next linus/master v5.18 next-20220525]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Kocialkowski/Allwinner-A31-A83T-MIPI-CSI-2-and-A31-ISP-MIPI-CSI-2-Support/20220526-030637
base:   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git sunxi/for-next
config: (https://download.01.org/0day-ci/archive/20220526/202205261808.Ob6yfFnu-lkp@intel.com/config)
reproduce:
        # https://github.com/intel-lab-lkp/linux/commit/497abc0e446f164e23be70628dbd44be8b5c789f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Paul-Kocialkowski/Allwinner-A31-A83T-MIPI-CSI-2-and-A31-ISP-MIPI-CSI-2-Support/20220526-030637
        git checkout 497abc0e446f164e23be70628dbd44be8b5c789f
        # 1. reproduce by kismet
           # install kmax per https://github.com/paulgazz/kmax/blob/master/README.md
           kismet --linux-ksrc=linux --selectees CONFIG_PHY_SUN6I_MIPI_DPHY --selectors CONFIG_VIDEO_SUN6I_MIPI_CSI2 -a=arm64
        # 2. reproduce by make
           # save the config file to linux source tree
           cd linux
           make ARCH=arm64 olddefconfig

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>


kismet warnings: (new ones prefixed by >>)
>> kismet: WARNING: unmet direct dependencies detected for PHY_SUN6I_MIPI_DPHY when selected by VIDEO_SUN6I_MIPI_CSI2
   
   WARNING: unmet direct dependencies detected for PHY_SUN6I_MIPI_DPHY
     Depends on [n]: (ARCH_SUNXI [=n] || COMPILE_TEST [=y]) && HAS_IOMEM [=y] && COMMON_CLK [=y] && RESET_CONTROLLER [=n]
     Selected by [y]:
     - VIDEO_SUN6I_MIPI_CSI2 [=y] && MEDIA_SUPPORT [=y] && MEDIA_PLATFORM_SUPPORT [=y] && MEDIA_PLATFORM_DRIVERS [=y] && V4L_PLATFORM_DRIVERS [=y] && VIDEO_DEV [=y] && (ARCH_SUNXI [=n] || COMPILE_TEST [=y]) && PM [=y] && COMMON_CLK [=y]

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
