Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A90C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 18:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1QvfdVnwgNL9misFRQ2v380K3ELf9c3ZLveSEZgzMG8=; b=hiq+1mFwhdHuSf
	fkrTk0f0+TZFXTJXj+AmqTd9BoRsAJ64OlaNfgUg1fFSlWcxUOgWaAzGS49VhL7cmR4TWovi/0ixT
	dTB/FOGMlD7GDxhOaY9haAUkbQVm0WW5XKLVn8KnEaesRA7eyYivSRSwLuvwTuUBqG/4r1xi1NkP0
	9hhOLAWRidK11YGH3Rxk7LGbtIcURqgH4HPjnf74s4KXdHykbMV5jdj5aP6wuCzR9hqNtCt5jfPLv
	DGpocx1soF4y8ImEwD40hEMPadN1pcDqlOiOQoqtJV66GfAN1bUCFwcFbL7cgd+XmWnSC4UjJMzah
	A6+Kox35Nw1OjQMLthiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyrq-0000000Ei7j-0Nz6;
	Mon, 22 Apr 2024 18:58:18 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyrl-0000000Ei4n-2rRN
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 18:58:16 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1713812289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fTsWgzpR6TAFHUYP8yaObyYUy4tJKcjjHquOtGRhIDc=;
	b=BUUNOJ2gG5/4rEOCTq4iXCuV97JgHgZIBDl35crxeE+omMZhigOem8X8X0FNH5MQBILOCd
	LV9mENZITwhBRMJFIn9RsCPDDQcbZdeDg94by3/e320qsvOIwhuBznt6m0RFiBx53WwCJN
	515Kk+fLzmt9qHv0C4yU1BiJ9ak5sso=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 0/3] phy: zynqmp: A PCIe fix and debugfs support
Date: Mon, 22 Apr 2024 14:58:00 -0400
Message-Id: <20240422185803.3575319-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_115813_882820_C66C7F13 
X-CRM114-Status: UNSURE (   5.16  )
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

This has a few small patches cleaning up the driver, adding a fix for
PCIe, and adding some useful debugfs info.


Sean Anderson (3):
  phy: zynqmp: Store instance instead of type
  phy: zynqmp: Don't wait for PLL lock on nonzero PCIe lanes
  phy: zynqmp: Add debugfs support

 drivers/phy/xilinx/phy-zynqmp.c | 169 ++++++++++++++++----------------
 1 file changed, 83 insertions(+), 86 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
