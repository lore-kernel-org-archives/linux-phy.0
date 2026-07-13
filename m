Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09ED7C43458
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 10:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cLHN7pJaL87fOPj4pebQ+PxvtvTdtL3ZmPdmFKo+7WA=; b=YTZwti+AxjGKqx
	30IhhRSnr4RcbHaAEZHIK18s+fr03EmCa6UQAu9XNvTxHqSv3vU2nfCv3YyMfKHfgPLdewwcKEskv
	eM3UakwTa6i//1HT3hIlfun88mqep0bV6A3SRlMsECW7xs+dUhYuwwUyAcen9iTTG2m9YFoS4RXtc
	SK9C6Ce7f3PDP9SNAwlFV4VhnjLPl8qLUiKuBm7hylOpYsUbeTHJhYjhhmbo3b2hvlfSimkGkurVq
	g8eJ6fTgFqp09MQz8XuPjFGl0iEjtu9WKXsW/tZSSzEnwGsdtA2A4lXYtklrV1Gjg28jpOGX4MQnh
	A/PZ+kizm9mXRSPg/i5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjDow-00000008sHX-38za;
	Mon, 13 Jul 2026 10:23:30 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjDou-00000008sE5-1DLQ;
	Mon, 13 Jul 2026 10:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783938205;
	bh=pDB4tIY6cikfoUnxZqLxi35idMy2BXFdDsk3DDVWEFA=;
	h=From:To:Cc:Subject:Date:From;
	b=HwTOMOvFU/+iSsbdg5+K9Tx/pjZ3EIONv9GUzjfFCRIBJG4G8RM5JJOPZg/cLg4cg
	 JhRC5Zbzt56Zn73ugcVYcf/E7AA+EOey74+bg05tvotVbs70X3hhvVT2oPQQaNgxGM
	 BCCDeg9Zm7DCPDPHUxo+3qQVfRxEpyNoXtsVE5SfRV6KocBq2PAjrxzTRIHaPLBPR0
	 RVM9BMShK/QWarTpMPV4FgwqKK/4HUzm5HpdL9Br+fApYOWS3XAeXCJzlO55PQgXZr
	 nYVWXVfLEkyduFNPCvmcgo/k691+F3SDKI5L1EzKp79T/KzIOgS3bE7WNyJcvuXu4z
	 rH6nKeJdk1hvQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0755E17E013E;
	Mon, 13 Jul 2026 12:23:24 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	justin.yeh@mediatek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH v2 0/2] PHY: Add support for MT8196 DSI PHY
Date: Mon, 13 Jul 2026 12:23:20 +0200
Message-ID: <20260713102322.21782-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_032328_475083_553ED746 
X-CRM114-Status: UNSURE (   9.33  )
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

Changes in v2:
 - Added a few comments and fix scheduling while atomic issue in clk
   enable ops by waiting with udelay() instead
 - Removed one unnecessary delay after clk/pwr isolation disablement

This series adds support for the DSI PHY found in the newer MediaTek
Dimensity 9400 (MT6991), Genio Pro 5100 (MT8894) and Kompanio Ultra
(MT8196) SoCs.

AngeloGioacchino Del Regno (2):
  dt-bindings: phy: mediatek,dsi-phy: Add support for MT8196
  phy: mediatek: Add support for MT8196 MIPI DSI PHY

 .../bindings/phy/mediatek,dsi-phy.yaml        |   1 +
 drivers/phy/mediatek/Makefile                 |   1 +
 .../phy/mediatek/phy-mtk-mipi-dsi-mt8196.c    | 196 ++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-mipi-dsi.c       |   1 +
 drivers/phy/mediatek/phy-mtk-mipi-dsi.h       |   2 +-
 5 files changed, 200 insertions(+), 1 deletion(-)
 create mode 100644 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
