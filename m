Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EE97C3ABBC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 23:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BS/FP74wqOtos7gfdI9P4Kg+wB7MWj7aYszj8/l/sJE=; b=MFjtDUzDOSOahu
	pCReR8i/BHx0fbMFlhsJ+bJWpvm6YNWGWhaeG4tiIXD3PcfKTe1kjXhxNgKn/ME/Wmsm/zo58sG0i
	66HlybB0Hr74uHRY/Ob3qVFgFH+Hybk3q/uhgtewCgL5BBzfsA46RcLlUeddhw7llSXhZuwbXF8zp
	rBCk2UJy7yuyjFFVIXUOjY7Dg+QUqnLxKlsN+pt2mv0xznNxqrV9aZtLHyhrqnVZYNF7osQpBB6ur
	Z9pbNUEUWRpXj1krTjy9my/XelJ4brvmpTDLqHqF+RFmk6JvEJzQDwea4+qxYZFAyWCiK5SxLDyyD
	6Hl1cSZwZaLuwuiJrB+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCRpL-0000000DfsU-085R;
	Tue, 06 May 2025 23:35:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCLnT-0000000CnwO-3NWm
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 17:09:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7F1075C58A3;
	Tue,  6 May 2025 17:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 58F7CC4CEF3;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746551374;
	bh=k+gZ1pxmpGXcLHj2TLw4nLia4cr2GC0EuPxS3YjpOCg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VcDx68d5Wc2yLUlRvccpd/myN1moA5pKE7H4f4f0ib88r7j1fENwvw70NQSonwxgT
	 CoE7MGXOHwDCwuIbSm/A2O46wmnjfivqwDUitiIa0y+7kxPeWTaIManccTNRWz2/0f
	 VtYWfG1NK1BQEZZ+omAqXCAyT2yy7lnwcYvf7T/lCurvR/bf5djhiHe9SZ4Po6ZlFR
	 jOObMVTZ0NSuKZH0M4+qy09FQyLibIE2v6Jz0uZG0NkmJdg0JODLYztSIpljgwOKaf
	 0yCl9OjzkYWmiNwj/2OyGxUfVsU5jkw1l/muai+Mju8ETfY06KbzZlijB4bu+YcNKy
	 1RbOH1vM0675g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4942DC3ABC5;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Tue, 06 May 2025 12:09:18 -0500
Subject: [PATCH v2 2/2] phy: tegra: xusb: Default otg mode to peripheral
MIME-Version: 1.0
Message-Id: <20250506-xusb-peripheral-v2-2-bfbe00671389@gmail.com>
References: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com>
In-Reply-To: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com>
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746551373; l=1618;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=WY090858pJtzoKww7YaC7Z9JTjET1bec4L1964gg6J4=;
 b=NaDOg+nVQv05p86Ta/79J6j2EU3M3vcxowUBXmQydstuVgGIULGpaJycP9oGlAbZopQhyWfpF
 OWzO8bM+nO6Cp/bxIk33uX0ce/QeUjBV6iUHqoiGfgtc3beuBTn+vi1
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_100935_937778_D9507BBE 
X-CRM114-Status: GOOD (  10.29  )
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

Currently, if usb-role-switch is set and role-switch-default-mode is
not, a xusb port will be inoperable until that port is hotplugged,
because the driver defaults to role none. Instead of requiring all
devices to set the default mode, assume that the port is primarily
intended for use in device mode.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 drivers/phy/tegra/xusb.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 79d4814d758d5e1f0e8200d61e131606adbb0e2d..22338f3f24a0794c22544a0e16e0fc706c4fb6d7 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -726,18 +726,15 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
 
 static void tegra_xusb_parse_usb_role_default_mode(struct tegra_xusb_port *port)
 {
-	enum usb_role role = USB_ROLE_NONE;
+	/* Most switchable usb ports are normally used in device mode */
+	enum usb_role role = USB_ROLE_DEVICE;
 	enum usb_dr_mode mode = usb_get_role_switch_default_mode(&port->dev);
 
 	if (mode == USB_DR_MODE_HOST)
 		role = USB_ROLE_HOST;
-	else if (mode == USB_DR_MODE_PERIPHERAL)
-		role = USB_ROLE_DEVICE;
 
-	if (role != USB_ROLE_NONE) {
-		usb_role_switch_set_role(port->usb_role_sw, role);
-		dev_dbg(&port->dev, "usb role default mode is %s", modes[mode]);
-	}
+	usb_role_switch_set_role(port->usb_role_sw, role);
+	dev_dbg(&port->dev, "usb role default mode is %s", modes[mode]);
 }
 
 static int tegra_xusb_usb2_port_parse_dt(struct tegra_xusb_usb2_port *usb2)

-- 
2.48.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
