Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E1DC2BD09
	for <linux-phy@archiver.kernel.org>; Fri, 28 Jun 2024 20:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tCGv4CN58xjzZ2Ql7evX1bCTX0iURXjatXUDsM+gszQ=; b=AFohhB61BiBGIs
	K1ywdSRtPxa+M5GbLgbYikJI9g3HI8PvNshnTHM5v2755T16jTqQc4AG4wJqQNp9BEYgY16ng8/OM
	/cYetk1LHk3RgaMuvJuYXfu6nGOCBeAVtaKB5aQlJDvhsrl53f0Vs/lQwyx4PVe295a/iNutrWiqE
	kUFOL0+CUkS8IyeXbOv501LVkHF4p21+6MIltoUqIua4BIoZL0VLl4j1YnZXlDVETX4hbDM5Kj/cV
	OiKNeGfJaBhjdWanSkC1w1LT/opWie4OEoW0Si6HlJhj8k8MYPUqvF/CshqVXrpFz4uOAb3jO0zKd
	ejRoH25kDsc7yiFaFElw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIeM-0000000EwAI-2xWu;
	Fri, 28 Jun 2024 20:56:54 +0000
Received: from out-174.mta1.migadu.com ([2001:41d0:203:375::ae])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIda-0000000Evdy-1mBY
	for linux-phy@lists.infradead.org;
	Fri, 28 Jun 2024 20:56:10 +0000
X-Envelope-To: radhey.shyam.pandey@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1719608160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=51DtrpHQayl7ulUlBsixd6UFM0ekNQlu75nZ9eI5mu8=;
	b=FVOUjV7Csnqr/7SpPyJafEPGIwIv7VRjGq0z3R9mywjnZNpOoUJLiAGqMPWiMdrLl5uH65
	kRbsJVyUFba/TZKNRZObhdb6ycRj0hzRdLgiMNF7xUopX2Z+pDTjZhG/H8gibYeVE4jIA7
	EuFM0FEXbIqG8Tai0m/vlB1uKNw4t+o=
X-Envelope-To: laurent.pinchart@ideasonboard.com
X-Envelope-To: linux-phy@lists.infradead.org
X-Envelope-To: vkoul@kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: kishon@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: michal.simek@amd.com
X-Envelope-To: sean.anderson@linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH v3 0/5] phy: zynqmp: Fixes and debugfs support
Date: Fri, 28 Jun 2024 16:55:35 -0400
Message-Id: <20240628205540.3098010-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_135606_632348_CDE06578 
X-CRM114-Status: UNSURE (   5.89  )
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

This has a few fixes and cleanups. Additionally, the last patch adds
useful debugfs info.

Changes in v3:
- Remove inapplicable comments
- Take the phy mutex in xlate
- Use "none" to represent ICM_PROTOCOL_PD, since the lane may not
  actually be powered-down.

Changes in v2:
- Enable reference clock correctly
- Expand the icm_matrix comment
- Move the logic for waiting on PLL lock to xpsgtr_wait_pll_lock
- Use debugfs_create_devm_seqfile

Sean Anderson (5):
  phy: zynqmp: Enable reference clock correctly
  phy: zynqmp: Store instance instead of type
  phy: zynqmp: Only wait for PLL lock "primary" instances
  phy: zynqmp: Take the phy mutex in xlate
  phy: zynqmp: Add debugfs support

 drivers/phy/xilinx/phy-zynqmp.c | 198 ++++++++++++++++----------------
 1 file changed, 100 insertions(+), 98 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
