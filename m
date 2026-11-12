Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F67D606A324
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 00:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k34Ii5HJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=J968iNty
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5Lp4YKN30eqMz+/YcacS+zlIdO7PChoKv4JymRGrMyc=; b=k34Ii5HJ0VgO29yk9uhiWv9aZd
	Z36l6YBEyBZhm9fZ8D7yU+Az0dR3H8caMvoZoiMvnSXdZLb0rLVqXrOMmjmlorCPuKC6PrFcPoXV3
	wnZ9x2d7cDaVkA6U1qTXonGquDLgnoFjsMbZMTr6TSyH0dfi/T7C9SKuBuy868iG6cAwo4fILtMbH
	w8CgqTb6srvekmnGaNU3hsq7sT9JbViSOBzwHGaonT6+M1MjQoZeaKEoSQ+PBNAyJEhbiUUwIl2qy
	mCxgPs/SDfyR0OCor2jrKKldWVOGkvm7fCksP2Y3354PdhH4kSzBPbY1OPjoR46MeLpZGiV/ZCv8E
	lfrK67nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRIsJ-00000008Gnt-2YVK;
	Thu, 12 Nov 2026 00:41:11 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRIsF-00000008Gmc-0EbB
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 00:41:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794444067; x=1825980067;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4uJfis9jIEhjxc17iF7LaSJGR1dtbAC0EB7+KB9AUhk=;
  b=J968iNtyzXbyIwhX9DOwEng41v1/TZ3SNr7ort1VWxt/LaA9x/kZf7O5
   HThQU2Vbv3+sJTbXLa35SdbT9Aku+xrWU9velqofeDOLjse685ieTPr+o
   5Myid+XuO2TknH68qmtje6gXBtJIVAieTBkT/5TKdsFCdz/0+KuiAO70l
   wM0qzTKCHfDqGrFIri97dIqPSEG3GtUCPRWsrWXyNNnvy7Etn90jviJOt
   6QrxYImGmwn5ZffRTDGXhrCjHa5pKA0ckMVvfg2UMlAamOiXq8yKd2vv5
   bHGEUyaqUPfBF35+6aXfK1Y+n5TOzGMS/mlFdrzvsZma2qj7Q/C9VmDag
   A==;
X-CSE-ConnectionGUID: kBTeUlOPRp6mBD7uOk0vxw==
X-CSE-MsgGUID: E94ULx6LQV+kO6WLosJdDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11963"; a="3103051"
X-IronPort-AV: E=Sophos;i="6.27,208,1787036400"; 
   d="scan'208";a="3103051"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Nov 2026 16:41:06 -0800
X-CSE-ConnectionGUID: Ur78ar/STFG8P5N+655ZiA==
X-CSE-MsgGUID: wu/saDbJQCmymWk1qTGM/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,208,1787036400"; 
   d="scan'208";a="8489130"
Received: from lkp-server01.sh.intel.com (HELO 0caa9d2d175c) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 11 Nov 2026 16:41:02 -0800
Received: from kbuild by 0caa9d2d175c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1xRIs7-0000000106l-0m9c;
	Thu, 12 Nov 2026 00:40:59 +0000
Date: Thu, 12 Nov 2026 08:40:35 +0800
From: kernel test robot <lkp@intel.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] phy: qcom: qusb2: Add charger detection support
Message-ID: <202611120841.GECRO9c3-lkp@intel.com>
References: <20261111-shikra-qusb2-charger-det-v1-2-5a9d919c66b5@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261111-shikra-qusb2-charger-det-v1-2-5a9d919c66b5@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_164107_186051_6CD88353 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krishna,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4]

url:    https://github.com/intel-lab-lkp/linux/commits/Krishna-Kurapati/dt-bindings-phy-qcom-qusb2-Add-support-for-remote-endpoints/20261111-230126
base:   6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
patch link:    https://lore.kernel.org/r/20261111-shikra-qusb2-charger-det-v1-2-5a9d919c66b5%40oss.qualcomm.com
patch subject: [PATCH 2/2] phy: qcom: qusb2: Add charger detection support
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20261112/202611120841.GECRO9c3-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 16.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20261112/202611120841.GECRO9c3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202611120841.GECRO9c3-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'is_phy_enabled' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'vbus_active' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'id_state' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'usb_psy' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'port_det_w' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'port_state' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'dcd_timeout' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'dcp_charger' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'connector_role_sw' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'controller_role_sw' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'current_role' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'role_lock' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'is_phy_enabled' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'vbus_active' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'id_state' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'usb_psy' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'port_det_w' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'port_state' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'dcd_timeout' not described in 'qusb2_phy'
>> Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'dcp_charger' not described in 'qusb2_phy'
   Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'connector_role_sw' not described in 'qusb2_phy'
   Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'controller_role_sw' not described in 'qusb2_phy'
   Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'current_role' not described in 'qusb2_phy'
   Warning: drivers/phy/qualcomm/phy-qcom-qusb2.c:552 struct member 'role_lock' not described in 'qusb2_phy'

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
