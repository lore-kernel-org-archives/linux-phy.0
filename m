Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58713C54E94
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 19:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yFaCfXhqDsTokZjhx5RcEqyviTxcOwUrZLhSIz+kVk=; b=K5zn7lRXn4Sa8z
	VzVN8WziwagI2jko5qnOrjFllvZ3pOutbxcBFNo5lfxy2zrI2DHWSlYPErf4+YWBdhcDbBUL2hOmJ
	4eiSQ4dJ4sbJ1B7C/Ar1tTTWLOcy7tUPtGn0T4mW3RoMKu//iEkXgn8xI5QqQhegq6Vl9TYx26eTD
	SxzPDl4v6r6IR/oNd2Ny1Jo/Yn8fgZEw+AeCcpTkZ9q4ZVyStfl/wdOPLJY6YrLUU3ofFeu8Orm/f
	lfGqO4UJVJi2K0bmBnMqndk2GzPulGabVC4+LITAYhbJz5HZPHCY3syTfryu67BDEA2j/t6wzxNE5
	IQvJLMSvzWHSFHDJxpVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKOYu-0050FQ-PV; Tue, 24 Jan 2023 19:02:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKOYt-0050FB-A9
	for linux-phy@bombadil.infradead.org; Tue, 24 Jan 2023 19:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=EySmfakFxQGDmBaay7PXt85nZOkoIkEPMHIcn362Aes=; b=bRvx1Wvs2McolvKydAGJVT1gVa
	BJrIuvgMo2EeDdkh8eGhJ1DxmvZjiGNbVgyA36Rgh457qbLT5oWSdPx1/lLwl/iYa6w6SBAF8+w1l
	xQD4mRvUOYjDP1WlmUNaMEX9mudzCGN4mdz099QxxzyFzOEvDT5vX9+NABQHHzjEgS4jr+T/tSNIO
	twgufxCZMl+9cRxchhWS9wyG0AkCsb1nk75nior77N4k52TuJxGMnWa1SLdTRr7MmkLr+sosE93LZ
	GKQTqPJ7YkT4Qdnx6Sw0lpalFuahtOLaqZ4utvHlaEe2sPc8JiR2UvBAG/EnXnaPwgNVhlGuqF0on
	x1BU5Xww==;
Received: from gauss.telenet-ops.be ([2a02:1800:120:4::f00:11])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pKOAt-001uh6-0N
	for linux-phy@lists.infradead.org;
	Tue, 24 Jan 2023 18:37:44 +0000
Received: from andre.telenet-ops.be (andre.telenet-ops.be [IPv6:2a02:1800:120:4::f00:15])
	by gauss.telenet-ops.be (Postfix) with ESMTPS id 4P1bLv537Lz4wxM3
	for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 19:37:59 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:2f4a:8573:c294:b2ce])
	by andre.telenet-ops.be with bizsmtp
	id CidZ2900756uRqi01idZWC; Tue, 24 Jan 2023 19:37:58 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAe-007HCm-ME;
	Tue, 24 Jan 2023 19:37:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAn-002n0z-6H;
	Tue, 24 Jan 2023 19:37:33 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Madalin Bucur <madalin.bucur@nxp.com>,
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
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>
Cc: linux-phy@lists.infradead.org,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 7/9] PCI: tegra: Convert to devm_of_phy_optional_get()
Date: Tue, 24 Jan 2023 19:37:26 +0100
Message-Id: <56508eeadf7fa8692877e872871f10294d48c49d.1674584626.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674584626.git.geert+renesas@glider.be>
References: <cover.1674584626.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_183739_586646_7B5D0B1D 
X-CRM114-Status: GOOD (  10.84  )
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
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
---
v2:
  - Add Acked-by.
---
 drivers/pci/controller/pci-tegra.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index 929f9363e94bec71..5b8907c663e516ad 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -1330,12 +1330,9 @@ static struct phy *devm_of_phy_optional_get_index(struct device *dev,
 	if (!name)
 		return ERR_PTR(-ENOMEM);
 
-	phy = devm_of_phy_get(dev, np, name);
+	phy = devm_of_phy_optional_get(dev, np, name);
 	kfree(name);
 
-	if (PTR_ERR(phy) == -ENODEV)
-		phy = NULL;
-
 	return phy;
 }
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
