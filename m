Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A11C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQo06el72QCeUWOsMi3xYtYyDqBHcni5vgmlFDZyFqc=; b=0/lw27i8R8JcP6
	6xqb/VAWUOsXdfdzR6NQHD8RYIttONfLxvbmSkt1U47YjdK5uQ4dfuRb5Uop9ThhUrfp7HPopIUQA
	P/NfYJOi2N8F0rAKY5Z+Scy9hV7wjorJ88ADpfxcqCa6Xhxi3N9DfvV3GWab1qxH/CrUjJxY29xu8
	ybON7u2CAg1+vvczlvXm/W/52nVIbP6ZX6lqUPzOceyG9DAiKl2TahhjspBMltzlJTuxTm3po52sZ
	DBke96oCULRszsmZewEAYCsKq8xZ3sdQ6H2YhFjxpgv724ILKF1QdYXI6dL4xDddkQ05UXTFFrgo/
	fK1ge3rPczFE/xFfEsEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOi-000000041Ej-1qoG;
	Tue, 15 Jul 2025 04:36:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtU-00000003xny-1B2x
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4402461486;
	Tue, 15 Jul 2025 04:03:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD613C113CF;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552230;
	bh=OPn3szrWlchRd10WmNpX5YnmLoApC1PT+n7eOQGRQ3Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=LpQIOFJKMEgkmtCE8ayaMOwhNFgyML2mfvl4MH+zYxwWIIP2B1K5S2/8zBFc8KGXo
	 wd3FmVOBDPpaGhWGh/Jj1lyyZUbhPhGdbPI7FH+mJ5OsBtHqRmpWUtHFQSzWDkiSp7
	 bm9CLVLPfswfh54TODjgWekjjTlHwTCWaLh2sbtbIc4i+sXsf/8QWxk9rhp3ZXo/XO
	 jRGxMb7CnLPlAPva4uyBFMd1BbuAao0/yYtYKaKe7slD6V4HkrgED7H1XMQyrT6iHI
	 JMPssk4sUf7v3q1K5UroaqmArsIrKOLRL9htTY3cJO3gf/pwYaddF9uFfTULL2TOB1
	 tomlHrTcJuBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D33DDC83F22;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:48 -0500
Subject: [PATCH 05/17] dt-bindings: thermal: tegra: Document Tegra210B01
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-5-e3f5f7de5dce@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=1090;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=05phOL1Dk7sts/Zv8aPXcMDWKmJ0zvrejtZlUljALbM=;
 b=ERUZlXkxLtaEh2lh/a0ee4xRcCMkPQla+rmLuy5X/T5En0QI7paPtwQZk20opHhYzl/JlsWrB
 64PIupUlki9AD0MPObudtulmcSzNSVz8o/rJqeU45DlCIDorqcLcZzP
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
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
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
