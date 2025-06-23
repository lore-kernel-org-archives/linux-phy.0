Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16EFEC7115B
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jun 2025 15:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rsp+CwnWJCC4MX+uWoYNpwRJUHdYEU6VrzxUmZN4OeQ=; b=XcmNNRS5HMNQec
	CtonOi0Uavr+cgABrRtcw4uk9anTflRDOaGbZgeHOv/XpJTYApm2ZpjZC5KqUp264gRTN1eD/9Kby
	rljLoSRKwdaL+iAOlUKIxjpumvdbiUXAeA8PEldKrneHX9IYnZqGFxMKm69RY1uQkT1jG6u1bTuoW
	e4LQo5WmSx1gN2IgDM/ucvRZjfVsB5tTTOEaVwd2qEkhdfRw7H4evELghZPLp6Mo/FBTVvupt5Et+
	J4Do/JlO4gsu5DeHMkMqYI/MpVdAS7rHTvMlD04TRFx3ILmFmn32dk/m2T0f122bCBtPrsQ4bh2uR
	w6gq0G92Mhmorw6E/Grg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTizP-00000003D9K-30rN;
	Mon, 23 Jun 2025 15:21:43 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTftP-00000002bV4-41Cx;
	Mon, 23 Jun 2025 12:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750680198;
	bh=3nnjzdKDL/XFZioXMgbkMzk/XvnybYXfQac1elnYKk0=;
	h=From:To:Cc:Subject:Date:From;
	b=k6RSQSAOKKvHMpOXyLsoGT1dnJCjdRQDwxSGY61BzZUTS3VjCE9JIOoTBFekGL6yc
	 ++vTE/zycKImJfVDxqPfw5ryZW6DihXBZz1oW+mu1EIZWwWlSOJWM0ZgUzTAssA2yo
	 KnlkSFu9hrXjLSIYOIDxwLxfNNuU8dlzcV5ZyJJxBf6OTrUAI/VfqdEGLxSiDLV74v
	 Da/0QpbaaUlsfVjDRq52ei26DLRVx/+AMQ1Wn8s0Qbk5JP0joqszyp2GuAYy1WszFe
	 qJgdZ41doiknFjDhDbe565XiGgN4b5VfbyOsTIJbOOALl5jY1cbcrf2Bnwx7PrODJw
	 wCKNzizFDh2NQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EE7BB17E090E;
	Mon, 23 Jun 2025 14:03:17 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v1 0/2] MediaTek TPHY Cleanups
Date: Mon, 23 Jun 2025 14:03:13 +0200
Message-ID: <20250623120315.109881-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_050320_147092_25BB3655 
X-CRM114-Status: UNSURE (   4.71  )
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

While doing my usual round of cleanups, I've found some room for
improvement in the MediaTek T-PHY driver. This series performs some
cleanups on that.

AngeloGioacchino Del Regno (2):
  phy: mediatek: tphy: Clarify and add kerneldoc to mtk_phy_pdata
  phy: mediatek: tphy: Cleanup and document slew calibration

 drivers/phy/mediatek/phy-mtk-tphy.c | 65 ++++++++++++++++-------------
 1 file changed, 37 insertions(+), 28 deletions(-)

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
