Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C9C8C0015E
	for <linux-phy@archiver.kernel.org>; Sun, 30 Jul 2023 01:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBbCQb9vgE3MhEDIFQCBDn9f8LM7iJL3rphaQCQbeG0=; b=HLt1ec7Uq5/xTQ
	mDk2Fr0sulP/4XnOQY/CtpxN+1UW1ZRT+mx18clofO1ECmmR4MpsqV9p51daOOw4aIAq2UHBdZblM
	Q59X97FOfV0fyzRhD6GZYxF+MJii+AmTHu6uAWunk0RO/k3HIlPk2xLOGYWZvBL8Ebzm7Ni8pEdrh
	1qCtWeV67V90/Jv1lllFeB5VPzGmtAa8HBKY6sLrPRlrJHXh9E3gUqAOZZ+NwoZtKvgrm9hq/1KMh
	K3GhiKXQmE1NLGoItO9jYyxm3zh2xbzesZMJtFWAOzhUlxJAMbRsSiUd+Mo1N8E2iDQL11PyPaz1U
	2p1w4dHOiSpximLGK1tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPuvL-009VAa-1w;
	Sun, 30 Jul 2023 01:08:43 +0000
Received: from [192.55.52.151] (helo=mgamail.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPuvH-009V9p-0P
	for linux-phy@lists.infradead.org;
	Sun, 30 Jul 2023 01:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690679319; x=1722215319;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Pn2YJCGXkyEQ1oZ3DmDf8JjbyCx2Q0Jd+FIiyB3IIoM=;
  b=PTyXMcP0swcsDMZfOwaPJYTNzeqhaxhBksxC1cZ52m+L5TeHxDiqdelG
   FuSJeJghMAE21tZ+NEdG5wz5+3dlsvYD5EY7gYZF6eEYZWbfHRHhngygN
   pUzZ6AM5CGjv9HKZJLPYmB4cqog9rwVyhPywHXnStEXa+TtptWeDMzSje
   bTUxUwnhqPMvNg2ybkAAg2FxfEWQZb6B6G4umqP9oAE5qZPovUOvE0PLG
   pRgv7C1EX44MSh3edGFtwmd+CLOeiefzedTtlwT6YAF3h/IZdzi0MWI/n
   zEGRFvWBe9wDJ3kpV8OMvPU4tdT/Rez4Q6jaUz00FpjTZ19qWTfpMwfmN
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10786"; a="349100549"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; 
   d="scan'208";a="349100549"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2023 18:08:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10786"; a="762954221"
X-IronPort-AV: E=Sophos;i="6.01,240,1684825200"; 
   d="scan'208";a="762954221"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 29 Jul 2023 18:08:30 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qPuv7-0004Mj-3D;
	Sun, 30 Jul 2023 01:08:30 +0000
Date: Sun, 30 Jul 2023 09:08:12 +0800
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
	linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 3/3] usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE
Message-ID: <202307300803.N6tLICrD-lkp@intel.com>
References: <20230729204307.268587-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230729204307.268587-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230729_180839_518841_08B8E958 
X-CRM114-Status: GOOD (  12.23  )
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
[also build test ERROR on usb/usb-testing usb/usb-next usb/usb-linus drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.5-rc3 next-20230728]
[cannot apply to drm-intel/for-linux-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dmitry-Baryshkov/drm-display-add-transparent-bridge-helper/20230730-044510
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230729204307.268587-4-dmitry.baryshkov%40linaro.org
patch subject: [PATCH 3/3] usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE
config: i386-buildonly-randconfig-r006-20230730 (https://download.01.org/0day-ci/archive/20230730/202307300803.N6tLICrD-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce: (https://download.01.org/0day-ci/archive/20230730/202307300803.N6tLICrD-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307300803.N6tLICrD-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/display/drm_simple_bridge.c:104:15: error: no member named 'of_node' in 'struct drm_bridge'
           data->bridge.of_node = data->dev->of_node;
           ~~~~~~~~~~~~ ^
   1 error generated.
--
>> drivers/gpu/drm/bridge/simple-bridge.c:212:18: error: no member named 'of_node' in 'struct drm_bridge'
           sbridge->bridge.of_node = pdev->dev.of_node;
           ~~~~~~~~~~~~~~~ ^
   1 error generated.


vim +104 drivers/gpu/drm/display/drm_simple_bridge.c

cd1c726976d298 Dmitry Baryshkov 2023-07-29   87  
cd1c726976d298 Dmitry Baryshkov 2023-07-29   88  static int drm_simple_bridge_probe(struct auxiliary_device *auxdev,
cd1c726976d298 Dmitry Baryshkov 2023-07-29   89  				   const struct auxiliary_device_id *id)
cd1c726976d298 Dmitry Baryshkov 2023-07-29   90  {
cd1c726976d298 Dmitry Baryshkov 2023-07-29   91  	struct drm_simple_bridge_data *data;
cd1c726976d298 Dmitry Baryshkov 2023-07-29   92  
cd1c726976d298 Dmitry Baryshkov 2023-07-29   93  	data = devm_kzalloc(&auxdev->dev, sizeof(*data), GFP_KERNEL);
cd1c726976d298 Dmitry Baryshkov 2023-07-29   94  	if (!data)
cd1c726976d298 Dmitry Baryshkov 2023-07-29   95  		return -ENOMEM;
cd1c726976d298 Dmitry Baryshkov 2023-07-29   96  
cd1c726976d298 Dmitry Baryshkov 2023-07-29   97  	data->dev = &auxdev->dev;
cd1c726976d298 Dmitry Baryshkov 2023-07-29   98  	data->next_bridge = devm_drm_of_get_bridge(&auxdev->dev, auxdev->dev.of_node, 0, 0);
cd1c726976d298 Dmitry Baryshkov 2023-07-29   99  	if (IS_ERR(data->next_bridge))
cd1c726976d298 Dmitry Baryshkov 2023-07-29  100  		return dev_err_probe(&auxdev->dev, PTR_ERR(data->next_bridge),
cd1c726976d298 Dmitry Baryshkov 2023-07-29  101  				     "failed to acquire drm_bridge\n");
cd1c726976d298 Dmitry Baryshkov 2023-07-29  102  
cd1c726976d298 Dmitry Baryshkov 2023-07-29  103  	data->bridge.funcs = &drm_simple_bridge_funcs;
cd1c726976d298 Dmitry Baryshkov 2023-07-29 @104  	data->bridge.of_node = data->dev->of_node;
cd1c726976d298 Dmitry Baryshkov 2023-07-29  105  
cd1c726976d298 Dmitry Baryshkov 2023-07-29  106  	return devm_drm_bridge_add(data->dev, &data->bridge);
cd1c726976d298 Dmitry Baryshkov 2023-07-29  107  }
cd1c726976d298 Dmitry Baryshkov 2023-07-29  108  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
