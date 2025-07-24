Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4792C87FC5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 15:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hAADGDRY7x7WURRCnf7+rTdnbDkqbc1J7L1Z93k4JGE=; b=S4KUzF7FerVTEK
	BpDgtetM1qjlYwSwIAIFUvbmlHCYwBfVQhKOHhTqYUmycUm98GSAhK8ONcXC6TXF+5sJgirNehXzx
	VB3NHAn9KMVNPaQG2munz/m2JfLRJI20v605efhuKqMmLrz7rw3Vpe/fQKNiAB86i4k7kcAwWCF/C
	glqFM455geYzt31c8PcWkGbUZnl+Tg7+qFL70sOmjId6zkxJe1PmB8w6E2j7gwpiDLO6WgOlMcwVW
	YcVrdTLqYXLTTr4QTOCVkLvYIBzzfxR1atSoAqgHBvbFzyr1eDVsMsy7h0egh0W/ZZCjXct+QBYiH
	+UrPSd38ZCYrnk4zHytw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uexpC-00000007qLE-2HVm;
	Thu, 24 Jul 2025 15:25:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uevkJ-00000007UFo-1Qx7
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 13:12:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3906043884;
	Thu, 24 Jul 2025 13:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 199CCC4CEED;
	Thu, 24 Jul 2025 13:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753362746;
	bh=XyEX4AdH2LzV6ZRqRDM97PWYHb67uk81jUAD0OEb81Q=;
	h=From:To:Cc:Subject:Date:From;
	b=g9nmd7bJh64TcfqL2HbFDyTvrP6puZXq+UQfXCN8hQ2jXi1XKtB/dhrthkPieL0fW
	 N3EjLWnwBBs8vVe94v4BM9ZA1oQgi5rj/GrTqJXw831iebZk6lxdjVvRUOjtPDiyeL
	 QzfW3miQsu3UXZ5IFeEvnBiqUQW2qX2Z3wWU7RiuZJc7b0n7j5QSV59xs/c1oMIC3Q
	 bZRdunV3TAzE/l23oTgJ//EkrZ+e/EWDQdmu6+zLtuptwngUkfaheZhinCyCAfcmFu
	 2SpYmnMHh8/vlOaJUYkbsoqg43Qz3foa0G+xNTF8fvayoiXpx/1//Dn2gDn/8enTdG
	 Zs/xZSmxVfxww==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uevkD-000000000aF-2Ba3;
	Thu, 24 Jul 2025 15:12:21 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 0/3] phy: fix device leaks at unbind
Date: Thu, 24 Jul 2025 15:12:03 +0200
Message-ID: <20250724131206.2211-1-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_061227_420371_B28780EA 
X-CRM114-Status: UNSURE (   5.63  )
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

This series fixes device leaks due to failure to drop the reference
taken by of_find_device_by_node().

Johan

Johan Hovold (3):
  phy: tegra: xusb: fix device and OF node leak at probe
  phy: ti: omap-usb2: fix device leak at unbind
  phy: ti-pipe3: fix device leak at unbind

 drivers/phy/tegra/xusb-tegra210.c |  6 +++++-
 drivers/phy/ti/phy-omap-usb2.c    | 13 +++++++++++++
 drivers/phy/ti/phy-ti-pipe3.c     | 13 +++++++++++++
 3 files changed, 31 insertions(+), 1 deletion(-)

-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
