Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F05B5CCA464
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 22:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNdSOJUpgJDmwHKB9DE0Y5OGWFfNzose93wIrrQ+Gdc=; b=Fbk08sCBPAiUA5
	3ywfQoUdIgnV0dN/D4JQyuab8G2jKx+StUDQKBo5neEbMGrYZV+B0ogyHL2flP6ZRsggHw5tMSxVv
	BiwZ3jz48q4g06rNNS+aSiRDI6KCp3IzM07suktGQ9pFpjjrgWdF2wtZBW5FrIeyyDQzsZE04/El3
	g6ycRbLLrLs7mljccOnJAwZdQB/jwE6HHU33yu5FMXLsxGrB5ib6luAAElqkojylIvqBEucDT7O0G
	U/dUV30IEdsOeMeXf5toZ6p9UkzAHgbGST3gFSjuPpVIbMKlJ7QU/q55AGQFlDAzRe4512sp/Gi0F
	M5Ce5BVHKFAtoI9vHq7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHToV-00000001UF1-1kia;
	Thu, 15 Oct 2026 22:20:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHToU-00000001UEQ-0GoG
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 22:20:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7C29443EFF;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5B7FAC2BD01;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792102837;
	bh=opFYL6eJfRLIJ4Mi1M4Y9sNi8J7wJU4m5CxqbvcQwSE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=KVCsrwuL5n5Gkp2z4QRuS/+oBmW9JTe5uP0SYvQo+VeelwJPsaeGa6nzWZI378vbk
	 D3vBZSTj46dTrub13+7ko9ZTR8wvC0cwi/UkbchCIatZxaB9bu24aF4HsEdZf1zFu3
	 h7/Or0c/AFKhU3RsuFRzNd+dnr6+IzSfzQBNS6+CHzCW0O95gM9N4FNYFhXTh99PSZ
	 2d95LvyR3ddJoNFtQNGXKLvHJ1FaalWzvYmlG4K/eRLqW049/ClNRg9pGxukDDJqd5
	 1UtRe71e3kwUHO+vWRyDBnkodi1AgxBNBCh5+XGptgUOVe+PON/VBRzZT40bQ1diVp
	 Nx9pm81b65f6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F5ABCCA46B;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Thu, 15 Oct 2026 23:20:38 +0100
Subject: [PATCH RFC 3/4] media: qcom: camss: csid-680: Select C-PHY in the
 receiver
MIME-Version: 1.0
Message-Id: <20261015-x1e-cphy-rfc-v1-3-1f3fa9af940a@gmail.com>
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
In-Reply-To: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792102835; l=954;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=zIA90Rl/gtkLGho4hrUCxdrlhc5niDyVArSGj4xfgdM=;
 b=dxq1mf8fO50sxXqgXje86lxdhpWCCkmpix7jS568ln4jpofHpoSqOKdUHmWuSicEhghudMqwy
 zROe31y06DkCFz0gFQ8ltbPCGY67/Y7Q6MEooCwAXKNVWlTfde6sBz0
X-Developer-Key: i=geocausa@gmail.com; a=ed25519;
 pk=KyQk/iWbxsikewDBh0SwlHI51RvAqahD3loqmRp9DVI=
X-Endpoint-Received: by B4 Relay for geocausa@gmail.com/20261015 with
 auth_id=1199
X-Original-From: George Neacsu <geocausa@gmail.com>
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
Reply-To: geocausa@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Neacsu <geocausa@gmail.com>

CSID 680 has a PHY type select in CSI2_RX_CFG0, next to the PHY number.
The field is defined but never written, so the receiver always decodes
D-PHY. Write phy_sel to it, as csid-gen2 does for C-PHY.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 drivers/media/platform/qcom/camss/camss-csid-680.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-680.c b/drivers/media/platform/qcom/camss/camss-csid-680.c
index 345a67c8f..16b199f06 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-680.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-680.c
@@ -202,6 +202,8 @@ static void __csid_configure_rx(struct csid_device *csid,
 			<< CSI2_RX_CFG0_PHY_NUM_SEL;
 	}
 
+	val |= phy->phy_sel << CSI2_RX_CFG0_PHY_TYPE_SEL;
+
 	writel(val, csid->base + CSID_CSI2_RX_CFG0);
 
 	val = CSI2_RX_CFG1_PACKET_ECC_CORRECTION_EN;

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
