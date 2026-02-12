Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA3F0ECD6FF
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 00:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogfbFbhHVe/cFgVI7Z9+ejODS5WVPLQCRwuXikT+Pcc=; b=P8EddNNLgO3bHj
	tCBWTnI8vIKUvJkRM1Y+CW2UYmG1VrU/qiNDRpEsnj03khkcgqv+S/DEUyOyIMAaEPezsfTFevaUS
	bwJGGLJNCOItubjtADDKAbUHomUJL3hjQuDoe3CxebvKhswQimPl3iG/0DoAZEG3h0lg/7aUUAs9Y
	BicvfVCJDy5VMBLpgj5/J1cANlchKA9/T1rbFvEwHjVLr8B3vBwe/VMyIROt75Nkm3fTyEC0I5cvu
	jJ77PEfEkBm74uCbUS7KPn94RaEsSUWZnhaIy9626z/fMxbHzMaaeqfl58rOJMGzfm1RhjW1QN/RS
	Wpqo04JXAElbGATo3amA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqKkr-00000001EaW-1asm;
	Thu, 12 Feb 2026 00:40:25 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqKko-00000001Ea4-39aO
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 00:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770856823; x=1802392823;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MDWzgfFw7TyY061Mb3f7pm0wyi8jNlCq2p6ouyUKBaA=;
  b=aLZiLNme/xQ7UOL84tLAYgBaridIWPCu4R+hgKrcLNPObHQlOZUlls+b
   JVlckon//nBU6XhPLhHjzd44F1do/YnaR8Q5S5rp//FCHFPhl6d8rC2NO
   HqB0JdZElIfwAb2DNpiwz7SFltwzp8oQBt0Nl7KZ73gBFh5ikMEi86CkU
   DO28Piv42488hX38pYzaFXjRszmzWhmwV+4B60REwPGR1oN/JdXLzcnj/
   6uVGyhRJkEJbeXc9A8DAmCe1/mr7bev1ee7zuz+WFR/owkm05cEIZtRTt
   MXNOs+96oznohYjQwtQGyvg52PfPCJlRKx6MT74XYA/7UkJdbxmPytg5b
   g==;
X-CSE-ConnectionGUID: lWKdgvu8ShalLsCr5KQPcA==
X-CSE-MsgGUID: rE8F/6tMSN2NDtKQMJkThQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="71922485"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; 
   d="scan'208";a="71922485"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 16:40:01 -0800
X-CSE-ConnectionGUID: gIr2L0W9RHeknHwI3wl2Xw==
X-CSE-MsgGUID: bwKkr+2jQG+S5epIeeNdvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; 
   d="scan'208";a="216568951"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 11 Feb 2026 16:39:57 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vqKkM-00000000qWG-3Asv;
	Thu, 12 Feb 2026 00:39:54 +0000
Date: Thu, 12 Feb 2026 08:39:20 +0800
From: kernel test robot <lkp@intel.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-next@vger.kernel.org, linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local
 devm_mux_state_get_optional()
Message-ID: <202602120804.JhBk63IH-lkp@intel.com>
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_164022_870868_31971BB2 
X-CRM114-Status: GOOD (  11.81  )
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

Hi Geert,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20260209]

