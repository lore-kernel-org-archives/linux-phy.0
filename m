Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79FB3C83F2D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRneXQaDac+lwU+5Gn+aFfgh/FjJupxs3EzQH6OdHCQ=; b=pGmApR+eDfAi/N
	jhxJkXaVYn/0j9+AQhEVJ8nXozm0AaI/tR1/UqFNAO+sM5knW9Amx3hdlx7g4AED/1sGg/R/KIKcf
	6kuzMyZ1ZGce5RxceaACrf6viyU9UxBV6mW2/PbRbzEcv9uA35qJ5z1v6klUvdT52V7bmOyWvhk/4
	ADvvpsAg4X4i/HHXLjoUrojxZGAwThwUCWaj1COoSTaGpK0wmR/zVnAnC/SM8scYdEG/P2d52a7hc
	m4yHxBB9U264mf4leUCKA85hnXwJ/yd9M0FKn6ZuRsZ2onwnwyJlX1A3CIw+oVJzWAkPqOFNwMXP1
	0ZbXV67lo/hsyzaMFHaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOv-000000041Pq-0yxS;
	Tue, 15 Jul 2025 04:36:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtW-00000003xrV-1Nra
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5760746425;
	Tue, 15 Jul 2025 04:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D282DC4AF4D;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552232;
	bh=mUuqTsy+EYHpE2zyZ5AVAZT4+XlL0RD5C8Ve3AERbD0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=FvHKlI9SRu4rVgwp5CRDLvLWV8INByaAFVmhFgqcPFAjLQAopkNnfAP0LYg1UjBHJ
	 InNF4Cikx6d5nt8yDOENlEP/1qO5EJ7lmIr5us0iNzW5IgwamVFStZsKld8foDYm6d
	 D7N+yAEA9j7z4qRmGsFXJ0eAnwVuABos2Oz2cS2sDFfOsYg23gwRdERkZZhzvpV9iT
	 uej8Zw8FzbPtlXJ+CvU19fCzm8UkXMxP4kme6FFHdQC+JrDAboWXl/uGcc23+Xn3Rm
	 llkTST+4OWAQCrVTQH9u+udAYz6Q0YRZ0aqmYpttitLWeIhzJhKZaAgs4h6ysCLCwj
	 LUhTqh1zhWx1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19EBC83F27;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:46 -0500
Subject: [PATCH 03/17] dt-bindings: usb: tegra-xusb: Document Tegra210B01
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-3-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=897;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=SJeTsauuKP0+H7jkmqGKY8VKb/OI6/mySaMOj0+bvYI=;
 b=yP0lTSFS+l0N6akf6j/Cx5vcgWxbeDL25VLHkBqPLHnPqGgYP7JniA3VxMZeSd3vKOtlkIUzs
 QsCWwkRQTthAZcI5/X4dFlCPXtsob+ynCYeNWGvmCj7J3v6PypT99tp
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210354_503564_0F622CF6 
X-CRM114-Status: UNSURE (   8.88  )
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
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
