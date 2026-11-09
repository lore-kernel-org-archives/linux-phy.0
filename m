Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEFB606D807
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 04:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fQUJkgo/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ud+ZbrR/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GBJxQUdDJM6vzMB36RelXUs6QbTHQma6HMtaB4V9tK0=; b=fQUJkgo/7Lk6OFc5bKWIRoEOku
	wcNYsLsR1EJME9Kh/idFAs7aKndpgL7iFG1+a1TxfjFQkBY0JVItXL0AlFMDxAS3+h5NQDcx4EMsJ
	3tMiF3K07r4k2tROGVXrB6AUXomgy1ltaugAM7MS7WawRgI2hkBezkyr1MpsAS3lcNeccHp927t+j
	wC5Fkrf3ogNhG7dpWoXIBObtfkP7kbgWp1vOsRFsXn+W3RZV1guqu0BUWV/o0uCXf3j2PVnkB/II8
	FdDeDaa9yKiqIcvRbGTXPoZ6BnlE8XMFFfLqjtF/O90wPVkv6s9LsFjvQnXHwu9ehZm0zBxUBHnRt
	XGWUd3/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGdC-0000000HHp2-0sYg;
	Mon, 09 Nov 2026 04:05:18 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGdA-0000000HHoI-1Zvs
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 04:05:17 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-cc758830601so231929a12.2
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 20:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794197115; x=1794801915; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hIU62W0BUNZPKYkLAW26gZ6Vi24pHjTqobWZNWpG/Ak=;
        b=Ud+ZbrR/SV74Xpby2FU1YvoGZZhNSuTTV0E6XyQ545Q4oNx1hd/MTVufLgjl1PZhsc
         II0p+vHbTDR44wOJedu6dZ/6n6SKI4B4LLTN8yLiOqakZjUE3eTGGkQIVxbtrnf28WEU
         GlYDyCvakuA3UAPxDhxu+yKIrqgW32cGfYM+ZFnjPc/iA5prhGhSMYnvJgI4okhVibiO
         fYTNdspuY7rxjkqXSFtzkhTMytw0fpfK8jtfmFxZYMjeQdZQnC+MjD7PwSnn1QrGDo2O
         SeuJp+/ROfOtfgXaJhhPpI7527uGBRMsXEVPCTFqDhRckJ62LODM8eEbD0X6NArVXmPT
         IPXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794197115; x=1794801915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=hIU62W0BUNZPKYkLAW26gZ6Vi24pHjTqobWZNWpG/Ak=;
        b=gmGKaHDD6OQ8hVp96TGdtkJ+bsmgtzGGPdtWUtW+14ZYK/O7sLL84yxatG7anSduYT
         esq0LPhbPVpGrvRu59JkcRKbt0jHbdpFElJ0PoF+DX4Z9kSf72M9Z0V5t3wcG9C2Z994
         lSPT2cA5llW70wZhO2vdZH0MESHuFW/6KYFpXMwhS44mE/aAvFEKwuDwu4LM6FQXtBqV
         chQQ1nQ8SJ8+eYocXTEybpBoxlv4NFpK1beoZfR0WlUwgZHunouFx/h27dAJ+eGvMbN7
         H+48Qv5M1HF/HLUi9KiUG1EOJxEjMkATVou9FUVb+roZcJtBI9cqQ+9hhihuM846OUnE
         T7fA==
X-Forwarded-Encrypted: i=1; AL+hErFaU3sJtah/Invi310Y0wwXwbYvxcCpTyTdqvh4H9eOswVgqBYEfbAXSozIlouzLI6zIOPnU3iOMkM=@lists.infradead.org
X-Gm-Message-State: APuU4Z/NhMoI3Vj3mdCfbA71LANj46FPMmap3mDRoYWNoe0dJ4TbSgl6
	qExZx7T6SjEibB4p0IP06hAD/NbaHlKoQ6BDn4Q+vkpONRCAdr13xjdP
