Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5D7EC25B74
	for <linux-phy@archiver.kernel.org>; Tue, 21 May 2024 20:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ur2hOPe41wkkZQ6AysFA+1ZCOFgp3EuTGh1ymfhQJ0g=; b=oSik+rqnOUSzcD
	vrqMBuf5S4A8658KYrY7KcT/ENPAa8LDYqD4Wcda3A+SaQikGfpOCEJei5hBt0y+CqKBPFnjdzuJC
	RI3wrcNRlUMnNDTLCZ/FiVcpbDmkWH/vqKHxt7PUCP1EQkK4m+G2Ss4U6VgSZN3AtTDwciO9C4553
	Eqv58ZA7q5k9kCGKWs5NKvf0t3mXFC7z+lXkRWyspF7/PxSaTfmbhWieU/OjLrs4/psZPd76TiSa7
	Z2g++BFh72Iw1LrHBRIkDHEkSYTuK7Q4hw7F1l8Fknzx7vNfqMLM1xp2keWoCHRl17HPYx4p99Mek
	61sVDRCv84zNiPQufn2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W8O-00000001188-254j;
	Tue, 21 May 2024 20:30:56 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W8L-0000000116m-2faK
	for linux-phy@lists.infradead.org;
	Tue, 21 May 2024 20:30:55 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-51ff65b1e14so6648137e87.2
        for <linux-phy@lists.infradead.org>; Tue, 21 May 2024 13:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716323449; x=1716928249; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pp0wgsOf+otlTEcxeglIqsX7pRYpEdZKxDMC0pyUGd0=;
        b=mXnvrGGHPIjW3KwYZ4FuHWXT7f1mDLT9qSPuj+5JpC+5vjiqlNm5sI5tzaqvobj1SN
         +9p/t8PM0KYpymHHnpjhbu69OS1r/pfME6SmMxu1Y2W4jwaniQMntm0dzrhziZciU9SU
         WJwAy3JZFJf8/JFs1q/u6AJ7keeqylTfoa2DucyyQ4LXT97DdCPQuXhtgKv3aofUllN5
         38WJZi/Ukm0F0glxzD3y1WYNJu+SA6vsBdNKnoDuvdPcvuZ7NxQQq3Z8/5ONx2a2Hxk/
         MvsMUL0373iJW7xHwheyaLDR+DfP4kpig3yHHm9ndSPNS/CppvOE7UVKJpwSFlmLbavP
         SVkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716323449; x=1716928249;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pp0wgsOf+otlTEcxeglIqsX7pRYpEdZKxDMC0pyUGd0=;
        b=X+rJZDp80gt5XbJDBPoYKRUIZwjG9HFIyg7GRj5mC888em+lXnwhWDqKfOfvNSawWP
         QsaLgOeH5GMmeHh3zer19jLcLeum/V8vnU6JGU8YwoVHJrIEj9c8P+cuw3vs5m03JR5b
         VV6++JvXm1Dh9Sm8n3O/fGodAepJZj2HG7FrpneCPFSbrcnhmGPE9D7OkYZ9oN7t3+Pe
         6n2GghZdNQCDLn42+AQA/Gs59KTa7Fvo7A2rRll1/yftTBpeGbcsWHKmicOMPu1r+jTR
         0EYf4qisl6J+CIcUDfEOaFHSqZ28ARredUFEQXmSfo0OTA5zuQ3Ni3tmvopbD8Q475kO
         2Utg==
X-Forwarded-Encrypted: i=1; AJvYcCWj4HvhqZ8RsJAiry1VAxi+XMtb2IjkGtp3tEt8Moi5FN4sc6ElYXa1vQ4YDcuNcD/u/VHhIZLMLAJJSaGy+6CX0AdOa5NsEmzGOjd4Gg==
X-Gm-Message-State: AOJu0Yye8GV1Eg+EyfsBOPdFiMf/2RZ8tRWwvhyxAtGFk+WIRCDV0VD1
	BThLhMeukaKReB6WfF3ALLf3VIHHzJ2NibY5RpR9ZTSAfNs3AkAPEecs1HDBRjE=
X-Google-Smtp-Source: AGHT+IEx8QHVp0uTJ2cLWhq4ftpPXl3iBNLrS/c1OcCJiaHJ6hbKc/1kI1/oPi+SIpmEttUD6fzuZg==
X-Received: by 2002:a19:2d0e:0:b0:51b:567e:7ea4 with SMTP id 2adb3069b0e04-5220fc7945cmr20433710e87.26.1716323449129;
        Tue, 21 May 2024 13:30:49 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5238ec18fd2sm2538664e87.155.2024.05.21.13.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 13:30:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 23:30:46 +0300
Subject: [PATCH 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: drop
 second output clock name
MIME-Version: 1.0
Message-Id: <20240521-fix-pcie-phy-compat-v1-2-8aa415b92308@linaro.org>
References: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
In-Reply-To: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1599;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=mMkzAyWz/qVN9O2XMqdjyNpMMewXubKPHRJ1nIx25Rg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmTQR2ydgr373/+ZrReuBiiCPXPsnPvPUpPweIk
 +4iPSaWE9qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZk0EdgAKCRCLPIo+Aiko
 1XXhB/4mZQjQ8rLR/uJtqT2Pi4rQQ8eH+AKYTjGYWRIhpsGtkGy1LeqMfQCnMFUpfQg7c8dWDWa
 yqDNA3P5D5tnmknhaoH6yEFDYmqoEiATcnZHvevWqpqmrUwr3pYKLU7jsp739WyZLbJxljZholR
 P8rIhnhnNzw3rAs+1i18LeUkqjbhzgJWrnZRN0O5u+HcrZh9jpKSZciUtrEr9SlKsNsE3PgNHNS
 sIVbzJk/PM2HrFWAGvYTQJViogzeQuKWdENWW6J+5aTwf1K/7eNjQr9IZEd8wPKrOv/WO5+dW2r
 G5Fiebvg29UJ3A0bYdISOnCukq1AM0os/84vW2k6ycze5vVt
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_133054_010538_CD0767F4 
X-CRM114-Status: UNSURE (   8.50  )
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

There is no need to specify exact name for the second (AUX) output
clock. It has never been used for the lookups based on the system clock
name. Partially revert commit 72bea132f368 ("dt-bindings: phy:
qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs"),
returning compatibility with the existing device tree: reduce
clock-output-names to always contain a single entry.

Fixes: 72bea132f368 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 16634f73bdcf..03dbd02cf9e7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -91,8 +91,7 @@ properties:
   "#clock-cells": true
 
   clock-output-names:
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   "#phy-cells":
     const: 0
@@ -222,14 +221,10 @@ allOf:
               - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
-        clock-output-names:
-          minItems: 2
         "#clock-cells":
           const: 1
     else:
       properties:
-        clock-output-names:
-          maxItems: 1
         "#clock-cells":
           const: 0
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
