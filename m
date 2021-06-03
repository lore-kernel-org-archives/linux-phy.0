Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85158C47096
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 18:23:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D256613BF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 18:23:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4D256613BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ch6ZR/Z7gGCaHHDqycdCrql9fOjXuvxqz/OAa+xbd6Y=; b=lrczlUlNDEyF64
	fxerJiI51fJ6Ogk6/QPhIRVBs6XcvyfL55NcReIBYz8EuP4oqDsDHlhQLLxG6U4r+SOtLiOQ7JoNi
	WKDF6LY3jqtNaNl9+w4q2PDy36F2/vU7YaaifSqda0/H5dlJurbRor6tDkbyMdV0LbyxWQ8ta2hxR
	dR6fjDklvhB0AMF237FEoedoXIj81XkgKHSUFKWvD1GOuNQlHn2nw+qWHXfHrm2MELO5HXRgRdVJx
	MFE+l2dhYNpa3BANaMmgovK2vakqa+LZtRVwoyuZuB2+gp2oVPnUn2SqHcz6HxYxdODNrs1SP2QLq
	zL551x0J6UP/MOhPfMug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1los0P-00AAAr-RK; Thu, 03 Jun 2021 18:23:45 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lorze-00A9hs-U8; Thu, 03 Jun 2021 18:23:00 +0000
IronPort-SDR: ptlT5Lw8T82KnfuD4GFABOkFPcXDobJX2zQVjaQ2CAcu2vN4ZoDEb+TomMx0ICVz8smBy1SMyV
 oXDEwYWqEPFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="202257965"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="202257965"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 11:22:58 -0700
IronPort-SDR: D+avzjsf6I/iFZiMJ35B0jk7tlOXafIUv+nJ6XVxw3UrSMKNG5PqDekxYZ9JyFZYSGRNTfOpzm
 0+k8jS4ZCyzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="636326876"
Received: from coresw01.iind.intel.com ([10.223.252.64])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jun 2021 11:22:54 -0700
From: rashmi.a@intel.com
To: linux-drivers-review-request@eclists.intel.com, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 lakshmi.bai.raja.subramanian@intel.com, rashmi.a@intel.com
Subject: =?utf-8?q?=5B=E2=80=9CPATCH=E2=80=9D=202/2=5D=20phy=3A=20intel=3A=20Fix=20for=20warnings=20due=20to=20EMMC=20clock=20175Mhz=20change=20in=20FIP?=
Date: Thu,  3 Jun 2021 23:52:42 +0530
Message-Id: <20210603182242.25733-3-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210603182242.25733-1-rashmi.a@intel.com>
References: <20210603182242.25733-1-rashmi.a@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_112259_033631_93166C39 
X-CRM114-Status: UNSURE (   8.65  )
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

From: Rashmi A <rashmi.a@intel.com>

Since the EMMC clock was changed from 200Mhz to 175Mhz in FIP,
there were some warnings introduced, as the frequency values
being checked was still wrt 200Mhz in code. Hence, the frequency
checks are now updated based on the current 175Mhz EMMC clock changed
in FIP.

Spamming kernel log msg:
"phy phy-20290000.mmc_phy.2: Unsupported rate: 43750000"

Signed-off-by: Rashmi A <rashmi.a@intel.com>
Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/phy/intel/phy-intel-keembay-emmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/intel/phy-intel-keembay-emmc.c b/drivers/phy/intel/phy-intel-keembay-emmc.c
index eb7c635ed89a..0eb11ac7c2e2 100644
--- a/drivers/phy/intel/phy-intel-keembay-emmc.c
+++ b/drivers/phy/intel/phy-intel-keembay-emmc.c
@@ -95,7 +95,8 @@ static int keembay_emmc_phy_power(struct phy *phy, bool on_off)
 	else
 		freqsel = 0x0;
 
-	if (mhz < 50 || mhz > 200)
+	/* Check for EMMC clock rate*/
+	if (mhz > 175)
 		dev_warn(&phy->dev, "Unsupported rate: %d MHz\n", mhz);
 
 	/*
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
