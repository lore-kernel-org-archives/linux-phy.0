Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E5B7C61DA4
	for <linux-phy@archiver.kernel.org>; Wed, 15 Mar 2023 12:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRWwgZQwi8oTR6giqk+oawtJ2jax2aRZvj1oOfXrzPg=; b=B5ZK+76/nX0jhQ
	KiKgxWOem9i9BEvu4pVbbgIHzJGus7vWWjm0PxdM9rxlL5dRAaeYE7JGBEkTj0CVbVLWjW+SrtXRb
	VrK/fc2c/KoSzuat+wUrqNYMeOkDLe992HWQRl4O7i4zR/02+oiyiE4AKGBQmgFYtMDCNllG48lhi
	3eZk1G6gV3ND43hIx0indW5YO2cxw3lJ/YGnNalu2mhr7jnU8lxXD+3MopNCR8xNRwtaXcGpXXbkx
	rwcuMs+pp/urS8p43cOFSjGS/YUZLYjYmd1vb455DphWJsmOFImrEIjAqkIWzImgn9vBfj9m/+O+P
	hhOm40pihj5ndPFCC0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcQAc-00DKRN-2Y;
	Wed, 15 Mar 2023 12:23:54 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcQAZ-00DKQi-38;
	Wed, 15 Mar 2023 12:23:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678883031; x=1710419031;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sqa5ETRPA8mWWtxvPChxrgVub4MEZRvt0xOoJBar2EI=;
  b=ir+5TrpnEv5o0t+4E6Qc5DgP49bbyAMZo9ailYwVHJsle6Oz693CLwR6
   bk7SME2o8UqL7AjoaUQphUU0/DtNM+qE6V2zsUKOqpM6L3rUeEPKvoOB0
   WJskOogtDw/JCCf6TSN/nSwNlf5QYtMJlV8tYgEBmqGzohIvTNAsRdmwT
   6Ul+wWGmJMfTb5hn1VWDuQjTusc2gWZuPjp3GNfZB16sW82y29EmnaAm1
   MTctZxenbYdHOKHfpeRbVNW7FMU0K/K+cgFu6j/CIDKeVcw03PUTo40pC
   L/lqXjr2H35lK1/0+9hEJ0lkLzMOJCOVmmJsMX6Y+fe5TFCl+BKUX0mQw
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="335171853"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="335171853"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 05:23:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="768464686"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="768464686"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2023 05:23:46 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pcQAT-0007f8-0r;
	Wed, 15 Mar 2023 12:23:45 +0000
Date: Wed, 15 Mar 2023 20:23:24 +0800
From: kernel test robot <lkp@intel.com>
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org
Cc: oe-kbuild-all@lists.linux.dev, Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org,
	Sean Anderson <sean.anderson@seco.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?iso-8859-1?Q?Fern=E1ndez?= Rojas <noltari@gmail.com>,
	Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
Message-ID: <202303152008.kxRjSW73-lkp@intel.com>
References: <20230313161138.3598068-4-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230313161138.3598068-4-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_052352_027768_226DF51A 
X-CRM114-Status: GOOD (  13.69  )
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

[auto build test WARNING on shawnguo/for-next]
[also build test WARNING on brgl/gpio/for-next clk/clk-next linus/master v6.3-rc2 next-20230315]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sean-Anderson/dt-bindings-phy-Add-2500BASE-X-and-10GBASE-R/20230314-001522
base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
patch link:    https://lore.kernel.org/r/20230313161138.3598068-4-sean.anderson%40seco.com
patch subject: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
reproduce:
        # https://github.com/intel-lab-lkp/linux/commit/2d1e86be168e32ea3d3f11325881f7cb1e5492f8
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sean-Anderson/dt-bindings-phy-Add-2500BASE-X-and-10GBASE-R/20230314-001522
        git checkout 2d1e86be168e32ea3d3f11325881f7cb1e5492f8
        make menuconfig
        # enable CONFIG_COMPILE_TEST, CONFIG_WARN_MISSING_DOCUMENTS, CONFIG_WARN_ABI_ERRORS
        make htmldocs

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303152008.kxRjSW73-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6318-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>> Warning: Documentation/devicetree/bindings/mfd/brcm,bcm63268-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>> Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6328-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>> Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6358-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>> Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6362-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>> Warning: Documentation/devicetree/bindings/mfd/brcm,bcm6368-gpio-sysctl.yaml references a file that doesn't exist: Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
