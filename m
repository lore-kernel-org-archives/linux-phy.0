Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 282A5C46CD2
	for <linux-phy@archiver.kernel.org>; Sat,  6 Jan 2024 17:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6npQiVTRopYZr05GRMxcdZV4RLulvrX7dtvHkDJ7LbE=; b=lNjWRRpkjaZuiy
	z/fapDW+BrDfsUhzEXvs9NM+91Os0aid6ke2MgjIeGXzimX+t4cAFKmHs8vIUGcTkprnzlPoXoNtb
	6hxrQPuKwDSS5Odmo4StYoqXG2giH/Wp0DI69h3TWxR+LNB7eN5IW/KOv3lI5Ph7vAKY5NiWWhBQr
	PbVwKBS7gbZ/z/Dka1/FyettCe4Y1z1Q1uryMHfR8ry2qZkVoxaZrWHRFeXxfc5FOP3voryABROtM
	nuAvWylCG80eqRSGdEHK5/w4K7xFI7aVDstplgCFuSITVmQoiiBbIXsqgrNeZt/o2jXa6OVBUe1DP
	guZm5r22d1gqqdpdA+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMAWo-001feH-2q;
	Sat, 06 Jan 2024 17:32:10 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMAWm-001fck-1R
	for linux-phy@lists.infradead.org;
	Sat, 06 Jan 2024 17:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1704562328; x=1736098328;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=n3+Tj0E2c0KPwQ7B4hOXXMxq2BNvY8cDkv/UylSvfWo=;
  b=QFB+tDId8mIAheVloigLVbp/Ojg9g7BwJhNbxUqQYiJzNAIO3U+aTFZH
   YtpHqd0/202UWjfJ61az6J3ti+P2w2eR5bL4rfQnsqqG3SAL0oiZGQ0rM
   WUY9iqyEoWUMyvv64RmhDnpPcphh+cKoH95hBd6rdKPya2YF8+HJa0HYR
   LxCzBBJ8dH4eCkFoI6Zw6xDTZ/B1EHRVoQbSMv4T/p7Q2bMICYEwm1ide
   K1U7e3iicxqnyh+0y9KNA+xa6234RFefYHOnwbKh/Lz1+LqUvWOApfyIY
   27iANL+4ew+BvV0ktC0lUWNOZMpvEkKAgr0JiU5OM29OmBQEoDrzTqZfy
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10945"; a="11022451"
X-IronPort-AV: E=Sophos;i="6.04,337,1695711600"; 
   d="scan'208";a="11022451"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jan 2024 09:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10945"; a="784470349"
X-IronPort-AV: E=Sophos;i="6.04,337,1695711600"; 
   d="scan'208";a="784470349"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 06 Jan 2024 09:31:48 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rMAWQ-0002o8-1c;
	Sat, 06 Jan 2024 17:31:46 +0000
Date: Sun, 7 Jan 2024 01:30:46 +0800
From: kernel test robot <lkp@intel.com>
To: Abel Vesa <abel.vesa@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH 2/2] phy: qualcomm: eusb2-repeater: Drop the redundant
 zeroing
Message-ID: <202401070143.pnnuXAwC-lkp@intel.com>
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_093208_530495_14195980 
X-CRM114-Status: GOOD (  10.21  )
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

Hi Abel,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 0fef202ac2f8e6d9ad21aead648278f1226b9053]

