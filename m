Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D5F6ECAAA1
	for <linux-phy@archiver.kernel.org>; Wed, 31 Aug 2022 02:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsvnXTM4FIn2Fc+8QDJOl+shQSzxIT72+HbjnvFZWR4=; b=4Y7ZG4yIRGsgjt
	rcM4lBw5Y5QvKzr3S39Et24QzmkiKa8NSfEzR0im88bTCxUknBX5d2j4hycyhvjRD3WF1vgj5dV+Y
	giTtw2jgZ5GiKqxq+Ij7+Y3niv+kHgMakXnafVxmJZflrkOMtQbzCNpWTk7I1oEnrgj+rqPFvOcq6
	kKjY0ZK5elrrYFDdyZyd6MTcGHs2XeggQVwaQnuyqhRXbLubMpcBILDS3Wb1+rhBq9VOfvvxqzBA8
	bz/cZHkIKzJpIZOeCDJ1xMJtwAQsc6nWkBMS8ufkAA3ZzW7V3LYI6GJaxdGMTD1rEsqoH3TPsZKrU
	H51MMjOj0KnVWhYUmk4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTD7I-003Aar-Q3; Wed, 31 Aug 2022 02:06:08 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTD7B-003AYO-KX
	for linux-phy@lists.infradead.org; Wed, 31 Aug 2022 02:06:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661911561; x=1693447561;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cttn7y6UHHWNipIRdPvVFXvVg0LWj2i77s/Uz1a/IWk=;
  b=Yt/8Yw0daLNPIM58+t8BNGwVrq2G4R2j46KvRjD0axd9jchMUvis6wtA
   Xxidq+ZkcHl6tQR543dGO1pRjsu3wn2Q2aZIzEQg5DuuUpAlSVizPThGO
   KydnYmiZNRiNLVAWDguE78QGGrkC0hVA7259FXP5Nb0Tu6Js14fB0cPcP
   3+vd0Afius0gEirBnwg0U0QJQOxL1RHDBVFYT4jstuuyaNfP1DaJi/n4I
   3PK5dIwJmK1cX4VS32YpUoBm3n4qA5C3okZ9v7vPyz2yCAIHQ8YEerfh9
   UrVRHrbUKeeFkwjlyNEFWM9O7nKPqGXo0vRtskVcCYJLpidaAjjM+H1TP
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="275099478"
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; 
   d="scan'208";a="275099478"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Aug 2022 19:05:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; 
   d="scan'208";a="787723001"
Received: from lkp-server02.sh.intel.com (HELO 77b6d4e16fc5) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 30 Aug 2022 19:05:46 -0700
Received: from kbuild by 77b6d4e16fc5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oTD6w-0000rn-0O;
	Wed, 31 Aug 2022 02:05:46 +0000
Date: Wed, 31 Aug 2022 10:04:58 +0800
From: kernel test robot <lkp@intel.com>
To: Sean Anderson <sean.anderson@seco.com>, Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org
Cc: kbuild-all@lists.01.org, linux-doc@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	Vladimir Oltean <olteanv@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	linux-phy@lists.infradead.org,
	"David S . Miller" <davem@davemloft.net>,
	linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
	Sean Anderson <sean.anderson@seco.com>
Subject: Re: [net-next PATCH v2] net: phy: Add 1000BASE-KX interface mode
Message-ID: <202208311035.zXZ42EG5-lkp@intel.com>
References: <20220830214241.596985-1-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220830214241.596985-1-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_190601_710893_00FABA53 
X-CRM114-Status: GOOD (  10.89  )
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

url:    https://github.com/intel-lab-lkp/linux/commits/Sean-Anderson/net-phy-Add-1000BASE-KX-interface-mode/20220831-054425
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 146ecbac1d327e7ed2153cfb3ef880166dc2b312
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20220831/202208311035.zXZ42EG5-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/96d58b1eb1e74558860112250f067f5ff250e31f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sean-Anderson/net-phy-Add-1000BASE-KX-interface-mode/20220831-054425
        git checkout 96d58b1eb1e74558860112250f067f5ff250e31f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sh SHELL=/bin/bash drivers/net/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/net/phy/phy-core.c: In function 'phy_interface_num_ports':
