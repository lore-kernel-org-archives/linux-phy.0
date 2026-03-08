Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D235F55106
	for <linux-phy@archiver.kernel.org>; Sun,  8 Mar 2026 02:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smGUieZxW8+expbupzHSfmQwXdo+GcSDoAzWeskJRJg=; b=Ry41ANtxs70ys9
	c1R4EH8D/T7RTlMPAONe4Tk+1YJaig8n7LEmNosQna++/Bescn4FwvOSMeadEFLw5QcRxa5e833qD
	Jd0nNKih1wSlUEJfeCIKO5E7PAMqbHX68VjTboef1FOe6Sf5vR16gPWKxUBks2EtCJhqxsqEQINQv
	a+JRM6f5n1RGLKpjSXfYfYWtR5OpYR+ncCHezQmn2pwqKOuy1/3L+EX3gp6AEvbemxPYeGYuZPSTf
	Ac9CZbc/2+9WuvQGQ2C0DdcWkwwvsS7A6B9+zVu9Tylu0lP9b/YPMip6TQvrbBGYzU1SIqEFWg00I
	83yuIKv2Q7O4y98lLiRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vz3Xb-00000005deu-1jzt;
	Sun, 08 Mar 2026 02:06:47 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vz3XU-00000005deX-2rH3
	for linux-phy@lists.infradead.org;
	Sun, 08 Mar 2026 02:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772935601; x=1804471601;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=giRqWk7pth7htlw/kAdoXs6485fAk6mlmbYY0pBBaUw=;
  b=cGwt6mlgX0Fs60aEgnRB1NoI2hXhDpi462T/Xy1VFhxgODMCXKqqrbtX
   T2lMIFIGJQ4pDl+0kyyceYmzhxvZE/4SeVnqpjwMzlJTXAK0cMSQEfNCC
   jo9HroCUaFk1fLTe3//ceDq/r2jirCigT8EMztnNVNxRJAKLEfxoz7JRz
   tr+5vH0WvSh9OKtVz0srawx+BMbKchIJpa2PfdYqoNN6q+pp4P340PJh7
   lEhyCCfAKTxqYSnETR8HNKc/nCcfinBSZGC4eZgmU1TYGI/NZvfLDhf0u
   r8oD4NZ6xfJXKFp8r12lW/cQzz4AGbCFSd7qWZhN3eAEpzr98e2AZKrXq
   w==;
X-CSE-ConnectionGUID: gsqPcgLAQG6Mr8p6Iaog0A==
X-CSE-MsgGUID: rwboOql0RPakQ3Ix9Sgy1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="73698373"
X-IronPort-AV: E=Sophos;i="6.23,107,1770624000"; 
   d="scan'208";a="73698373"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2026 18:06:37 -0800
X-CSE-ConnectionGUID: twwjLKsfTKSm1fOsBzm82g==
X-CSE-MsgGUID: hS775U/kQ0qL7q9xVa9jcA==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO 058beb05654c) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 07 Mar 2026 18:06:34 -0800
Received: from kbuild by 058beb05654c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vz3XL-000000002pF-1fGw;
	Sun, 08 Mar 2026 02:06:31 +0000
Date: Sun, 8 Mar 2026 10:06:29 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <202603081000.NLJ9u8XA-lkp@intel.com>
References: <20260306-macb-phy-v8-1-b5c48ee61402@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260306-macb-phy-v8-1-b5c48ee61402@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260307_180642_685788_0EDEFE83 
X-CRM114-Status: GOOD (  10.62  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Th=E9o,

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20260305]
[cannot apply to linus/master v7.0-rc2 v7.0-rc1 v6.19 v7.0-rc2]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Th-o-Lebrun/phy-Add-=
driver-for-EyeQ5-Ethernet-PHY-wrapper/20260307-034032
base:   next-20260305
patch link:    https://lore.kernel.org/r/20260306-macb-phy-v8-1-b5c48ee6140=
2%40bootlin.com
patch subject: [PATCH v8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
config: arm-randconfig-r111-20260308 (https://download.01.org/0day-ci/archi=
ve/20260308/202603081000.NLJ9u8XA-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 10.5.0
sparse: v0.6.5-rc1
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20260308/202603081000.NLJ9u8XA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603081000.NLJ9u8XA-lkp@i=
ntel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/phy/phy-eyeq5-eth.c:246:14: sparse: sparse: incorrect type in as=
signment (different address spaces) @@     expected void [noderef] __iomem =
*base @@     got void * @@
   drivers/phy/phy-eyeq5-eth.c:246:14: sparse:     expected void [noderef] =
__iomem *base
   drivers/phy/phy-eyeq5-eth.c:246:14: sparse:     got void *

vim +246 drivers/phy/phy-eyeq5-eth.c

   230	=

   231	static int eq5_phy_probe(struct auxiliary_device *adev,
   232				 const struct auxiliary_device_id *id)
   233	{
   234		struct device *dev =3D &adev->dev;
   235		struct phy_provider *provider;
   236		struct eq5_phy_private *priv;
   237		void __iomem *base;
   238		int ret;
   239	=

   240		priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
   241		if (!priv)
   242			return -ENOMEM;
   243	=

   244		dev_set_drvdata(dev, priv);
   245	=

 > 246		base =3D dev_get_platdata(dev);
   247	=

   248		ret =3D eq5_phy_probe_phy(dev, priv, 0, base, EQ5_PHY0_GP,
   249					EQ5_PHY0_SGMII, true);
   250		if (ret)
   251			return ret;
   252	=

   253		ret =3D eq5_phy_probe_phy(dev, priv, 1, base, EQ5_PHY1_GP,
   254					EQ5_PHY1_SGMII, false);
   255		if (ret)
   256			return ret;
   257	=

   258		provider =3D devm_of_phy_provider_register(dev, eq5_phy_xlate);
   259		if (IS_ERR(provider))
   260			return dev_err_probe(dev, PTR_ERR(provider),
   261					     "registering provider failed\n");
   262	=

   263		return 0;
   264	}
   265	=


-- =

0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
