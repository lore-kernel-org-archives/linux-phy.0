Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EF99C83F2D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8tuLWpbi7il1fdkbIQ8nFgdwnDxuDbRaPTHhopq0CI=; b=3sy2eUwN/hO7c1
	X83RcF3tGuyi16Yw9Us60myIU0dqy7xDwzLfM99xjaB5kX3uoNgClOSNvT6xLGcnKcLYwAzsatshb
	KOHVZ9nK8Br03+HlBlA4KKg0FL291JZc9AtpwMe0HutfeK6jV1B8uf671uUcW4ttEmprVDmPgWhRx
	GzUmvMzRyTE//ldwKVx55fAZwOCN6xX6Pc0WdEZG1rssWjPYCoas7+s8GPvYv5vRJB/RG9k42u0DD
	QQ4enNZ3VhVaLHMPCwvVZlnTo9zg/i/7f4Hv46YYNXJaXVhflpfHyUCxvLD9ZeoKYny2qYQGoThRD
	erNC3WE5LWU+icKQsYgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOl-000000041IH-3r6X;
	Tue, 15 Jul 2025 04:36:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtT-00000003xnu-3JLV
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4661446588;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A56C113D0;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=NWmyLjJ+pZUJFrZ4rkC1nd1VWhd5SOk1veK/za+8ulM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Fo1lKPta8/0NICHH1lZUGWUu2iKqLzBPCx4bIiVYDjeJUguriddk2cL3jDpzcAg1T
	 9ySixynD5ktjW7s9VrMyVzsm+M1cd3Skecq0E/6rwKOp/36z98Y/O2FR2JakOuss9b
	 8xmqITQ0hEpqmQwqx6sbWikc0suDk+gloVIlYJsT7EnxPGo6n9l4M6dCktzuLPjn9k
	 cLphSUcA7AG/IJbmXmAaucQ7MbkRuvYUBTIESqZPk33e5W6aUPKvl9M13Q/+ZYsDlf
	 mFoR1BzaiQr0uovi0wrHooF0qlAD5sLlMnblrAQYc+dRWrvLlerSBz/NGddGwaErN5
	 TxQ5FiiHxEecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4AC0C83F2E;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:49 -0500
Subject: [PATCH 06/17] dt-bindings: clock: tegra: Document Tegra210B01
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-6-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=1553;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=v/eU4/Zbau/0drZs69pubd0H4hdpQftQ1XoOMJlu6DM=;
 b=G9Twzppau8KbstCQKxzCRCRpTGrNB+antQiJeq1WCfUYuIE6VYKSzvermTojlmY9fOLbOKvrA
 WJK9KxQiJzIBU/91EcyplXqJVkjI2JGdQ3/KQpL8FfgFl3wusseWPNu
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210351_952230_3BAD70FB 
X-CRM114-Status: UNSURE (   9.99  )
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

* Add the compatible string for Tegra210B01 clock and reset
* Add Tegra210B01 specific clock bindings

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml | 1 +
 include/dt-bindings/clock/tegra210-car.h                        | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml
index bee2dd4b29bfe391caee346aa5afad49772c2c41..88cce500bbc43de934f6c56152e5b2d006f8a8bb 100644
--- a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml
+++ b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml
@@ -32,6 +32,7 @@ properties:
       - nvidia,tegra30-car
       - nvidia,tegra114-car
       - nvidia,tegra210-car
+      - nvidia,tegra210b01-car
 
   reg:
     maxItems: 1
diff --git a/include/dt-bindings/clock/tegra210-car.h b/include/dt-bindings/clock/tegra210-car.h
index 9cfcc3baa52c6eef0439c859200cf44446a1cd17..27485d9b80f68fc0e7668a8abbd1b821f62035dd 100644
--- a/include/dt-bindings/clock/tegra210-car.h
+++ b/include/dt-bindings/clock/tegra210-car.h
@@ -409,6 +409,9 @@
 #define TEGRA210_CLK_DMIC3_SYNC_CLK 392
 #define TEGRA210_CLK_DMIC3_SYNC_CLK_MUX 393
 
-#define TEGRA210_CLK_CLK_MAX 394
+#define TEGRA210_CLK_UTMIPLL_60M 531
+#define TEGRA210_CLK_PLL_P_UPHY_OUT 532
+
+#define TEGRA210_CLK_CLK_MAX 533
 
 #endif	/* _DT_BINDINGS_CLOCK_TEGRA210_CAR_H */

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
