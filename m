Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B09B7C433F5
	for <linux-phy@archiver.kernel.org>; Sun,  8 May 2022 13:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evokxi0oSGiwYV1HBGMx8z9u8CEk/1vb9PzrMk4dU/A=; b=3rlpWlg8fNdq3y
	Keb6QQXBiqUICGA7a+K4Eoir0crqeZEksxeL+CYxpCa4WZJJq2zWc3RM3AT1MqHwr/eX64bF0qMte
	8Un9lyzESHo6UnBWCKw1TPpX8Zhc7nx+MwqLV90qQZU0+a56lPhZdKn/TysFRR46GCEKvwIokZIoN
	H4GX1MBZ5ccc9Z52/a485VmprGZuf27osJQk9MTkab05VrlVBm3kP5isf7EqW4vMdEtooIopmBb8Z
	89xLh7TCv7PbCKfsuSIlOilKqMf70FO8EzPbTvU4pZvigGGQIfccQIG4+Azvqv4TJsc6yMO10Wn/7
	o+p1WpeHuHdNVdlkHV+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nngtD-00AEN9-U4; Sun, 08 May 2022 13:23:59 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nngtA-00AEMQ-E8
 for linux-phy@lists.infradead.org; Sun, 08 May 2022 13:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652016236; x=1683552236;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=psDk1P7wyWAseUdXJBcbmzY0aYvncXmFOfzhn5uJ3xM=;
 b=WHgVS5i9ZOt9++eYXkyvQMsoqRIPgQ+8bfuHKuooRBNW3nHGHN5S/FfK
 KI9p1GPMsl5vLHagsCg+zpnPBaRKZIwIgUHE0P2RyxSVT/0Ix2krH+EGZ
 aw289wTAI3JbCkVtDP6YG+PfWkSgM1Xkpwn2NtGjL1rNxJYEu5uNqehZW
 SGotBAzybvI9Rth0oJJp3WUtf+qJ/8kN0ToHwmxXn/jnZucRxr79UUjpL
 o6QdCBJm1+ktFd8BvyW8XD+f5ciqwu/ZQ9/fVjXEw0JDXpxkTAhEP0k+W
 hTSJxnfOmKJjBKS2fWAVZWD35wyRn5EpAHzNL3b7DxNL3jdH826MoBIow g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="248741901"
X-IronPort-AV: E=Sophos;i="5.91,208,1647327600"; d="scan'208";a="248741901"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 06:23:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,208,1647327600"; d="scan'208";a="622565927"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 08 May 2022 06:23:50 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nngt4-000FVH-16;
 Sun, 08 May 2022 13:23:50 +0000
Date: Sun, 8 May 2022 21:22:50 +0800
From: kernel test robot <lkp@intel.com>
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng <wcheng@codeaurora.org>
Cc: kbuild-all@lists.01.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
 quic_vpulyala@quicinc.com, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: Re: [v3 2/3] phy: qcom-snps: Add support for overriding phy tuning
 parameters
Message-ID: <202205082118.cd3B5WOH-lkp@intel.com>
References: <1652011947-18575-3-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652011947-18575-3-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_062356_564968_4DDEA990 
X-CRM114-Status: GOOD (  12.92  )
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
[also build test WARNING on krzk/for-next linus/master v5.18-rc5 next-20220506]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Krishna-Kurapati/Add-QCOM-SNPS-PHY-overriding-params-support/20220508-201506
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20220508/202205082118.cd3B5WOH-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/4f3771418951e9e3fcb6357959dbd668cdb54fb1
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Krishna-Kurapati/Add-QCOM-SNPS-PHY-overriding-params-support/20220508-201506
        git checkout 4f3771418951e9e3fcb6357959dbd668cdb54fb1
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/phy/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c: In function 'phy_read_param_override_seq':
>> drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:530:33: warning: variable 'hsphy' set but not used [-Wunused-but-set-variable]
     530 |         struct qcom_snps_hsphy *hsphy;
         |                                 ^~~~~


vim +/hsphy +530 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

   524	
   525	static void phy_read_param_override_seq(struct device *dev)
   526	{
   527		struct device_node *node = dev->of_node;
   528		s32 val;
   529		int ret, i;
 > 530		struct qcom_snps_hsphy *hsphy;
   531		struct override_param_map *cfg = (struct override_param_map* ) of_device_get_match_data(dev);
   532		hsphy = dev_get_drvdata(dev);
   533	
   534		for (i = 0; i < ARRAY_SIZE(phy_seq_props); i++) {
   535			ret = of_property_read_s32(node, phy_seq_props[i], &val);
   536			if (!ret)
   537				hsphy_override_param_update_val(cfg[i], val, &update_seq_cfg[i]);
   538		}
   539	}
   540	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
