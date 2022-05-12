Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 525F8C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 01:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mm1bkeSfreuxhOYTVwwiVS3+0JhYmnrnHfOnSrnSOLw=; b=MSRltq+RcCkFyG
	3lj6hyEmlR3j1wpbpHdNp23cIusdcsiSSZxabUjDIQwc39hCQTdY5lqMcZFWEJwoPePvOtTFbCj2p
	oNb2UyYeJ8ws5HZrs/PD1Q1bDKkEtHzbGEWdA4jC3O7vDIhLlzU5fER1AzgdG+j3AeiOH2EzmkP4B
	zFA13XjF5+pq30/LusKP6C/cqJCCbPmHug/5D+584O6Q5iqFuVTddy99M2OLmEaO1gegRqS1dBz7o
	uI5GdvDFuTVTKmm1IWxkd3FmdCcQsGQ80tqoxPnpJU44ymax0Sq654TfGutCc+WO2WyeUQudOjJf3
	fedRCocqyZJoGsAcBJXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noxec-009I49-Mw; Thu, 12 May 2022 01:30:10 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noxeY-009Hzi-8m
 for linux-phy@lists.infradead.org; Thu, 12 May 2022 01:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652319006; x=1683855006;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FmzxLobn0K8eUJokt43bdYb1Kp6hZ00M7lRWrjyhUwY=;
 b=SKeOnlZmmXRXW1DKAasjKtvf6ApCGk+x3DLPODK8l0L+JabxLMnFJfzp
 m7UVKz3uculOAPYDdc64yIkSIEj3KpWJR9tKlmnn5h5qZrvWsoUgrfDVl
 SLhrv4GOGlWmIZj+HEvqItztlQypeWYlMk534fxnCb61TeSqkKXnI9BbR
 x5zgwbY4B6CZGGBKL9dZTagQvSb14XMVDA/GXpWMgVv0W2MWFUuVRfIYF
 57sM0W2rw+IqipldUXxK2G5dChfh3rSH+aPd2tP5Csj/IvSbtlPMBPBQi
 LL2cHJK6GRX1ZnLwMc7oo5GwUDtuuIghxvpVa8wnTEXLDxga2TOvaT0Qw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269796495"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="269796495"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 18:30:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="542554715"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 11 May 2022 18:29:58 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1noxeQ-000Jmk-2Z;
 Thu, 12 May 2022 01:29:58 +0000
Date: Thu, 12 May 2022 09:29:38 +0800
From: kernel test robot <lkp@intel.com>
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: Re: [v4 2/3] phy: qcom-snps: Add support for overriding phy tuning
 parameters
Message-ID: <202205120931.JrA2orb3-lkp@intel.com>
References: <1652282793-5580-3-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652282793-5580-3-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_183006_556145_AA978AF9 
X-CRM114-Status: GOOD (  13.27  )
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

Thank you for the patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on krzk/for-next linus/master v5.18-rc6 next-20220511]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Krishna-Kurapati/Add-QCOM-SNPS-PHY-overriding-params-support/20220511-232858
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: riscv-randconfig-r033-20220509 (https://download.01.org/0day-ci/archive/20220512/202205120931.JrA2orb3-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 18dd123c56754edf62c7042dcf23185c3727610f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/48c46f24873c92d3e16904af9e654962d0b923f1
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Krishna-Kurapati/Add-QCOM-SNPS-PHY-overriding-params-support/20220511-232858
        git checkout 48c46f24873c92d3e16904af9e654962d0b923f1
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:541:29: error: initializing 'struct override_param_map *' with an expression of type 'const void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
           struct override_param_map *cfg = of_device_get_match_data(dev);
                                      ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +541 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

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
