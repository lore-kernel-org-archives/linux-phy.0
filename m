Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAB09C71153
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 02:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wojIy7yBeVx+TW5yNFmStvmrJVafwff6hePRsoV9t5g=; b=Hlc+COs4Ks0Msz
	tgKcv70AlTFZYjC03ExJ2T3/3FceNfjwTZuoWAuHfJ4Q7sCentL57KYJEIt3t2/hFQVlaM+XmlJ86
	fMyNWo8e1Z+8+gXQgNIHY6lulQqQmYYZPGEw/Wr4dfKZMtmmM/sGu9jaaVdTBP+E1a/Szjnh7G0o7
	+V+phgY8lNKr4PljQdIMic/4qKXN9j54jOYNsHSNgrQmFcMhmx77hUlZ4FKZup/D1W67YuWunFBpP
	jHsHNduI9lmD7S63RSMHOFzpRoXewe5SzExCO0evcxgvJsIfmuqSuafouBBQAzxWPat3Gwqlsx26f
	glqin4kPireO92yc+xgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB85-00Cgv4-0n;
	Wed, 30 Aug 2023 02:40:25 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB82-00CgqK-1x
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 02:40:23 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4ff8f2630e3so7974097e87.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 19:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693363219; x=1693968019; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eftHGQRECzJuXi1OVtNB5hDXhj+Beyk7gIuR4DJasbs=;
        b=IiM6gMjgBVUv3+fMafd5jdXwd5uZQnw9RiqmGSXWHnonrCWfV5ns8258NJ6MObf/LB
         z2pUYMIuvAShWcj3zu4PQUpbfRFNx6jKdm+T4Kgo0e22b9jQeAZsXn76d2mvq0VNk7MR
         s+DmFCRbv0Q/91pSyEC6WMyXCMNALxtCv7SK+d0GJlNpkRS3nmA4GeBBl5Z2944dSioM
         4y9O3D7hnTz7nWOkOLF3SJKtgUaMXt4Sde3fZ9RqMEKKkRMmkS8yHK2JMSaa8MUVhp10
         vnVz5CjjJmMTfL1x7GPk2DPPLD3mEpga3VSoouyMTFFfr0V7/N+RFAA/4OdAQAUCn4Tb
         z+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693363219; x=1693968019;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eftHGQRECzJuXi1OVtNB5hDXhj+Beyk7gIuR4DJasbs=;
        b=Qk7ROCSxydV9sPKCSIoWH/aGLOPRaW9Ns0Fp7UDJDKtWnV8QtriYXwgXuvNFEIlNfj
         U+BdgSFtP5kZqi2t9ntfGv5QluUrQsgk6dNfPKPJWJ3F9zi13nWQZLi5q7LQk/uNU4lO
         lS8m0OdYWVkQ0GT84/F8YNub9b0/eyELlVgtlvYn9kfEZXeEysBxdg+fhUoiKUMAdc83
         YOGjwO6GW0tqx65OOcGZwNgsc0SEnHglbI9buKazl6p1/fzvjsnPzpHuz2PEiAZKPPY6
         AvPv64J9WIEDnHvoH8jzXD4cyls1oPyIef6m7RljhleWd5mo5lnSqE47WB0rEq5g5rz/
         prWA==
X-Gm-Message-State: AOJu0YzmIzgknD5cPuPRdUIYhHFDSwIPCjuXoBFYSTGQl/mmknyFk80r
	YJb1E0Bo6YzWIXB1oXrxiKPr3i4i/Oi0Oj5vtUHAOQ==
X-Google-Smtp-Source: AGHT+IFHf9gBoE1ACeP5RVIgyVWnmxwTQm1ACDYzoey0sp3f/Y6uJkIWgpkT86PBWwx0PT6aRJeXxQ==
X-Received: by 2002:a05:6512:368f:b0:500:bf44:b2b6 with SMTP id d15-20020a056512368f00b00500bf44b2b6mr406324lfs.45.1693363218120;
        Tue, 29 Aug 2023 19:40:18 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id w7-20020ac254a7000000b004fb99da37e3sm2183878lfk.220.2023.08.29.19.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 19:40:17 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 30 Aug 2023 04:40:15 +0200
Subject: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add magic
 tuning overrides
MIME-Version: 1.0
Message-Id: <20230830-topic-eusb2_override-v1-1-ab23825385a8@linaro.org>
References: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
In-Reply-To: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693363215; l=1464;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=gOCoteo3eQFlsbrCmDlbDQsd6KpyGXjafi9HiIGRkBg=;
 b=I1ZTgaIC2oul/Cky4mzGoprgT3MxHSMek90ddaxpeFmCCCti1/S1gJ/cYPlRgCg7X23/Efw9k
 oZB5EyI87n3CD7c8+a1pi5LAwKjFZirypeO0ii1ML28JEmvoAHi1ABk
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_194022_646459_8BD52B48 
X-CRM114-Status: UNSURE (   8.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The EUSB2 repeater requires some alterations to its init sequence,
depending on board design.

Add support for making the necessary changes to that sequence to make USB
functional on SM8550-based Xperia 1 V.

They all have lackluster description due to lack of information.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../bindings/phy/qcom,snps-eusb2-repeater.yaml      | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 029569d5fcf3..83fd6f936bf9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -32,6 +32,27 @@ properties:
 
   vdd3-supply: true
 
+  qcom,tune-hsdisc-value:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed disconnect threshold
+    minimum: 0
+    maximum: 7
+    default: 0
+
+  qcom,tune-iusb2-value:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: High-Speed trasmit amplitude
+    minimum: 0
+    maximum: 15
+    default: 8
+
+  qcom,tune-usb2-preem-value:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: TX pre-emphasis tuning
+    minimum: 0
+    maximum: 7
+    default: 5
+
 required:
   - compatible
   - reg

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
