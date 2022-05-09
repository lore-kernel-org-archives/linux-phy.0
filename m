Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 493A2C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  9 May 2022 12:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bXGcTHM8MVhsdy65vYjMo/8GyAO4e5XGTtdhTHamaCw=; b=T8IKzNVP9l3kzJ
	hb1z1O635EHjErSOHLIYKSBB4EMROGeEaoSr810YjnFC+t9keiSmgdLk03p6WFybaLA3GXxph7fGg
	v8J/HRAwHLI0giXZadVKfZypOWZ/beXEv5Q3S9z2BJNWAEQw++Dlw22zcJPXFc15YdnHa8hm1csJ8
	W8csn6p//+OuFFTe66ETQwpy9shcR9ayeDRR5831bNcczpj+yHPESU54krfNWRoPIxeUYu0QVhOTN
	BE4HdIoaIygd50t9tzoS6oefDwxr4tRR9dwxgsFWzie7IaZshRzIfPkZmt48mSmCmAWXSriD1v9nr
	zxA+hCZG3nDrGIG1BguQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no2tT-00EThf-Lw; Mon, 09 May 2022 12:53:43 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no2tR-00ETh8-AW
 for linux-phy@lists.infradead.org; Mon, 09 May 2022 12:53:42 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:8886:2b92:63eb:2922])
 by baptiste.telenet-ops.be with bizsmtp
 id Uctc2700B0moLbn01ctcwb; Mon, 09 May 2022 14:53:37 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1no2tL-003XZG-Tr; Mon, 09 May 2022 14:53:35 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1no2tL-003Jou-3Z; Mon, 09 May 2022 14:53:35 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: phy: renesas: usb3-phy: Spelling
 s/funcional/functional/
Date: Mon,  9 May 2022 14:53:34 +0200
Message-Id: <3da9bd360e1c83007af0e0e90fa4e6c2b50fdab3.1652100633.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_055341_537258_8C397A28 
X-CRM114-Status: UNSURE (   8.43  )
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

Fix a misspelling of the word "functional".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
index b8483f9edbfc316a..fe57c5373d18a5d5 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
@@ -34,7 +34,7 @@ properties:
     # must not be 0.
     minItems: 2
     items:
-      - const: usb3-if # The funcional clock
+      - const: usb3-if # The functional clock
       - const: usb3s_clk # The usb3's external clock
       - const: usb_extal # The usb2's external clock
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
