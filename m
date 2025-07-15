Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41EC0C83F2E
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9+86aV2i7w7O2ku3Sw7zlY/7G+n0Gr5S/Ix0wvCTwM=; b=WRjEwgbrvePgjK
	LxKHCS/Dy0SAM7Q79L058RYz2YNFFu1dh4Y/19uMTcLGXMUjf9pnaaFwkm2QAIHZjdNL6v5hH/9V5
	tQpLEJThtXVj/fyxurAwal1iNuUI0RPCYqCdxLNISrTn6eLYpdB7ZNlzdWg+psGzweaGVbOv1XVM4
	MLUvgqxTwGA2tMVqeMZig78HP7GP2UtXd8JWteMNL3w5f2JsF/vXIzu9NJs7wYjmn+SrN42BnwG2b
	QjI68sYUF9eUKgVZtEnbacynUKLEgDGKVEFSfZYZ3zvVIgxiJO6Hgi0r3jyXY65lFImYlL/Xuk5N9
	+l36IYOheios2vQI/G8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOm-000000041Jo-3ptt;
	Tue, 15 Jul 2025 04:36:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtT-00000003xnx-3J40
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5C25946635;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 240BAC19421;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552231;
	bh=ZsWyVCGPIRm4MCQ8TbGemTLNJWjoor3VZEi+TvixlDo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=IF3q/URVwBm+kSEhiIoBVZ3J8nPYDpGh2RXeEjQfLgEHI58E7Iqq1wPF2PhhIrOZd
	 VVlwtCEINyAASpup3bYdyRHDT3Aw/o2mIbpbbhi0nJmSwe9H1jK7jG7vvuUV1hzDH8
	 kRR7LG9gt+0Rw1l3UTj5qIH5+QBLzFQ/q1DZoHLPw75fZhgLb3zdstn+uE6WMb7hVt
	 byne6K0TGLy6ytDB1Qx23g5/LNxfcNzNvHxQMEK/5uzqPTt+sQEqRO1PK4ZdvRztsA
	 kSV1vqUpd6iRgIO+mdN/MTSp/B4BtPDglpH5of++brjcsYwETVKe559smmrRvvbBLO
	 Q6MxX/X0ih0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B90EC83F1D;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:50 -0500
Subject: [PATCH 07/17] dt-bindings: clock: tegra124-dfll: Document
 Tegra210B01
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-7-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=989;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=fUgyjpOO75XKaaHCsWtsX8Af/k0zbHG3wyrbsvFHw+c=;
 b=HbtMGcj5C6VwNwqhghI57HKpV3VgiQhaNStx1cWF70IDveVcO2t81scUJfvX5T15T/YYF2Mlb
 yCn7vOLv+9wAxj6RKxYTWah7YhBV0miIjvGUKRN+FKk+L/mIuFOiZMx
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210351_956949_7F384315 
X-CRM114-Status: UNSURE (   9.26  )
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

Add Tegra210B01 support for DFLL clock.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt b/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt
index f7d347385b5775ddd702ecbb9821acfc9d4b9ff2..aa7d50d4fe6f2c1c2500c53e3421355ce2b67599 100644
--- a/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt
+++ b/Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt
@@ -13,6 +13,7 @@ Required properties:
 - compatible : should be one of:
   - "nvidia,tegra124-dfll": for Tegra124
   - "nvidia,tegra210-dfll": for Tegra210
+  - "nvidia,tegra210b01-dfll": for Tegra210B01
 - reg : Defines the following set of registers, in the order listed:
         - registers for the DFLL control logic.
         - registers for the I2C output logic.

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
