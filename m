Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D983C83F17
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrhvZFWU4ppSzP18dXb5WeqGUqGhr4leWTVa4GhSp2E=; b=SOmX17qnRqBLVS
	lFy97BcSMmV6kYjGbGp9CKvFwEjsXiHW5KVH1BjZm6hcio/4JGGXfFHN0p/OwbxwY7oCTETKGZzbr
	fEwI1r8e19FTprJRPLJidf5WqivAty8y9dX3znQDLSg98O2XBhCxlQd4AAZyqG+lXDAKaRl1sNF0Z
	cRlI7BiVLoa5ZXg2j1ldOPFKBZ/fckrEQvYvSTjdcaKUvpegd/6Z2nHga0lVR0Y0WXlW1lLbYRjUp
	WH4jwRucE1EF+V10mqgdZo9fLvroNxR53/9ZbiVRFT2yZO7Dkh1LVRcqE9vLp0zqLnMT7RISWdpZ2
	YOkJ3QisGUs7kN7iCfOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5m-0000000FxRe-3yVc;
	Mon, 21 Jul 2025 02:17:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5h-0000000FxKf-3JiN
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CE12AA527BD;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4E280C113CF;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=vuCgT399Tvy3ihYWlKr0gOTWovLoiM7vzL+kV8wI55s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Q+G0filLrq7vo49/af3PJ+W/20Fshr/TjRDG1C2hFobsCHTz1l60oT8hjHCLq6kAy
	 WEfsD97abFZkJKSRV6kgUNHuuyMmMQuJFwh+BsNWRGZT2OLM/lV0Vboml51HgZHM5E
	 HIEdMXf9kmL6jPfx6Y/xGnpjMvSrOoFR4rpXNPhS83teJ5CTiyNgWKvEJz7nMHATH5
	 VfSsFz/lwkntb5tCxtO37oaf1bhuBE666mZgg+/x2PXZTn/LzFPqL08sEwaqy8y6Jn
	 C8+lgiQtUPWtZx6ETxQn0/3V87cWY8Jw5orbYAejPepg2zR+Q/cci1K2quEtCADXgl
	 a7MClWgAjJSJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4361EC83F3D;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:14:58 -0500
Subject: [PATCH v2 04/17] dt-bindings: usb: tegra-xudc: Document
 Tegra210B01
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-4-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1193;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=pAfMVat5MDdzgLzxXxUreqZI79lZMEWuOpddgF8NWOo=;
 b=PUFD7+lE9tSm/n+Tjm7HSerh/lB6BDuUENawVBCaj3KpmbUhn0TTedWYZNMAZYLUm5kf/oCvv
 lP8esGhRcVrBL+GbiN5mVw5b6Iwf8fKxA4camgnuHvVbJeOzaNd5d2T
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191721_968044_75FB5F9E 
X-CRM114-Status: UNSURE (   7.73  )
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

Extend the Tegra XUSB controller device tree binding with Tegra210B01
support.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
index c6e661e8915ca4d3e905331299d981f4d3964314..4574e66e7c1d3d3c918991920bbf4f3ea0ee6ab2 100644
--- a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
+++ b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
@@ -20,6 +20,7 @@ properties:
     items:
       - enum:
           - nvidia,tegra210-xudc # For Tegra210
+          - nvidia,tegra210b01-xudc # For Tegra210B01
           - nvidia,tegra186-xudc # For Tegra186
           - nvidia,tegra194-xudc # For Tegra194
           - nvidia,tegra234-xudc # For Tegra234
@@ -130,6 +131,7 @@ allOf:
           contains:
             enum:
               - nvidia,tegra210-xudc
+              - nvidia,tegra210b01-xudc
     then:
       properties:
         reg:

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
