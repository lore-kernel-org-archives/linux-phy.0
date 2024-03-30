Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6967EC6FD1F
	for <linux-phy@archiver.kernel.org>; Sat, 30 Mar 2024 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tYVNFCqPa2V+k7F4Q9Cm2xEeaoqTFS0fGwDe4RKctg=; b=Qm3hEZMwjPp+8c
	NEnHOqvrM5peTQc9TXE2tAg9NHch3eJWcQyM/Z3FT5NaRIOe3r0M4JNbkMYDwLohOWDwqAKF9nPS3
	VNX4pcZ5pHvhWw4dVwKDLEffeQaS2TQ1bNEQC4Jsiir2T+wOsXBm2k89pVckriZ32o4grSSf318qj
	wskvHztddN4Nxju/dbj9v5i77MzD53K8VeA58siPqK3cUAvKCumljz5lnHLnAHeiCHuVpTwbS22wU
	G8LeRK9mcZu+m/++Z6imwmJxAKhxFuoCz+u5xlq9Uzfbeu8roXgPai7j4uU5TUWDhdlS9LiyZwmt4
	AGg5SCe5s44cXXgIVDkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqMwO-00000002Raz-3zLi;
	Sat, 30 Mar 2024 00:51:24 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqMwL-00000002RaU-1gsM;
	Sat, 30 Mar 2024 00:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711759882; x=1743295882;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ODnfLfkBj5ljw1xXMK6fJA76YDJnmnHivymq9LFP4Do=;
  b=MlVy04awwg7/GsedQ8HOS1q81vVkHIHleKV/5KKccVj6w6DOkHGXD0rL
   LQzfS+RzqI0V8E82uwOiDIBUCdRzLSu1zrL+0q+VzxCJILjySG/o4fAXv
   W+FAtqhKl/cylbVv6ahkepmJToELgx8ynij/J/uJVYgblq5UkEzmDrJwh
   thJuOhaJGIc7Us23qNW7pnPqmOdK2qqfGcmfzhkvArfp5ejKy1zBfuTWQ
   ByK0kMnf8GIaacTLeXLCzdNNqPO/TTHnuGbsfxV6xjWTFeE84jS2FEIaF
   VkeJ7uCSL8z2Y3gvCeQYNVVD1BlSguzUcrGoPC6jof+UxqgPuU8JAErpR
   g==;
X-CSE-ConnectionGUID: 56mziidnRNadErmltt5LMg==
X-CSE-MsgGUID: NELJWee3RT++m0pcrLKVpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="6893846"
X-IronPort-AV: E=Sophos;i="6.07,166,1708416000"; 
   d="scan'208";a="6893846"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2024 17:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,166,1708416000"; 
   d="scan'208";a="16950694"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
  by orviesa010.jf.intel.com with ESMTP; 29 Mar 2024 17:51:14 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rqMwB-0003ny-14;
	Sat, 30 Mar 2024 00:51:11 +0000
Date: Sat, 30 Mar 2024 08:51:08 +0800
From: kernel test robot <lkp@intel.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, frank.li@nxp.com
Cc: oe-kbuild-all@lists.linux.dev, hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v1 3/3] phy: freescale: imx8q-hsio: Add i.MX8Q HSIO PHY
 driver support
Message-ID: <202403300825.mjcHpoRu-lkp@intel.com>
References: <1711699790-16494-4-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1711699790-16494-4-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_175121_562163_73998FCA 
X-CRM114-Status: GOOD (  12.56  )
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

Hi Richard,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.9-rc1 next-20240328]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Richard-Zhu/dt-bindings-phy-Add-i-MX8Q-HSIO-SerDes-PHY-binding/20240329-162937
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/1711699790-16494-4-git-send-email-hongxing.zhu%40nxp.com
patch subject: [PATCH v1 3/3] phy: freescale: imx8q-hsio: Add i.MX8Q HSIO PHY driver support
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20240330/202403300825.mjcHpoRu-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240330/202403300825.mjcHpoRu-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403300825.mjcHpoRu-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/phy/freescale/phy-fsl-imx8q-hsio.c: In function 'imx8q_hsio_set_mode':
>> drivers/phy/freescale/phy-fsl-imx8q-hsio.c:367:15: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
     367 |         val = FIELD_PREP(MODE_MASK, val);
         |               ^~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/FIELD_PREP +367 drivers/phy/freescale/phy-fsl-imx8q-hsio.c

   355	
   356	static int imx8q_hsio_set_mode(struct phy *phy, enum phy_mode mode,
   357					   int submode)
   358	{
   359		u32 val;
   360		struct imx8q_hsio_lane *lane = phy_get_drvdata(phy);
   361		struct imx8q_hsio_priv *priv = lane->priv;
   362	
   363		if (lane->lane_mode != mode)
   364			return -EINVAL;
   365	
   366		val = (mode == PHY_MODE_PCIE) ? MODE_PCIE : MODE_SATA;
 > 367		val = FIELD_PREP(MODE_MASK, val);
   368		regmap_update_bits(priv->phy, lane->phy_off + CTRL0, MODE_MASK, val);
   369	
   370		switch (submode) {
   371		case PHY_MODE_PCIE_RC:
   372			val = FIELD_PREP(DEVICE_TYPE_MASK, PCI_EXP_TYPE_ROOT_PORT);
   373			break;
   374		case PHY_MODE_PCIE_EP:
   375			val = FIELD_PREP(DEVICE_TYPE_MASK, PCI_EXP_TYPE_ENDPOINT);
   376			break;
   377		default: /* Support only PCIe EP and RC now. */
   378			return 0;
   379		}
   380		if (submode)
   381			regmap_update_bits(priv->ctrl, lane->ctrl_off + CTRL0,
   382					   DEVICE_TYPE_MASK, val);
   383	
   384		return 0;
   385	}
   386	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
