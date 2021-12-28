Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2925AC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 14:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiGgQUEuWUkae8zsks695aY5vKHlZ6z7wawXc8Gm1Dg=; b=KuoawIn1ntvBBh
	HKjMJRmkv92O3FqIendKMEVLz/1C/a4LQY/DzliMzNd8a6sQnaicxRPFC0hQdr6nNqsoeOJfiuzrV
	O5Ori52swKP9eL7jrJat96ih9459z1fNXbcLf5niA+0syg1zBgZUELjxQGgGdsPosTK5i973JcCXy
	a/UpzPg2FcSdI+YCp/HeE6YlaxKlBfzJ1ZIY/aKewGifpOegqp03FGmHf8+Xhjhg7isNMCgLlEfKQ
	fUwhUFtU8ElHOho5obCqdaU7lZo2igG8QIZPXWfGyB9Dmj0PJnEc9s7R2Ufef5/OIeYr2lQt8N9Ej
	ErRkfcwr+5PQjQnq+Inw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2D1T-0015ld-B1; Tue, 28 Dec 2021 14:00:15 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2D1Q-0015ku-M7
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 14:00:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640700012; x=1672236012;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BQO7BYOZldJkPRdIMtnTnMhArKnvAqURyNkBwAwY9Vg=;
 b=UZLkwkUrbpTMTTQGpaa9AlXqGplvCYVIgYlBLXY2AteKjmU51S+WY4wA
 CdMuC3OxtANCcg2Mp+vUlk+as3yGM6bkNL5D96zFYVQfsl1Z64DS+iEK5
 n+ekT5MLJ5DVmqDMglhkxImSWupJjgXRHnTbeFasw78OZKIYZdm1bTi8h
 gZjd2Fems5oXIyLBXVKfl49Njph3ZNophie9PIh9hzTtJassIM95f5Tdc
 n0qpcVQu559GDkhCClhMc4t7oA1hPnA+4QidWqaBWdctZcsY7WgAEXGAq
 C4s57ifbXHl1JftMVD08+KejGVimt1MsWPh/DW4lShyXXPUWNPL/8EcY6 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="304727122"
X-IronPort-AV: E=Sophos;i="5.88,242,1635231600"; d="scan'208";a="304727122"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 06:00:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,242,1635231600"; d="scan'208";a="615651315"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 28 Dec 2021 06:00:05 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2D1J-0007bo-6B; Tue, 28 Dec 2021 14:00:05 +0000
Date: Tue, 28 Dec 2021 21:59:08 +0800
From: kernel test robot <lkp@intel.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: kbuild-all@lists.01.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 2/8] phy: qcom-qmp: Register typec mux and orientation
 switch
Message-ID: <202112282120.JleedcIB-lkp@intel.com>
References: <20211228052116.1748443-3-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211228052116.1748443-3-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_060012_796463_76E007D3 
X-CRM114-Status: GOOD (  11.83  )
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

Hi Bjorn,

I love your patch! Yet something to improve:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on robh/for-next driver-core/driver-core-testing linus/master v5.16-rc7 next-20211224]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Bjorn-Andersson/typec-mux-Introduce-support-for-multiple-TypeC-muxes/20211228-132045
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: arc-randconfig-r043-20211228 (https://download.01.org/0day-ci/archive/20211228/202112282120.JleedcIB-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/db0b002b5b2e1055b2df7b430438335a75dc1557
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Bjorn-Andersson/typec-mux-Introduce-support-for-multiple-TypeC-muxes/20211228-132045
        git checkout db0b002b5b2e1055b2df7b430438335a75dc1557
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_remove':
>> phy-qcom-qmp.c:(.text+0x37e): undefined reference to `typec_mux_unregister'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x37e): undefined reference to `typec_mux_unregister'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x384): undefined reference to `typec_switch_unregister'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x384): undefined reference to `typec_switch_unregister'
   arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_probe':
>> phy-qcom-qmp.c:(.text+0x14bc): undefined reference to `typec_switch_register'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14bc): undefined reference to `typec_switch_register'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14e2): undefined reference to `typec_mux_register'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14e2): undefined reference to `typec_mux_register'
   arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14f6): undefined reference to `typec_switch_unregister'
   arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14f6): undefined reference to `typec_switch_unregister'
   arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_typec_switch_set':
>> phy-qcom-qmp.c:(.text+0x18f0): undefined reference to `typec_switch_get_drvdata'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x18f0): undefined reference to `typec_switch_get_drvdata'
   arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_typec_mux_set':
>> phy-qcom-qmp.c:(.text+0x1962): undefined reference to `typec_mux_get_drvdata'
>> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x1962): undefined reference to `typec_mux_get_drvdata'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
