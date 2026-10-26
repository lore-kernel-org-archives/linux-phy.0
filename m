Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF8C606A32D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 19:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bZIluMzr;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=A8kM2ceU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lcurjsyuttgYRn/DclPs/ug9VPbhi7x5WRSSjbxl9fo=; b=bZIluMzrgWWHBBSzLhlJhSiGSD
	SQtASaKy+aj0hLkE6GLtELVjwCPqxra0Fj+IRNtlQjlzfx7tXlZq3eUlgTO38HRnaEJ186i9nCr5w
	4gpWlvG9cDJ8dixi6kBLWCul57TY/opSLPZLDmKWT05JAzw+luZL6c6ooB4OVzPI2JIHSWCKaYGlb
	UpYDtikVY9dj3W9p8R+qBIOxq7WVA6xa7UcfPlj4EOqkIp4pIxYt370lujx1ikPKrCrQppmhDtVc4
	08K5RxDvHBqf4bVUpsJxXhmA6bIyQSuP7k/SkEl7lV7i1WL8LNOOaSzECQIIyA2SAUyvzL8zbAqCE
	zRP3Zr4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQD0-000000039Rn-08Tb;
	Mon, 26 Oct 2026 19:18:14 +0000
Received: from mail-qk1-x764.google.com ([2607:f8b0:4864:20::764])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQCx-000000039OJ-3DZY
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 19:18:13 +0000
Received: by mail-qk1-x764.google.com with SMTP id af79cd13be357-93f560af6aeso344007785a.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793042289; x=1793647089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MA5/QmONgwci+C4pVkhkGywYbmpIkNjdx6wsVgaOess=;
        b=LSCkNDjc7p7GUIkWGXnWvoUIMOvJgna9bLRQ7Om1v/SOBQk8xgV9XtUDAh95kDvhzw
         Ea33YgTuqQAD8zDmmTgLeFswQoBL9of/Jb7JT480fyINOhY24KyyXk6XgufFkWw26tFW
         RQ7/nmJOi8yDhTO3L02t8JChjDkjt9zao9Nnh/UXWGo2/am5EU0vaEoj8Lab1/ZR1G5A
         aUQcBnmw3ydFbUnVzNf4BWdZS3OHBAlIpc0J+knkNRQFg2AIUYJo34ZCr9I4DVPjVt8U
         KQFjBReCTg7b9ToxPk4pi/TpN56kh7HqGvp/CX9N/L299+KX9qWG6buBU7z0i3IY3im8
         0MQA==
X-Forwarded-Encrypted: i=1; AKwUvBwLByYvYSUmDu/jA+bRqrxBenNJuSqo1L0mguUuhsdFswzaSUKp0byaoKGARhh3e599x0WLQ8ZXpW0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJvIc8novOOfcOBA1K8EVPS+wSDw8KXq9jtA6gml2zbrk5s8RQU
	RDsjgD1fUl0LW3QKgwQfi2AMuOPTImMVdo39xxODTWzVs0WXvkXg2L6dz0gsMpirZB++i5Ws7gN
	u19STr3/BG9d/GFJE8EPhiUC+4HvM54BuSw4IoxBaOrMJ/1MDHI8ESC3JlFWfD8toGgmyYIiUyn
	i0SxNJF3vX+6MKLQXWrowNHYUzEQLOfm4Iaa84Aqp0ZLGHBPFT27q8o6eFTc92lMjB4kZcloNfs
	GwR6IZxJAES/pLg6XaVDm6oidOr
X-Gm-Gg: AYBFou2ukjpCgAVnwGzVSEaxXqoQ42clhqbVp5AbF19gYUbbeI/UO5tbRzLaoAlp7Lm
	1dteCaamFRdJ3JK8LnUmTvDyykCJIzWxFGgWIb32E+iqo1mZL80zrgNyEhhfDmExrBEOVVv3iDu
	gDexj/kW2eKv+1rs/8J24TlOUxhOtyCEhLF7/2ELtC1fM7dC4C3gGZx5fBCGqd+/DJdEDqTkCXJ
	KK9BGkaes4n5aqMNn74sHB0IriNTnQfW+m9AKsONIqc68CE85+s/NZImo9QmnW8/7cstsDcMYwJ
	PnD2XRfv7BGMrb7hi3X/C/WSY3O8SFYYUFrb3P//fS1cZbA+58np0XeBvX6TqV2Wa/CWkzYkD9H
	WtuB5OIYE1R8XUtGqfev1g122o1QkZ/DLbmJnT5nEj0t5DnfPk+zAASCke/RNWmj8qkg0ewH+lK
	1Oxnp/t6IeGWtOZwdNF7lhP0rcUEp7ZgRbSHLrgvs1
X-Received: by 2002:a05:620a:4114:b0:93f:baf:279e with SMTP id af79cd13be357-940ef795dd7mr1218972785a.8.1793042289491;
        Mon, 26 Oct 2026 12:18:09 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id af79cd13be357-940f068f31esm116097185a.13.2026.10.26.12.18.07
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:18:09 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91b92acedd9so62781016d6.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793042287; x=1793647087; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MA5/QmONgwci+C4pVkhkGywYbmpIkNjdx6wsVgaOess=;
        b=A8kM2ceUevZsO6mqcejA3+WycSAY5oqeTr/KMMQnVVpaieOyrM0bfHW1IUrRZaqVpo
         0cLSN/NkgLf8dhpQvZHyV15K4VcfH9j8pqWxHxe7pI3IGN/OZD3WBurHR4Eh3ajSEXJV
         3KeK+zAgVx0zkxmzcl7GyE06YPe8jBbFG9WVM=
X-Forwarded-Encrypted: i=1; AKwUvBwfFNjxigTuPlnYdnecpNA0kqqdgo4tY8QEZldz/yRnPsdeWZ67C1MbbTNlJWlqgpv9qXi/mLKgND8=@lists.infradead.org
X-Received: by 2002:ad4:5f48:0:b0:91c:6983:8012 with SMTP id 6a1803df08f44-91c69839846mr35564826d6.4.1793042287085;
        Mon, 26 Oct 2026 12:18:07 -0700 (PDT)
X-Received: by 2002:ad4:5f48:0:b0:91c:6983:8012 with SMTP id 6a1803df08f44-91c69839846mr35564286d6.4.1793042286610;
        Mon, 26 Oct 2026 12:18:06 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c62063dacsm33430996d6.37.2026.10.26.12.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 12:18:05 -0700 (PDT)
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
Subject: [PATCH v3 2/6] dt-bindings: ata: sata-brcm: Describe the NSP IDM registers
Date: Mon, 26 Oct 2026 12:16:14 -0700
Message-ID: <20261026191618.3178830-3-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_121811_817945_9453635B 
X-CRM114-Status: GOOD (  10.41  )
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
