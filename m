Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9C34CA6001
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 16:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buoXwTytoGgTJD96wdI1RfPEVugEUyah4GhG/dQFqEA=; b=BIX6stasjwVufU
	WuQw6J5HLTOUDm+ZcIWBdjwFjH80zsI3xOvu7A0mh9PH1xeoF4h13u1Wtz61gRAM7CVXXQFqS7sUS
	FTy2OtWyiibRrVtk0f+XvLsZOhdVJlHxoHziWrFg8h7PJVuYqr8T37RCvDG/NoSEDmO7lGju4jKXU
	NwDF55ddE3oIc2g1OKDN4NSFFwzN+9Riljwu6LzVjwTtWTafOH6WLT0Y561fPWeSpFwvTSfRegugj
	sNydZOJ7VZZwe8NFEfYX3EICzHZhCYDk9u3tv58sBgj2lFWo6gB7bB2pS50dLhViaXMvcYyvJHVAz
	J43Xv0NT1pS1XAcZUCAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81o-000000018UB-0T7R;
	Tue, 06 Oct 2026 16:28:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81l-000000018Sp-0RY9
	for linux-phy@bombadil.infradead.org;
	Tue, 06 Oct 2026 16:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Q02YVAiwMG2tOYv3d1XG68tLbO2rAHXBUJNR5QhKuw0=; b=PCoteZtFdVQYNL5YLOkKhOYTEN
	rPk6/ZNNTLdsAXuYVS7apEGMLdaDZ7HrNncbM564EnshnZMGfts+sToShJsgeU3LMPTFFXXdr+Zqf
	9ky7JbR5urPgdk7YbrWPR3puL0BPFO1Cm8ZX8T/912jA92KwUULXk0WHj6VxRDAoG4P+9IeSuN46P
	MVCTOfpj5zBsYu5kh2JE+xdvebM9M9MJIDc192wVvp/bVrGpsSR+wU5eR8tBhYs/PBy4neZ58yUni
	qTMBtHVoaF1iDSGPX+6t+Qo/hQvBzjzKKLHXSKNbYRr2GnILK1i+E9k0DSFhF7T1P7DE6hdY3bstx
	fX4yWCZw==;
Received: from mail-pz2-x08.google.com ([2607:f8b0:4864:3b::8])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xE81i-00000008rZ9-0jEp
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 16:28:27 +0000
Received: by mail-pz2-x08.google.com with SMTP id 41be03b00d2f7-cc7e91a4eb3so63731a12.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 09:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791304104; x=1791908904; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q02YVAiwMG2tOYv3d1XG68tLbO2rAHXBUJNR5QhKuw0=;
        b=lIor/KJi8bsyoWaCdl4UCudBddDfZ3YaBNZ7ijY1laua6K+RLEsf2rY88D0lG4QFNu
         a0VebJhYDEA/uXzwLreKEYovZaqurgOInCSkxv+8Jh5MDL8PejhOcZsRa47dHcqeTHhS
         HRI7B1ALK7oCij0OWVH8g6srbbu2eiMQHfect0/bOFBDmVEUpkGU2dQJPt+Hjxxxf1+L
         F+1EY1jUraPcUpbZLFbI/KEAW3s54Sj2MDv7bHgw7YDad9NAhE6rBJDs6Iq0jq9LNmzP
         QZfZdakSj87zHIwkR0nLLR5/ncwvP5UhiW0bWe5uuuDSB83FQgCtcK+yaTsPx+0T/P2c
         EokA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791304104; x=1791908904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Q02YVAiwMG2tOYv3d1XG68tLbO2rAHXBUJNR5QhKuw0=;
        b=pTr8Bis7OYzAgkFRZ97RJXNvY/8X1Et+MffgLPj4KUgpE4vmmDfSFNeYA9B3crQ+vs
         jwWkyD6f0slmQkavQG9sAdMkg4TrpNe3yB2mKX7sWWeDoYy7zo3EoAa9D/8jgVbj5Hc3
         FgXmFyek2OFhCM45TPlfR7oKMBymlOm55PcL6upoHy03lZwYIDRVqQMzhnvZhBeSkjWi
         AsBKjhs+9B74vJcCt4kkV9vMKPAFYJorN1ljW/mRPi4TYOSLMQTOxL/LWVaI6TzqZqUC
         MfQH8xYYvwP6ESQZlRPNF/LnkVh0lAZXZlsXvsVeiG5rqW4RquQEA+EL+lRQm7UyhF7R
         O3IA==
X-Forwarded-Encrypted: i=1; AKwUvBwv1wQYQOcbhkKciZqUDNLFZph9RjdM4ChkrhB370nq3sEBZlicLGD0zSehtsrA7Qsw8A4TZz1g7Ps=@lists.infradead.org
X-Gm-Message-State: AFuF++kswfWxysWufCEtx7nycM6I+z8fZbGmpTK0QuamxyXzUECJ+ZO+
	368BNJ/zWAmyGhsbVbh1ews2fJNJSQOg0N6XGvYYWdJKqiY/tzXgvFML
X-Gm-Gg: AYBFou2G0T8Da6ODK5F/xtc/v7Dqx18UuDap1XsectQQhIzRSBD/Ri+0A37HtuOPwMZ
	SrU7GOofjzMgsI3iuf1VdaJK5VnuT7goHWcEAMbRItOE8wtuKmi5SPU8dJOTAKniRKsnr2+xxw9
	asd55O6TqHNoMfR+0mCORZNeHEe/JGwK8SinGK/mku9iduyDGj6P1FrUWtjLOA6PY8yWdw0tcdW
	YA4zZ0jKa4kxBKnJ9f/wgp/fTkmx+IMLiaE7kpIMqdPLVXOlZ3E016nvZlki+ouosRRGZSG16rR
	hj+bcjgbuzWdRHeaI1pRCbXs3yg/Ef8sic+FlmKJxNUQa+rPitJWd7xsmorevNL6adV/wVYuImu
	lqzHN3MfWfFX+epY23k+t9xApPhHj+RzeGFYefE4U9NpPjDE3V2XS2JKz3VO/5m8zhyxSNUIj9U
	Dh+csfEH1eZQF3tdN7GiyCeMNv2zJIglkJiIrMeabBGEH5IPH5y1sQgyBgg6owt8zAEwJo
X-Received: by 2002:aa7:88c1:0:b0:88d:8074:1a8f with SMTP id d2e1a72fcca58-890ddd021d9mr1195882b3a.7.1791304103604;
        Tue, 06 Oct 2026 09:28:23 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89188a0d603sm259898b3a.19.2026.10.06.09.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:28:22 -0700 (PDT)
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
Subject: [PATCH v13 1/2] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Wed,  7 Oct 2026 00:28:05 +0800
Message-ID: <20261006162807.2843858-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261006162807.2843858-1-coiaprant@gmail.com>
References: <20261006162807.2843858-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_172826_355167_DDEC0A28 
X-CRM114-Status: GOOD (  14.80  )
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

If this property is absent, the driver leaves the routing unchanged.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..442a1df193ad2 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      Set this to 0 to route SGMII to GMAC0.
+      Set this to 1 to route SGMII to GMAC1.
+      If this property is absent, the driver leaves the routing unchanged.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
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
