Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F737C004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htESqwVIoFK8h+Sx012QmG0H/WOaMfXWUIEeDaLhlds=; b=cTehz7myIiuvM5
	zMie/iKWwADFxXZY2JS1PliBkk1UOxFMje8uLXl5sQhGqhGGQMW+beN/55rDvTZzJ8ZC4afPKq9tb
	Qik6OAmaOg+K4eEbvAmE/LJKt5R2N8tuaGceydljM1BLQdefBlQ+vvWvXp/dxVrN8zGb6mWT6QLRs
	JZ4gJhE8lw2lP4INjaTxZFShBe7fQGa3IzDVwepGe07DQSmfDDF3Qp4eorToxxkP7mrIFuy34QCBj
	cHCtgJ5OL3vZ9xf0jNZf4Ob01udsE7iKnYuoud6cq97BAnzhKWwCkYt+MRz0bS83Lkjs8OEacYIz1
	ETf+1tbncoxsPsBw7eZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5U2-000IiW-J0; Wed, 18 Jan 2023 10:15:54 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5U0-000If6-Au
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:15:53 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by baptiste.telenet-ops.be with bizsmtp
	id AAFN2900B2zf9gW01AFN4L; Wed, 18 Jan 2023 11:15:42 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TQ-005aIP-MK;
	Wed, 18 Jan 2023 11:15:22 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TW-001JVm-0b;
	Wed, 18 Jan 2023 11:15:22 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/7] net: fman: memac: Convert to devm_of_phy_optional_get()
Date: Wed, 18 Jan 2023 11:15:15 +0100
Message-Id: <0c2302aceb4739ec846edebbc57e71819a8b8ad3.1674036164.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674036164.git.geert+renesas@glider.be>
References: <cover.1674036164.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_021552_572385_D239B442 
X-CRM114-Status: UNSURE (   9.58  )
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

Use the new devm_of_phy_optional_get() helper instead of open-coding the
same operation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/net/ethernet/freescale/fman/fman_memac.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/freescale/fman/fman_memac.c b/drivers/net/ethernet/freescale/fman/fman_memac.c
index 9349f841bd0645a0..892277f13048660d 100644
--- a/drivers/net/ethernet/freescale/fman/fman_memac.c
+++ b/drivers/net/ethernet/freescale/fman/fman_memac.c
@@ -1152,12 +1152,12 @@ int memac_initialization(struct mac_device *mac_dev,
 	else
 		memac->sgmii_pcs = pcs;
 
-	memac->serdes = devm_of_phy_get(mac_dev->dev, mac_node, "serdes");
-	err = PTR_ERR(memac->serdes);
-	if (err == -ENODEV || err == -ENOSYS) {
+	memac->serdes = devm_of_phy_optional_get(mac_dev->dev, mac_node,
+						 "serdes");
+	if (!memac->serdes) {
 		dev_dbg(mac_dev->dev, "could not get (optional) serdes\n");
-		memac->serdes = NULL;
 	} else if (IS_ERR(memac->serdes)) {
+		err = PTR_ERR(memac->serdes);
 		dev_err_probe(mac_dev->dev, err, "could not get serdes\n");
 		goto _return_fm_mac_free;
 	}
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
