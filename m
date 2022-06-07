Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610C5C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 21:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waKahNVXgNCuwx4O+ZO5giTPBcuI+oAVghpJI9SmBvw=; b=MJKKLXOmM4nlSl
	es7hLE4cLQ/QYy4d8WEhW7dk1kv67UQQZ6+hyINHM/puaFnkBlzM4GZtRpISvHj6LztGKYQ6B/x2/
	26M1WLjaRRL27aUTFPnAWgJJ6CvTmLX3JmpOhVw8vbwqV9fJGuBX+2rLobOB0BxSC74708/MiFHXS
	SVj/6EKe6bts1WhBVwngKU4XQhQsRCgUnhVnu7vZi+lzyFA+xVkCSY8xSqQN9qrSr+XJfu2zVhVDN
	Bk7AOnlWoEBwbjNoYM3aSXbkuI6KemjiZRJZiPzo/HNsmAdmAGXI5Rst3mAeGkq1nsX5GX5y5FDZw
	OQcPaz+U6mHAZoqN3Zqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygpJ-009mG4-PQ; Tue, 07 Jun 2022 21:33:25 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygpH-009mF0-12
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:33:24 +0000
Received: by mail-ot1-x32e.google.com with SMTP id w19-20020a9d6393000000b0060aeb359ca8so13810644otk.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c2pa9kTVClc9GM8SEP2eSVvEOfAh+uMGKJQT+mQ7f18=;
        b=P0JgSEX0aExjuD8JjXiylIViwyIE/q4VOGoZopmsGvjgaY0FH93cr7mW8sgEycBrtJ
         KEKnZtAL+Y79VkrRteiMCsC7o/hOhruN1ZpNhcDJIC8CP1UdTAA8xff2VQK1Vquto43m
         bv+5gpxQwFCoLUsoNZ5eIGRLOGl3GY2EVZZKv73tJI+Sp02467MzWfIuv7iKUEVhoMmt
         W8H0oaIo06PD++ATGNUS4N1zBQ5vMUZ7tXDHXj5v/gyRU9lcXzP/VQMXPZN+r5WDw4a0
         DybuGLdDDS/aIynWicn8VlrFnEKL68ct4vtnCsZ4QCGU1Q9wgjPpiOhQpC713pnAQH16
         4yvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c2pa9kTVClc9GM8SEP2eSVvEOfAh+uMGKJQT+mQ7f18=;
        b=C6ojEr1zDP68BJ+TFl6dr9zub5YnrlFFFz/veMnwuWxg/41flBfCRy663qp02kHiT4
         450oZjWFvMG3mXEVFx6b0mh5mea+a+n1cLcGUnRIzj0OKbn2mP+RkTuEhWH+x18ZfkpO
         9OSExiO1cP98Sy78aJ0/LqPYdqOQKOo/5iL2dgt0f7PMps1KpWHi58tve/OC9BKVPjcV
         5LH5b+gkfH/QjCoaisBEa/Q1nt1cyTSteP9FL4vKkXUBr5Wrsm/xjb3Ze2Vj5MA0eGxX
         Zu0tsPYcblkrCluHKlvvVSKVzreEKd58+TASdMv4lnPX4B517pSwQxnpWGzxeqvT4bCq
         4TkA==
X-Gm-Message-State: AOAM532VpT+R0AjKWkgw8GHZRvOf9jzHS/DdxRwVaBSXpb/V7wfERWjI
	slgzkWHhCQi2OFkK0lCuPVGTnA==
X-Google-Smtp-Source: ABdhPJwGGcqLNy/9H+HREP58pP7FwsnXmAgOi+oNaKxrQ7DtNcQQylItoluRT6B2fVQsmNe73HfJPA==
X-Received: by 2002:a05:6830:2aa1:b0:60b:ec44:c579 with SMTP id s33-20020a0568302aa100b0060bec44c579mr7983799otu.9.1654637600882;
        Tue, 07 Jun 2022 14:33:20 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id cd24-20020a056808319800b0032e7205619asm4966031oib.15.2022.06.07.14.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:33:20 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manu Gautam <mgautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys
Date: Tue,  7 Jun 2022 14:35:39 -0700
Message-Id: <20220607213543.4057620-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143323_127930_CE691897 
X-CRM114-Status: UNSURE (   9.71  )
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

The SC8280XP platform has a pair of 5nm USB3 UNI phys and a pair of
5nm USB4/3/DP combo PHYs, add a compatible for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Added compatible for selection of properties for the uni phy
- Added combo phy in the same patch

 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml         | 2 ++
 Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
 2 files changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 8b850c5ab116..777bc1a48aa8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sc8280xp-qmp-usb3-uni-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
@@ -377,6 +378,7 @@ allOf:
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
+              - qcom,sc8280xp-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 60dc27834e1d..32b1e5b67275 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -16,6 +16,7 @@ properties:
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
       - qcom,sc8180x-qmp-usb3-dp-phy
+      - qcom,sc8280xp-qmp-usb43dp-phy
       - qcom,sdm845-qmp-usb3-dp-phy
       - qcom,sm8250-qmp-usb3-dp-phy
   reg:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
