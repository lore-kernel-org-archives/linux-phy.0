Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A6D3C25B6B
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 11:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1e8tyq1mjcNAWI6/JVGeJaiClJzhVIouikYIfnY3NI=; b=OXo7Ncp+81hNy2
	CJ0lzzEgHjVjsK6WTcojYRIsI1Tmo+qIiEpMlUSee2ZEt4CcjuFRQeFDgANl1MCFzuRt0+s5yd/Ks
	pkE8NZL8zEdfx1eueTmU2jJtXSEklKDPvGUFMWWCpMIv+eGMMT1cq8YtLzArmGFKfwFU/ypd2xlsx
	9XD9LyxbD5Jj+Y/xYiO6K6D8ube4vPyXF8XXjiKNvvbjaDBKxy/jK5BpFiMzWulCc4N9hWy8KIA0W
	v8SPjNaM1131cnVrPfoBl+9iU4B8Ia14bKM65hhQauPbYqD5YmA7/7EqU8NHb6gGQ+SHt6lCo7pKv
	StOkrhytJTL9Dfc1FcjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvyaI-00EMpA-17;
	Thu, 26 Oct 2023 11:31:30 +0000
Received: from mgamail.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvyaF-00EMoC-1u
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 11:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698319887; x=1729855887;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=hocvURNRVGMko0eLbel4gjvaPDXA/uayLf4WPzDZtNY=;
  b=MYIBTzOxPXTFb0/se0CDX5/tSkw49vc//Rx//1RmLLoA+T0wDdnY3Jsw
   sZTBCWwaOf4qh9uzqmlVKDEd9edpNSW32utlzIwJ9jvUcEnKjdYCaIDgg
   wmf8ftKov5Ej+P6TaN2LNyj2RQL2dzJAxgAegiVDLLKxWexOHfIplFtb7
   Tx9KVVrGYV0e9U6Wx0IfErBby5AC/4+tBMdf9kAZju6PdcMee+G0QYUnM
   2QBYe3iUaWou2yclcIWRkwbUsoBSBWpSrdmMaYViJVLIEOfX7tFWCeYJ3
   VdMUz+P3dhWH655S/jFAwnB3177A+PmiyuPZpKpVoBVddYGn2K+OZHfe8
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="367741131"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="367741131"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2023 04:31:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="849890467"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="849890467"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 26 Oct 2023 04:31:17 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qvya3-0009jr-13;
	Thu, 26 Oct 2023 11:31:15 +0000
Date: Thu, 26 Oct 2023 19:31:09 +0800
From: kernel test robot <lkp@intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v5 4/6] drm/bridge: implement generic DP HPD bridge
Message-ID: <202310261906.C62L4fc2-lkp@intel.com>
References: <20231025223027.943563-5-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231025223027.943563-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_043127_695412_57712605 
X-CRM114-Status: GOOD (  12.73  )
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

[auto build test ERROR on next-20231025]
[also build test ERROR on v6.6-rc7]
[cannot apply to drm-misc/drm-misc-next usb/usb-testing usb/usb-next usb/usb-linus drm/drm-next linus/master v6.6-rc7 v6.6-rc6 v6.6-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dmitry-Baryshkov/drm-bridge-add-transparent-bridge-helper/20231026-063135
base:   next-20231025
patch link:    https://lore.kernel.org/r/20231025223027.943563-5-dmitry.baryshkov%40linaro.org
patch subject: [PATCH v5 4/6] drm/bridge: implement generic DP HPD bridge
config: csky-randconfig-002-20231026 (https://download.01.org/0day-ci/archive/20231026/202310261906.C62L4fc2-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231026/202310261906.C62L4fc2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310261906.C62L4fc2-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/phy/qualcomm/phy-qcom-qmp-combo.c:24:
>> include/drm/bridge/aux-bridge.h:28:1: error: expected identifier or '(' before '{' token
      28 | {
         | ^
>> include/drm/bridge/aux-bridge.h:26:30: warning: 'drm_dp_hpd_bridge_register' declared 'static' but never defined [-Wunused-function]
      26 | static inline struct device *drm_dp_hpd_bridge_register(struct device *parent,
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~


vim +28 include/drm/bridge/aux-bridge.h

    20	
    21	#if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)
    22	struct device *drm_dp_hpd_bridge_register(struct device *parent,
    23						  struct device_node *np);
    24	void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status);
    25	#else
  > 26	static inline struct device *drm_dp_hpd_bridge_register(struct device *parent,
    27								struct device_node *np);
  > 28	{
    29		return 0;
    30	}
    31	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
