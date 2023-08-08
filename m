Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ECD0C001B0
	for <linux-phy@archiver.kernel.org>; Tue,  8 Aug 2023 19:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqw1b/O8v/2+/rzB8DCeXUGnyBeqw9k2eBi2o57VPdE=; b=u7x1CJ9oPOFyZg
	XIjZMXYnd1cdj5QrmSO5ZDDQKdFShnvgtED5lw+46BNG4QDJ/8vza+6jZIkMkqI8129qSuRqDfknq
	0qepDAnWv8cHFNle76cSY+JPM2JopwZYAX+wS2o/xIxno9Yit4tUZLV8ZEgpgDI4j/m9FV+TPRRku
	Mx6Ef6Ql6jqHx6pfR36+CLp9KauPu/TsHfSUnNyJcoQWTrT7Q/ZEzAgkIDmuwxsriTpApVlDgz1VA
	1QTTeBkay+uBUPpazQbDbqE+vNRKmicqjU44uUjugdG9TgQTNENG5teB2uHBAtzTLMjI4m40t/Op9
	VrejDErZKV/STfW3Ulpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTSBp-003Izc-3D;
	Tue, 08 Aug 2023 19:16:22 +0000
Received: from mgamail.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTSBl-003Iyy-2L
	for linux-phy@lists.infradead.org;
	Tue, 08 Aug 2023 19:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1691522177; x=1723058177;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=g2nPMWJVqJSdxvBU7K5NZtxMaqmdJgy/2x1pLE1f54o=;
  b=PcnTbOWGXY71G2x7WvxFUdQ9B+fJd2ObwGMnch+kbS2fmZ7WLISGJSGb
   +z0TsgJ9KtEXxbkEi+PbRAXZMgaAKvGWzZp3DkhidjULyOFxpuB/Wibc7
   88FClykbcr9txLLx13nanTFwk+Ezk/riGozxIsOyBKd7VIT0peLIG7OFT
   fpn1sEgoA1q5usHaXFSMM8QOQLPrB5S+QesG6zXu8v5NI5Sfh2jt9QIuD
   0TdU5GctQUPs+XCDMGU/mqvPD5vketFhiZUDT/7+i5TuLxMFh0D/wdLRx
   ppZw70x05oTZ/BcnW9C9de1pQTusApHQma8bXLYmYuJJVh1ofa5DXX++a
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="373710786"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; 
   d="scan'208";a="373710786"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Aug 2023 12:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801445416"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; 
   d="scan'208";a="801445416"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2023 12:16:10 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qTSBd-0005Yk-3C;
	Tue, 08 Aug 2023 19:16:09 +0000
Date: Wed, 9 Aug 2023 03:15:46 +0800
From: kernel test robot <lkp@intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: Re: [PATCH v3 3/3] usb: typec: nb7vpq904m: switch to
 DRM_SIMPLE_BRIDGE
Message-ID: <202308090347.sZtwmCUB-lkp@intel.com>
References: <20230802011845.4176631-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230802011845.4176631-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_121617_828406_E8CA6E7D 
X-CRM114-Status: GOOD (  14.01  )
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

