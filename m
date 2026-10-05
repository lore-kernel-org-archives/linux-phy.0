Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 611AECA5FFC
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 23:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzDHmzpPqqa/PhfLWGWfSMu9Ugynz/pU0fT6L//goEs=; b=DUHWiVjLJgOkU5
	Wl62hjODB8bSGs5LLNZ90H2AH4n6GFTFGtM5kRA6zLvtCNgoWEDuvcy6MP9ZM+FWotexCSkGzmHUx
	1qQ6rC1ZX9X0MEtfEB34P0BXM37Zv2FA09ZSWcEG9QDf3Ltb7ilDu1hTrDDzPzmwtrerOOQSFivdz
	0vH/aGInJjEi771kpoq4JeUsttFF9l8tMzcrBgIvJsi1HYyukRG7ggfuhpzrPKge1aEeIfHCb3iiC
	G60uEDJZKZsICgl+7JOzQbGzWJySG/G6tBoAnljHnLYnb9xcupqcRNJ/Nwg7zNUYfEwfDNy4LS0Gd
	VyoIDv4tTcR4vXo1FGVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrf9-0000000HJ6I-2jJW;
	Mon, 05 Oct 2026 23:00:03 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrf7-0000000HJ4f-0s3R
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 23:00:02 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-398b9f722abso1220658a91.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 16:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791241200; x=1791846000; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7KYnx5M9SIckzrzxm/OntzsZgVfGL+NHQqwQMkKwNaA=;
        b=FBb/PgLBAf28+Rdhc49+zKz0laE6iJW669mAbgyZDxaAT1xuTWWeQ+09xhBJQ+FEvc
         RfbzA6vJDrhHOoSS6LLHayCCOetNX7HHikMsoCaLJef21ek12oH7IQVhEVIWy3GEz+lq
         35hU7O60Q6isl8EDgh9H9vUxwgvoGMP7zLT3C/ar5CNMXBWYH6VyiAkZyyfue1r+7Bhg
         lNTZbfs7mxgsFcc4iv8ywxTwFJ9pFnsU6aPaC/kb7tCw/nluARI5fOkJEdAXEoNCzD2A
         iSPPsYyWQxeNBdPTdNK/JmsxnflYrGMGd2lwDCd26vkD5j0qranoFFnaaMgfs+hUkPiJ
         z+Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791241200; x=1791846000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7KYnx5M9SIckzrzxm/OntzsZgVfGL+NHQqwQMkKwNaA=;
        b=cmkq8NboL7KOhJmp1zrXS96q5C+IA9wSRCDyIYBNkM6Ijm/Ysu7N/yhWkxJXIgQ9Gu
         GFVLxBMXU6EnvVePQjJ/ygzeGoKkvxwdFLHemRB5dJEDlfNFxYDxITwvfA21wXMmyWYw
         4ZQhzIa3+7VnM9u4/ugDirNfhql9JXMrxegTkRz57ZrG4DzXeWOh4tiigq5MC0SWhTMl
         q2cdSJamIrB4ubUfyoXeRWzS0/Odal84C6pX/WhGdYmaF/dhqnZNahf3EXSlOuk8diTM
         SzP3k7SA7KJhcOsMyKgGq369DxXNUtJmnGAq/YnUAvhisGdBCMfozRY1wzSKX5ojHyBh
         e3Lg==
X-Forwarded-Encrypted: i=1; AKwUvBwIo1pHIznmzy6elowybHQUzZP+thYKtyh8e2CzPKGfWmV1D5dOoam2XxdWigBFWg2qrpkIcdZddqE=@lists.infradead.org
X-Gm-Message-State: AFuF++n8ZXx8PoRNG6OvvKI5Ih+W/8PU373WLN8x3L9rmdwD5AOvuY61
	pAOo/kxZ35nHCYAaEIBOnnwjXxRjCIpOj7ckCKCC2qWgj0zSby2JHNAy
X-Gm-Gg: AYBFou19E9o1IEdmIl7vzxNKSCNCpuPBthNF2G9QDldjTZnZ5W/LwK1Vl/1r16fuYK/
	4hA+x4s+JrBO6Z7SzZ+qtO6Gs6VM359hP0lTf46D/aHtntiWz4B8Sm7ymB6dCa+AnICabY8HBvo
	5AJC4y3tjsblKmJwTqYCx/j0tdTswnhMLWl52NvTID5fZOqHvrb9XtMCLI988xUHerASpUGdjpD
	5xcRcUSZOEyqFA7oLs4kJ249xBeLav+H22Pi2h8Np4Rfo469gl/LFsdh984rpv+PXT7hLRHUliA
	yBS9kjqv3bUMVcOnz+46o2rUGaNmu8YN4/Pzch8ttz8johA8jiCe4NsoaBg3IpP+vKDOGCvR+ga
	gxx/qeegIByIdbC9G/tGrdGZn/5d5XF+MquOH2zITMYytcZDzOhE0Zhs0f/tKoI6UGnfLbumN0J
	pcIuCDktDmsJ8xFFk1XbzzsoJirb3YfWsDi9UhEdFsTGHv3UCT/MvftXfWd5dQnjLs6bdM
X-Received: by 2002:a05:6a00:4fc6:b0:886:9078:546 with SMTP id d2e1a72fcca58-88af4b4804emr12417342b3a.26.1791241200320;
        Mon, 05 Oct 2026 16:00:00 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88b0b8f5b79sm4183327b3a.15.2026.10.05.15.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:59:59 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v11 1/2] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue,  6 Oct 2026 06:59:43 +0800
Message-ID: <20261005225944.1171574-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005225944.1171574-1-coiaprant@gmail.com>
References: <20261005225944.1171574-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_160001_268041_012F418C 
X-CRM114-Status: GOOD (  11.94  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..2f72b83bdd6a9 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,14 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +113,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
