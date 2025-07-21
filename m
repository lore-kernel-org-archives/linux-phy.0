Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8F93C87FC8
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZlF5zbWOLgf5I2npxfpZCylY/hIQhhN9x17mI/EEjQ=; b=xZrcHzuWOhHKer
	75nY0uNsHG6RIYLtEFFXB2l4aHxsWDLqyrHaLussPnrE635RXFxWCBz6jo4jZjm6TyBJFyXrmryk5
	7K9PakbKTZOpiLoZiaC7ulmw4cMd1xWjmnXXIiyXzmfD8HAYooOkiq5kECBAab+/gB0XdZjeKIFYL
	s7Nv16hnA0HAM3eK715mAeQOzIHxFe6qLrnAPnJuZKo/aFWilDHAAGp8plis+8ei79Zy2AtZXO/B5
	xZv3OnEVNFC8JeLtCNxAkJujW0tE4HPvYpL5zdweM81hE5397okgB1vB09YhxVNwUdwE83bggpvaK
	j08aoMg5KkkCnTgsYW5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5o-0000000FxTY-2zpp;
	Mon, 21 Jul 2025 02:17:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5h-0000000FxKe-3aTh
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A2855A50A5C;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 305A2C4CEF6;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=tH3H8zgMbP7z7HPFQ34anWHnf3Cn7AZwpiLAi9WmJp0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=nIhRwKDtRrA8tPFAomq3bmNMoaNjwUXQHqwDQuXOz1SADOOYCk56SZlSgVvaPPFCJ
	 FrgQbLMHen7l/5AAv4i12LsJqqQAoir7u5x+JZIhPy5sfmgFdPv9jCIXRLWbs7lsx1
	 ER5xTVJxV4BjKRcdkU1cUZKQrK6ynvW7hDEqUc3bpQu4eHGK5aVvoRCPoocBWeQy5g
	 G/5mc4cQ/a1zQaAAOSpcnT1z/PfhIJkLGdHoXRbsEfrIjG8MW4/0kqb9ZBPV7aOqGK
	 Wc602dsS1UBpPkGAvcA9wREmy3Qs/5OttxISjVLrsmwaDZ32n8f5EEI6MH72dSEryE
	 DegnaTqdeQ4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2085FC83F22;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:14:56 -0500
Subject: [PATCH v2 02/17] dt-bindings: phy: tegra-xusb: Document
 Tegra210B01
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-2-9cb209f1edfc@gmail.com>
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
In-Reply-To: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>, 
 Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=949;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=UpNpYF6b2E0atbGFOefjF2Dt7IyUMvWdkARxBy1JuV0=;
 b=leQBs4fOTFx56689NhbY10lbcJjLOjEPkrvzVuaZtWB05gxb8cmVgMHlKkdmfhz4pe2EBkDX9
 8i/Ikyy5xBAB7+boqoeiPvK3fz9nJ6ClD1BTGo90eneB/4qr6y9HF6B
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191722_035620_59DD6A60 
X-CRM114-Status: UNSURE (   8.48  )
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

Add the compatible string for the Tegra210B01 XUSB PHY

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 .../devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml
index e9237c58ce45df7fa25cac861891b3fe76efe83d..e876be8058d6a37cf006351f478d29e6b981c672 100644
--- a/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml
@@ -42,7 +42,9 @@ description: |
 
 properties:
   compatible:
-    const: nvidia,tegra210-xusb-padctl
+    enum:
+      - nvidia,tegra210-xusb-padctl
+      - nvidia,tegra210b01-xusb-padctl
 
   reg:
     maxItems: 1

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
