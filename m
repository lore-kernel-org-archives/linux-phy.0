Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E750C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MW5Ts4NW4Ynskiw4hKBCFmZRqezIpvTguxz42MXYNCA=; b=XLkLAR9bk4ahD2
	qasQxgvKVJptZUFwwUj3nKlLEtnnHlx/QYRoVzMw2+h3mJcnJa5R7/rtU0yQ4OUPf9UBvUzUaXNuQ
	TbZ6hoH1iwLufrDY9CpJvvdOhXvBy7e2zliV0hYLcAMFjv62cWjuFuLLxPhvbU6FwBT6sbu2VHFEM
	sFoRNJDZW9Df/lhhEl7VFDCYZ+C/t06Emd+gNmYe4monKykeTbxDQQhUux5y22lDbds6TgbQYErRP
	nsz73WKZGmdw53ahmNrTQ341zcqhGyK/ahBn8y7gKgTl0eHY9EsvtcZFN2vFPAuRv/XfkYaUAN2p8
	BXZRzsl6Xgl2UI5KUB6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOk-000000041H9-30j3;
	Tue, 15 Jul 2025 04:36:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtT-00000003xo0-3VKp
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 663C9466B9;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34DBAC4CEF4;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=U7hqBRZJvPe2ZYKK+sbf1NH/0zO21KeWiFaQUBxyyNw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=lIwLyJ37J8KgfdGAn5u++SBS9Koh1+FvF41P2W+wK/2Su+WnJAHs38Nr6HKLTKJoK
	 az/VNBvwgI4rU51glYwDA8EK2ajcgtwZbkj/JcvWTMPJPLcXazTYFuRtQmkJfmD5MD
	 TRTycMwFuMjuIX/cGP4XeCircx3aBHcUIMnshP4uPWnF0QIqYjBuAnKEXDgBORcGCh
	 eJ+pk7heWSc1azLNZtkcrUIzXiTBPxdzK3TbuxqC284hE8DnuEh663T7hJhkBbQPuz
	 sTzETzvWjlXqJfL8DC+njNqs/N0MI/M0scB5B1O67ht/QFl6d0SK/Qu23kjQ6WkITo
	 GtnQPZqEV9pCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AA44C83F2E;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:51 -0500
Subject: [PATCH 08/17] dt-bindings: tegra: Document Shield TV 2019
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-8-e3f5f7de5dce@gmail.com>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
In-Reply-To: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=980;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=qdGW2Lg8dZdwx0alyGvGFA7+660C1HUDmyePy1D+md4=;
 b=S2PTUB/zf2IzeQX6yEqIQJkLRJrmL1/dRCadc41EMtdoNwo0FZSfNfRDxT7ByMhUatLgP63gz
 a22coA1mYziDW0QdbRTkwBAuWn7/u5qWMNnACzwmAGxBojKRRZsF8RB
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210351_962223_B5F6D688 
X-CRM114-Status: UNSURE (   7.84  )
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
 Documentation/devicetree/bindings/arm/tegra.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
index 9cae3268a8274fd3a38580939c79a6f21de48a3f..806190233b9859ad573fe43ac5104887fbadf428 100644
--- a/Documentation/devicetree/bindings/arm/tegra.yaml
+++ b/Documentation/devicetree/bindings/arm/tegra.yaml
@@ -174,6 +174,11 @@ properties:
               - nvidia,p2571
               - nvidia,p2894-0050-a08
           - const: nvidia,tegra210
+      - items:
+          - const: nvidia,p2894-0050-a08
+          - const: nvidia,darcy
+          - const: nvidia,tegra210b01
+          - const: nvidia,tegra210
       - description: Jetson TX2 Developer Kit
         items:
           - const: nvidia,p2771-0000

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
