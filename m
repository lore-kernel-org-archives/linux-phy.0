Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFCBFC25B50
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 19:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKTq5ZoW3DeADbx7VYuBHhqf+axJu0fkwdtpBBsL8AE=; b=zEqm77caBb4l1Q
	BloyAPoRqbm2uCRdNFbnhr4seyTb+qjOkBYhnm67E+sp3HYMx0U4y3neCB54zI8cqERXiL2BC+GXi
	ybOGH97/28vHhclqoInjDIo5aNYJNIH3YGlQmxP/SN/lBXkTPeHXDTeqh2G4YjrdVgxVtR7fhKEBd
	2t7accjEz5lyvwYjQIPBY1Vsjq2xRi9JtO2tbC0b1YJx5ymtt0BbDq3MJDphyAwU9JyN7L43LClzn
	Yi0NZeWU89e2q5chhuH2qctrYA+un4yIQNKjN+nJjc/2547K8SWUHotmtqqSqBthNJlQ6Yco0KfNw
	wrvkoXg048VWZ06tnuJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPEr-0053j9-4e; Tue, 24 Jan 2023 19:45:49 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKOBD-004xj6-LZ
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 18:38:02 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:2f4a:8573:c294:b2ce])
	by albert.telenet-ops.be with bizsmtp
	id CidZ2900356uRqi06idZVY; Tue, 24 Jan 2023 19:37:55 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAe-007HCO-Ho;
	Tue, 24 Jan 2023 19:37:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAn-002n0c-1h;
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
Subject: [PATCH v2 2/9] doc: phy: Document devm_of_phy_get()
Date: Tue, 24 Jan 2023 19:37:21 +0100
Message-Id: <768d5845668f081620098a0b4479d1481e212bac.1674584626.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674584626.git.geert+renesas@glider.be>
References: <cover.1674584626.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_103759_872947_376989BB 
X-CRM114-Status: GOOD (  13.52  )
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

Add the missing documentation for devm_of_phy_get(), which was forgotten
when the function was introduced.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - New.
---
 Documentation/driver-api/phy/phy.rst | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
index 26467dd4f291505e..6cadc58f4ce07ce4 100644
--- a/Documentation/driver-api/phy/phy.rst
+++ b/Documentation/driver-api/phy/phy.rst
@@ -106,6 +106,8 @@ it. This framework provides the following APIs to get a reference to the PHY.
 	struct phy *devm_phy_get(struct device *dev, const char *string);
 	struct phy *devm_phy_optional_get(struct device *dev,
 					  const char *string);
+	struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
+				    const char *con_id);
 	struct phy *devm_of_phy_get_by_index(struct device *dev,
 					     struct device_node *np,
 					     int index);
@@ -119,10 +121,10 @@ successful PHY get. On driver detach, release function is invoked on
 the devres data and devres data is freed.
 devm_phy_optional_get should be used when the phy is optional. This
 function will never return -ENODEV, but instead returns NULL when
-the phy cannot be found.Some generic drivers, such as ehci, may use multiple
-phys and for such drivers referencing phy(s) by name(s) does not make sense. In
-this case, devm_of_phy_get_by_index can be used to get a phy reference based on
-the index.
+the phy cannot be found.
+Some generic drivers, such as ehci, may use multiple phys. In this case,
+devm_of_phy_get or devm_of_phy_get_by_index can be used to get a phy
+reference based on name or index.
 
 It should be noted that NULL is a valid phy reference. All phy
 consumer calls on the NULL phy become NOPs. That is the release calls,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