>> drivers/net/phy/phy-core.c:86:9: warning: enumeration value 'PHY_INTERFACE_MODE_1000BASEKX' not handled in switch [-Wswitch]
      86 |         switch (interface) {
         |         ^~~~~~


vim +/PHY_INTERFACE_MODE_1000BASEKX +86 drivers/net/phy/phy-core.c

da4625ac2637e4 Russell King      2017-07-25   76  
c04ade27cb7b95 Maxime Chevallier 2022-08-17   77  /**
c04ade27cb7b95 Maxime Chevallier 2022-08-17   78   * phy_interface_num_ports - Return the number of links that can be carried by
c04ade27cb7b95 Maxime Chevallier 2022-08-17   79   *			     a given MAC-PHY physical link. Returns 0 if this is
c04ade27cb7b95 Maxime Chevallier 2022-08-17   80   *			     unknown, the number of links else.
c04ade27cb7b95 Maxime Chevallier 2022-08-17   81   *
c04ade27cb7b95 Maxime Chevallier 2022-08-17   82   * @interface: The interface mode we want to get the number of ports
c04ade27cb7b95 Maxime Chevallier 2022-08-17   83   */
c04ade27cb7b95 Maxime Chevallier 2022-08-17   84  int phy_interface_num_ports(phy_interface_t interface)
c04ade27cb7b95 Maxime Chevallier 2022-08-17   85  {
c04ade27cb7b95 Maxime Chevallier 2022-08-17  @86  	switch (interface) {
c04ade27cb7b95 Maxime Chevallier 2022-08-17   87  	case PHY_INTERFACE_MODE_NA:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   88  		return 0;
c04ade27cb7b95 Maxime Chevallier 2022-08-17   89  	case PHY_INTERFACE_MODE_INTERNAL:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   90  	case PHY_INTERFACE_MODE_MII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   91  	case PHY_INTERFACE_MODE_GMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   92  	case PHY_INTERFACE_MODE_TBI:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   93  	case PHY_INTERFACE_MODE_REVMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   94  	case PHY_INTERFACE_MODE_RMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   95  	case PHY_INTERFACE_MODE_REVRMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   96  	case PHY_INTERFACE_MODE_RGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   97  	case PHY_INTERFACE_MODE_RGMII_ID:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   98  	case PHY_INTERFACE_MODE_RGMII_RXID:
c04ade27cb7b95 Maxime Chevallier 2022-08-17   99  	case PHY_INTERFACE_MODE_RGMII_TXID:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  100  	case PHY_INTERFACE_MODE_RTBI:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  101  	case PHY_INTERFACE_MODE_XGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  102  	case PHY_INTERFACE_MODE_XLGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  103  	case PHY_INTERFACE_MODE_MOCA:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  104  	case PHY_INTERFACE_MODE_TRGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  105  	case PHY_INTERFACE_MODE_USXGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  106  	case PHY_INTERFACE_MODE_SGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  107  	case PHY_INTERFACE_MODE_SMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  108  	case PHY_INTERFACE_MODE_1000BASEX:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  109  	case PHY_INTERFACE_MODE_2500BASEX:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  110  	case PHY_INTERFACE_MODE_5GBASER:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  111  	case PHY_INTERFACE_MODE_10GBASER:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  112  	case PHY_INTERFACE_MODE_25GBASER:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  113  	case PHY_INTERFACE_MODE_10GKR:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  114  	case PHY_INTERFACE_MODE_100BASEX:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  115  	case PHY_INTERFACE_MODE_RXAUI:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  116  	case PHY_INTERFACE_MODE_XAUI:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  117  		return 1;
c04ade27cb7b95 Maxime Chevallier 2022-08-17  118  	case PHY_INTERFACE_MODE_QSGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  119  	case PHY_INTERFACE_MODE_QUSGMII:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  120  		return 4;
c04ade27cb7b95 Maxime Chevallier 2022-08-17  121  	case PHY_INTERFACE_MODE_MAX:
c04ade27cb7b95 Maxime Chevallier 2022-08-17  122  		WARN_ONCE(1, "PHY_INTERFACE_MODE_MAX isn't a valid interface mode");
c04ade27cb7b95 Maxime Chevallier 2022-08-17  123  		return 0;
c04ade27cb7b95 Maxime Chevallier 2022-08-17  124  	}
c04ade27cb7b95 Maxime Chevallier 2022-08-17  125  	return 0;
c04ade27cb7b95 Maxime Chevallier 2022-08-17  126  }
c04ade27cb7b95 Maxime Chevallier 2022-08-17  127  EXPORT_SYMBOL_GPL(phy_interface_num_ports);
c04ade27cb7b95 Maxime Chevallier 2022-08-17  128  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
