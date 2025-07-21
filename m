Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8431CC87FC5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOBn4KgZezJLCNoH9mZzmmsu3qWh2odMZYr6o9k9cm4=; b=3h7sMsDjSgt64d
	Y1XOa5nzhNugR1VlPTpL0XyanVRGQynEiCeFGacEe4C6/QRsoxah+brb9cfH3VadHu8OchsAODx8C
	Q2lAoW/Ws14RAHWAApRkpXZGWbfxdKtlnJoweLN6wRS1zMA4ynAB2apReucikbXZRBVAd2lIHh1ME
	wdGLws0jDFeRRFi4037P/ximnRZg58+lc35Sc8g57lQIAVIvfjRUYDymcX7mqW9VK9UpoWGdrZUMO
	VRwe3svIf27NchpDPwiwuM/xVRtZjgKKs01AvILF6do1rKXc3Q7MPOsOkMBksNVaOYIok7o4GWAX5
	1hnSKVjrPro1qbS5SEfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5n-0000000FxRu-175A;
	Mon, 21 Jul 2025 02:17:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5h-0000000FxKg-2wcI
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D0CB045D1B;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E2CC4CEE7;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=ZTv/fjhjELZsx4BTDi8gpF8H8UZzE9gmOjLhh/yxZ6A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=kVkemY3Tyorn+yYkmfOOWpLqrNOlioQSLQdhjY7g/JSw18OCCT5TRMI5dTa7UqVRG
	 fO9I8u/lvlUaM1z0fEht6XPnQ47UM960ooMtdHZAKL5BTJxwBGinj2n6Yvxr09GM7D
	 h60Z6V33wLGYbtI/WNwwBu4BJ1WDZBkmU5RfIQAfNf/Jc7MhUPQ3RQmgq7z92FxkzJ
	 eTmH3vwr0W7MSx5bqz6GGBEkLqXvG7CkYGOcjhnT/hf4wE1pskqZdRDhjwN0cOtVea
	 RwCcdoaoGn7VtxkLErVN9ljYbZQ4wnr+sLWmSyI1vTFp1jdTLvFMLKVqHhowDgutCK
	 QA0XVZlvJm3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB77C83F17;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:15:02 -0500
Subject: [PATCH v2 08/17] dt-bindings: tegra: Document Shield TV 2019
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-8-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1023;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=jUFLE92y2/PfCSBvqONGStmGuDJvfBuTDqHYcdODYfE=;
 b=8QZhDXxyyxbYWujP3EM+c1w7vC8MFuxCgA84+GksQL8DhJSKxVyanTeWEYaCaUkVOFAwXzVeS
 8motLEpoEtUDgGNlCjgLRszJ4dtW4IyP+JrFzORzbltXMVA85ITCPNB
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191721_800323_79DD13F8 
X-CRM114-Status: UNSURE (   7.33  )
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

Add the device tree binding documentation for NVIDIA Shield TV 2019

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/arm/tegra.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
index 9cae3268a8274fd3a38580939c79a6f21de48a3f..11689e040504c57287a8a742c775070a33dfc0ff 100644
--- a/Documentation/devicetree/bindings/arm/tegra.yaml
+++ b/Documentation/devicetree/bindings/arm/tegra.yaml
@@ -174,6 +174,12 @@ properties:
               - nvidia,p2571
               - nvidia,p2894-0050-a08
           - const: nvidia,tegra210
+      - description: SHIELD TV Pro 2019
+        items:
+          - const: nvidia,p2894-0050-a08
+          - const: nvidia,darcy
+          - const: nvidia,tegra210b01
+          - const: nvidia,tegra210
       - description: Jetson TX2 Developer Kit
         items:
           - const: nvidia,p2771-0000

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
