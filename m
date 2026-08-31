Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A476DC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8ca1bxBNdgXSxPNi78s0K0YqFnptckRHzDbmr3BGAQ=; b=m12oMk6SD3I/w4
	Gbb7JMLEHJDUu1AkyOB+g8RMha6qKePMyPKlGRWeYf2PD/bihdB67+12jTDugPpU5n5ctxfNjpcLC
	BLU6dqWoYlN8Eyrphw0tMwcUlg44bX48s1vqas8QMC9LqkbWgxwYWB5uWrVWQXvq4oXUZoxAJ30Nn
	4VnybY/jc5iyoZCwppmsZkHQgkyuyVHhgqY65cBlOPvGCIQLTN3sj0xd+7goiI5TMtkSZZ/6MTJLQ
	0tT+t0ixvdT2Oigm9voYTvIrBL/r+T6YNRcm/I7G/9CahtyQ6vC/tO1S7e1Ucas+7M0H7O5vYWQea
	ZarZPxeyw+tpRKoJajXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BMT-0000000AeaM-1gvD;
	Mon, 31 Aug 2026 23:24:21 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BMQ-0000000AeZx-2ozV
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:24:20 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-cbedf082ba2so833234a12.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788218658; x=1788823458; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=J4jt4+G+FlNDDgolam7fVa9at5qKQS5ruNcIg62BbRI=;
        b=QfUgwz+QiI79OoUeTltosks8a4JVznvstqEMOCMvPT2hQM1kJ0w5Sqw7PqQQuJyx9O
         5xwvlnOZHFT79M1uw6v8eA5Z30oGH+aZHm8RscR4acbG4n4Xjv/XUAyRPM2W/WJgMxNT
         jayTPA64GyuD9EaaT7vrb0inBd/5vMra+hdBwzQKneBKv+GFhzd6gKDQhpAqX0EvYAnP
         R7qfBhfn9EBTs6ZpDv+tuHjQ4olQvSsWXDzbT/FjUNJLfBfkgq2/SGoIgWQEND63bcyF
         9g9N21+73cKxBWvB9h8z3/eihFrOdzvgQ9HGHAzQQWifzs5AG4TEdGkF9mBGU/w9zV4Y
         tKDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788218658; x=1788823458;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J4jt4+G+FlNDDgolam7fVa9at5qKQS5ruNcIg62BbRI=;
        b=oMP5Ek3wtyLDle9wR04GpP30S9s3jdq3wOOy0I4CD1qJSMAD3vA5axSTlkuqADdYeq
         GUk6LnkxhnzBZU7A0hjf8a8DtEfWQNqma5/F+DOKqZfIfLrMp07kcJ0+DND8/bThTl1G
         6vUlasillIQ6QUW5fBtphqmKgRgqzz+fWfFnmlGnz4nBvXweU8kJq/46Q5vWmokb0Ti0
         s6KrCry5mjXGnJlUdjhIEcm8Esz/w8qmxaGTXkv2qp5GdCc7TJ1R1/b+nP7yEDFsHTXA
         Wt11NajN5gIeVr2ySrOsZ96HubDHRTB7UoXuaVRj3Lmh1N4qd703rOn2kojRS+xgP61/
         o+Ng==
X-Forwarded-Encrypted: i=1; AKwUvBzJvCojQFp394Bj0UpSj/kDJFBtj1fi6AzOP3olFuWWaZNqvER4EmX18GUWVl9tEdhpB3fpTt2ph3c=@lists.infradead.org
X-Gm-Message-State: AFuF++krnpsrOopcn65B7l8v89g9NAmSOXNpVdqywZ5zuXyif4hgJcOY
	JyufCR94bj9gOLkTnC+JKzrgrF1zIcDAVXy1C4QBJUatO9FoffH+cS6I
