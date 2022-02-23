Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB175C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 04:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TKAbCPBAQeGy5Cmv4U/pDrkbHrI5QIwvbl8NCbxXG0Q=; b=UKoGfCkopSQV05
	BJLAGXGwqzm5eTjmdC/IRcdfa2ec5oN+itfae+NU+N89liQnOH/2JdTzoqaqgRD44JZKiNER7hHl2
	Js0IvOTHofuwy8cCIURbjfQD+MYCeLWjs7u9L42NCbOcvrjdD/VOr3ar+d9U2tvEzQedUtwZKWQjz
	rvG86GYsaSgIpCXQ0Ig4T7yU07lJS0ZeADoNZzGnP/rrQu+fQWfG76pf9kZ6kl0WoF3znprMVVi1l
	1vbU4N0WKqvaX6euS38TzPstjDw8COOwWjthX1fv6MKKw8QnUi6TGgqO23vlz8U7vE+rcPJWU54tb
	8177C3Ojg9OyB/xVIjcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMjRo-00CnXb-46; Wed, 23 Feb 2022 04:40:16 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMjRm-00CnX6-5k
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 04:40:15 +0000
Received: by mail-oi1-x236.google.com with SMTP id y7so16987275oih.5
 for <linux-phy@lists.infradead.org>; Tue, 22 Feb 2022 20:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dsRICSn/v/bxa2UPxGZA6ohcDIrS1JILrK1mA8xJ1sM=;
 b=MtKTSE6hOugw+wabSEoE2OSjauzQDZM2iYlBI9ljINbu2I9Aha4c7jS0rxVXF9r/2c
 KfuX+1zlgoTw1C5N3iC7v8gJfjcb6YA9a08PcPBJsgTBzwHppWGzG/MgV5lndag4aVMm
 ADOLlpH84QVnLYS2FJBureW8Vq378WM9/eJRqFtlYrXZV99VqTd6BysLABjSDlxTmFqf
 MZ4N3kzH+3VPG9lBvZ6w+LiYq10sZADNn4Ql11zzwy2pjqgupMrHx0QZ2zLFQPS71ZGi
 3ENz4sOagvf1cDTdkYZ9zD/RA8xdooL3iQzyllskpt2L1TtHdM5u1HPo5fqLKCgyPq4u
 p0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dsRICSn/v/bxa2UPxGZA6ohcDIrS1JILrK1mA8xJ1sM=;
 b=7rCogiHsGmOBBTrTLB10H7tHs1pkkTN5eOrHIUwhHs7ykJRMM+Y992aTAy14Xbkal9
 atZQt0AsrvwTCqDwitWQffcsJZLOga3WHxl5zXg64BM0irWbQhVrj+0xMR7h5T3YKbUp
 wTUBi/VSiIetdIXKmsJFOptqCjshDFSSk7nhvOUdMf5n23sCZ3hxn7+mNZJcPfhAMVLt
 nKeDyKzSVfjQxdQSPOj0tWaNmOPZeOA1ZlB1aN6AUzbNDnhr5wDk461Tll5qCvE4LX2Q
 Yn12R7amV3c8FLTVm0n3lU1SjwfaWVl3VlYkhaG683UI2SQ9Kdf7mrCdr01F4nzbV7JZ
 RS2w==
X-Gm-Message-State: AOAM533CNTVWfbD5mo2oz1zGt4RPRhMmja/dAiFx5FUeB96bL0vVaSve
 lhaF0HsWRQpjT4Nbv49S6kunrg==
X-Google-Smtp-Source: ABdhPJxGR18ifwlVddz7t3QMNx9RO1Y7RolZ4RAfZ5MQCWauQAWAk0VK+DWH7WoyX2k6g75V7LvcKg==
X-Received: by 2002:aca:b206:0:b0:2d3:fa53:4fab with SMTP id
 b6-20020acab206000000b002d3fa534fabmr3626425oif.174.1645591213041; 
 Tue, 22 Feb 2022 20:40:13 -0800 (PST)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id x22sm6250033ooo.20.2022.02.22.20.40.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 20:40:12 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: qcom,
 qmp: add sc8180x and sc8280xp ufs compatibles
Date: Tue, 22 Feb 2022 20:42:12 -0800
Message-Id: <20220223044213.3776600-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_204014_269433_88184B6B 
X-CRM114-Status: UNSURE (   7.39  )
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

Add compatible for the UFS PHY found in the Qualcomm SC8280XP platform
and document the required clocks for this and the SC8180X UFS PHY.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e417cd667997..455317dee5ea 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
+      - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
@@ -280,6 +281,8 @@ allOf:
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
+	      - qcom,sc8180x-qmp-ufs-phy
+	      - qcom,sc8280xp-qmp-ufs-phy
     then:
       properties:
         clocks:
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
