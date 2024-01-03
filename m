Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80A6AC3DA6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 18:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYZQqOFxRydAFR4tvoZzQfr/Dwq0PPsZxA6llKIbVpc=; b=DqDcFSZ/rYo44K
	R0kamYWTz0pv5eXQ/uOK4WtUTd6kHahvyioJgw7lY0zg35cE9pjBW1K9pxB3rtIVcHLCuqRmJQLnG
	JVGMFqn9S/vBQxncWWd+YsfTmeOHJplrxw7wDsDWfP6hNSDaaQHSFl3uosb2CHEx4cx6usahn7CYs
	y614HSt4mUPVufEYic/neNHScWdy6EU19H82s1WdmqRgj897iiaIgBVWRwXXp5g9PXHKGPP3OAooU
	s5qkv4xwPM9gDpmf8l6Nv6K/yyHbEDcfulTeNg/RS/sm+DjKTc7KhCA3aG2YwKrQ/yJ5X4kOPVUiV
	EqbusjWh7oAHZ8jwmK5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5wB-00BgZc-0q;
	Wed, 03 Jan 2024 18:25:55 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL5w7-00BgYs-2l
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 18:25:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1704306352; x=1735842352;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xTyozBGsJ68X6VYIDd0NVpbOWs1o6mrsQLngawoY/Og=;
  b=ao+ZXOop3h0hZMUIXVwXt49hlkdcCVNcltHBIygOtMXngwcCt20DvzHZ
   HKPNToHB3gCGUPbVdtOdxcxdx3Gdmh4ZfvmtaYjDbkq+t8cTjtQFwWi9m
   nUbJKbTeegQuOJDtRQPumteAr3UZYYOZ11hp7ctJThbyu/0s7FbrWbzCo
   NvHDh9fH4Ez2bTEkPwKalnCOXRbUO59z2hE8GurYvoXp4aQv36kEpI0VU
   28FE51KcVKjuxqa4kTg9OkqpYKMefaBdCbljIbwKpfoUDFwTNRZH5QsXb
   D4wV0A9nIYbA/Znk/UrT7Ywdu22o6BsqLr1qKgralkGM7xCHQPArhn3Vx
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="10641298"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; 
   d="scan'208";a="10641298"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jan 2024 10:25:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773208655"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; 
   d="scan'208";a="773208655"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 03 Jan 2024 10:25:46 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rL5vz-000MQw-2u;
	Wed, 03 Jan 2024 18:25:43 +0000
Date: Thu, 4 Jan 2024 02:25:13 +0800
From: kernel test robot <lkp@intel.com>
To: Yajun Deng <yajun.deng@linux.dev>, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Cc: oe-kbuild-all@lists.linux.dev, andrew@lunn.ch, olteanv@gmail.com,
	hkallweit1@gmail.com, linux@armlinux.org.uk,
	rmk+kernel@armlinux.org.uk, kabel@kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, Yajun Deng <yajun.deng@linux.dev>
Subject: Re: [PATCH net-next] net: phy: Cleanup struct mdio_driver_common
Message-ID: <202401040103.bTPaACUE-lkp@intel.com>
References: <20231228072350.1294425-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231228072350.1294425-1-yajun.deng@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_102551_914696_B1B4A5A7 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

Hi Yajun,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Yajun-Deng/net-phy-Cleanup-struct-mdio_driver_common/20231228-152806
base:   net-next/main
patch link:    https://lore.kernel.org/r/20231228072350.1294425-1-yajun.deng%40linux.dev
patch subject: [PATCH net-next] net: phy: Cleanup struct mdio_driver_common
config: s390-randconfig-002-20240103 (https://download.01.org/0day-ci/archive/20240104/202401040103.bTPaACUE-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240104/202401040103.bTPaACUE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401040103.bTPaACUE-lkp@intel.com/

All errors (new ones prefixed by >>):

   s390-linux-ld: drivers/net/phy/mdio_bus.o: in function `mdio_bus_match':
>> mdio_bus.c:(.text+0xecc): undefined reference to `is_phy_driver'
   s390-linux-ld: drivers/net/phy/mdio_device.o: in function `mdio_device_bus_match':
>> mdio_device.c:(.text+0x934): undefined reference to `is_phy_driver'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
