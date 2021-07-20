Return-Path: <SRS0=vk77=MM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 201D9C07E95
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 11:41:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E497A61164
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 11:41:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E497A61164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uJtSNU9ul4piOKD19Tli69A+8tPQd0YNc55Jy0+5zog=; b=ZRiAIBGYVUA1NG
	qfqmNeWpI+1I+TAlypp73iuGW/58Tqltv48rtiO0wnAzCvY0LUKmS2bNAAuwrJ8IHhg2NbEoOrh/f
	dBYr2KJQ/uTlnTO0rSbw+fTJqj0AxfQIF0DptB6d7o10ZBd4mlPgEqQsD+BDlbCFuKk/sL5TeTQCJ
	LDZ4b15I8dmasTvBfjL+XTXWiJUshpxoM/K+5wfibjf1xl6RgsGh4Y9mOxMj5BX62mimOH8yUcG80
	V5pl1JpvE/aR4no5tdBwTR2JCc/mUiFu7Gf0XHdTcmzUiiGOcz6C0aBn8OQPjhfzCdzKblVktKmC5
	Ng5xiCmy/UjiynYtkwrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5o8L-00CgTl-F7; Tue, 20 Jul 2021 11:41:57 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5o88-00CgRp-EL; Tue, 20 Jul 2021 11:41:45 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="211218049"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="211218049"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 04:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="510723689"
Received: from coresw01.iind.intel.com ([10.223.252.64])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jul 2021 04:41:34 -0700
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
Subject: =?utf-8?q?=5B=E2=80=9CPATCH=E2=80=9D=200/3=5D=20Add=20support=20for=20eMMC=20PHY=20on=20Intel=20Thunder=20Bay?=
Date: Tue, 20 Jul 2021 17:11:30 +0530
Message-Id: <20210720114133.8936-1-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_044144_568049_5AB88F4C 
X-CRM114-Status: GOOD (  10.32  )
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
