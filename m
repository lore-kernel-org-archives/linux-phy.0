Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CAFAC83F03
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 12:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZrNFuN73YGSkiw81k/i41IYVTHDXSrTVIzTV34xycw=; b=YyuoUebLLF1cmV
	IsywXauZQHyR4FZz0PnFlVKwekWAzPOcjTsmRCpvNQtzQhsLKq4Wl8gpK408JuQpvOZ8qYW8ZaTre
	obMvQVr3latJONyjywfT86oMrcJqWshi0X2ngX4Nsh5YcB2EKgIiPZih4uBPsH0Cj1hPfsTnCpTff
	BS/V2Ijw+DNXLkj5ysL9NE/6F5rEVSjdybEbzWPXTw8hFfZYu66Yz9kwBaMmGdVcmauw2zlvXmDFZ
	Dk2C3u/NV6clN1N3rD+TcyBxAX7xBA3S9+YfxEw63H2AVojwVbN6P6GzSw8lZCdV63vHgz5bFqcbN
	gZV/FsVtVddVYAocexnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXJ8k-0000000BLXw-10o0;
	Thu, 03 Jul 2025 12:34:10 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXHnb-0000000B74L-452n
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 11:08:17 +0000
X-CSE-ConnectionGUID: JN4MplTaR6CRhVIxAG6TIw==
X-CSE-MsgGUID: Ow2QnL7bQpSsRM+ot9wbNQ==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 03 Jul 2025 20:08:14 +0900
Received: from [127.0.1.1] (unknown [10.226.78.19])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 2A29140015C3;
	Thu,  3 Jul 2025 20:08:11 +0900 (JST)
From: Michael Dege <michael.dege@renesas.com>
Date: Thu, 03 Jul 2025 13:07:24 +0200
Subject: [PATCH v4 2/2] phy: renesas: r8a779f0-ether-serdes: add new step
 added to latest datasheet
MIME-Version: 1.0
Message-Id: <20250703-renesas-serdes-update-v4-2-1db5629cac2b@renesas.com>
References: <20250703-renesas-serdes-update-v4-0-1db5629cac2b@renesas.com>
In-Reply-To: <20250703-renesas-serdes-update-v4-0-1db5629cac2b@renesas.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Michael Dege <michael.dege@renesas.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751540886; l=2379;
 i=michael.dege@renesas.com; s=20250523; h=from:subject:message-id;
 bh=8bUXCSo65pFuL9K7IKGHK785dYGPeGX435gMmbBZl8I=;
 b=N+7Y1YmhEfzvZj8B4ak0niBxiWyifklTIn5OXhVwstLDCXpiZLn3r+9uKNMYjS8DlMiqlGs04
 SK/OcKCtFGtAQY9of/Pi/4ZppshAU35xAvr+7asFlc90N539Nt39CZ/
X-Developer-Key: i=michael.dege@renesas.com; a=ed25519;
 pk=+gYTlVQ3/MlOju88OuKnXA7MlapP4lYqJn1F81HZGSo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_040816_127773_0F631082 
X-CRM114-Status: UNSURE (   8.41  )
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

R-Car S4-8 datasheet Rev.1.20 describes some additional register
settings at the end of the initialization.

Signed-off-by: Michael Dege <michael.dege@renesas.com>
---
 drivers/phy/renesas/r8a779f0-ether-serdes.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/phy/renesas/r8a779f0-ether-serdes.c b/drivers/phy/renesas/r8a779f0-ether-serdes.c
index ed83c46f6d00c255852cc5af867c89ab0d0db02a..8a6b6f366fe376d21f5fee7795893f5aac0feae4 100644
--- a/drivers/phy/renesas/r8a779f0-ether-serdes.c
+++ b/drivers/phy/renesas/r8a779f0-ether-serdes.c
@@ -49,6 +49,13 @@ static void r8a779f0_eth_serdes_write32(void __iomem *addr, u32 offs, u32 bank,
 	iowrite32(data, addr + offs);
 }
 
+static u32 r8a779f0_eth_serdes_read32(void __iomem *addr, u32 offs,  u32 bank)
+{
+	iowrite32(bank, addr + R8A779F0_ETH_SERDES_BANK_SELECT);
+
+	return ioread32(addr + offs);
+}
+
 static int
 r8a779f0_eth_serdes_reg_wait(struct r8a779f0_eth_serdes_channel *channel,
 			     u32 offs, u32 bank, u32 mask, u32 expected)
@@ -319,6 +326,7 @@ static int r8a779f0_eth_serdes_hw_init_late(struct r8a779f0_eth_serdes_channel
 *channel)
 {
 	int ret;
+	u32 val;
 
 	ret = r8a779f0_eth_serdes_chan_setting(channel);
 	if (ret)
@@ -332,6 +340,26 @@ static int r8a779f0_eth_serdes_hw_init_late(struct r8a779f0_eth_serdes_channel
 
 	r8a779f0_eth_serdes_write32(channel->addr, 0x03d0, 0x380, 0x0000);
 
+	val = r8a779f0_eth_serdes_read32(channel->addr, 0x00c0, 0x180);
+	r8a779f0_eth_serdes_write32(channel->addr, 0x00c0, 0x180, val | BIT(8));
+	ret = r8a779f0_eth_serdes_reg_wait(channel, 0x0100, 0x180, BIT(0), 1);
+	if (ret)
+		return ret;
+	r8a779f0_eth_serdes_write32(channel->addr, 0x00c0, 0x180, val & ~BIT(8));
+	ret = r8a779f0_eth_serdes_reg_wait(channel, 0x0100, 0x180, BIT(0), 0);
+	if (ret)
+		return ret;
+
+	val = r8a779f0_eth_serdes_read32(channel->addr, 0x0144, 0x180);
+	r8a779f0_eth_serdes_write32(channel->addr, 0x0144, 0x180, val | BIT(4));
+	ret = r8a779f0_eth_serdes_reg_wait(channel, 0x0180, 0x180, BIT(0), 1);
+	if (ret)
+		return ret;
+	r8a779f0_eth_serdes_write32(channel->addr, 0x0144, 0x180, val & ~BIT(4));
+	ret = r8a779f0_eth_serdes_reg_wait(channel, 0x0180, 0x180, BIT(0), 0);
+	if (ret)
+		return ret;
+
 	return r8a779f0_eth_serdes_monitor_linkup(channel);
 }
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
