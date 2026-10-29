Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36181606A320
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZY41AksX;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=SwPSdbTP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aM8Yf2b6IRb/wsCgnsAqPl68Xas+oFVgKG58C6RpO9A=; b=ZY41AksXFdiu8GusX19zJztRST
	Wfm7vqWk/0+FSkC2pNZO3PVPcUQCR8wIp1/c5pvS3LTMaZoGcsdxhucsPBht25lre1Rh3adt26kD5
	zldnF9sBNxB8fW5ji75wdrGG/6PIhPJsbKdP1UEILHp4fK+oQM4N43dZnVkY/1epPsk2zPuTNPjZ7
	T+uc59kCYqMUXHpp1XJn2qItsGS6VnFMbInR2XcJH+rL/v7Bbjk82NTn896cbOJkoAmXrVIBUyIz/
	tsFvoR9WRxmrMX4JLnZRoBl8Zl874sQvte+vw5HRo3ac5NXgFfDqm5qwsf3bM/xRMVFXItTQuOYML
	EEmuB8FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXd4-0000000APbs-3t9J;
	Thu, 29 Oct 2026 21:25:46 +0000
Received: from mail-qk1-x761.google.com ([2607:f8b0:4864:20::761])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXcr-0000000APUi-2rNy
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 21:25:35 +0000
Received: by mail-qk1-x761.google.com with SMTP id af79cd13be357-93f259cdc86so229670485a.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793309131; x=1793913931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xItqMuf2hx/dI3+KyoiZy/IYYq4i2pAiSjeOl4VY+ro=;
        b=qlIaqfYVgcrvmPTr3UYNIPTgYhzh8dZecBrFkd4Pi8ZGl6IiFaVLeScDGvnLkOA1KM
         R30J0Tawys1tl1E/c7EmWYFwv/oFBmS3A07l+ihK1IjolsnyCOIBNpOcXxQetWSuDfW+
         jElsaZFZjtm/OojksQMx6TLOlAOkL+7PgcFPz6wK5ubwc0xqn+3ZmKat+GyQr6wqeg2U
         u3/LFo5va8IoyAqDmlhzQHCyvKRAXSZPuVYTnSwa6oA/B1f46/V3eTYYpyEwG+7MiNHc
         yB2IL61mFFkQnB+tHJwjj/G/PnuSh3xsvuQNZvoX0bHaT4WJ1kFmYbVNDlH3jdDHYiJc
         fEMA==
X-Forwarded-Encrypted: i=1; AKwUvBy5rYrdLIZHnAvjPCNxfb7xNbEJny+mXN4FUXvulRnas2kUrS7JZMIP1Tp0V+fYnRS/2AWPTn+kOd8=@lists.infradead.org
X-Gm-Message-State: AFq9FYLWUzxBCV1L8/PHOP5exPgI7htx00cmh+33Zd1tDSkDTIr9KQjK
	jRZivGY98itJc7YptEd0XK3gz5DOL5QbzG6Hl6LkfKqhY+vHMnSOcu6N4+mUrjZYQh7uG8LHIRC
	zS6UEyb/opp2aiOTXHb9NeNXXonKxLdrg9Ri3qW2mLq0Qsq44nfOAZb9ngR0mm5qDrV3RyeaRn6
	Sufq+zaueTu/k3fYwgoyGHNS0otS3UvzFBvGOjO82+11QxsaOBDhhVrQdmneOxiQwetJR+x2xaR
	/o7oLKCc8mvZTS/+pEkdzI9XlKC
X-Gm-Gg: AYBFou0Tsay1nakZ5FUbAQCJmW1fCzYJylShS8sPJMwY6RiCNurzYS4EePfj+oCqBzg
	MZt0vkN933MqsU+TB4oQT5eO4qUHcBDhkAn64PxQ43l1onBfbWCFY897/Uz6sT2pH5U/YvcZvTc
	KcwvfkJK8V89ksXcUPaOopT8xdfcnfDRTWLq4Gm+eASAoNKRYH0/Sbfdgi5LHbyskoOOHdR3WDV
	dMm0g8Hq9ccJWN8PMLokSyWS5qmQBA1qJWNe5sLIA3OWiFjDUFse1ZHh2EC3nCubflT2Gt9RVGh
	mHUdhmAzBxwuhKHeAYF0bZh0wgUn2ByPb5K8yvtapxSg862p9UMzmFyjFibfGu1IhtTPaFUih4G
	PpCx8swUeMLz089INV7mIsf7KiLj9vHJ0vjNqD7ajfeAV4UpCWWy7b137nURmzv5F72RwF2V2Oo
	S7uAHRJADucp3M90c1QQPt66goVcOM12PTRQGFZf77
