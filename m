Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8812C43217
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 21:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aymGWeA39PeZhL/52JAagiKUt6IDkA14RNUbDJgWW50=; b=QDZL/3hwgRKDYr
	SzebqbUxVAl/cPecfNAAmYcgIfbX8TARWR+hmEjPrvWsbHH5lJnuiof2aipuKEa44tNqyVKkZBOCV
	CuQ4nTnVMHnq3xKmL/x4+9rQmlgEYaz3hHeHqRdsbTTT6GS0l+2830IMk5GLAmV8fa91neaByDi5g
	eXY8fwiJiXvMbgOuOr81S6SawZRdmk3hzyt9WwZpVqsJkQr2yJjS2zOFi0fkP77HDRRYn5Qdvjv3k
	LSdVGGYYzL0C7GKp+9VTz4j7xk4kZfW04y+pvctVE7L7pQvZwiwdVgB29Kdfks0XdTzMLJSNgWzxC
	WPhRRHJCLxKAsKiu7Zjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw9fB-00CkKP-0J; Tue, 31 May 2022 21:44:29 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw9f8-00CkJi-NI
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 21:44:27 +0000
Received: by mail-ej1-x62c.google.com with SMTP id f9so96808ejc.0
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 14:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0m6WEw+bFPACv7T57ooopwUSIR8iANFIi5UgtU6c/Xo=;
        b=XqbVPl5EyJ6FYukO7Ijtp3ZpXeWxM4xnvPjaOGMuMbYj1GYxCOB016bnvYPo6dTdw7
         po0HnEkfAiccyeGwIElxM+8wounSFq6/dA1PkvrOQQZgMkIrJAqzXoreIQ611PwZixKu
         ByzRaETX/MIgz7Z6WxokiMEo/KOBEtfEeb3k9gt9hiumW85cVBncov2it0nBinlA3AFQ
         putcVIaK2ipuvs6pA8FhNfp7b8pP3OnEQZUmZ5LGBEUN4zWRfyY2NUSUuLAMJVxMJMRY
         UiMCzriCiGERI4rAKsHNNaM4aqwwpxlIMmOAMEFL83x214uxH24ityXn9j1DHcfxTnsh
         AkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0m6WEw+bFPACv7T57ooopwUSIR8iANFIi5UgtU6c/Xo=;
        b=zqKXgwz7d+Y1iue7ZHnF+pgMZHssVBdGSHG3FczA7oRYepsDW4NBkVYX8twIJrxmLg
         9Zbys2Pz7uDy8lz8iSopVHhVC3i7qgKvo6LKnevFdHS+LTKIm/UTwB4GDMZYB/o3SkxA
         HatH9Hg8gUZQxmUxihMOFPUhBTwgcV15MLbLcw86wpdBE4XuTS1s23XzeDGB5XDs6w71
         sLccR4GYqLsl0F/Ljx1PQ5VE+xVbVDqA18LSkbByb4hzjdEszBZvs8MUnW4Ywg/wf+eq
         RyYwynU1awphQjXDqPkHpKxaCqZHBH+ysE2Z0p0Km2JTm/pEnkSBnmE1TJ3zOJN8bAu9
         yD0Q==
X-Gm-Message-State: AOAM532s4WE7OWKaKseXm/inDR3/0sZ/1l51SHNbAKsBKgwpU2lZ72EJ
	oK3/NawbqAjwgMR9dAdPa98=
X-Google-Smtp-Source: ABdhPJxGBZ0Lk87bORJ5oVR/ehNQ3uIWy8lkK7cwBBvT1D2tE9X1BpLJRI2kYZ6kSXl1VgK+CU0jwg==
X-Received: by 2002:a17:907:9688:b0:6fe:a0e9:ca6f with SMTP id hd8-20020a170907968800b006fea0e9ca6fmr54117127ejc.553.1654033463254;
        Tue, 31 May 2022 14:44:23 -0700 (PDT)
Received: from fedora.robimarko.hr (cpezg-94-253-144-149-cbl.xnet.hr. [94.253.144.149])
        by smtp.googlemail.com with ESMTPSA id u28-20020a50c05c000000b0042dc882c823sm4256319edd.70.2022.05.31.14.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 14:44:22 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3 PHY binding
Date: Tue, 31 May 2022 23:44:19 +0200
Message-Id: <20220531214420.916278-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_144426_793994_86B2A623 
X-CRM114-Status: UNSURE (   7.83  )
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

IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
Gen2 one is already supported, document the bindings for the Gen3 one.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e20d9b087bb8..2e33eb527019 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq6018-qmp-usb3-phy
+      - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-pcie-phy
@@ -308,6 +309,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
               - qcom,ipq8074-qmp-pcie-phy
     then:
       properties:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
