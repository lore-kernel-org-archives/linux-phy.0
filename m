Return-Path: <SRS0=MgL9=LX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6331C11F64
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jun 2021 00:46:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9102361CFF
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jun 2021 00:46:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9102361CFF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GWg1GerRHSgq69bWxytzHG9HOYaQ+i83VatCxzQHySw=; b=seXE+Phhx+S+4n
	INPveV3yDOjuFjX3ClRTUQbl7ATd1+tjMiv6mkl5d26btwMHkITn5XlhqxDxYedZsLOg9Qdd+8jsr
	g/hoTgzH7pI94537dAvXV7xnATXkzwFt9i9dvz5Y9KI7OrDkL/GuQJZ7o3X/hBlyL+OjUhaDHPMtD
	1BT/uTaNOOp/hhrvYoGMuRXcsKx+Y/LN7Lb2+o9pQaVhPHgZqaDhFgQ31WuqxumWZLMOL/qrm4W3R
	QpeUQyQao1E2inYKJr1eNLDNKOgp0q1y82hTn4LxmI/4IOo7huQk2NCaTqaRaLwFubx7tu5hDZGrt
	HXnWKPt7rqnZlhD1a8ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly1tS-009S5p-35; Tue, 29 Jun 2021 00:46:26 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly1tQ-009S5E-65
 for linux-phy@lists.infradead.org; Tue, 29 Jun 2021 00:46:25 +0000
Received: by mail-ot1-x32c.google.com with SMTP id
 d21-20020a9d72d50000b02904604cda7e66so19107453otk.7
 for <linux-phy@lists.infradead.org>; Mon, 28 Jun 2021 17:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0d8zbMo9V9zxdFiDSYDzc1ZZBoiwj8ZiodSoR+dBxQM=;
 b=hsKiwYalAxSUUx0v4gCd+27Xm+6jJ1qMca4RdjGuvuWKXA3RkC7jz+ANVpJIuK9dZO
 u/WUDE0UkBa1c87HasMLvLXWv1/amOE5I4VXyT6M1hn1hrZFQ8lLbhW2wvtzRGBwh5Ka
 ZQP5zSMJtZZ9BCyOLQpM0obhVYOKMg4b9/XzD/3BpHON/FevDsC8IuuY/wSFAvBnda+P
 QN6GYs1t0/8hebF2eCVrVailE+SY6Vnvu0/3VY+gN2EKQo4QMdSga5WTo9AzKggoOQZ9
 qidM2Z0wGjKLKw7sZd5BRg5K9enoTRJYaE5Qj/CvCHAGbx5e0nsqhbcVrHKHiUrFJuOS
 9udw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0d8zbMo9V9zxdFiDSYDzc1ZZBoiwj8ZiodSoR+dBxQM=;
 b=WFajk9UEE6PPL6AhAoes6vvLonorjSFYI1pkSPcAlS4n8IqaoiGP08TWBh1u+xc+zv
 AstD1i4hpx4FsC8M7+bp8hDo+GPM1PUbkiyJFToUrMwf4xmMibtTym6DfNysG3Bqke2D
 pOeQvpA6BojIxmibdYqLwbdMcUbNJXT5kmMtMIVYrtqqkpV4wnQLVaJPgQN5odJB/r1B
 tXhYHmD/naOsbYQPweJzmTnUsmY/jPgFsVoW2soOb5J7IzqmOfFuuClk40leqsswpV32
 3UCt7p718qWG1faZpGGSTphvwnNfzO5vriZBmwRPVEPOgFuGJUcIGnbsyz9RKSMY2WwP
 KHGg==
X-Gm-Message-State: AOAM5307hlrfzlo5SNNuYR79mXDzdX+d5qqhfNuMJuwvQlKAMd/cFBFf
 s8+OTT7fD89q8LM2rPZU58WaUw==
X-Google-Smtp-Source: ABdhPJygaGlBx4cJgfr4jOjytIOq6ewXtnUVJFP6+ftbUl4R7nxAOyT4TP5jOpwN0V0HHguQifak2g==
X-Received: by 2002:a9d:6087:: with SMTP id m7mr2014551otj.318.1624927583076; 
 Mon, 28 Jun 2021 17:46:23 -0700 (PDT)
Received: from localhost.localdomain
 (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id f3sm2671979ote.74.2021.06.28.17.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Jun 2021 17:46:22 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Manu Gautam <mgautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add sc8180x PCIe compatible
Date: Mon, 28 Jun 2021 17:45:08 -0700
Message-Id: <20210629004509.1788286-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_174624_266740_64448272 
X-CRM114-Status: UNSURE (   8.42  )
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

Add a compatible for the sc8180x PCIe PHY.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index f0497b8623ad..242560ff52a4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -27,6 +27,7 @@ properties:
       - qcom,msm8998-qmp-ufs-phy
       - qcom,msm8998-qmp-usb3-phy
       - qcom,sc7180-qmp-usb3-phy
+      - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sdm845-qhp-pcie-phy
@@ -326,6 +327,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc8180x-qmp-pcie-phy
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
               - qcom,sdx55-qmp-pcie-phy
-- 
2.29.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