url:    https://github.com/intel-lab-lkp/linux/commits/Abel-Vesa/phy-qualcomm-eusb2-repeater-Fix-the-regfields-for-multiple-instances/20240104-225513
base:   0fef202ac2f8e6d9ad21aead648278f1226b9053
patch link:    https://lore.kernel.org/r/20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333%40linaro.org
patch subject: [PATCH 2/2] phy: qualcomm: eusb2-repeater: Drop the redundant zeroing
config: i386-buildonly-randconfig-004-20240106 (https://download.01.org/0day-ci/archive/20240107/202401070143.pnnuXAwC-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240107/202401070143.pnnuXAwC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401070143.pnnuXAwC-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c: In function 'eusb2_repeater_init':
>> drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c:145:20: warning: unused variable 'regfields' [-Wunused-variable]
     struct reg_field *regfields = rptr->regfields;
                       ^~~~~~~~~


vim +/regfields +145 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c

56d77c9a10d97d Abel Vesa     2023-02-08  141  
56d77c9a10d97d Abel Vesa     2023-02-08  142  static int eusb2_repeater_init(struct phy *phy)
56d77c9a10d97d Abel Vesa     2023-02-08  143  {
56d77c9a10d97d Abel Vesa     2023-02-08  144  	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
ac0aae0074102c Abel Vesa     2024-01-04 @145  	struct reg_field *regfields = rptr->regfields;
56156a76e765d3 Konrad Dybcio 2023-09-13  146  	struct device_node *np = rptr->dev->of_node;
56156a76e765d3 Konrad Dybcio 2023-09-13  147  	u32 init_tbl[F_NUM_TUNE_FIELDS] = { 0 };
56156a76e765d3 Konrad Dybcio 2023-09-13  148  	u8 override;
56d77c9a10d97d Abel Vesa     2023-02-08  149  	u32 val;
56d77c9a10d97d Abel Vesa     2023-02-08  150  	int ret;
56d77c9a10d97d Abel Vesa     2023-02-08  151  	int i;
56d77c9a10d97d Abel Vesa     2023-02-08  152  
56d77c9a10d97d Abel Vesa     2023-02-08  153  	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
56d77c9a10d97d Abel Vesa     2023-02-08  154  	if (ret)
56d77c9a10d97d Abel Vesa     2023-02-08  155  		return ret;
56d77c9a10d97d Abel Vesa     2023-02-08  156  
4ba2e52718c0ce Konrad Dybcio 2023-09-13  157  	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
56d77c9a10d97d Abel Vesa     2023-02-08  158  
56156a76e765d3 Konrad Dybcio 2023-09-13  159  	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
56156a76e765d3 Konrad Dybcio 2023-09-13  160  
56156a76e765d3 Konrad Dybcio 2023-09-13  161  	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &override))
56156a76e765d3 Konrad Dybcio 2023-09-13  162  		init_tbl[F_TUNE_IUSB2] = override;
56156a76e765d3 Konrad Dybcio 2023-09-13  163  
56156a76e765d3 Konrad Dybcio 2023-09-13  164  	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &override))
56156a76e765d3 Konrad Dybcio 2023-09-13  165  		init_tbl[F_TUNE_HSDISC] = override;
56156a76e765d3 Konrad Dybcio 2023-09-13  166  
56156a76e765d3 Konrad Dybcio 2023-09-13  167  	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &override))
56156a76e765d3 Konrad Dybcio 2023-09-13  168  		init_tbl[F_TUNE_USB2_PREEM] = override;
56156a76e765d3 Konrad Dybcio 2023-09-13  169  
56156a76e765d3 Konrad Dybcio 2023-09-13  170  	for (i = 0; i < F_NUM_TUNE_FIELDS; i++)
56156a76e765d3 Konrad Dybcio 2023-09-13  171  		regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
56d77c9a10d97d Abel Vesa     2023-02-08  172  
4ba2e52718c0ce Konrad Dybcio 2023-09-13  173  	ret = regmap_field_read_poll_timeout(rptr->regs[F_RPTR_STATUS],
4ba2e52718c0ce Konrad Dybcio 2023-09-13  174  					     val, val & RPTR_OK, 10, 5);
56d77c9a10d97d Abel Vesa     2023-02-08  175  	if (ret)
56d77c9a10d97d Abel Vesa     2023-02-08  176  		dev_err(rptr->dev, "initialization timed-out\n");
56d77c9a10d97d Abel Vesa     2023-02-08  177  
56d77c9a10d97d Abel Vesa     2023-02-08  178  	return ret;
56d77c9a10d97d Abel Vesa     2023-02-08  179  }
56d77c9a10d97d Abel Vesa     2023-02-08  180  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
