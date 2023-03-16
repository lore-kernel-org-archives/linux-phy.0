Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56416C6FD1F
	for <linux-phy@archiver.kernel.org>; Thu, 16 Mar 2023 12:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PBz7hMlUIC08PR272mlRcKw12OtmCQPXGUXkEITCnHg=; b=Z78dvuVP5fQsen
	yIOJGatALwn2NnZ0hfiFvdiOPFga327bUtE5dwkqXuW3ambSn4wBosLefHSebCQsnZhsISAECCrWf
	Ug4Tdf7D5O13GyP6XCBMHFTNU5lxMRucIrnGe3O1K0eaURvh+4VCGjmgc2VV57q3nrgujenVy5alW
	gxSrNnnQJIMQ8Uk1X6pGHG/18t/pSwiIex+Mp6Ikj17TwvTrsCyU+1duH/PN974ZoDfhRTfuw7y89
	Zsr+Tb+BLCgYvL5sH4MQmlNwBhwTrzzBLEdLc5aPYFAri0b7coB+G1gbdhdG1H7Eqg+8gKCFNLiBm
	duiSpnO73K4Np3oRrJWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmMz-00GKZV-1r;
	Thu, 16 Mar 2023 12:06:09 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmMu-00GKWx-0R;
	Thu, 16 Mar 2023 12:06:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678968364; x=1710504364;
  h=from:to:cc:subject:date:message-id;
  bh=OzAcioscik7j5ytPlocSBa883d3OO/wP/79fGOzLC2g=;
  b=DHiI9hPKqchX+TcHC4b7Xzcozf4mPMdSsNYvO6JYfdj19u9xkvSy2JAc
   FPUOe0/nOdw93/P0h+efT75M6zF0swLHNCzqLMBhvYuB3iBnvsbWj8sfD
   OzW//oNrN2Y9NNoSJ8qCP4ASHhOaiuqTvoKaEjAXG/Kb04KUy3TGRL2/k
   h/kQB9N1jOHByiL0UFdSv33HNRH8daa+aAirFiGty7bLhhD+6B6L+q5zg
   NO6H0aPDlmCkgY5bSZ1CTF7j0S2nnWYRS244LMrbyvziR6R6h0VvDrtAf
   EM93tk7x2n6Qd6bMDaKC/gu1cw0fAvegRNHnn2CrHEh0hPr22bxcubIrn
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365656969"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="365656969"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 05:05:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="768911547"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="768911547"
Received: from coresw01.iind.intel.com ([10.106.46.194])
  by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2023 05:05:49 -0700
From: rashmi.a@intel.com
To: ulf.hansson@linaro.org,
	michal.simek@xilinx.com,
	p.zabel@pengutronix.de,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	yuancan@huawei.com,
	andriy.shevchenko@linux.intel.com,
	linux-phy@lists.infradead.org,
	mgross@linux.intel.com
Cc: kris.pan@linux.intel.com,
	adrian.hunter@intel.com,
	mahesh.r.vaidya@intel.com,
	nandhini.srikandan@intel.com,
	vasavi.v.itha@intel.com,
	kenchappa.demakkanavar@intel.com,
	furong.zhou@intel.com,
	mallikarjunappa.sangannavar@intel.com,
	rashmi.a@intel.com
Subject: [PATCH v2 0/4] Remove Intel Thunder Bay emmc patches
Date: Thu, 16 Mar 2023 17:35:45 +0530
Message-Id: <20230316120549.21486-1-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_050604_257797_CD8DE568 
X-CRM114-Status: GOOD (  10.01  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Rashmi A <rashmi.a@intel.com>

Remove Thunder Bay specific code as the product got cancelled and 
there are no end customers or users.

In V2, cover letter has been added for the patchset, modified commit 
msg and patch subject in all the patches.


Thanks

A, Rashmi (4):
  mmc: sdhci-of-arasan: Remove Intel Thunder Bay SOC support
  dt-bindings: mmc: Remove bindings for Intel Thunder Bay SoC"
  phy: intel: Remove Thunder Bay eMMC PHY support
  dt-bindings: phy: intel: Remove Thunder Bay eMMC PHY bindings

 .../devicetree/bindings/mmc/arasan,sdhci.yaml |  25 -
 .../phy/intel,phy-thunderbay-emmc.yaml        |  45 --
 MAINTAINERS                                   |   7 -
 drivers/mmc/host/sdhci-of-arasan.c            |  29 +-
 drivers/phy/intel/Kconfig                     |  10 -
 drivers/phy/intel/Makefile                    |   1 -
 drivers/phy/intel/phy-intel-thunderbay-emmc.c | 509 ------------------
 7 files changed, 1 insertion(+), 625 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
 delete mode 100644 drivers/phy/intel/phy-intel-thunderbay-emmc.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