X-Received: by 2002:a05:620a:2a03:b0:93e:c12c:f123 with SMTP id af79cd13be357-94421864addmr81775385a.79.1793309131496;
        Thu, 29 Oct 2026 14:25:31 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id af79cd13be357-94421286d39sm6208185a.16.2026.10.29.14.25.30
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 14:25:31 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93caf7856ffso581292085a.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793309130; x=1793913930; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xItqMuf2hx/dI3+KyoiZy/IYYq4i2pAiSjeOl4VY+ro=;
        b=SwPSdbTPsII6AiFgOb0mZfzh31cpAmpctov+nShhrMp010b55OTm6Bhy5ksv35owrw
         btfC8mdK1CX8gb+Xqt81MVnwvGDc/pbgcwOcwstBMnZYZdInRdEyp5ZDiY2B4PNoL3UB
         7dvcK7xPzAyA36cSyEV+7nUiNyCed98HInBKk=
X-Forwarded-Encrypted: i=1; AKwUvBzA91Og3ODi7FbETVFdKy4RkvOYq/unK0ZMzlolcICBJoLCI4pcOijKjmm8+p5JDh5zOCe9ZmKZUh4=@lists.infradead.org
X-Received: by 2002:a05:620a:404d:b0:93e:c691:a1c with SMTP id af79cd13be357-94421850adbmr65335485a.76.1793309130079;
        Thu, 29 Oct 2026 14:25:30 -0700 (PDT)
X-Received: by 2002:a05:620a:404d:b0:93e:c691:a1c with SMTP id af79cd13be357-94421850adbmr65332385a.76.1793309129450;
        Thu, 29 Oct 2026 14:25:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca314fb6csm6384936d6.34.2026.10.29.14.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:25:28 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: linux-kernel@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	linux-ide@vger.kernel.org (open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM ARCHITECTURE),
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v4 2/6] dt-bindings: ata: sata-brcm: Describe the NSP IDM registers
Date: Thu, 29 Oct 2026 14:25:09 -0700
Message-ID: <20261029212513.4126083-3-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_142533_807259_559E2D23 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Northstar Plus uses the SATA IDM block to enable the interface clock and
deassert the core reset before accessing the controller registers.

Allow an optional third register region named "idm" for the NSP
controller. Keep other compatibles limited to their existing two
register regions and allow older NSP descriptions without the IDM.

Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 .../bindings/ata/brcm,sata-brcm.yaml          | 57 ++++++++++++-------
 1 file changed, 37 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
index fe7f091e744f..9a48f7e36fcd 100644
--- a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
+++ b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
@@ -13,9 +13,6 @@ description:
 maintainers:
   - Florian Fainelli <f.fainelli@gmail.com>
 
-allOf:
-  - $ref: ahci-common.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -30,32 +27,19 @@ properties:
           - const: brcm,bcm-nsp-ahci
 
   reg:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   reg-names:
+    minItems: 2
     items:
       - const: ahci
       - const: top-ctrl
+      - const: idm
 
   interrupts:
     maxItems: 1
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - brcm,bcm7216-ahci
-          - brcm,bcm63138-ahci
-then:
-  properties:
-    resets:
-      maxItems: 1
-    reset-names:
-      enum:
-        - rescal
-        - ahci
-
 required:
   - compatible
   - reg
@@ -63,6 +47,39 @@ required:
   - "#address-cells"
   - "#size-cells"
 
+allOf:
+  - $ref: ahci-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm-nsp-ahci
+    then:
+      properties:
+        reg:
+          description: AHCI, top control and optional IDM register regions
+    else:
+      properties:
+        reg:
+          maxItems: 2
+        reg-names:
+          maxItems: 2
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - brcm,bcm7216-ahci
+              - brcm,bcm63138-ahci
+    then:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          enum:
+            - rescal
+            - ahci
+
 unevaluatedProperties: false
 
 examples:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
