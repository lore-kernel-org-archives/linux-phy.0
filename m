Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D28DC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 08:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4l6bXh+wXg0MgkO0ODtoligRrszyX4TPTSrcLqEIVk=; b=O9SmUJg/jLN1kS
	AHIkIFlrRQ/YE8sl4IdzgG7QTuScVqaQJWTTbU9mXaSeUEHjGNzjzdv+506lPyM17ReOdZOpx/i5B
	WsNTJ8jZs+2I7596GwAdvzOJSoMn6yHnneNt/hTs1grb53d5+gusPoQ+3J2a6XHRhS22xGbPtb340
	TQAt1skzlYkmItCD4aNyhTbvIJpck6E8JNQrYtaxvNavK6ILoFSxK65tKWL4km5X9DF6O5ls9/qXO
	ZJXwPCeP88DI0FCjYXY03cqueSzFgz7DzY2t2/SCb+LRUo/Lzxep9rXIrOLy0Kqt6PkttYpc56xHv
	Ji+4aXIViZro8qJRPFVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhoG9-00H5Tz-6R; Fri, 22 Apr 2022 08:03:21 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhoCN-00H3SS-9q; Fri, 22 Apr 2022 07:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650614367; x=1682150367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VNrOIsgR/2M+tjpgcaLOR6tT5XMMHe+vpYMTNT8yqJE=;
 b=bIlvtc2AR3H3fbtRFsErSn4zN1vtfsejQwgjxyqe90bQMzU2hpei9KIv
 OUWiRIficPyHDNZsM6M3tKqF0TFq/1ithQNIoQ4zONxb10pfLOeynp9Qs
 v5N4AWfVScz8cxW/xN559/MSHk1PewxPMPe/IxTq4jBT1awojAQcGA6VH
 FX3UtElfItkSiMB0olncRm5b5WBmIwHJoWNwNtVH7MUou7d9CTuJ8hEEq
 yKAXGwDKDyjk5hBraXk9+gS0y8a+faJPsde3dgt6ZYK3G61+Jr1617lzX
 V4jNjBN4/EL8jpAIKdDXmyfCkjqZz8fu0a5vgWgVI1+cRlZHzZpEKsacn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="251936585"
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="251936585"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 00:59:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="648522037"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Apr 2022 00:59:19 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nhoCF-0009uY-1P;
 Fri, 22 Apr 2022 07:59:19 +0000
Date: Fri, 22 Apr 2022 15:58:33 +0800
From: kernel test robot <lkp@intel.com>
To: Jianjun Wang <jianjun.wang@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: kbuild-all@lists.01.org, Wei-Shun Chang <weishunc@google.com>,
 Jianjun Wang <jianjun.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 rex-bc.chen@mediatek.com, randy.wu@mediatek.com,
 jieyy.yang@mediatek.com, chuanjia.liu@mediatek.com,
 qizhong.cheng@mediatek.com, jian.yang@mediatek.com
Subject: Re: [PATCH v6 2/2] phy: mediatek: Add PCIe PHY driver
Message-ID: <202204221513.SZZHW8dq-lkp@intel.com>
References: <20220422041125.12732-3-jianjun.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422041125.12732-3-jianjun.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_005927_465297_33E7DDD2 
X-CRM114-Status: GOOD (  14.68  )
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

Hi Jianjun,

I love your patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v5.18-rc3 next-20220421]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Jianjun-Wang/phy-mediatek-Add-PCIe-PHY-driver/20220422-121407
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20220422/202204221513.SZZHW8dq-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/c2ea770ff29995df64bc82ad12ece5b671415a62
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jianjun-Wang/phy-mediatek-Add-PCIe-PHY-driver/20220422-121407
        git checkout c2ea770ff29995df64bc82ad12ece5b671415a62
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross W=1 O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/phy/mediatek/phy-mtk-pcie.c: In function 'mtk_pcie_efuse_set_lane':
>> drivers/phy/mediatek/phy-mtk-pcie.c:92:29: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
      92 |                             FIELD_PREP(EFUSE_LN_TX_PMOS_SEL, data->tx_pmos));
         |                             ^~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/FIELD_PREP +92 drivers/phy/mediatek/phy-mtk-pcie.c

    78	
    79	static void mtk_pcie_efuse_set_lane(struct mtk_pcie_phy *pcie_phy,
    80					    unsigned int lane)
    81	{
    82		struct mtk_pcie_lane_efuse *data = &pcie_phy->efuse[lane];
    83		void __iomem *addr;
    84	
    85		if (!data->lane_efuse_supported)
    86			return;
    87	
    88		addr = pcie_phy->sif_base + PEXTP_ANA_LN0_TRX_REG +
    89		       lane * PEXTP_ANA_LANE_OFFSET;
    90	
    91		mtk_phy_update_bits(addr + PEXTP_ANA_TX_REG, EFUSE_LN_TX_PMOS_SEL,
  > 92				    FIELD_PREP(EFUSE_LN_TX_PMOS_SEL, data->tx_pmos));
    93	
    94		mtk_phy_update_bits(addr + PEXTP_ANA_TX_REG, EFUSE_LN_TX_NMOS_SEL,
    95				    FIELD_PREP(EFUSE_LN_TX_NMOS_SEL, data->tx_nmos));
    96	
    97		mtk_phy_update_bits(addr + PEXTP_ANA_RX_REG, EFUSE_LN_RX_SEL,
    98				    FIELD_PREP(EFUSE_LN_RX_SEL, data->rx_data));
    99	}
   100	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