url:    https://github.com/intel-lab-lkp/linux/commits/Geert-Uytterhoeven/phy-renesas-rcar-gen3-usb2-Drop-local-devm_mux_state_get_optional/20260210-185437
base:   next-20260209
patch link:    https://lore.kernel.org/r/67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert%2Brenesas%40glider.be
patch subject: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local devm_mux_state_get_optional()
config: arm-allyesconfig (https://download.01.org/0day-ci/archive/20260212/202602120804.JhBk63IH-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260212/202602120804.JhBk63IH-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602120804.JhBk63IH-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/phy/renesas/phy-rcar-gen3-usb2.c: In function 'rcar_gen3_phy_usb2_probe':
>> drivers/phy/renesas/phy-rcar-gen3-usb2.c:1029:21: error: implicit declaration of function 'devm_mux_state_get_optional'; did you mean 'devm_regulator_get_optional'? [-Wimplicit-function-declaration]
    1029 |         mux_state = devm_mux_state_get_optional(dev, NULL);
         |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                     devm_regulator_get_optional
>> drivers/phy/renesas/phy-rcar-gen3-usb2.c:1029:19: error: assignment to 'struct mux_state *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
    1029 |         mux_state = devm_mux_state_get_optional(dev, NULL);
         |                   ^


vim +1029 drivers/phy/renesas/phy-rcar-gen3-usb2.c

8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22   946  
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   947  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   948  {
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   949  	struct device *dev = &pdev->dev;
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   950  	struct rcar_gen3_chan *channel;
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   951  	struct phy_provider *provider;
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22   952  	struct mux_state *mux_state;
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07   953  	int ret = 0, i, irq;
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   954  
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   955  	if (!dev->of_node) {
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   956  		dev_err(dev, "This driver needs device tree\n");
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   957  		return -EINVAL;
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   958  	}
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   959  
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   960  	channel = devm_kzalloc(dev, sizeof(*channel), GFP_KERNEL);
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   961  	if (!channel)
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   962  		return -ENOMEM;
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   963  
0b5604affbec02 drivers/phy/renesas/phy-rcar-gen3-usb2.c Chunfeng Yun      2020-11-06   964  	channel->base = devm_platform_ioremap_resource(pdev, 0);
801a69c787812f drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-03-03   965  	if (IS_ERR(channel->base))
801a69c787812f drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-03-03   966  		return PTR_ERR(channel->base);
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   967  
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11   968  	channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
73801b90a38ff1 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2018-09-21   969  	if (channel->dr_mode != USB_DR_MODE_UNKNOWN) {
979b519c7a1bff drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2018-09-21   970  		channel->is_otg_channel = true;
8dde0008ffc9e2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2018-09-21   971  		channel->uses_otg_pins = !of_property_read_bool(dev->of_node,
8dde0008ffc9e2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2018-09-21   972  							"renesas,no-otg-pins");
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   973  		channel->extcon = devm_extcon_dev_allocate(dev,
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   974  							rcar_gen3_phy_cable);
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   975  		if (IS_ERR(channel->extcon))
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   976  			return PTR_ERR(channel->extcon);
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   977  
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   978  		ret = devm_extcon_dev_register(dev, channel->extcon);
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   979  		if (ret < 0) {
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   980  			dev_err(dev, "Failed to register extcon\n");
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   981  			return ret;
2b38543c8db1c7 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-04-29   982  		}
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   983  	}
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30   984  
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   985  	channel->rstc = devm_reset_control_array_get_optional_shared(dev);
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   986  	if (IS_ERR(channel->rstc))
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   987  		return PTR_ERR(channel->rstc);
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   988  
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   989  	ret = reset_control_deassert(channel->rstc);
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   990  	if (ret)
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   991  		return ret;
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   992  
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   993  	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert, channel->rstc);
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   994  	if (ret)
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   995  		return ret;
942a7a6bf4c6a8 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-11-19   996  
441a681b884347 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2017-03-14   997  	/*
441a681b884347 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2017-03-14   998  	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
441a681b884347 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2017-03-14   999  	 * And then, phy-core will manage runtime pm for this device.
441a681b884347 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2017-03-14  1000  	 */
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1001  	ret = devm_pm_runtime_enable(dev);
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1002  	if (ret)
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1003  		return dev_err_probe(dev, ret, "Failed to enable pm_runtime\n");
b0512a6ec0cd6d drivers/phy/renesas/phy-rcar-gen3-usb2.c Biju Das          2021-07-27  1004  
f75806d26318c0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Lad Prabhakar     2025-08-08  1005  	channel->phy_data = of_device_get_match_data(dev);
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1006  	if (!channel->phy_data)
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1007  		return -EINVAL;
5d8042e95fd471 drivers/phy/renesas/phy-rcar-gen3-usb2.c Biju Das          2019-04-10  1008  
4eae16375357a2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2024-08-22  1009  	platform_set_drvdata(pdev, channel);
4eae16375357a2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2024-08-22  1010  	channel->dev = dev;
4eae16375357a2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2024-08-22  1011  
4eae16375357a2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2024-08-22  1012  	ret = rcar_gen3_phy_usb2_init_bus(channel);
4eae16375357a2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2024-08-22  1013  	if (ret)
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1014  		return ret;
4eae16375357a2 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2024-08-22  1015  
55a387ebb9219c drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1016  	spin_lock_init(&channel->lock);
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11  1017  	for (i = 0; i < NUM_OF_PHYS; i++) {
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11  1018  		channel->rphys[i].phy = devm_phy_create(dev, NULL,
f75806d26318c0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Lad Prabhakar     2025-08-08  1019  							channel->phy_data->phy_usb2_ops);
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1020  		if (IS_ERR(channel->rphys[i].phy))
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1021  			return dev_err_probe(dev, PTR_ERR(channel->rphys[i].phy),
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1022  					     "Failed to create USB2 PHY\n");
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1023  
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11  1024  		channel->rphys[i].ch = channel;
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11  1025  		channel->rphys[i].int_enable_bits = rcar_gen3_int_enable[i];
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11  1026  		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11  1027  	}
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30  1028  
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22 @1029  	mux_state = devm_mux_state_get_optional(dev, NULL);
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1030  	if (IS_ERR(mux_state))
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1031  		return PTR_ERR(mux_state);
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1032  	if (mux_state) {
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1033  		ret = mux_state_select(mux_state);
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1034  		if (ret)
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1035  			return dev_err_probe(dev, ret, "Failed to select USB mux\n");
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1036  
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1037  		ret = devm_add_action_or_reset(dev, rcar_gen3_phy_mux_state_deselect,
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1038  					       mux_state);
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1039  		if (ret)
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1040  			return dev_err_probe(dev, ret,
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1041  					     "Failed to register USB mux state deselect\n");
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1042  	}
8bb92fd7a04077 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1043  
b6d7dd157763e0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1044  	if (channel->phy_data->no_adp_ctrl && channel->is_otg_channel) {
b6d7dd157763e0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1045  		ret = rcar_gen3_phy_usb2_vbus_regulator_register(channel);
b6d7dd157763e0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1046  		if (ret)
b6d7dd157763e0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1047  			return ret;
b6d7dd157763e0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1048  	} else {
6dcfd7c300bf35 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-03-03  1049  		channel->vbus = devm_regulator_get_optional(dev, "vbus");
b6d7dd157763e0 drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1050  	}
6dcfd7c300bf35 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-03-03  1051  	if (IS_ERR(channel->vbus)) {
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1052  		if (PTR_ERR(channel->vbus) == -EPROBE_DEFER)
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1053  			return PTR_ERR(channel->vbus);
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1054  
6dcfd7c300bf35 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-03-03  1055  		channel->vbus = NULL;
6dcfd7c300bf35 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-03-03  1056  	}
6dcfd7c300bf35 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-03-03  1057  
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1058  	irq = platform_get_irq_optional(pdev, 0);
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1059  	if (irq < 0 && irq != -ENXIO) {
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1060  		return irq;
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1061  	} else if (irq > 0) {
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1062  		INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1063  		ret = devm_request_irq(dev, irq, rcar_gen3_phy_usb2_irq,
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1064  				       IRQF_SHARED, dev_name(dev), channel);
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1065  		if (ret < 0)
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1066  			return dev_err_probe(dev, ret,
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1067  					     "Failed to request irq (%d)\n",
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1068  					     irq);
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1069  	}
de76809f60cc93 drivers/phy/renesas/phy-rcar-gen3-usb2.c Claudiu Beznea    2025-05-07  1070  
549b6b55b00558 drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2019-04-11  1071  	provider = devm_of_phy_provider_register(dev, rcar_gen3_phy_usb2_xlate);
9bb86777fb71ee drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-11-09  1072  	if (IS_ERR(provider)) {
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1073  		return dev_err_probe(dev, PTR_ERR(provider),
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1074  				     "Failed to register PHY provider\n");
979b519c7a1bff drivers/phy/renesas/phy-rcar-gen3-usb2.c Yoshihiro Shimoda 2018-09-21  1075  	} else if (channel->is_otg_channel) {
9bb86777fb71ee drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-11-09  1076  		ret = device_create_file(dev, &dev_attr_role);
9bb86777fb71ee drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-11-09  1077  		if (ret < 0)
230c817a1601af drivers/phy/renesas/phy-rcar-gen3-usb2.c Tommaso Merciai   2025-12-22  1078  			return ret;
9bb86777fb71ee drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2016-11-09  1079  	}
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30  1080  
441a681b884347 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2017-03-14  1081  	return 0;
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30  1082  }
f3b5a8d9b50d71 drivers/phy/phy-rcar-gen3-usb2.c         Yoshihiro Shimoda 2015-11-30  1083  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
