Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E95FC43217
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 21:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJlbwOO8ooh/jma5bylHnHSz8vTdCR/P/y3nBmjeE0Y=; b=nGxFYi5lGyk3N4
	6UGqr8kKK2cau1UxYMk58thA2T9jKExrYuplUGkrU/DCzYzX8K6PIAZRMh5QFcC+BWALXNask2YRx
	asy7xKHuUNor2OqrCRRB9NJbEkyZsbLo51g1Wg2PpilV7puE9T1dDEpJZaP9fybDAiDEGqmCH9zup
	/YAuwjdpUgz2dqy/VK1Jc9enlnJIEiA1rKrNSNN0IkHl1MbgKQY+259V21dc/FXmtb6HubLFUmMT2
	V9hb0sncpL0SmiuniUO2SuhEca2TzZiKxzUlwR7DkTTBXmlkdcPUVtSfyrjbsdm3umUz5AVy42GfC
	KZPj2MKSG26FPNqrxQJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1notWU-008etc-Je; Wed, 11 May 2022 21:05:30 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1notWR-008esj-R4
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 21:05:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652303127; x=1683839127;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fcAVKuqd6YZHzN7purgtSBIoD9bELDVNb4vgy0qU8LA=;
 b=laoWk5XaWqKUKsNGzw5bggr+FGjU0p+9yq0j+UteNajsioBXiuI4ZlER
 MaJXx3Xpvl1rI1r7cfUoLD2iuqA8JjN6wktXwpMc+VmUnXurSK+CYtYEa
 gyAV1K7hFv03Vxc7go0w+t3if8j9hi4EW++RLSucpAy79HPwdGNo0vHXP
 0jC2IUOR4dw2Qr92d8ykkQdpXfl8Rju2j2EO5DIntZjcuz0cBbXdbRgNH
 emTZE/Aqw9T0D5A0/CGz4jj0iC20MFR/An70M51oTMv0FU7PYH7J25+xi
 LRUHfk7s3RT/Gid5SOwlIJikgObiMqxJ7HnnIXvVHXMhlCwUQ0GxWphym Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269944940"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="269944940"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 14:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="553491065"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 11 May 2022 14:05:21 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1notWK-000JaW-It;
 Wed, 11 May 2022 21:05:20 +0000
Date: Thu, 12 May 2022 05:04:19 +0800
From: kernel test robot <lkp@intel.com>
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: kbuild-all@lists.01.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
 quic_vpulyala@quicinc.com, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: Re: [v4 2/3] phy: qcom-snps: Add support for overriding phy tuning
 parameters
Message-ID: <202205120425.gScyEI7N-lkp@intel.com>
References: <1652282793-5580-3-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652282793-5580-3-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_140527_968036_18B171CF 
X-CRM114-Status: GOOD (  14.66  )
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

Hi Krishna,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on krzk/for-next linus/master v5.18-rc6 next-20220511]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Krishna-Kurapati/Add-QCOM-SNPS-PHY-overriding-params-support/20220511-232858
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20220512/202205120425.gScyEI7N-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/48c46f24873c92d3e16904af9e654962d0b923f1
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Krishna-Kurapati/Add-QCOM-SNPS-PHY-overriding-params-support/20220511-232858
        git checkout 48c46f24873c92d3e16904af9e654962d0b923f1
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/phy/qualcomm/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c: In function 'qcom_snps_hsphy_read_override_param_seq':
>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:541:42: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
     541 |         struct override_param_map *cfg = of_device_get_match_data(dev);
         |                                          ^~~~~~~~~~~~~~~~~~~~~~~~


vim +/const +541 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

   534	
   535	static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
   536	{
   537		struct device_node *node = dev->of_node;
   538		s32 val;
   539		int ret, i;
   540		struct qcom_snps_hsphy *hsphy;
 > 541		struct override_param_map *cfg = of_device_get_match_data(dev);
   542	
   543		hsphy = dev_get_drvdata(dev);
   544	
   545		for (i = 0; i < ARRAY_SIZE(phy_seq_props); i++) {
   546			ret = of_property_read_s32(node, phy_seq_props[i], &val);
   547			if (!ret) {
   548				dev_dbg(&hsphy->phy->dev, "Read param: %s val: %d\n",
   549							phy_seq_props[i], val);
   550				qcom_snps_hsphy_override_param_update_val(cfg[i], val,
   551							&hsphy->update_seq_cfg[i]);
   552			}
   553		}
   554	}
   555	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
