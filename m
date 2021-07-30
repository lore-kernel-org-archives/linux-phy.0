Return-Path: <SRS0=wp9D=MW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27374C432BE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 06:33:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E829C61059
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 06:33:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E829C61059
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H4pbyONFkgh1+f7gQC+SJWoNYLTL5X/InBBUNmhlqEk=; b=lWUBzu2nt1fsfK
	Yj70TkYhzi6S9xFrX0MRz4K7SP5Rb92Hof97FRiW/NdgNHeGh8IeOrkJePi5i1ZPTV2ZelKGAnPnN
	2d73YkSVsomHaN6t1+3OumU5Id3d4h4rU29ORdk7aSCJ2ILGmLnFhSnXmKXZBCKpC2ylmFaVlaisH
	Y0OWFn+VhhIUas7ZLvbHtJ3UoTMxVFRAriOtI+jJirJdTwJmlm77LzbtB7NfyLeLFxoZ4yAnqJ8s9
	8H/eCxK5KlNjMfzBw1p1prW5U/DUrKt9MLLqWD2iXyGxcbzooE2rI5VPkHrLqKBprQa9GqPoASqFg
	DU6QWZJx01VJY1xQVBfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9M5K-007UHk-C5; Fri, 30 Jul 2021 06:33:30 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9M56-007UF2-Ku; Fri, 30 Jul 2021 06:33:17 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="276816848"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="276816848"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 23:33:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664714855"
Received: from coresw01.iind.intel.com ([10.223.252.64])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2021 23:33:10 -0700
From: rashmi.a@intel.com
To: linux-drivers-review-request@eclists.intel.com, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 kenchappa.demakkanavar@intel.com, rashmi.a@intel.com
Subject: [PATCH 0/3] Add support for eMMC PHY on Intel Thunder Bay
Date: Fri, 30 Jul 2021 12:03:06 +0530
Message-Id: <20210730063309.8194-1-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_233316_821822_CE4F24C0 
X-CRM114-Status: UNSURE (   9.55  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Rashmi A <rashmi.a@intel.com>

This patch set enables the support for eMMC PHY on the Intel Thunder Bay
SoC.

Patch 1 Holds the relevant Device Tree bindings documentation
        and listings of new files in MAINTAINERS file
Patch 2 Adds support for eMMC Intel Thunder Bay
Patch 3 Adds Thunder Bay eMMC PHY support

The review comments from Adrian Hunter, Kris Pan, Furong Zhou and Mark
Gross have been incorporated.

Please help to review this patch set

Thanks


Rashmi A (3):
  dt-bindings: phy: intel: Add Thunder Bay eMMC PHY bindings
  mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan
    eMMC driver
  phy: intel: Add Thunder Bay eMMC PHY support

 .../phy/intel,phy-thunderbay-emmc.yaml        |  49 ++
 MAINTAINERS                                   |   7 +
 drivers/mmc/host/sdhci-of-arasan.c            |  29 +-
 drivers/phy/intel/Kconfig                     |  10 +
 drivers/phy/intel/Makefile                    |   1 +
 drivers/phy/intel/phy-intel-thunderbay-emmc.c | 500 ++++++++++++++++++
 6 files changed, 595 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/intel,phy-thunderbay-emmc.yaml
 create mode 100644 drivers/phy/intel/phy-intel-thunderbay-emmc.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
