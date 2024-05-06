Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9E3C25B4F
	for <linux-phy@archiver.kernel.org>; Mon,  6 May 2024 17:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l8HN7Rxv0OG7NytW+XN0eb8F+pZ+mbPYiJGH2oZz87Q=; b=MqDy4FO4OG33TG
	v7CS7ugT40nvJOAb61wAWJjlI96Ccqy0UACa+UtyGJ5XSR5x+VGDQWMrS+NbXicIYzrQKwEasyJ7o
	Rc7gorVXrscBbO4M528aouEUXtsPsewLb9OiQ2mSpGpoEvQBWkUtrrDNKW28YoA1WRDuJ+yTSG5Xf
	DWkteoUMfNuDCFHf6X6kc3XQ/0ZM+fLQ7c9up3j84o7fsT3OaEgnvYtpuwPNEFqvjEggo4IMa1/NZ
	DkmjKE99S+J8m72BoHgmGhOnzWbi+cfRIBaIPMmrI9PsHbBisV3SCoS4DAgBoVDC9Ri3qH16XdPhV
	LbRQnjhs1v3sGmxCFWHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s41iM-00000008BF2-2onE;
	Mon, 06 May 2024 17:01:22 +0000
Received: from out-171.mta1.migadu.com ([2001:41d0:203:375::ab])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s41iI-00000008BBM-1A05
	for linux-phy@lists.infradead.org;
	Mon, 06 May 2024 17:01:20 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1715014875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=B4HAr5WNqIN+2BMtIDkk4eWOethRMvYJIjKQInTq8Q4=;
	b=sw0rwZS8FPh4DawpviRrrEv/R8LHR54VYj1duj396TVqGjaaBniJOh35oj5fpVVRsAVd0v
	X0e4VVZYKNY/RAlXSdigQ4j9Emeso90X+8l5j2XWwktBnnA0sie9LXgQx+x5NHPY1XSmdC
	VtfZHtg8rZWlCiks5qvqjdPW7ituZFI=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH v2 0/4] phy: zynqmp: Fixes and debugfs support
Date: Mon,  6 May 2024 13:01:06 -0400
Message-Id: <20240506170110.2874724-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_100118_659419_AB345C17 
X-CRM114-Status: UNSURE (   5.52  )
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

This has a few fixes and cleanups cleaning up the driver. Additionally,
the last patch adds useful debugfs info.

Changes in v2:
- Enable reference clock correctly
- Expand the icm_matrix comment
- Move the logic for waiting on PLL lock to xpsgtr_wait_pll_lock
- Use debugfs_create_devm_seqfile

Sean Anderson (4):
  phy: zynqmp: Enable reference clock correctly
  phy: zynqmp: Store instance instead of type
  phy: zynqmp: Only wait for PLL lock "primary" instances
  phy: zynqmp: Add debugfs support

 drivers/phy/xilinx/phy-zynqmp.c | 197 ++++++++++++++++----------------
 1 file changed, 100 insertions(+), 97 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