X-Gm-Gg: AYBFou2H60DpRvhWptmhdHK4UyRR+rXlZJ92OlNp+90jsGo4OTVgkIq2PbN8U+tS4Mj
	eQbh8aMYVxoufXeKR0hr4Tia983DCCSmIacmZ1ypv7oJPmzCsIT/YqMENkkTmWLdBybGGUSpsQi
	KJeH7JllljsaotV/XgXJ2dcE932SxZObQ8D/O90cvhwsBSAeVfWXKDD4hDMuoq99A8GqeNxkih1
	vunD/10oEkIlM7PAnbWZcHJeW+ZLnMQQ3P84rXZBYSL3BJPMT2KInbYrm+9rgXr+WL861PLpRiY
	PyZY6ZQPHvI4PlZZHD3N54ukZ+9/f16Ap1mS0XM/yUi1C7jdmX0IZuXlIRudQru3MoH5bd1SCNa
	jT/Qn2GzmJV4i73gdVxB4nl4ii15p/KpeaXNKpzIJHl1E2Bk0pz8Yq7NrERtb+MxaT+BSMmvzv8
	v0MrjTXC+i4ttC6028TV7A5FF5t8EtpymJdN3NEUPeTqssH2kfKa8mR9Biqbm+267T6F25A2s=
X-Received: by 2002:a17:90b:4b87:b0:396:463e:2eeb with SMTP id 98e67ed59e1d1-398ba6dc4f0mr14936225a91.0.1788218657679;
        Mon, 31 Aug 2026 16:24:17 -0700 (PDT)
Received: from [10.60.78.252] ([2409:40c2:5002:4362:354a:8f21:7ceb:c8a6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d75fc49sm1963213a91.12.2026.08.31.16.23.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 16:24:17 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 01 Sep 2026 04:53:06 +0530
Subject: [PATCH v3 2/6] dt-bindings: phy: ti,am335x-usb-phy: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260901-ti-am33-usb-v3-2-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
In-Reply-To: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788218595; l=2527;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=wdCGHEerWJ5cmqLQGOw8nf8LkCX3g+goumJdNXlbraM=;
 b=433rLdFjhp/cZxJu80LNeYmwzyv7NpPrsHPWkvaXA3CSzd0fsbH2lnjG9g42jIzAEqebm3YrE
 HYUCmFZ7fZSDHQTZuxLzJhe8aEP7UYjeWCPN8u73ffdOnObKiiu7q5d
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_162418_724056_D2AE0331 
X-CRM114-Status: GOOD (  14.56  )
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

Convert the TI AM335x USB PHY text bindings to DT schema.
Add undocumented vcc-supply property to match existing DTS usage.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 .../devicetree/bindings/phy/ti,am335x-usb-phy.yaml | 49 ++++++++++++++++++++++
 .../devicetree/bindings/usb/am33xx-usb.txt         |  9 ----
 2 files changed, 49 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,am335x-usb-phy.yaml b/Documentation/devicetree/bindings/phy/ti,am335x-usb-phy.yaml
new file mode 100644
index 000000000000..b28cd42ece5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,am335x-usb-phy.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,am335x-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM335x USB PHY
+
+maintainers:
+  - Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+
+properties:
+  compatible:
+    const: ti,am335x-usb-phy
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    const: phy
+
+  ti,ctrl_mod:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Reference to the reset module node.
+
+  "#phy-cells":
+    const: 0
+
+  vcc-supply:
+    description: Phandle to the regulator that provides power to the PHY.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - ti,ctrl_mod
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@47401300 {
+        compatible = "ti,am335x-usb-phy";
+        reg = <0x47401300 0x100>;
+        reg-names = "phy";
+        ti,ctrl_mod = <&ctrl_mod>;
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/usb/am33xx-usb.txt b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
index 8431de346129..8832843c7d7c 100644
--- a/Documentation/devicetree/bindings/usb/am33xx-usb.txt
+++ b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
@@ -17,15 +17,6 @@ Reset module
 - reg-names: "phy_ctrl" for the "USB control registers" and "wakeup" for
   the USB wake up control register.
 
-USB PHY
-~~~~~~~
-compatible: ti,am335x-usb-phy
-reg: offset and length of the "USB PHY" register space
-ti,ctrl_mod: reference to the "reset module" node
-reg-names: phy
-The PHY should have a "phy" alias numbered properly in the alias
-node.
-
 USB
 ~~~
 - compatible: ti,musb-am33xx

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
