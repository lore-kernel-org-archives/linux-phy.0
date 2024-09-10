Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 189A9EDE9AB
	for <linux-phy@archiver.kernel.org>; Tue, 10 Sep 2024 18:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3gCSLH9NFOY/0OwWEbvlYum2fYrermlPcoQD1R3Z0ZE=; b=eOSYmSdfEsVtvZ
	QWmdTH3VmJP7+W8tlTCJm28ASNn6s5/C7wnPTYssYfHQmZHEAznF0ovNKIo8bRN36C2QQfNOUQMor
	uq+65BPXUyDw5Aa7tx6J4tc6G+e5rELnqK3+aGjTQOCyoeRHavoSHGH2cTk5n3+OTnY2souSkeJWV
	GKWwTtbOU4bXFB6kThxpKUpHYN5mBXFvW0c6tdZfpQShVySnixtYH8iZCa2tmi39hFQHXqHdT9QKb
	Qntu1YYuxKIha9ofnnxADP0JHA1nnXaXVqEbo4GZF05MuB4+xk/NZOU2h5fBarwoo/aLZLcDPfC8R
	PI3AvReaePYE+O6cHpbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Po-00000006iUQ-3Oq1;
	Tue, 10 Sep 2024 18:16:36 +0000
Received: from mail.fris.de ([2a01:4f8:c2c:390b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Pl-00000006iTN-0KAW
	for linux-phy@lists.infradead.org;
	Tue, 10 Sep 2024 18:16:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 39F20BFB36;
	Tue, 10 Sep 2024 20:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1725992181; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=1wNGNIuAk/AXTrhPAQa4D1/tOWO9z0Y3QjayfxiKaz0=;
	b=kggCf66TgpN8gtLN3sgYQyGW6NLZ8YT1BpB53128e19RzDW1WbDZRqpYWSSpjfUYzftAO2
	2kXnl77ECB3WkV94x8+YmnuXy9SFbtomIal5lI9HHXh7rpdOTaFl8Cugegc3n9OS/kMoXz
	Zfs/fPxMxsEoDpLBtT49vJ73/h7ck9+bkboe4LfyoL3cuzluZg4DOFBcWsZHj/rkFDrizJ
	/py+6FNtlESawWgspQgAgFx9P8fyWh0a9X3GhbN/QVfdUMM92Thextg90L2bJ6wEjeqV/D
	s/gRGWqUYIC/uabB2SYTVqIjY000wj7G5T4NMSYt91SMwV816zQ4W7zJ3Px67w==
From: Frieder Schrempf <frieder@fris.de>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Frieder Schrempf <frieder@fris.de>,
	Adam Ford <aford173@gmail.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
Date: Tue, 10 Sep 2024 20:14:51 +0200
Message-ID: <20240910181544.214797-1-frieder@fris.de>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_111633_626059_ED8C1176 
X-CRM114-Status: UNSURE (   4.13  )
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

This small series depends on Adam's series here [1].

The parameters have been determined using the script here [2] and validated by
trying the modes on a Kontron BL i.MX8MP with a HDMI USB grabber.

[1] https://patchwork.kernel.org/project/linux-phy/cover/20240904233100.114611-1-aford173@gmail.com/
[2] https://codeberg.org/fschrempf/samsung-hdmi-phy-pll-calculator/src/branch/main/pll.py

Frieder Schrempf (2):
  phy: freescale: fsl-samsung-hdmi: Add references for calculating LUT
    parameters to comment
  phy: freescale: fsl-samsung-hdmi: Add PLL LUT entries for some
    non-CEA-861 modes

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
