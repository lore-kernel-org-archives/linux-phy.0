Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D46C38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8g6goKujsNCvtYrRFUMfXiPcjc04F3hpbWqpiBKE8g=; b=JsxIb7HSTrOuKr
	AmOUcF/GDAvmXsKbdLlSSVjHbvXMoTO5buz2itAVAQTxBvAJLq8WLN1xWX/bcsRpb/JuzAJOUkAfS
	s3rTU9icpWVChQ88BMAqCVNrDDXMQC+PzmqJv4SzR1wkNZtTx4GxvkNE6IsbVHEChkyCM969qrhDr
	f5NOGCdHjHEgWDiMBhLcOzIlWDIWhkX3HrVFz9z3UtQrm2DhpcOoqt/OBURYZCIbX52GfKkZQrJY4
	+x6BuzRto8d3goPUcOes6vcwdE+j3GQGVd7JDEvW/9xw0HDnXfLuOejJXDuKW1c6DSr74s3hMf/1H
	ac8qrXG9biyCKwQN5+gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5r4-000OqQ-56; Wed, 18 Jan 2023 10:39:42 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5r1-000OoB-5R
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:39:40 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by andre.telenet-ops.be with bizsmtp
	id AAfX2900R2zf9gW01AfXTr; Wed, 18 Jan 2023 11:39:35 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5qo-005aKN-8S;
	Wed, 18 Jan 2023 11:39:31 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5qt-001Jt7-Iv;
	Wed, 18 Jan 2023 11:39:31 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/2] phy: phy-can-transceiver: Add support for NXP TJR1443
Date: Wed, 18 Jan 2023 11:39:24 +0100
Message-Id: <0bfa1e4c43632e49c9512b4e7daa970545545dcf.1674037830.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674037830.git.geert+renesas@glider.be>
References: <cover.1674037830.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_023939_362914_F61CE0A8 
X-CRM114-Status: UNSURE (   9.30  )
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

The NXP TJR1443 High-speed CAN transceiver with Sleep mode is a
pin-compatible alternative for the TI TCAN1043.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/phy-can-transceiver.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index ce511ad5d3690763..5487b9dd1ead1aca 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -84,6 +84,10 @@ static const struct of_device_id can_transceiver_phy_ids[] = {
 		.compatible = "ti,tcan1043",
 		.data = &tcan1043_drvdata
 	},
+	{
+		.compatible = "nxp,tjr1443",
+		.data = &tcan1043_drvdata
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
