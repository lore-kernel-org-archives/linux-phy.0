Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4651BC87FCB
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUp5sWJ9ptZl9pzkMUttYv07EPw5kMMG0gu4dLpLghw=; b=J+YDlkgikibDst
	/sMgXRcK2jYxgYKS87792Nm+GKMCYrWTa0QoZa/MjhHEOLM6q/xElGxN2uj12bgCVeyCT1OMODxcS
	O3oUigGo2KGB6LCEK/Hk8PnoQdKhmIMQWr5PTqiyzYVbjKD0Q3XKhiorV5TwGo0gfVGWOsohDyJNb
	+inMQGUTh1jaEFX+BiGrHauOgvLGQKlH2agXy2PBTRg7hHu1OH95Six8tWBhbaiy1BAIDgNmu8ZT0
	MKbOSbOtrfQgTNKlBQSG8A8zbs2b0j103Hs1/+nMIZKqmVd1MS2KY2nhR2S5eE8OrHeZgfH9qMfkG
	epVtrcQLQ7lftKwTMreQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5p-0000000FxTp-0BLK;
	Mon, 21 Jul 2025 02:17:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5i-0000000FxKz-1GGU
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 899D15C586A;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E14EC4CEEB;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064240;
	bh=1KgFbaL830HAM3MNE3JN1EOY/k78cs8sRYCNSKRVHVY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=gzkh/bkLUngYB0guJzaogM9Bq4iRoEpFuxZo0WAfVTMVBhme+d6jHH5sB6H5emLNu
	 Uo5FVprehHkgmHGO1plJJdLtSO9f680KuaxqqtSKK0AE6m6ddCbTXJECJoYT/3mTYU
	 C3D6zKl9UJEZcBpLMDYGfTek16oywA4Uz1upXoEFenWR3ogH6r6DIzWaMixvSkLKA/
	 DPIQo7KyqVQA5ZHoXQwMGamdia5+lTLt96eIdr4U+QlS1xAS4T/YCqfkyu0niuut0w
	 K/e9EpDJehp/hqKLCf9/31OiKXR6ktpwuZ2LuBF/cWHOenqhCCbDuuWWQ0xhzbBTyr
	 eoGga1EZCj21g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A272C83F1A;
	Mon, 21 Jul 2025 02:17:20 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:14:55 -0500
Subject: [PATCH v2 01/17] dt-bindings: soc: tegra: pmc: Document
 Tegra210B01
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-1-9cb209f1edfc@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=1125;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=C+H3bb9U6dJtsM1fYev4mV3ka4DfyhcjhUX21PtiIEg=;
 b=FUD75C8xpNKp9W6IDv1M2oqm3+8Ohtvt4e3rhyiaM6DMeLIqpXqSmKz/fUGQUGOwn4As2RRUZ
 z5b+oBwcUB3DJa1BYlxKYm7ppJU1nThUl+QZS/MJLkQ3ToK8Jy9ARby
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191722_426988_63E9F48A 
X-CRM114-Status: UNSURE (   9.28  )
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
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
