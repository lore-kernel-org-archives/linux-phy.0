Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D4BDC25B50
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 19:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2g4vUSzVtjXfW/9/MvGVHYa5Fkdo+MZoHK/5qryqq8=; b=dPNZyoXY/vUXbe
	M6gl/yPqsQTcj8ob4K3QvTLwxEKwOFofSX4FMYcq0cvbYJoSTnOefhxN5ulUxrVUX44qw9JJkNo8A
	Piir447elfRaUHXHlbR0QmNDbrJIKb87Suv1paLBMK16DnadbBTfYQQ6wut3CS8iYjdmHikLtoNrL
	phUgXVScktRCJN9mxc4MLaFdo+4hJTDKMP9Jjl/72rfSNPDEd2nntVl4ZPB/ILQ5T93gWHL01rJ8N
	OdYpua1RAQ0fsEq7UZA1xLWtWwni8PLg1ikYFYNC63EwSskmpgDBEYU1AiLEsj4HV7iQqXb+pTZWS
	0n+EHjc7kDl/J09bdPqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPEy-0053kQ-OC; Tue, 24 Jan 2023 19:45:56 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKOBE-004xjT-OJ
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 18:38:04 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:2f4a:8573:c294:b2ce])
	by michel.telenet-ops.be with bizsmtp
	id CidZ2900556uRqi06idZyA; Tue, 24 Jan 2023 19:37:58 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAe-007HCY-JX;
	Tue, 24 Jan 2023 19:37:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAn-002n0l-3x;
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
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Sean Anderson <sean.anderson@seco.com>
Subject: [PATCH v2 4/9] net: fman: memac: Convert to devm_of_phy_optional_get()
Date: Tue, 24 Jan 2023 19:37:23 +0100
Message-Id: <f2d801cd73cca36a7162819289480d7fc91fcc7e.1674584626.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674584626.git.geert+renesas@glider.be>
References: <cover.1674584626.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_103801_060216_B8917CC1 
X-CRM114-Status: GOOD (  13.01  )
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

As devm_of_phy_optional_get() returns NULL if either the PHY cannot be
found, or if support for the PHY framework is not enabled, it is no
longer needed to check for -ENODEV or -ENOSYS.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Sean Anderson <sean.anderson@seco.com>
---
v2:
  - Add Reviewed-by,
  - Clarify removed checks for -ENODEV and -ENOSYS,
  - Remove error printing in case of real failures.
---
 drivers/net/ethernet/freescale/fman/fman_memac.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/freescale/fman/fman_memac.c b/drivers/net/ethernet/freescale/fman/fman_memac.c
index 9349f841bd0645a0..ddd9d13f1166e120 100644
--- a/drivers/net/ethernet/freescale/fman/fman_memac.c
+++ b/drivers/net/ethernet/freescale/fman/fman_memac.c
@@ -1152,13 +1152,12 @@ int memac_initialization(struct mac_device *mac_dev,
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
-		dev_err_probe(mac_dev->dev, err, "could not get serdes\n");
+		err = PTR_ERR(memac->serdes);
 		goto _return_fm_mac_free;
 	}
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
