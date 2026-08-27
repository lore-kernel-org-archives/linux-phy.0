Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A898BC61DC6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 13:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PY8msFe4dBb4NYxZThpGo6FsbMFB6zRwKygPSE2Kvqw=; b=uztYINXDO4No2Q
	TVmwCLdTHPMDfPU6UEiyq+H4jLIIbVf2LTCO+Zigig7nDDrD2pnqgYb43lVs5IwdKoCgopQ+Lggys
	/DcSwa/ORjS1IjI+ddGT/UcbhCh68KMoZgoRpKlL0pVgICPDInsUiMw3CspSJQ5cBN9rSFC7sLsXZ
	KkmEvgkz6ruYJVYbJbXQVlX2+DM4sWA8oZr48MZD1i64sQP83huAwUDpngE0Rdd6leKZeGF2Ngc9R
	z+DBWim+UZqZde6hWWijagtIU15yP/ul5XuSw/j5IHlNrtvVmV+b8uldqP/KsRH4Qz3/NhVLi6LsG
	7YMFM0fMhlTpGob0RmlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZxf-000000042HH-3V1P;
	Thu, 27 Aug 2026 13:16:07 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZxb-000000042FL-2lgu
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 13:16:06 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47fde295992so847502f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 06:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787836562; x=1788441362; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Ozh67gvExXsrnwoDUAZ22g3egdKS3V6pXOMWX1pqEkU=;
        b=Jsaev7bsjHsg1Oh+PDB8qph2sg8UfsKSEmi1F9E3Qlpw4m5T4eyOhd4skrVWYnYP30
         OzrUEm48RI8isKngpploItpDbmTY8rUURPAlN8A5sfJ5QLjgWJsjtraiID59HBl/KVim
         wnsUTP+XneG81ABne7iT1gBbqAE1oV8taEyPSikssOuvmMNKYaLi/4MxRPJrVMnBT+IN
         Zp7SvMIkKdr/zyZ5Q/5A4ZQU3rzlU88eHBmshHljjxhj1vFpKlalrVFt+Rhc3/mrkjA0
         JDwpuAqmdrEfTXP+4tgptAWLfg86bTYHFbU5ov1TR2G2k+kbP/7wt/oSdAFi/r36aQZc
         uLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787836562; x=1788441362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Ozh67gvExXsrnwoDUAZ22g3egdKS3V6pXOMWX1pqEkU=;
        b=PEeA/IPno4jjosJaOvpdAFWDJH4xjGZ+HbnvIrVsxjn1FKISr7IGHWQz821OOHmf3e
         H5mbgujDFPKRRnztdi8bPl3uk7Fa378EB5VOFB6628cthQnis7ysYsuDakvRxqB6BDez
         xI9okAAeHDuPr+9TJ2BGHw8zIE5upi+QqaXakFqv+zy05/vPfG0jIrkRa8TXibdsbda0
         NeP7YSz4EFrFwQPrlyVj05dCW8WRmHhdCF2Q/GIzRynbMKqzWAUEmydoq4q50EdhnuK/
         vr3HZ9rTFLYPrrQp4yNykilEGfx9+mSvsgmfP2QQkz7Xr44p0hccAozm/+A93hsvj4B7
         Plzg==
X-Forwarded-Encrypted: i=1; AHgh+RoANcQFhPN1nYuz9Ly0tNkc+2S+RZQscPKU9jEaZM8sqC++Xlqm+Mer8kLv429kNyBuy0OEs250nXg=@lists.infradead.org
X-Gm-Message-State: AFuF++mzkzaI5YqYD0M6xks29yej0uGPeaPH3C+vbpGji7qqYjUFQ9n4
	LLDeSa3uZqzjTaMUGDlvRwNOsW51jgU3vCQy7xdIvQSMvZainHYr08xkqsCw1DQ5
X-Gm-Gg: AR+sD11m1kyL0XQc9cLqZhykRwrJ/o4mq1GIPKHp+8eA6loStmB+QlSgyLIaB8UnTYo
	Mz96RbmP80zbWOedDw9Hfyd5AQjkWOWgoHEvf2v+F78/jzpZlg9BOTSwbLVQFaZc7wJmNaKw1aY
	G2hwzBPz3cdJq5AXpuCQb7zwxgmWcxtEsckSfT+f6he+C7MTFTUDCeA1nICxvZmV1It9KLCdXVx
	KmQx1B0Rj+JAbMJHT0DV66hcmuOjUpiz1fVTXv7Cjp9AUXwgy/Lp4iGrsTo3LiGZe43NE6+VHhE
	x/obs4FSANBYa8x6GHtYfvoQtsRGHArFFzTQtslaUyYNhY7Ojki/EO9Nxt131CogNAYWeEH+//m
	VTqcMTOocgdwujk30tbjJWphYZex3/fKsDVWlR0kso2ilYWqBKqsDF+Lg7M0h7cvN1RHj4Geamh
	41mgDHtK0RpXdw3M2tQ6GNUT7Nk5/S7kdHvtSIkXvYfFquPbSzI4ngGu3dBE1bOWO6eZYijAyui
	WeTSIXOn5oatIFTWJE8qfupZM30uj+y4aS4QmsCe1k3pxg66c0E
X-Received: by 2002:a05:6000:4305:b0:481:5dea:c014 with SMTP id ffacd0b85a97d-482eabb5cc6mr8398077f8f.14.1787836561549;
        Thu, 27 Aug 2026 06:16:01 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-482e28dc3f5sm9367192f8f.21.2026.08.27.06.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2026 06:16:01 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: phy: airoha: Document support for AN7583 Gen2 PCIe PHY
Date: Thu, 27 Aug 2026 15:15:46 +0200
Message-ID: <20260827131551.26725-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260827131551.26725-1-ansuelsmth@gmail.com>
References: <20260827131551.26725-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_061604_566966_E94ACF4D 
X-CRM114-Status: GOOD (  14.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Document support for AN7583 Gen2 PCIe PHY used to make the Gen2 PCIe port
work. Add the required register to configure the PCIe PHY and provide an
example for it.

Similar to the USB 3.0 PHY, a dedicated phys property is required to
configure the serdes for PCIe or Ethernet usage.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../phy/airoha,an7583-pcie-gen2-phy.yaml      | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
new file mode 100644
index 000000000000..f31d838871fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-pcie-gen2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 SoC PCIe Gen2 PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7583 SoC PCIe Gen2 PHY describes the PCIe PHY for the
+  Gen2 PCIe controller.
+
+  This PCIe PHY makes use of a dedicated USB PHY for PCIe usage and
+  can also be used for Ethernet usage for SGMII or HSGMII mode.
+
+properties:
+  compatible:
+    const: airoha,an7583-pcie-phy
+
+  reg:
+    items:
+      - description: ana register
+      - description: pma register
+      - description: dig register
+
+  reg-names:
+    items:
+      - const: ana
+      - const: pma
+      - const: dig
+
+  phys:
+    items:
+      - description: phandle to Serdes PHY
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - phys
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@1fa5f000 {
+        compatible = "airoha,an7583-pcie-phy";
+        reg = <0x1fa5f000 0xff>,
+              <0x1fa5e000 0x3ff>,
+              <0x1fa5a000 0x8ff>;
+        reg-names = "ana", "pma", "dig";
+
+        phys = <&serdes_phy>;
+
+        #phy-cells = <0>;
+    };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
