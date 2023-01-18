Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4200BC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+LEAbl9yuTp2aXzG7KQ4XkLrX2N5EHNNJeBhZe3FoQ=; b=PDLqq2zLQtF/ZB
	MpWYs1Lghcrzq+CNDl63xbak3y3P7KZ/JGt1WfupbsDhX5QhcIBJdPLGCoIJn5h9JnAHKD+5rxZU5
	zLX8XhGryKH9loPV2cbyu3i14MqachZfYruFcQvhRWv8TsPOiBq535guUG0YGBqzDzYWy81OFRYvw
	rNs3o7TkalqyJiZVA22gx2H6UCf6Q4el1g0OUeY1t0VEGisXqm6RlSwaS0aRtj3JTAl2LHna5IN8X
	mc1xXSDjs0IS6wM36MXDYnYulVgJeTylVsdu8XcFkRJluXgagidAMTAR2V2oWhvCGQ4BIesPqR7jN
	Tj8SxQCNj5UkfbXCPYTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5UC-000Ilh-M0; Wed, 18 Jan 2023 10:16:04 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5U0-000IfB-Aq
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:15:55 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by xavier.telenet-ops.be with bizsmtp
	id AAFN290092zf9gW01AFNxV; Wed, 18 Jan 2023 11:15:42 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TQ-005aIh-PT;
	Wed, 18 Jan 2023 11:15:22 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TW-001JW3-3f;
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
Subject: [PATCH 6/7] usb: host: ehci-exynos: Convert to devm_of_phy_optional_get()
Date: Wed, 18 Jan 2023 11:15:19 +0100
Message-Id: <96fce347ffa2d6efaa3fd24bf2d91e2a0a91c371.1674036164.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674036164.git.geert+renesas@glider.be>
References: <cover.1674036164.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_021552_562256_954B25DF 
X-CRM114-Status: GOOD (  11.35  )
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

This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
handle NULL parameters fine.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/usb/host/ehci-exynos.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/host/ehci-exynos.c b/drivers/usb/host/ehci-exynos.c
index a333231616f437b8..0f8d7df4937b2da4 100644
--- a/drivers/usb/host/ehci-exynos.c
+++ b/drivers/usb/host/ehci-exynos.c
@@ -80,19 +80,12 @@ static int exynos_ehci_get_phy(struct device *dev,
 			return -EINVAL;
 		}
 
-		phy = devm_of_phy_get(dev, child, NULL);
+		phy = devm_of_phy_optional_get(dev, child, NULL);
 		exynos_ehci->phy[phy_number] = phy;
 		if (IS_ERR(phy)) {
-			ret = PTR_ERR(phy);
-			if (ret == -EPROBE_DEFER) {
-				of_node_put(child);
-				return ret;
-			} else if (ret != -ENOSYS && ret != -ENODEV) {
-				dev_err(dev,
-					"Error retrieving usb2 phy: %d\n", ret);
-				of_node_put(child);
-				return ret;
-			}
+			of_node_put(child);
+			return dev_err_probe(dev, PTR_ERR(phy),
+					     "Error retrieving usb2 phy\n");
 		}
 	}
 
@@ -108,12 +101,10 @@ static int exynos_ehci_phy_enable(struct device *dev)
 	int ret = 0;
 
 	for (i = 0; ret == 0 && i < PHY_NUMBER; i++)
-		if (!IS_ERR(exynos_ehci->phy[i]))
-			ret = phy_power_on(exynos_ehci->phy[i]);
+		ret = phy_power_on(exynos_ehci->phy[i]);
 	if (ret)
 		for (i--; i >= 0; i--)
-			if (!IS_ERR(exynos_ehci->phy[i]))
-				phy_power_off(exynos_ehci->phy[i]);
+			phy_power_off(exynos_ehci->phy[i]);
 
 	return ret;
 }
@@ -125,8 +116,7 @@ static void exynos_ehci_phy_disable(struct device *dev)
 	int i;
 
 	for (i = 0; i < PHY_NUMBER; i++)
-		if (!IS_ERR(exynos_ehci->phy[i]))
-			phy_power_off(exynos_ehci->phy[i]);
+		phy_power_off(exynos_ehci->phy[i]);
 }
 
 static void exynos_setup_vbus_gpio(struct device *dev)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
