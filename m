Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9DBFC83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWwIJ1GLDzH2iKyiWkHK6qhik1RMN11LzE0NU2V+mMg=; b=cy2np3v0jCvhYq
	7unVuhkJ/g9iMY8oxFAmLkxN487pNRc8E/w9yLS8PA7R/v4MzaP5YtfPLHc4ZZGo5ZmH7161sd2Wi
	7McO1IiYyEkT8xdX7TRfP42O/O0k3v+ks6zxGQpgPR3i4XNb/K9KfNhiUFWwFhssBcskeTB7yC+wv
	IJ+kccEvFIfcxEjCxfoLmbzMxAvTFyJUIGyEG0SNkfNA1N1E84cCBw27O4ymLz/P3MOIMuFKmBhSw
	MwHOJ+a7CE8NXTSrMiUmt9xXSE4BMocahdW/OSWyWDpFyfwUqwZSkrpRMGSIg34m5vr7MHvpammT7
	hz04SHCRfVZYZbxxKKhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5m-0000000FxR6-2iSq;
	Mon, 21 Jul 2025 02:17:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5h-0000000FxKb-2rWE
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9BC2845CFE;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5C5C7C19422;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=VEFsUmrh5CUSmdGcsk7A4iu5lTamrHBBQbePPNsb6fM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=As6DlLNveMyvOyjdrp0GBARC/IHENLn/Giurn7XIwO7NClyq3v5Y5lRZ0yZOeCpBM
	 Ef2gV2S3tbtoPBsVOGbd82puhh+lctbm4sDQJg58SPKzxLo/9ZCwXogzZmUlkXDePS
	 sA9qJ/Lf7bC6ElK6z8Ui6/6NQifmc73qMIOonEPd9RUjihR/owmsRD+QY3U0t8waef
	 /l7XZQMROhjp3gST33bh1qqUJbLoxqRRDCm1hwERWcBKw8Ag6Y8WyGA+P6YE0L/oji
	 NUV8sFngEVXGkm7X9FNWPYs6l300SCpWgT9MA0Hci83MAewKnNXu34nrcKRioOAJ03
	 8qmavTwcd8TNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530E1C83F17;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:14:59 -0500
Subject: [PATCH v2 05/17] dt-bindings: thermal: tegra: Document Tegra210B01
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-5-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1137;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=k5R1tghQgg5zWHMrFL8NyxLEhTBC0sAbF1cM0lIByUU=;
 b=PN58npPb+8Yb2p863wVe7T8c3F+xHHfiVNyEIiqJO9Galpibr1KdvL9MTQtkYWbv5kHw7LBbF
 6so15kGV/tcBgffSpqCQFcIttSw2jpTIm90rM9NVMQWSYkcCzfbonx3
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191721_770629_4B4298D9 
X-CRM114-Status: UNSURE (   7.57  )
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

Add the compatible string for Tegra210B01 SOC_THERM

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
index 19bb1f324183bb22bc75630798da67fc834920b8..cf47a1f3b3847d4a0371d0bc711638fc5e3b6cd3 100644
--- a/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
+++ b/Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
@@ -21,6 +21,7 @@ properties:
       - nvidia,tegra124-soctherm
       - nvidia,tegra132-soctherm
       - nvidia,tegra210-soctherm
+      - nvidia,tegra210b01-soctherm
 
   reg:
     maxItems: 2
@@ -207,6 +208,7 @@ allOf:
             enum:
               - nvidia,tegra124-soctherm
               - nvidia,tegra210-soctherm
+              - nvidia,tegra210b01-soctherm
     then:
       properties:
         reg:

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
