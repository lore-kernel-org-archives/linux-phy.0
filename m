Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 307E5C43334
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jun 2022 03:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KzOQPeJgy0YYeGNk4oZtqkG201MVB9VcFvM8xELObo=; b=XnwB5Q0xIOsskS
	S19+/Ewlzg9Bcpy5lKYLkF0xCeUmP65jRmXZn08nBbH3ickNYzl4rhAV7MtQH1Ye/PnQ6hbBrpevn
	QXCNnD+HWWxsprTzSmGxI4mhQ9EsX07vcC1c4hVtrQK5CIAekcxtqY+TZGr6k9QW4iSwALIMSvzk4
	8ggjExFE+gO81bvFy0ZkAikfx4FwNrRoy780cf1KffmjEk6Sn4mn6ClwcTncrYrt9/x29nYckDlmE
	J8cFN5pUrYOyrLNfb7TJn8gPRWDwbXlH8lWPRJ4WX/7/g/Gi7giZGTC4CRT3YlosGm5cJbMnVGlsa
	vYKCCN6FdSapnpREiZfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ok3-00ABDq-Is; Sat, 18 Jun 2022 03:03:19 +0000
Received: from mga09.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ojr-00AB6M-Hi; Sat, 18 Jun 2022 03:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655521387; x=1687057387;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=u1YpkbtOcUOCaYwksF0M3zdyzUGActOf3AeMErr9Tsk=;
  b=ArW/IIczv2XGxlozAANxXDL6PPCNB+oCYKzP2HIj7WmSiAlvn/2nHlOP
   4th71OUf4JvIE6RfkHT6yFYkHDk0MfGDaysKJMBI6s+BR1STCdfgB0Dfj
   7JJqKaDustYyItQPn0IkHAjQnK7xYVSI/cWx+TK65n4HtTkvojVmETNtm
   oTMJi2IMjnSWWfXIieFyZ4UrZaJ8yBI/IMbzrWDGPJ8prhUWmumXwU3lp
   KaX+7P+noG7tUupOkuMALsFjx8oUVWNautvkchNmtFWWt91G98Sn3gpOa
   hyWKk/+Q8ouI9k3Br5aW2stc1UXReW0Hh/anfKh846DiPNZV16bcjDdLq
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280357414"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="280357414"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2022 20:03:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="653869079"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 17 Jun 2022 20:03:03 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o2Ojm-000PyF-Bw;
	Sat, 18 Jun 2022 03:03:02 +0000
Date: Sat, 18 Jun 2022 11:02:18 +0800
From: kernel test robot <lkp@intel.com>
To: Sean Anderson <sean.anderson@seco.com>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org
Cc: kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Paolo Abeni <pabeni@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Eric Dumazet <edumazet@google.com>,
	Sean Anderson <sean.anderson@seco.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next 03/28] phy: fsl: Add QorIQ SerDes driver
Message-ID: <202206181015.BLEIZObf-lkp@intel.com>
References: <20220617203312.3799646-4-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617203312.3799646-4-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_200307_645193_EBA5CFB9 
X-CRM114-Status: GOOD (  12.18  )
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

Hi Sean,

I love your patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Sean-Anderson/net-dpaa-Convert-to-phylink/20220618-044003
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 4875d94c69d5a4836c4225b51429d277c297aae8
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20220618/202206181015.BLEIZObf-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/d9c7b1e909ace0c4229445647587ae1f64cf52c0
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sean-Anderson/net-dpaa-Convert-to-phylink/20220618-044003
        git checkout d9c7b1e909ace0c4229445647587ae1f64cf52c0
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=sh SHELL=/bin/bash drivers/net/ethernet/freescale/fman/ drivers/phy/freescale/ net/ipv6/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/phy/freescale/phy-qoriq.c:382:16: warning: no previous prototype for 'qs_clk_hw_to_priv' [-Wmissing-prototypes]
     382 | struct qs_clk *qs_clk_hw_to_priv(struct clk_hw *hw)
         |                ^~~~~~~~~~~~~~~~~


vim +/qs_clk_hw_to_priv +382 drivers/phy/freescale/phy-qoriq.c

   381	
 > 382	struct qs_clk *qs_clk_hw_to_priv(struct clk_hw *hw)
   383	{
   384		return container_of(hw, struct qs_clk, hw);
   385	}
   386	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
