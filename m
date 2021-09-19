Return-Path: <SRS0=e0/A=OJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA1EC433F5
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:11:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E40DC61103
	for <linux-phy@archiver.kernel.org>; Sun, 19 Sep 2021 03:11:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E40DC61103
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ueAdfHb6nSLBr/f/NY4JAnQK/9IT56ip9ZCYd9VzIs=; b=cOZ05gWUykL+8R
	tEctnz28vy0xZ7LlAGDfpirmZSEFhieCbtXwHp5i6hGLUTcREWa1CdpNrbNCMvTtAPuOtlLjoeZrL
	GyAYX7VB9ZvxCJaOtIBXUVzlKTMK7w/EaGnhvufvT7+kCcEOvNst9lcAn8K2pxz9QsN2zmDzxIAB8
	0fvZcavBnAE/gPrm8oiKXZAKh6f2AVVShe1HXMA7/8GVU6KViW1rIPkCLPN+09cDbMjqrypu6Vykh
	doKMkxBtrYvaFjgV/jBPDkAUd4hRRjPykCS199Gsh6KV9WIRpVbRl15C8FBYtNF3ZObLzzHQbj0Jv
	xpsNd1no8hWMhXqqNuzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRnEj-00Geha-B8; Sun, 19 Sep 2021 03:11:25 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRnEh-00Geh0-EF
 for linux-phy@lists.infradead.org; Sun, 19 Sep 2021 03:11:24 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 c13-20020a17090a558d00b00198e6497a4fso12778575pji.4
 for <linux-phy@lists.infradead.org>; Sat, 18 Sep 2021 20:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=R30B43xyz2y8LC6ycmn9kteDx5Gx9CHyBFPXTaULZU0=;
 b=fNi01DaE/B/10oGxW1oTOrTnEfWv3N+3WkHOqbm/m2uvIgzPKNhqTNLAFqkIMU6u9y
 bhZxISlX9y3KdwaBGaQf3VwKvYHojM9vdwAoCmbQOO8dVjFfIrqVm+Y/Bdsvj6+glSY0
 3cvC3QithyJQlGKfj6vP2o8efw08HARme3UyaZBfEhHsQkqaT39YcZm2En8RSsKY0S+7
 1iL0Ka26ZuefjmKPYD0tiLGIYsw9cYspQqJc1pxLT8A2wix2UJKNBAVMsXGl1oWcw8An
 9ZXt8yG1QRxGrRTnIiGSYjbYzxhN1G7t/cBbChzzWzKqcZxd58+fMlhhXvk5IA7X+uQL
 UJyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=R30B43xyz2y8LC6ycmn9kteDx5Gx9CHyBFPXTaULZU0=;
 b=36Ejr1u899RJnsnCGvLMMFNar7hRPCTtj/7F/bjbBGBp5x+UC27sgjICSkY+SmtGv6
 y+xkZYj/9lQIjEisYCPkqXPas6bgIs5+YJ9dMuauOpE9vGmnnz3R10V3wFRF/cN2JKYS
 02P6B6IGRP7aaA6Vv+86LSrl+2KfBMyBbBqqHpptthgxJUPPmYgdjl7mpMVj3u5odpEW
 Cz9HK7VY4a5o9cYAVxkFau+kAUSJVwQFWKA/EHJTGqWE/TTHmBmOPdZD+/N19k7uNX+n
 A08lihJJ4oHDXdQ8BPYdI7M+yeL/VVer5AiYxHBY7nvPtW3Y84PKzHWZiMZiI426iV8x
 +JZA==
X-Gm-Message-State: AOAM532KP8HJ4hCZ9ya6gCYkxiUWlxL7Zb6kVA1pgP7sYgby+KNwZ2YQ
 fDzTZ3KbXvEME7ODUxGyy8pkfQ==
X-Google-Smtp-Source: ABdhPJxBtNL84WRMvdDSgQAFsSSInOctHxHUB8iiqLXyFf6sGvVSOqagb8cOPqiaxAHFO9G+9lXNJw==
X-Received: by 2002:a17:902:b218:b029:11a:bf7b:1a80 with SMTP id
 t24-20020a170902b218b029011abf7b1a80mr16768240plr.82.1632021082696; 
 Sat, 18 Sep 2021 20:11:22 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id 132sm10224931pfy.190.2021.09.18.20.11.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Sep 2021 20:11:22 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qusb2: Add compatible for QCM2290
Date: Sun, 19 Sep 2021 11:11:09 +0800
Message-Id: <20210919031110.25064-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210919031110.25064-1-shawn.guo@linaro.org>
References: <20210919031110.25064-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210918_201123_518811_A55B34E5 
X-CRM114-Status: UNSURE (   8.73  )
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

Add compatible for QUSB2 PHY on QCM2290 platform.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index ec9ccaaba098..48ae604b2194 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,ipq8074-qusb2-phy
               - qcom,msm8996-qusb2-phy
               - qcom,msm8998-qusb2-phy
+              - qcom,qcm2290-qusb2-phy
               - qcom,sdm660-qusb2-phy
               - qcom,ipq6018-qusb2-phy
               - qcom,sm4250-qusb2-phy
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
