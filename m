Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C05D9C001DE
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 09:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n36PkmxPFf0/xbR7/YS6jm7f+XJ/AMblEvGOMfpgOhA=; b=Q9g/OTS5jILLz1
	kycq6RRt7FEsYQAGPtdHKl8RLCBEI8Xwp1hXKFTEhUTvZ+NVdkGMIqY2j76+u4YQDOiSZjVr0T6rw
	NH97dkRGRFpChBL/p7DZluM9W0lWg1FRl8EYbKkIIWJ0ZqVZf+X5cFWSo3P2Z5D0QBvdrRmkHCE3b
	xFXnrK9qV/CBFmDaIrd7lnMNku7cydHuzYHFrR5VylzqDIbcONQR7cZAgg9r1sfDzHxAU29GT9gWO
	y/e39aT03g/3QXogmIdaPaQANLBHpZbwIqR+jUQqNcS8h9kXLFGeZxGCZOkpyA0iIi0faw6MeYBxo
	qC3tl8GJspz7XO3Mwg3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQPZz-00Eq4y-1f;
	Mon, 31 Jul 2023 09:52:43 +0000
Received: from [192.55.52.136] (helo=mgamail.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQPZw-00Eq2v-1s
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 09:52:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690797160; x=1722333160;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PAoEQuTB+M6/Mb3C/VaAtLqfjQYPblPsfV7KVnusHG0=;
  b=lNGu8Rfa2pGQI/R49sbNZ4zDhM8FcTM0Qgrs3KIcyDurM1dAq44LegKs
   2TeraeovGTHg35aVLSzjK+yfx8BlSC91kJD5rZh1OK7tS9P3zy/SonVKj
   4EPV2qqNBdCPKBvkKn+yQBN8obtD6AGblnTDcinzhdKGXzp3pHulkALpM
   fDam6yw7PQAb9OcqevpZ1EwWVUlktWq5yhcS4G2NO1/tL8Ed/GURnZrfr
   KJss88qLEq1uBfTysWMWeFuDxrL2Jnp1lClGW9IwxAmt77U9TiAlDIsD1
   BAz04bKQz1tsKiRpceP3esNmT2IMRGW+RiR0lSETtszzJLaG0vyQlbUv1
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="348573369"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; 
   d="scan'208";a="348573369"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2023 02:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="902059850"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; 
   d="scan'208";a="902059850"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 31 Jul 2023 02:52:32 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qQPZn-00053G-25;
	Mon, 31 Jul 2023 09:52:31 +0000
Date: Mon, 31 Jul 2023 17:51:35 +0800
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
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] usb: typec: nb7vpq904m: switch to
 DRM_SIMPLE_BRIDGE
Message-ID: <202307311724.2bAqJu6o-lkp@intel.com>
References: <20230731071930.3928150-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230731071930.3928150-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_025240_629743_65C4A9A6 
X-CRM114-Status: GOOD (  11.37  )
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
[also build test ERROR on usb/usb-testing usb/usb-next usb/usb-linus drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.5-rc4 next-20230731]
[cannot apply to drm-intel/for-linux-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dmitry-Baryshkov/drm-display-add-transparent-bridge-helper/20230731-152746
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230731071930.3928150-4-dmitry.baryshkov%40linaro.org
patch subject: [PATCH v2 3/3] usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE
config: xtensa-randconfig-r004-20230731 (https://download.01.org/0day-ci/archive/20230731/202307311724.2bAqJu6o-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230731/202307311724.2bAqJu6o-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307311724.2bAqJu6o-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/display/drm_simple_bridge.c: In function 'drm_simple_bridge_probe':
>> drivers/gpu/drm/display/drm_simple_bridge.c:105:21: error: 'struct drm_bridge' has no member named 'of_node'
     105 |         data->bridge.of_node = data->dev->of_node;
         |                     ^


vim +105 drivers/gpu/drm/display/drm_simple_bridge.c

1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   88  
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   89  static int drm_simple_bridge_probe(struct auxiliary_device *auxdev,
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   90  				   const struct auxiliary_device_id *id)
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   91  {
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   92  	struct drm_simple_bridge_data *data;
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   93  
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   94  	data = devm_kzalloc(&auxdev->dev, sizeof(*data), GFP_KERNEL);
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   95  	if (!data)
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   96  		return -ENOMEM;
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   97  
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   98  	data->dev = &auxdev->dev;
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31   99  	data->next_bridge = devm_drm_of_get_bridge(&auxdev->dev, auxdev->dev.of_node, 0, 0);
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  100  	if (IS_ERR(data->next_bridge))
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  101  		return dev_err_probe(&auxdev->dev, PTR_ERR(data->next_bridge),
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  102  				     "failed to acquire drm_bridge\n");
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  103  
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  104  	data->bridge.funcs = &drm_simple_bridge_funcs;
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31 @105  	data->bridge.of_node = data->dev->of_node;
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  106  
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  107  	return devm_drm_bridge_add(data->dev, &data->bridge);
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  108  }
1b4ddd588d7e97 Dmitry Baryshkov 2023-07-31  109  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
