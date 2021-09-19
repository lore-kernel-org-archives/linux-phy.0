Return-Path: <SRS0=e0/A=OJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 752D8C433F5
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:35:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 158B861103
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:35:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 158B861103
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jnQce0B3TQEOUjgJ6NNeDSYMCRqjWk6ak+Nm1a5chIg=; b=xIerid+AbSiejz
	cgq/0DfODbD1YSfx7gIyqcMWb+v9gY2HZWxoiyGAM1F2Ntztwqp6cMQ4i5SttKSl2FokZliHWykmb
	uZyXH7Z/9xj0e3m7deyClMIqdteqt9ZNjvrBXwgYuvsuiLJZ3fiKUHIm07dcPQCorQy7ui5zMII6P
	Wt/46myEhcX0+q4b/KJmhFI4aLqAYC6elgJWyrd5SRIXgp1mWt7OBYgvmH7lnZ1bHpRD2hQd1lWXp
	4YC6bA7RECB99hEC+NgI+GCpY8zC4NrQCx0h1BejmfSpw6fJbaFcSZD4kdlHBHufh2S7+L4HI7GvX
	fuwyQ8raPUrXLbmWmqgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRnc4-00GftL-DJ; Sun, 19 Sep 2021 03:35:32 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRnc1-00Gfse-87
 for linux-phy@lists.infradead.org; Sun, 19 Sep 2021 03:35:30 +0000
Received: by mail-pf1-x42b.google.com with SMTP id c1so10062751pfp.10
 for <linux-phy@lists.infradead.org>; Sat, 18 Sep 2021 20:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=2ZHVK/Jt1mzqXZxHbsZQx8f4Inu42Nq3yYQLi7QmACA=;
 b=yDXRj+7JMxBz4eJVFeHMHnBiwLOzFA7A0Idi+V8spGFR6kLdjnBgQankrYQ6dMk6fJ
 ZqXEVNw+EbCJRergP2xlyOSvLiBr8ORsxQP5dkvX6ZvjmZUYm5QDcCeKvo41KYz4J2J9
 3jKEf4uzCQDgMw/tgMIlzPJ/h+vRuQ7kF61vyOLpqV52zwg3KbTZlA436EO17teF1Vzr
 yYuzf+x/Uda4WbKCZA2dbrmSf8hZL4tJLy+XCpLHQDwwbiN82HLF8DL6PntmC+4BuKQu
 dMVGoXl30wP0GEACIG5UvLwswV8itAiULFVPJ/1EacGkitCkS0zfDtkPxa/3s4MAS97e
 bABg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2ZHVK/Jt1mzqXZxHbsZQx8f4Inu42Nq3yYQLi7QmACA=;
 b=XydcDUt+PoeXSo7lRODr/tROaM6ONM0xqf/YM+fn4ChMBqD1IJqiriGo6yUQZ37+I5
 TZoMx9VHlKWnXNUHwlis5jELO6dcyCtLqVYrBF09JCEIxwimVZMybo+BM+cGxCPONNgd
 mdX2tYkPn6MT6x0t+ZkV9vloRXThwm2VsVp45RvqQmz8m5EfBRjjRiQ2zTIyU6rY989x
 uFmhkNYp5rvNB21rytuD0ar4xSquKctdpDDKcmdpN/3DwD6jKyCN2w/ASkHlNVLRW/fr
 PMzFvMiXcEaQzYeKJt52AUyEF5fhv/SxWh99T3QU6qNYoLHYvJkM8jse7I1UhiWMx48l
 BVNA==
X-Gm-Message-State: AOAM530oFR2y1OhhfnKN5T3lOBWKsPJm/X8PisPQC7C6j+Xg3mykHC6E
 gXsE+vJ/VUy6YYbrsh3one2nHg==
X-Google-Smtp-Source: ABdhPJy8kRKK01qfSwpFJtkhq1N9s3rgKcp2JFmJyloTNrozfp56ZQ5kzL6yUVOU6GzPOUA9NL8w7A==
X-Received: by 2002:a62:774b:0:b0:43c:36de:ed14 with SMTP id
 s72-20020a62774b000000b0043c36deed14mr19028132pfc.36.1632022526820; 
 Sat, 18 Sep 2021 20:35:26 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id s2sm1644509pjs.56.2021.09.18.20.35.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Sep 2021 20:35:26 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,qusb2: Update maintainer email
Date: Sun, 19 Sep 2021 11:35:19 +0800
Message-Id: <20210919033519.29559-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210918_203529_336632_DBD0C5C8 
X-CRM114-Status: UNSURE (   8.71  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Manu's codeaurora.org email address bounces.  Before he comes
back with his new email, fill Vinod's address in there.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index ec9ccaaba098..d6301471780c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -8,7 +8,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Qualcomm QUSB2 phy controller
 
 maintainers:
-  - Manu Gautam <mgautam@codeaurora.org>
+  - Vinod Koul <vkoul@kernel.org>
 
 description:
   QUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