Hi Dmitry,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on usb/usb-testing usb/usb-next usb/usb-linus drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.5-rc5 next-20230808]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dmitry-Baryshkov/drm-display-add-transparent-bridge-helper/20230802-091932
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230802011845.4176631-4-dmitry.baryshkov%40linaro.org
patch subject: [PATCH v3 3/3] usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE
config: s390-randconfig-r033-20230808 (https://download.01.org/0day-ci/archive/20230809/202308090347.sZtwmCUB-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce: (https://download.01.org/0day-ci/archive/20230809/202308090347.sZtwmCUB-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308090347.sZtwmCUB-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/bridge/simple-bridge.c:212:18: error: no member named 'of_node' in 'struct drm_bridge'
           sbridge->bridge.of_node = pdev->dev.of_node;
           ~~~~~~~~~~~~~~~ ^
   1 error generated.


vim +212 drivers/gpu/drm/bridge/simple-bridge.c

56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  168  
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  169  static int simple_bridge_probe(struct platform_device *pdev)
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  170  {
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  171  	struct simple_bridge *sbridge;
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  172  	struct device_node *remote;
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  173  
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  174  	sbridge = devm_kzalloc(&pdev->dev, sizeof(*sbridge), GFP_KERNEL);
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  175  	if (!sbridge)
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  176  		return -ENOMEM;
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  177  	platform_set_drvdata(pdev, sbridge);
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  178  
272378ec0eb972 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-02-26  179  	sbridge->info = of_device_get_match_data(&pdev->dev);
272378ec0eb972 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-02-26  180  
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  181  	/* Get the next bridge in the pipeline. */
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  182  	remote = of_graph_get_remote_node(pdev->dev.of_node, 1, -1);
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  183  	if (!remote)
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  184  		return -EINVAL;
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  185  
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  186  	sbridge->next_bridge = of_drm_find_bridge(remote);
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  187  	of_node_put(remote);
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  188  
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  189  	if (!sbridge->next_bridge) {
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  190  		dev_dbg(&pdev->dev, "Next bridge not found, deferring probe\n");
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  191  		return -EPROBE_DEFER;
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  192  	}
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  193  
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  194  	/* Get the regulator and GPIO resources. */
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  195  	sbridge->vdd = devm_regulator_get_optional(&pdev->dev, "vdd");
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  196  	if (IS_ERR(sbridge->vdd)) {
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  197  		int ret = PTR_ERR(sbridge->vdd);
af948a25ecb214 drivers/gpu/drm/bridge/dumb-vga-dac.c  Chen-Yu Tsai     2016-11-16  198  		if (ret == -EPROBE_DEFER)
af948a25ecb214 drivers/gpu/drm/bridge/dumb-vga-dac.c  Chen-Yu Tsai     2016-11-16  199  			return -EPROBE_DEFER;
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  200  		sbridge->vdd = NULL;
af948a25ecb214 drivers/gpu/drm/bridge/dumb-vga-dac.c  Chen-Yu Tsai     2016-11-16  201  		dev_dbg(&pdev->dev, "No vdd regulator found: %d\n", ret);
af948a25ecb214 drivers/gpu/drm/bridge/dumb-vga-dac.c  Chen-Yu Tsai     2016-11-16  202  	}
af948a25ecb214 drivers/gpu/drm/bridge/dumb-vga-dac.c  Chen-Yu Tsai     2016-11-16  203  
2df6428e290a61 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-02-26  204  	sbridge->enable = devm_gpiod_get_optional(&pdev->dev, "enable",
2df6428e290a61 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-02-26  205  						  GPIOD_OUT_LOW);
db8496d0b50519 drivers/gpu/drm/bridge/simple-bridge.c Ye Xingchen      2023-03-22  206  	if (IS_ERR(sbridge->enable))
db8496d0b50519 drivers/gpu/drm/bridge/simple-bridge.c Ye Xingchen      2023-03-22  207  		return dev_err_probe(&pdev->dev, PTR_ERR(sbridge->enable),
db8496d0b50519 drivers/gpu/drm/bridge/simple-bridge.c Ye Xingchen      2023-03-22  208  				     "Unable to retrieve enable GPIO\n");
2df6428e290a61 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-02-26  209  
00686ac55d0a21 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-05-26  210  	/* Register the bridge. */
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  211  	sbridge->bridge.funcs = &simple_bridge_bridge_funcs;
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26 @212  	sbridge->bridge.of_node = pdev->dev.of_node;
272378ec0eb972 drivers/gpu/drm/bridge/simple-bridge.c Laurent Pinchart 2020-02-26  213  	sbridge->bridge.timings = sbridge->info->timings;
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  214  
94ded532ffdb42 drivers/gpu/drm/bridge/dumb-vga-dac.c  Laurent Pinchart 2020-02-26  215  	drm_bridge_add(&sbridge->bridge);
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  216  
47e34278549ca4 drivers/gpu/drm/bridge/dumb-vga-dac.c  Inki Dae         2017-07-03  217  	return 0;
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  218  }
56fe8b6f499167 drivers/gpu/drm/bridge/dumb-vga-dac.c  Maxime Ripard    2016-09-30  219  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
