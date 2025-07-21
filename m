Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69B2BC87FCA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUrzFGgAPsyrp7BzDGK1x671kivVQ/f3Mt1in3Wisw8=; b=ndiAwdXLQKEdh8
	UDEwRdzNF8Fpndr57kZH/nMmwvwwmQdWfcLMcKKGpJpDdyEYazBQIiOKii1aE2e99ftfOr/SyGEyR
	w9hj7bp1eb1WN6xzmmRYZsgx0ZZczSaJ56iAqX0yC/klrlYOR4a1BOhKxEVuNm81h3zOEpq07kIBQ
	ADpe3ByRyyckUm3vctMINTsDVpULa+bA+wEvSLIzGvmv1kCzcYv6Po7rVR4rgWdWzTmefvH9SHJut
	BiMuGxCxe3IX5r6MSB2kQtBvz9RhKGwzKJ0Oiz//5b8/00xIhpWTfrZlWEQG8P1qqxGFuC3jJ/O+q
	fZPtZ5Mt+7faltISVzBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5o-0000000FxSv-0nR5;
	Mon, 21 Jul 2025 02:17:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5h-0000000FxKd-3aLb
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BB0FCA527BB;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E76AC4CEF1;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=+N08sZPiGNzkS31ZMq73XQsRz/6PC2CS+i/IRLP1KHk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=XH3v0xeDRLUNwZvVLXSfSChV9/5puplFLP56SWDE8N5NLfT5/N/LwCLWq/iYq6RA6
	 Twrq2+/RCq4IyvFUvGTq+2QDWNoYChaNQ9KjBpxhCmFCl1yRJLqGqPsG1ImF2yXzBg
	 mFPzqxQV7iqMnP9uwdj2CnxUnqMsLsqCHewkrpsLgFt1DTmNmaH8ollUge3M98XfJt
	 fPO33n8aja0zRgKXEwDNB8IApTbOvOSyqWCwHWbkcdf5DGj+9kSPUReTR3QIOi68uc
	 VzK9XnSOGTYCtrL/3eEzHaQWpYNM8lTYEXCu5cYstFcvsKjlGuQkljqr/FCN/LnIPI
	 yK/33ohkY1Kbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3385CC87FC3;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:14:57 -0500
Subject: [PATCH v2 03/17] dt-bindings: usb: tegra-xusb: Document
 Tegra210B01
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-3-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=944;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=Nh6f3WIWhHTEV0li2SkjJP6VUkET3tGtA5Y1/bQ0xS4=;
 b=MKvWtyQKbqNPY3woOWQs4qzFh2uYhbwzLsig4HH0zT8z9D2bKFHp/4x34k1Eh7LjoIRTzAg7A
 Ru15aqCaWqjAkI7i/a/6aXmAV9EQVrtJke/6159qIKCBUyYDrQv4e+S
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191722_033724_F2A8AEEF 
X-CRM114-Status: UNSURE (   8.68  )
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

Add the compatible string for Tegra210B01 XUSB

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/usb/nvidia,tegra210-xusb.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra210-xusb.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra210-xusb.yaml
index c0e313c70bbaba4f5da9cb090ab6f3027d274a2d..543355118282f52b276a087185709320dd8e09d6 100644
--- a/Documentation/devicetree/bindings/usb/nvidia,tegra210-xusb.yaml
+++ b/Documentation/devicetree/bindings/usb/nvidia,tegra210-xusb.yaml
@@ -15,7 +15,9 @@ description: The Tegra xHCI controller supports both USB2 and USB3 interfaces
 
 properties:
   compatible:
-    const: nvidia,tegra210-xusb
+    enum:
+      - nvidia,tegra210-xusb
+      - nvidia,tegra210b01-xusb
 
   reg:
     items:

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
