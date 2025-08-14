Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF973CA0EDC
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 08:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1p2Ybko3kOpYjm4f/XeCMtNRtILXmseGA4lKosuFpU=; b=CKBxrBnsndwy5d
	apiRHE1cFWM/Ar4QhGV3SqyPacre7MvfYf0tipG/hus43jzmTnLxQ+pXH/akTWcAJOYC8UgbZHpHa
	7b6pKg8cFcUe1DC2ZpQtHfn/S8kimc3odNNyw+yD+PLi0SRPEBxcDgGt1uGfMpYnS8lMDDtapT7Zc
	lO9Ec/MJmOJzM/rp3M+d0/T2P+aIW8z9/WHaLmAU9hMSrbnKcABuIhLief2RU21XuCetcuKLe1T+U
	R10/H7em6oTgIVt8+6oHYOy9RkVJ43nTrfIC/+VVv45f0fD+9tqh24Zkp4YcqlrlVJqmcgspBYKS3
	BueT2ShLb/wz7wwejvOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umTLC-0000000GFPX-2FZh;
	Thu, 14 Aug 2025 08:29:42 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umT7i-0000000GDMB-0kb6;
	Thu, 14 Aug 2025 08:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1755159346; x=1786695346;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6E0Tfz3mQAO8WgpBT7lxhRZaLaj11rwitgOe3a6lVFg=;
  b=j+yXANln0CWk0kl8ONaMx2GWFWh5gk3yPRioWeWy54EdOGpG1FozaKCg
   bqs2uR5/zH4zMvsuX1E3WRsV7hzkJJzjh8gT76vVsnwArCsENm+jRwzO8
   y85a8xtose7s22mWG2Hr57eStOf+jWRdPQosOtV/WIw57iGqXppH7AV73
   HXT+jAKh6UrYc/HwHFLtgBEzKtVewWK/gKDcbaPkR+Wf8R+43BtsalJdO
   srLO2/WwmYTdi8OqhjowosQVxHzkLj4g6ndUCyZrwgHY7J+8DX3TXBKX8
   9CmSmdi6gOfMFXhHEs7SQ3bZ8HdySiKK1n7Ny//ZvalFqzs5rOxKR33Sd
   g==;
X-CSE-ConnectionGUID: vvgVggaJQuio94UPj+OwGg==
X-CSE-MsgGUID: 5EtHcmRbSbiCVU0ZiHyTmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="80045688"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; 
   d="scan'208";a="80045688"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2025 01:15:43 -0700
X-CSE-ConnectionGUID: 6QvLLeTHS52x5elOnY5SwA==
X-CSE-MsgGUID: FPLkVErvS/+BynwVet6Qsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; 
   d="scan'208";a="166964216"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
  by orviesa008.jf.intel.com with ESMTP; 14 Aug 2025 01:15:39 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1umT7P-000Ajw-2T;
	Thu, 14 Aug 2025 08:15:30 +0000
Date: Thu, 14 Aug 2025 16:15:16 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Griffin <peter.griffin@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, kernel-team@android.com,
	William Mcvicker <willmcvicker@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: Re: [PATCH v3 2/2] phy: samsung: gs101-ufs: Add .notify_phystate() &
 hibern8 enter/exit values
Message-ID: <202508141555.NJvU2oYQ-lkp@intel.com>
References: <20250813-phy-notify-pmstate-v3-2-3bda59055dd3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250813-phy-notify-pmstate-v3-2-3bda59055dd3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_011546_299124_09D9A9E3 
X-CRM114-Status: GOOD (  11.65  )
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

Hi Peter,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 43c3c17f0c805882d1b48818b1085747a68c80ec]

url:    https://github.com/intel-lab-lkp/linux/commits/Peter-Griffin/phy-add-new-phy_notify_state-api/20250813-231312
base:   43c3c17f0c805882d1b48818b1085747a68c80ec
patch link:    https://lore.kernel.org/r/20250813-phy-notify-pmstate-v3-2-3bda59055dd3%40linaro.org
patch subject: [PATCH v3 2/2] phy: samsung: gs101-ufs: Add .notify_phystate() & hibern8 enter/exit values
config: arm-randconfig-001-20250814 (https://download.01.org/0day-ci/archive/20250814/202508141555.NJvU2oYQ-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 3769ce013be2879bf0b329c14a16f5cb766f26ce)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250814/202508141555.NJvU2oYQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508141555.NJvU2oYQ-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/phy/samsung/phy-samsung-ufs.c:232:11: warning: variable 'cfg' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
     232 |         else if (state.ufs_state == PHY_UFS_HIBERN8_EXIT)
         |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/phy/samsung/phy-samsung-ufs.c:235:19: note: uninitialized use occurs here
     235 |         for_each_phy_cfg(cfg) {
         |                          ^~~
   drivers/phy/samsung/phy-samsung-ufs.c:232:7: note: remove the 'if' if its condition is always true
     232 |         else if (state.ufs_state == PHY_UFS_HIBERN8_EXIT)
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     233 |                 cfg = ufs_phy->cfgs_hibern8[CFG_PRE_HIBERN8_EXIT];
   drivers/phy/samsung/phy-samsung-ufs.c:224:39: note: initialize the variable 'cfg' to silence this warning
     224 |         const struct samsung_ufs_phy_cfg *cfg;
         |                                              ^
         |                                               = NULL
   1 warning generated.


vim +232 drivers/phy/samsung/phy-samsung-ufs.c

   219	
   220	static int samsung_ufs_phy_notify_state(struct phy *phy,
   221						union phy_notify state)
   222	{
   223		struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
   224		const struct samsung_ufs_phy_cfg *cfg;
   225		int i, err;
   226	
   227		if (!ufs_phy->cfgs_hibern8)
   228			return 0;
   229	
   230		if (state.ufs_state == PHY_UFS_HIBERN8_ENTER)
   231			cfg = ufs_phy->cfgs_hibern8[CFG_POST_HIBERN8_ENTER];
 > 232		else if (state.ufs_state == PHY_UFS_HIBERN8_EXIT)
   233			cfg = ufs_phy->cfgs_hibern8[CFG_PRE_HIBERN8_EXIT];
   234	
   235		for_each_phy_cfg(cfg) {
   236			for_each_phy_lane(ufs_phy, i) {
   237				samsung_ufs_phy_config(ufs_phy, cfg, i);
   238			}
   239		}
   240	
   241		if (state.ufs_state == PHY_UFS_HIBERN8_EXIT) {
   242			for_each_phy_lane(ufs_phy, i) {
   243				if (ufs_phy->drvdata->wait_for_cdr) {
   244					err = ufs_phy->drvdata->wait_for_cdr(phy, i);
   245					if (err)
   246						goto err_out;
   247				}
   248			}
   249		}
   250	
   251		return 0;
   252	err_out:
   253		return err;
   254	}
   255	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
