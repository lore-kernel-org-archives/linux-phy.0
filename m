Return-Path: <SRS0=hNs7=K6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 488AAC4743C
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 19:04:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DAE276140C
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 19:04:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DAE276140C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGzxxkiV/VHYwRKIjDN0AwBYaKCQDezS1pTdFBP1DAU=; b=jF2ZpqYValVTUV
	/3NN59juyCLggPbGUSCxsKHhRqYvMPoNrokwOdazgd0wl1K5iE7fT0JiQeDJ33zfAGzy3YL+oAErP
	q6c8xgkoYhoPSC4esp1bS/KL5ouifghpXwR4Ow9TWyWJ/asAtVyk1beYlZ+UsYDbzosOp0vQmzwGm
	dGxBDPpAirz1S0B1tIAR8IIAW8iCtFl5W+k23fVqoV5Bwz+lGQhNSttEqa2QhlosT27/MoKdRXIU2
	QVORDUpNT3wXLd9erB1RgL4tL7DZPNyD9G1ZJvVb1Nw8MEli7Iu+pA4iAROfBkYXy8s3OfvegqL33
	dVOb4C9HNMof6Wr4hQLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpF7A-00Evb4-EK; Fri, 04 Jun 2021 19:04:16 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpF6t-00EvWr-Tk; Fri, 04 Jun 2021 19:04:06 +0000
Received: by mail-wr1-x42c.google.com with SMTP id c5so10256196wrq.9;
 Fri, 04 Jun 2021 12:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bh5QKmjnoYTHQUn3U7/OcwSchayTeJJXSPC9dyaLEIQ=;
 b=gIpjLTLiC4yxv4+CgWIuwO5lUe+hfQkwL/2q/em1wKzQxspgi+66eeYgAf9vK6wSSe
 cXOjttYOA5QqK/2Tk9gQB2RDO8CQ7d6pjLyK90ARi0ZuUIr0PuwAcZru/9A+/PO+0BF6
 l3YmDx9CdTaFm5jy3ZOPdMtsoK6MBcT+kR0bXKFqA8FcF/tn3h7tc1GwV83CSeDKcnQq
 y0TxOZXQquKMZhtLzzoHzKGCg6Llo1mArONKnOiFUYxxmljcdxoZBHoq/sf2/HBVipTV
 8mPfo3D2CVn3IKKHI2cASbqO9Qorvauf8e7MTesvn7QVa2EpDUXx9pWVcZ7ynzfdWpjk
 Ty6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bh5QKmjnoYTHQUn3U7/OcwSchayTeJJXSPC9dyaLEIQ=;
 b=Lgmt40u1XdWpTCRZc30m2hOKyCzlQdRPuL7FZt4OGrvBRSJ5GW3F5D4uBT/BJ4/7gJ
 tdKWsrs+Co1Nt8pCqSg+hDdEvIw4yRCO93qjGjKlEsDC6IKv+Ft0mnVCBIWVgJVIxAu+
 XsYoZdIZ6Do5XYuxC9vliJTOCqzykQRaEp8ZZRXXmKH86jDpsb6SFvBFm+hFLT57VI89
 hI0sH+g6scNLou6x89636CpZa/GNrTn011WtWcvWQ7TMmY45yRJ15PhIAKKH1G5lZR71
 WTyKr9ku0x+GWZcL9WpbVEnwA69SuC3YsT6JWO5G4FgKEKgw9IuaViR9jbFIuSbaHxBV
 A8ew==
X-Gm-Message-State: AOAM531IPHNjb1kl9WCDj+kEJ6NyXBZzDUIZjnvoVE6BXPU39fjQMuIT
 jYAKvj39iOlurP96SjTQAa0=
X-Google-Smtp-Source: ABdhPJw2AR5WV8wv59XEaugDFSNXFOdFk3qYh0L5C3KD1QKUSm+JegJqDcfXjs3nT+i7byCIv2uqvA==
X-Received: by 2002:a5d:6382:: with SMTP id p2mr5568089wru.338.1622833436718; 
 Fri, 04 Jun 2021 12:03:56 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f137127c00f22f74fffe210725.dip0.t-ipconnect.de.
 [2003:f1:3712:7c00:f22f:74ff:fe21:725])
 by smtp.googlemail.com with ESMTPSA id x10sm7576200wrt.65.2021.06.04.12.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 12:03:56 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 1/2] dt-bindings: phy: Add the Amlogic Meson8 HDMI TX PHY
 bindings
Date: Fri,  4 Jun 2021 21:03:37 +0200
Message-Id: <20210604190338.2248295-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210604190338.2248295-1-martin.blumenstingl@googlemail.com>
References: <20210604190338.2248295-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_120359_981811_7D90484B 
X-CRM114-Status: GOOD (  13.69  )
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

Amlogic Meson8, Meson8b and Meson8m2 all include an identical (or at
least very similar) HDMI TX PHY. The PHY registers are part of the HHI
register area.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../phy/amlogic,meson8-hdmi-tx-phy.yaml       | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson8-hdmi-tx-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson8-hdmi-tx-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson8-hdmi-tx-phy.yaml
new file mode 100644
index 000000000000..18a123b9bb0a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson8-hdmi-tx-phy.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,meson8-hdmi-tx-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson8, Meson8b and Meson8m2 HDMI TX PHY
+
+maintainers:
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+description: |+
+  The HDMI TX PHY node should be the child of a syscon node with the
+  required property:
+
+  compatible = "amlogic,meson-hhi-sysctrl", "simple-mfd", "syscon"
+
+  Refer to the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.yaml
+
+properties:
+  $nodename:
+    pattern: "^hdmi-phy$"
+
+  compatible:
+    enum:
+      - amlogic,meson8-hdmi-tx-phy
+      - amlogic,meson8b-hdmi-tx-phy
+      - amlogic,meson8m2-hdmi-tx-phy
+
+  clocks:
+    minItems: 1
+    description:
+      HDMI TMDS clock
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    hdmi_tx_phy: hdmi-phy {
+      compatible = "amlogic,meson8-hdmi-tx-phy";
+      clocks = <&tmds_clock>;
+      #phy-cells = <0>;
+    };
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
