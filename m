Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D899C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 11:55:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D0F5A60E8B
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 11:55:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D0F5A60E8B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VnfnspyIIwRF+WDMVTo8ptFk7ZW0MgyPgekYSWc+WqA=; b=XZbGBBAbe1fEdy
	q5jBnMS3Ff9WF1HP2XfSFWyzY6GkuZ3CtGLz8Z2Pz2UzReVQIsZ30+b5qE28FINV2RlZu605gk1Qi
	NqbIjKpIFM7SeI9HSavwWlNjpHrtawmaHD0k2bJ+7Zr/QEqdcsrmWLerAJtYt4/IgXmd/JCTdEaV4
	bX0y5LX8Oodf52whjZCEECKTcC9wK+rkta2M+xpMYHhyIOhwoTjUoJgmPrhKXYR7CTIjlPxtF0+w5
	rr01+UkP4b0uN7EUKOIH14fGm9OipY4yhRQHyx3TUi14Dez2CTkQ0YUeXN3sMEtRSPjxS5BnCDph2
	PQd3DcmOXqyRiE+5ICow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfhWq-004n71-BM; Wed, 27 Oct 2021 11:55:36 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfhWe-004n4C-Sf; Wed, 27 Oct 2021 11:55:26 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="230415462"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="230415462"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 04:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="597333275"
Received: from coresw01.iind.intel.com ([10.106.46.194])
 by orsmga004.jf.intel.com with ESMTP; 27 Oct 2021 04:55:17 -0700
From: rashmi.a@intel.com
To: michal.simek@xilinx.com, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com, rashmi.a@intel.com
Subject: [RESEND PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder
Date: Wed, 27 Oct 2021 17:25:12 +0530
Message-Id: <20211027115516.4475-1-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_045524_963245_E63895C5 
X-CRM114-Status: GOOD (  10.86  )
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

Reseding V2 patchset to get the dt-binding patches reviewed.

Changes from v1:
Add arasan sdhci dt bindings

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
 drivers/phy/intel/phy-intel-thunderbay-emmc.c | 511 ++++++++++++++++++
 7 files changed, 628 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
 create mode 100644 drivers/phy/intel/phy-intel-thunderbay-emmc.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
