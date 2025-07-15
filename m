Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8033C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTA3HmaLAN+IcN/oVBSUitD1Uk1j0CTUfbOneYyObso=; b=a/V5qZZl1Yg1Ts
	IL0iDkcf3m/uJe1MmTNzX0My9GzCUdhT1y0syqOIJvK7f/3OxfjJDXvKoErnNgRMYSvuFn4IeXOHB
	piw5Wr8qg1D898VgtLt25yqETPdpe237A+hzDiOQCntG5BPjAg5jWZ3ImY0MRh7Zv162DuDaY4VQj
	AH+5kEhsfagN72D0pUKyzSMhHoJgUsPZHBZ6cOWEYN4sPrZYiWj6dgu5x0TkIlqbpTzFvIBJme7l2
	XziLe2gTT/0kVg5hbV2eFk4J6SRGOEWZMpNkOlnA86i32eIpLO2N3/oSTPAtomnXoUt+XDCmds0c+
	nwU4srQGohbwTT0bc4tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOq-000000041M8-1Y6C;
	Tue, 15 Jul 2025 04:36:16 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtU-00000003xp6-3OFw
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 113A4A4FD1C;
	Tue, 15 Jul 2025 04:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1660C19424;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=DJu5S4IwJo18/zBTs5hjXsnqZFl0TuSdcXyF/MtV004=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=V3Cs58xy93Hb6rGfpE7MpIhsyYB8A7ZNsS8Tq/Vf6l2o7WRiGEK4lNEmiv6Ajewlb
	 gbnvSynNYL0KJNOV1ms2VI7/M5jutInqVw83LdbGKNt/3vKeXg7gNhKeADI4StUYGn
	 p4ii0he3kV0sBVJ2yyI51EFdh+327AURGHn/GcuYV4QJZsJ8esrrvEfxIXR7YAE729
	 xwAYcNhN/I7DQgVasDaZBML/wLUH1fmjRxBq2rG8NEAqKpRrira6BTWXzmPV+NH1eo
	 9A+xpB4wMYu9s6tkSeMh/q9RlAEdNVz/wE+NsFL9D/OMK7PZncP42tU3YwPvai/wTk
	 uSZ/VbPRG3S3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238EC83F17;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:44 -0500
Subject: [PATCH 01/17] dt-bindings: arm: tegra: pmc: Document Tegra210B01
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-1-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=1125;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=cgMpw5zuA5nEV4NkcEZ4qpIA/kC31MfIetXY4+pWRrc=;
 b=kwDtUeynLZztzgV6Gshl/q8j63IovMWnSvwrd3YLif7L1wSA/cqLk3gNCrdSYbhROPsAo87P3
 7e5yZJp5bK+AcLPkRna/ltvB4dcls6TLZVYoeNL4plCZvMNt6e6biY+
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210353_095279_FED02D2A 
X-CRM114-Status: UNSURE (   9.46  )
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

Add the PMC driver compatible strings for Tegra210B01

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml b/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
index 7140c312d8986b0b733c519b1e89e360d9602add..eddcafc2f9398ad6fb4d2d46b3181ab91c89a229 100644
--- a/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
+++ b/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
@@ -18,6 +18,7 @@ properties:
       - nvidia,tegra114-pmc
       - nvidia,tegra124-pmc
       - nvidia,tegra210-pmc
+      - nvidia,tegra210b01-pmc
 
   reg:
     maxItems: 1
@@ -346,7 +347,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: nvidia,tegra210-pmc
+            enum:
+              - nvidia,tegra210-pmc
+              - nvidia,tegra210b01-pmc
     then:
       properties:
         pinmux:

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
