Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86008C83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 13:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VN2RPXGvz1qsZqIdPfSsf/ahP37MK+6VM3xwfPYCj4I=; b=SGhRmv+PpVPqwo
	3gGF7rrIkPZ+CMLjftGJlbPsJg0NSM6QnqbmS6bmz6tFuRaIkSi145boJtHgcm1Q+I8lgjjHuzMaG
	dq+6xjJhwGihW0kBorE/IjC0AFs4gCrp/l3lfBrkf9rhidMMrcutWOEf2R3fmtkRtFm5fTKwbetRP
	ODPtIE0gffm7xscPv0LVFa7BCp8p7Fg+3q+Y1YVyCrV90bdfV89mPuIKhH/XnZgSsLwwh0tKOURMn
	RFbY5eqQcNwh5WV3HCarfl1W6kIZVY8ivA8kfN+bUP0J4KhUNeJWcUqLmviTiEq92xPTUZnGTFMp6
	TBkOjZ2Gwn6i4svmlXOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udqR5-0000000HN6G-10L9;
	Mon, 21 Jul 2025 13:20:07 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udojq-0000000H5oq-3uSY
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 11:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1753097483; x=1784633483;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ni6NB75dBKeFo+kbnJ/UKz3oYO037eTbMmo0vF9YVBU=;
  b=FDG8IBKNMkrGG16i8ZfylO2nBobVrIjrowym1NRoo6vmVKGpmYeLlBZQ
   5uDODMyDcskHI8xQFLqKp5eyJTT/VFz9IJ3WCUjWsftXqqj7/nsNTSAT3
   zgGHL1V3VcmxSluWWmOkbA3w+tXSE81UtPdsbO1AqomNB5HdoBSulife8
   0K6/JZgFyMetOjmP0zQhMNUGvRi/NeaVQHGs62TvShJfpTyyHg15H6ES4
   LJVf9ZmLaO04HP0mSNYJionjtzOtv49spxRGDF9atY6wZEQ89eqlizWAd
   hh13QWY2Q3NShQztpVBAGN914ZOh8IXpOct4xPbO9vH6UhsXZ4FaLclR4
   g==;
X-CSE-ConnectionGUID: nfUIxuXyQQKz5qJotzQVEA==
X-CSE-MsgGUID: z675cZIMRgKh5F5BFSMFew==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="72877897"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; 
   d="scan'208";a="72877897"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2025 04:31:18 -0700
X-CSE-ConnectionGUID: k3nqpQsRRV21/dckljTYhg==
X-CSE-MsgGUID: IuA4pZulSxy2Xw8ORfd5PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; 
   d="scan'208";a="162855115"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 21 Jul 2025 04:31:13 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1udojf-000Gkz-0h;
	Mon, 21 Jul 2025 11:31:11 +0000
Date: Mon, 21 Jul 2025 19:30:53 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org
Subject: Re: [PATCH v1 5/7] misc: qcom-coincell: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <202507211953.9ai6l420-lkp@intel.com>
References: <20250721075525.29636-6-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250721075525.29636-6-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_043122_984497_65FEAE2C 
X-CRM114-Status: GOOD (  12.22  )
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

Hi AngeloGioacchino,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250718]
[cannot apply to jic23-iio/togreg sre-power-supply/for-next char-misc/char-misc-testing char-misc/char-misc-next char-misc/char-misc-linus linus/master v6.16-rc7 v6.16-rc6 v6.16-rc5 v6.16-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/AngeloGioacchino-Del-Regno/spmi-Implement-spmi_subdevice_alloc_and_add-and-devm-variant/20250721-155809
base:   next-20250718
patch link:    https://lore.kernel.org/r/20250721075525.29636-6-angelogioacchino.delregno%40collabora.com
patch subject: [PATCH v1 5/7] misc: qcom-coincell: Migrate to devm_spmi_subdevice_alloc_and_add()
config: x86_64-buildonly-randconfig-003-20250721 (https://download.01.org/0day-ci/archive/20250721/202507211953.9ai6l420-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250721/202507211953.9ai6l420-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507211953.9ai6l420-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: vmlinux.o: in function `qcom_coincell_probe':
>> drivers/misc/qcom-coincell.c:111: undefined reference to `devm_spmi_subdevice_alloc_and_add'
>> ld: drivers/misc/qcom-coincell.c:115: undefined reference to `__devm_regmap_init_spmi_ext'


vim +111 drivers/misc/qcom-coincell.c

    83	
    84	static int qcom_coincell_probe(struct platform_device *pdev)
    85	{
    86		struct regmap_config qcom_coincell_regmap_config = {
    87			.reg_bits = 16,
    88			.val_bits = 16,
    89			.max_register = 0x100,
    90			.fast_io = true
    91		};
    92		struct device_node *node = pdev->dev.of_node;
    93		struct spmi_subdevice *sub_sdev;
    94		struct spmi_device *sparent;
    95		struct qcom_coincell chgr;
    96		u32 rset = 0;
    97		u32 vset = 0;
    98		bool enable;
    99		int rc;
   100	
   101		chgr.dev = &pdev->dev;
   102	
   103		rc = of_property_read_u32(node, "reg", &qcom_coincell_regmap_config.reg_base);
   104		if (rc)
   105			return rc;
   106	
   107		sparent = to_spmi_device(pdev->dev.parent);
   108		if (!sparent)
   109			return -ENODEV;
   110	
 > 111		sub_sdev = devm_spmi_subdevice_alloc_and_add(&pdev->dev, sparent);
   112		if (IS_ERR(sub_sdev))
   113			return PTR_ERR(sub_sdev);
   114	
 > 115		chgr.regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev,
   116							&qcom_coincell_regmap_config);
   117		if (!chgr.regmap) {
   118			dev_err(chgr.dev, "Unable to get regmap\n");
   119			return -EINVAL;
   120		}
   121	
   122		enable = !of_property_read_bool(node, "qcom,charger-disable");
   123	
   124		if (enable) {
   125			rc = of_property_read_u32(node, "qcom,rset-ohms", &rset);
   126			if (rc) {
   127				dev_err(chgr.dev,
   128					"can't find 'qcom,rset-ohms' in DT block");
   129				return rc;
   130			}
   131	
   132			rc = of_property_read_u32(node, "qcom,vset-millivolts", &vset);
   133			if (rc) {
   134				dev_err(chgr.dev,
   135				    "can't find 'qcom,vset-millivolts' in DT block");
   136				return rc;
   137			}
   138		}
   139	
   140		return qcom_coincell_chgr_config(&chgr, rset, vset, enable);
   141	}
   142	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
