Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C0E606A332
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 18:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kQ0DqPzx;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=YGXprCCr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lcurjsyuttgYRn/DclPs/ug9VPbhi7x5WRSSjbxl9fo=; b=kQ0DqPzxZ2CcgWDmDStGEP0Lwb
	LpMXenTMrDWEns0trmZyQ89fy8lOG3W2IxzL34Bp8TWP5Kz2XNItav+43T2UNYV929X/ANACWrKrn
	6pqeUYsAIsrojrSwa1z3/ok4w4js0EzhRZsak51vR39b1SuWfdVVGMP4OA5dkcps1mSq9Y1wTt2U3
	1uaq136Re7XfKX1dEjT0RthBE2VY8XYzmokcKLaBUo5XW4ny4yFxZzJDoa2v80R2Cw5ROBic5+M7a
	3S7iOdJ0RCV8eBnwSRPJtYuKB3wQPrSEcOT+AxtFeIiROcib31RxyqFRyv5kfkKj6S3m/A3FPOlJL
	8h8KkjyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRs-000000034VJ-2vg3;
	Mon, 26 Oct 2026 18:29:32 +0000
Received: from mail-pg1-f227.google.com ([209.85.215.227])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPRq-000000034Sz-2B30
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 18:29:32 +0000
Received: by mail-pg1-f227.google.com with SMTP id 41be03b00d2f7-cc4c02ddd62so2222677a12.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793039369; x=1793644169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MA5/QmONgwci+C4pVkhkGywYbmpIkNjdx6wsVgaOess=;
        b=z8++1zvr1rDSCLWqcuy4wZfT6FEr2X7VVI/qd46hGl2wvN6ueL05lsXhxv7zWqprfO
         s9t+YeTstzq0GSJPp6T8xKk6bS+vVSafKK2vkLxVgqRJUTRbxhZk7q/GFJ2BszVUr0Iz
         rQK4zK5HVgM3/CWq93rC/+22hVc7JFJzs9CPrYufBB71hhRU9l4QqLsaRqq0EfLD+9VN
         /1fIZRVezgrsfiDOvjxm/v3zY/BUofOSO/cGD3TZ4vFJT+7GwudQEYUwq1+PodKtop9p
         JU6auewZ0ZRkfsUZ6wy/EPNOudSxOVFuGGVfP0GgfzRFAKUeBVSH9VLb4kHGxRnGtgXR
         Mcvw==
X-Forwarded-Encrypted: i=1; AKwUvBwmgrhcMC4/tZ4hCBCw7mYf3VnQ8WErqxSrsCsNcge8cPHhS2Ek64CXbcWAkNiNwIVDJ+3MHrZnuW8=@lists.infradead.org
X-Gm-Message-State: AFq9FYIN2yvoNhdzjkQBi0E+tKK79rUB7N0at4hquzToTgPLkGuEdFo1
	iRKMHoUf0KbSF319egoJNEebt5ax3V6ESMXxIb0Ac/dy54a8ZArWcnTY3mz1Uk1PVFPEXNNl33f
	IeJolGATy4LcBjWxLflLstqfkkM1JTbYkUQ7XOWgCI98o8IZJpw2etwWOESLaW3gYehGG2+b5+R
	2QPl/Jl5SZAI3GT85UHSyw3ETlDxgZZUnw4tFRMdC36sjeiaKZIlzcwP5r6X82f6zNpX/Qh/gVy
	exOWDkAo84BSBaV6KRidHIQ3V67
X-Gm-Gg: AYBFou3DhtTKdEPv+ns21GAT+k+HmOmugxT20XeL/do4KgfF8KajgWsvW0h3KPHsD+1
	cXZfaJp4PM7sykWmaFBphj7WYhHKUyw302qoys57Ex4rfyjvZ5wXPVyhhVHSlx61im26yvaUL9A
	jr0P7w+NcBjOnGg+R74iviBJoXulq3oj/5lLg/YXDb4ZrHUy1pctEhlw5rXheTHmgGa7NAwpTYQ
	uc0DJuvHKT17WX6EEQ6zklCrN7eDGTPxEx4owuvpZl3YALBoqlovZlmMRPl70lRJ+wOxQSsUiLg
	VNgzwayz0eRoUn3ssNfoTVsLTZpFMmtxFpC+d2v8P5OXpS1iI0KIpkvv89Sz8yU2dFVaE5qD4li
	FhmDYHRLjL5dNgWJFEqfTujTCp3tgf7eIAnd8HkDh1VYOGcE8GpcZVCbv6f0md9BPlNpeT+eQHK
	SCR4CEYcBNOqdCkfs8kJ65r6bWdcEIEnsNCclgxqOW
X-Received: by 2002:a17:90b:78f:b0:3aa:fc22:8aa7 with SMTP id 98e67ed59e1d1-3ae37b3e6c2mr1026357a91.53.1793039369298;
        Mon, 26 Oct 2026 11:29:29 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-23.dlp.protect.broadcom.com. [144.49.247.23])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae404ce404sm271127a91.2.2026.10.26.11.29.28
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 11:29:29 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-36998507c13so2392769eec.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793039367; x=1793644167; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MA5/QmONgwci+C4pVkhkGywYbmpIkNjdx6wsVgaOess=;
        b=YGXprCCrkUN2yhsBI5ffflcRoVVM2ljCxx0nSLfaMPpkOjdYCAwVveepz/VInRYATD
         GzKKeT31wR9fpbvlPg2keBrh2ic6UKtkeo2zje8BuncHkzpCB3RbkjELrhZJmQf0wX1n
         lmPMSzIttRyWBlgU4AAZi8eDiShac1gAZ20z4=
X-Forwarded-Encrypted: i=1; AKwUvBwKkimspRpNyMthmDb8xCpVoDGznjw1Mu/DjVVC2xqxkkgiiv1SYCoKUoUw5IcpmPjj3/lzrePw3mc=@lists.infradead.org
X-Received: by 2002:a05:7301:fa2:b0:34b:5ab2:e200 with SMTP id 5a478bee46e88-369e8455879mr10320921eec.14.1793039367396;
        Mon, 26 Oct 2026 11:29:27 -0700 (PDT)
X-Received: by 2002:a05:7301:fa2:b0:34b:5ab2:e200 with SMTP id 5a478bee46e88-369e8455879mr10320869eec.14.1793039366691;
        Mon, 26 Oct 2026 11:29:26 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a01fa4c58sm24657259eec.21.2026.10.26.11.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:29:26 -0700 (PDT)
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
Subject: [PATCH v2 2/6] dt-bindings: ata: sata-brcm: Describe the NSP IDM registers
Date: Mon, 26 Oct 2026 11:28:52 -0700
Message-ID: <20261026182856.3168686-3-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
References: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_112930_569329_C77DE6E1 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -2.4 (--)
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
 .../bindings/ata/brcm,sata-brcm.yaml          | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
index fe7f091e744f..98529784b1fa 100644
--- a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
+++ b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
@@ -15,6 +15,21 @@ maintainers:
 
 allOf:
   - $ref: ahci-common.yaml#
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
 
 properties:
   compatible:
@@ -30,12 +45,15 @@ properties:
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
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
