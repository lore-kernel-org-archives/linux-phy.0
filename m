Return-Path: <SRS0=/UzO=NU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E0B7C4320A
	for <linux-phy@archiver.kernel.org>; Sun, 29 Aug 2021 18:25:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB95E60F23
	for <linux-phy@archiver.kernel.org>; Sun, 29 Aug 2021 18:25:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AB95E60F23
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=42OCjPxjF2xWKMlUWFdmWBDR6XKYWlTtdgwziwqosNI=; b=h42zlbmv6vYKA2
	wKiJgQjwdpoBJJCNXc5/Rj+en0cDoJBBb3xMuLK3xobQEl5cBydPSPBwpMOa15H5IY1lkhboDKVH/
	g4fDJBaMrYOVkhBPBaUaUQ648TrHLC5p74ZIYQOTK4kmPLQRPGUB+l7e+EH1EdZH/4LDfY+HfxeL3
	UwoRjb8iSyG/nOsU+k7lDeOLkYQktESfFRBIlOlRDSvLUdiLdSVwc8jUm3ZmC8s9i5neIVNkdeIa+
	NaEiXvm1myEm8ES5aiBpLB40WndhYpRDfrMYdUyILvaus5h2eT599y9SqZcjGwuRgBBssxTN0kmUn
	UP5hDqBREfTBeLdShnqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKPUP-00FsLF-24; Sun, 29 Aug 2021 18:25:05 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKPUC-00FsIb-Ez; Sun, 29 Aug 2021 18:24:53 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="218212253"
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="218212253"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2021 11:24:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="445519073"
Received: from coresw01.iind.intel.com ([10.106.46.194])
 by orsmga002.jf.intel.com with ESMTP; 29 Aug 2021 11:24:44 -0700
From: rashmi.a@intel.com
To: michal.simek@xilinx.com, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com, rashmi.a@intel.com
Subject: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay
Date: Sun, 29 Aug 2021 23:54:39 +0530
Message-Id: <20210829182443.30802-1-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210829_112452_587381_33B3BE86 
X-CRM114-Status: GOOD (  11.82  )
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

This patch set enables the support for eMMC PHY on the Intel Thunder 
Bay SoC. eMMC PHY is based on arasan phy.
 
Patch 1 Adds arasan sdhci support for eMMC in Intel Thunder Bay.
Patch 2 Adds arasan sdhci dt bindings.
Patch 3 Holds the device tree binding documentation for eMMC PHY
	and listings of new files in MAINTAINERS file.
Patch 4 Holds the eMMC PHY driver.


Rashmi A (4):
  mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan
    eMMC driver
  dt-bindings: mmc: Add bindings for Intel Thunder Bay SoC
  dt-bindings: phy: intel: Add Thunder Bay eMMC PHY bindings
  phy: intel: Add Thunder Bay eMMC PHY support

 .../devicetree/bindings/mmc/arasan,sdhci.yaml |  25 +
 .../phy/intel,phy-thunderbay-emmc.yaml        |  46 ++
 MAINTAINERS                                   |   7 +
 drivers/mmc/host/sdhci-of-arasan.c            |  29 +-
 drivers/phy/intel/Kconfig                     |  10 +
 drivers/phy/intel/Makefile                    |   1 +
 drivers/phy/intel/phy-intel-thunderbay-emmc.c | 512 ++++++++++++++++++
 7 files changed, 629 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
 create mode 100644 drivers/phy/intel/phy-intel-thunderbay-emmc.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
