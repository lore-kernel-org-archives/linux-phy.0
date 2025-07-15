Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D972C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uRLi7BP8fpUD7iNB4oHcsvUZcbB87nOTlNghCKSYio=; b=JZMQmvryjKgDMO
	gIZPl6iOTCHnySRY9oZ9v8X8QVJSS+TOkiVcSflShfbWGFQwjlplPoCeiwZY1lrc3HZA1YAAlDSxT
	/tSO4wIfYYniIrjJcGxE2H7M9QigMAIeSRNSIONupstZvQOCEFtv/ASaRWxKemJhpoLrqe7gPjS+P
	gJkZ8VeDfj+VTc2lYvCkD+U7/C2FogXX5LIhRAOiyP4jzJaRsvPDM3uJ5NGXru6tieRC9oQhMq7TJ
	w5eL19IaOLnN7azLCLLRQHjk9TvLdQmY/Ws4m03JBzInSV/6wC72jHF/GPaGJuyaNuIZA8xKZomQG
	x/Rpj+XR3MFmFTVgyRPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOo-000000041LE-3fdk;
	Tue, 15 Jul 2025 04:36:14 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtU-00000003xnz-14WD
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 525B1A4F4E5;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D91C4CEF1;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552230;
	bh=cUIiIvJhVKR9wTYPbfXfeTIQg5AtRje9ukOyLgihg9U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=n26PIvb4/qRccrk4VK8D8f7yyTJgoJ9AlhdK95oMWesMV2CxenfyWZ6CvYZnAtUni
	 AHRnXQ09iS5lIm8+V7qKlXPDPmrZNY9ncih0GRa+uvoshq2BQfK8h89VkeT+gbPdqD
	 57psZreqnAldK5Bb7DrHwfqtYRypC8DJPmHd8d/O4ftpqqy6yn0CzXvR13PGXuin3e
	 kSzqQaODwqBw1Lr483g88U63qngcMuLsjk1+FJVG5IufKQgFcQcXqIlq77u8a7vlrx
	 vs0IaSo161ckCtR4x+xRMrbKd9KJNSRvmpCdmM0MnOYgccVqG4+9xijgVWc8YnLTCR
	 F3iMiMB0nq1mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A049BC83F21;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:45 -0500
Subject: [PATCH 02/17] dt-bindings: phy: tegra-xusb: Document Tegra210B01
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-2-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=902;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=S+xEmmaI7KPQCg4icSZetTrJ6HEmpTYmTyrR9BWm6U4=;
 b=oFAYJgiq5zAewIvcvuf2FVbJYPXeLMkouUk1sQppnwgw8GP0DTIrtP2bwtLmOSpRKHsvaNZaE
 YHG8qgf5IE+C6GHWWbEeQ8srk1JoAam+kCy8+ezrtbNQqD7GXnW960V
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210352_440324_F7813246 
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

Add the compatible string for the Tegra210B01 XUSB PHY

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
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
