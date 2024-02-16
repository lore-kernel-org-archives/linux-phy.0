Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 256F7C48BEF
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYY3aNkMSPfluEHR21jG+EWJu8wfa9Hv2mN/MOSXe3k=; b=EeNChR+oD9sbx8
	G/PiwfIieX3nYnZzmRScOEKjJ1Kcp3PCoHP+xwj9Y+Ldg4Uf339ZrXKi9Gdo+MsfHk3C012Brs9ub
	AObgvrhezObCwHZCgoIy7yp7ei5lm2/d1NN+D3nMwgTWMKtFFTe0yFmgYJNMURY2POXGDx8OZb+uj
	wXpe1gq5Lj2VXGznz003YvIsonbEjRaCGibvWfz7S8Q/JmN1KkWAB0XTjKUtbMlTlljt7+TY50xyD
	X52QHJqPWJH24Jsokdc8oyqZNNVcn9jfBNhNpRGjX2yFjBlp0Hu+pgMTH7gy0D9utfRvq6MM7DLxN
	9YS8l+UBkJDZhPpGgZWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb025-00000002kX9-2Rtk;
	Fri, 16 Feb 2024 15:21:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb01q-00000002kQ3-1yJG
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 15:21:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CD1CACE2BC7;
	Fri, 16 Feb 2024 15:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B98C43330;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708096887;
	bh=TJXbzU7JZHJbMmgN7bpYmAVa1HZD9kd+YoDIdRJkXjw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=WCHjbjmKO6YpsXPAvIB3jwb70NDs1r6NM0Ewj2I1BTJ2Q7CnZqrkgf0v6TgMJebGJ
	 MUZopDAm7uPE2TaxE63eESFuEB741w59iP4kpGunq/m/dx4E9VFpRQ4FduuhFjLmth
	 oEtqTj3SMp8LIUFHqZwDN55PTsWuuhWH1NOuCRTHDXpkpwE2QtnrZBhDpwdcMIDl6e
	 t74fVs2nVzHdn68cuA5y0+r0+g4+mHeyDjO+tqgZ1kVOGGnd2OIK4u679civO6qpyk
	 6LJlbaUjlRGsY8tqAXNbcHptBu6lZjYMTWPLX4ZYIcdbkBjK+ywj5rdM24u3AhkGak
	 nkb7j28cF9RFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CADC48BF5;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Fri, 16 Feb 2024 23:21:04 +0800
Subject: [PATCH RFC 4/4] dt-binding: phy: hisi-inno-usb2: add compatible of
 hisilicon,hi3798mv200-usb2-phy
MIME-Version: 1.0
Message-Id: <20240216-inno-phy-v1-4-1ab912f0533f@outlook.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
In-Reply-To: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708096886; l=1106;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=rtHmhLoIl6mBEauH6cAKAA937JKk+tiYVqJ8GZyksSY=;
 b=CgorBV2nYcl95Vm5KnS8MREH8rEe9KkH0P/N7GKmgaLXjwaD3aDCrLwkQ6JOuju+7zmYqBWr0
 3U5xWGbglDxAsFtxFZYVxT810mAEkzarmD0QzBM6T5DwTQUoJwGkI5Y
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_072130_913591_3B477458 
X-CRM114-Status: UNSURE (   6.54  )
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
Reply-To: forbidden405@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Yang Xiwen <forbidden405@outlook.com>

It is accessed by direct MMIO, making "ranges" property mandatory for
it.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 .../devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml       | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
index 73256eee10f9..d702878b8e6e 100644
--- a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
       - enum:
           - hisilicon,hi3798cv200-usb2-phy
           - hisilicon,hi3798mv100-usb2-phy
+          - hisilicon,hi3798mv200-usb2-phy
       - const: hisilicon,inno-usb2-phy
 
   reg:
@@ -64,6 +65,15 @@ required:
   - '#size-cells'
   - resets
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: hisilicon,hi3798mv200-inno-usb2-phy
+then:
+  required:
+    - ranges
+
 additionalProperties: false
 
 examples:

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
