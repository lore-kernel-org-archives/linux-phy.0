Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9884FC48BF5
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CqrOjn+r2NL3/5DXc98kummx46ciD+kgKSPPuXJWKk=; b=z8pSHrkmOQ5if1
	P23KVneQoJ3CcYVHw6SmUKlUes9G9Ltm7wGiCvh9DIsFtYDlH7/fyzELuNqgKBM1zYRUgWBCn1M3I
	dROH9haQtsh6Hf4ux0zG4LpZXGXDanuUGfZFNmtXD4jCJTEPzJ7I2AL8IkRSjUhFFN1Qa9JuPb/Kv
	t5TCW1Spx/ZRREFb9p9kbtdfay2DOiQJFIk/Nmg1lYITPPIIli1fiAzbGsQtNpyseyKuxQqQA8MBr
	BcdTaA+rVrwpSdAt2j0V6OHXunLzwoGwN/1o0TRPfjZ558IYoavy1uo8GEYKKgNHOp0H8ndg7t1RO
	PDqzyo4O/nCAQUNTxNlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb026-00000002kXk-0J97;
	Fri, 16 Feb 2024 15:21:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb01q-00000002kQ5-2tkz
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 15:21:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 73529CE2BBC;
	Fri, 16 Feb 2024 15:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5D19AC43390;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708096887;
	bh=esSfqR/EN2uGgQJhZInB3gQ5IgggyIpQkCwvAPI4KIE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ksU4hZnhGFY/DpaonfNqIcpv7UidugyR75F1sQOQNhkbyxnTCEOUOW5eq1CVXstPf
	 /bhZwdJThzwPWzyi6uwkEDiuo8SLUwUSDaGJ2x+1xQZcpLGndGox8zoRP6TZCJcmDq
	 oPwaSW5cElsGXj+mrWIuJYSBFBjia+XFr3IUHlSgmF/VezNJKNKiwHbczxKQjeOqKZ
	 /9k2DDFKD0/1W/3DFd/KuF/udubvA+GUrl+f9lMw7xvxZrIaTFU4dlmhjhHzsVGlvM
	 d7KCKu/bnu1VGvn4lu93z2NlumZQyvsRhFxkFv9EiigvME5tVYNu1erdAx4PiQqU9M
	 YL6+KZPvu8mHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 453B0C48BEF;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Fri, 16 Feb 2024 23:21:02 +0800
Subject: [PATCH RFC 2/4] phy: hisilicon: enable clocks for every ports
MIME-Version: 1.0
Message-Id: <20240216-inno-phy-v1-2-1ab912f0533f@outlook.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
In-Reply-To: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708096886; l=971;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=jGUbESXsyAvU27nkXjLoTOKtwqcjOT068eM8RNJCWfs=;
 b=ITanD2VY3jqLkr3V4AaluZ6h9nWHCdy3Na9jDZgUch40We/Y5Xqui1gOxijFrPIN7OP9s0KLu
 y967I7P63k6BFsOonwkTg3pWZVrf4mwUOvGffTMiP+h2VMI1SMATgVs
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_072131_241429_77F79F50 
X-CRM114-Status: GOOD (  10.57  )
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
Reply-To: forbidden405@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Yang Xiwen <forbidden405@outlook.com>

This is needed for port1 to work.

Fixes: ba8b0ee81fbb ("phy: add inno-usb2-phy driver for hi3798cv200 SoC")
Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
index c138cd4807d6..b7e740eb4752 100644
--- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
+++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
@@ -86,8 +86,10 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
 
 static void hisi_inno_phy_setup(struct hisi_inno_phy_priv *priv)
 {
+	int i;
 	/* The phy clk is controlled by the port0 register 0x06. */
-	hisi_inno_phy_write_reg(priv, 0, 0x06, PHY_CLK_ENABLE);
+	for (i = 0; i < INNO_PHY_PORT_NUM; i++)
+		hisi_inno_phy_write_reg(priv, i, 0x06, PHY_CLK_ENABLE);
 	msleep(PHY_CLK_STABLE_TIME);
 }
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