X-Gm-Gg: AYBFou3ihKpWn8ehmkgzSmKJoHhc0CmsxAvjdacILtpJo5Kkmu/haW2oYkLiY8MnW+B
	JLIJRwvLINuaA/ag9Y4ivJdrPKas4khFrkmbXOcR8NyatYKPR9Vcx+50W5KDwyi5W9h8LihOO4/
	kSVfJXD+0QsgwSc1Oncz4yWMdN7PFhy0kF8MR+z8io538Dpa1TeRVaHRYzl8r8JmXpH8mPWednN
	86zGNTisErIj1j67S5Z32yHRwwWNEQ/1oY/Gw4Ax6glXzieSkMkJeDzgQMvMbEx7bS2gszws6yV
	+/4BpCqV3C/25iHYwFAPQA8xRp7seJDWGG0gFioAKmeBaKWG4F5b+GNyBpXDnOqht327usancA8
	WyuPCCuVfeldAyS4uwOSVJZUZt7EqX8M7LhDVXtQBB0Qrd+1R98dIbDPFq43WY599D6vY+f3sgk
	PvM9ScrRt9KbDkAq5+GmUotYcztfSMLHa7hogeKz2+VnX3SgONsebdM7m3k/135Q+PaWHIXQXMi
	QGVP66wNgQ1u3E6lMopgh0o2yt62UyM0Bo5l8wyC1S6ts2XKIM3ksCbwIHHATcyDuqC2qT7gRew
	GvUm0ABq6wIxig+lcMyPyyG/T32M+8xVbCIbx88fnNBDfxQaIeWlwxlknVN+hxZoHA616k4NfXv
	KPbeTZey1LLAflIRJMNIG5rwZTYgu8/r9c2gGkwBFpqrrsakfRUMPxi/y4/KdJ5pYht1qBbkaLA
	/818o=
X-Received: by 2002:a17:90b:442d:b0:3ad:6090:a190 with SMTP id 98e67ed59e1d1-3b12d4b6839mr3064156a91.41.1794197115134;
        Sun, 08 Nov 2026 20:05:15 -0800 (PST)
Received: from ryzen.lan ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b127891fa4sm5116170a91.4.2026.11.08.20.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 20:05:14 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: Alban Bedel <albeu@free.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: qca,ar7100-usb-phy: add AR9340, QCA9550 and the analog reset
Date: Sun,  8 Nov 2026 20:04:50 -0800
Message-ID: <20261109040451.114135-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261109040451.114135-1-rosenp@gmail.com>
References: <20261109040451.114135-1-rosenp@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_200516_426107_B70B9891 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_INVALID,DKIM_SIGNED,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From AR934x on, the analog part of the USB PHY has its own reset,
which has to be released along with the PHY one. Add it as a third,
optional reset, and add compatibles for AR934x and QCA955x, which need
it.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 .../bindings/phy/qca,ar7100-usb-phy.yaml      | 38 ++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml
index 029665530829..358b3f345c12 100644
--- a/Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml
@@ -11,8 +11,13 @@ maintainers:
 
 properties:
   compatible:
-    items:
+    oneOf:
       - const: qca,ar7100-usb-phy
+      - items:
+          - enum:
+              - qca,ar9340-usb-phy
+              - qca,qca9550-usb-phy
+          - const: qca,ar7100-usb-phy
 
   reset-names:
     description: Names of reset lines in order.
@@ -20,6 +25,7 @@ properties:
     items:
       - const: phy
       - const: suspend-override
+      - const: phy-analog
 
   resets:
     description: References to the reset controllers.
@@ -27,6 +33,7 @@ properties:
     items:
       - description: Reset controller for phy
       - description: Reset controller for suspend-override
+      - description: Reset controller for the analog part of the phy
 
   '#phy-cells':
     const: 0
@@ -37,6 +44,27 @@ required:
   - resets
   - '#phy-cells'
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qca,ar9340-usb-phy
+              - qca,qca9550-usb-phy
+    then:
+      properties:
+        resets:
+          minItems: 3
+        reset-names:
+          minItems: 3
+    else:
+      properties:
+        resets:
+          maxItems: 2
+        reset-names:
+          maxItems: 2
+
 additionalProperties: false
 
 examples:
@@ -47,3 +75,11 @@ examples:
         resets = <&rst 4>, <&rst 3>;
         #phy-cells = <0>;
     };
+
+  - |
+    usb-phy {
+        compatible = "qca,qca9550-usb-phy", "qca,ar7100-usb-phy";
+        reset-names = "phy", "suspend-override", "phy-analog";
+        resets = <&rst 4>, <&rst 3>, <&rst 11>;
+        #phy-cells = <0>;
+    };
-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
