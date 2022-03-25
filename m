Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70623C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 22:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srukUamCZ5Hyf3BKDWqz6Z4QqUIOZWeLlVYy/EqYK5w=; b=f/Y0Hzvp3Q9NJv
	2MamaKDDNv3WuESpyFMnafcSKu91ck+NwTN+iWWcWPfFbP8/PVFCX1NVZG0ZUe71F7fVFSw12wo0C
	AKJUEdQq+8q17C/xO0Qz/wuMG6hZ+JVemsZwpmdX4YJlWe5VK520qkvtPF9YahgLzFhiMGGgoy01F
	OxOGcY+68fbUU2CoPQl3Qh5ctGW96QWXAEP0xAGkcOESm+18wl1X78W8swmLPDvwGcbcw6SlIGgOK
	9AG8qiXpzLeSXs+OOHiOvx1LVi/L/kkuUxywVZAI7VENUgfRAHTfoGYmIvG48MSU5Q+sPXdPnnzTZ
	ETz0Y37Nend/eEgTwKOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXsJU-003Phk-TY; Fri, 25 Mar 2022 22:21:44 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXsJS-003PhH-LZ
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 22:21:43 +0000
Received: by mail-pg1-x52d.google.com with SMTP id c2so7500352pga.10
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 15:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X3vmRl4RTZA1ebOc11ScV2HKDdeAKGMAJ/daw+x2KcQ=;
 b=zyvnDzNTGsjNjDOGddOUemBAo57KB2BS3T2ndrRhYN8eyQHwnq8JtL4uAQ28EBRATO
 KT6EwXHstLLWKSCYzy9AcSC9oNcrycpEONic/V1UeWXUk47mSURrI4kJhmv/CdVqi9vd
 LKlUkuV+lQULgZLl0/fRScY0obxSvaDPWKJyUFJuy7aB0QrX4hCsW6k5gRd0DCbienty
 IYzsGZ2yV5tqvlB9mx2itTqqoocNxq9kWe7AXxUe8zWGCKQj7mzxSHsbUKy7sVoGu69n
 MIAnvVl9xQ2HvwBWJJU0AaPURPgqhbcyPsdXHU4NYl4co/11wi96J25jZglmoCPgxMt/
 wk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X3vmRl4RTZA1ebOc11ScV2HKDdeAKGMAJ/daw+x2KcQ=;
 b=Ky6BcqKwIsVA5UapNzC17MkNX1+h+fFR0+YDBrz3xL7oHaHq5YsJVcD1MVc5eNhLu2
 Xb9rd/VdRh+W70GYcONvz5HzSAMSMR013Qb4t0iEBokJQWVynyEz+zh4qTnYo9VFAcXl
 KscyR+Kbdf2IMCWV/WCHwzfFvQC7xyEJHzhQARv8sMagsSUzxzQlj0q26tG9okjntjIh
 Qg7qCCDXleXduiuFHaufxiRoDZkVvNDAhhCRSGaeieG2fEFOVTSDkX5RR6iCLhrxZK9H
 2ePNqu48goJ7vEDF6FDflcAeHMfc20rbpermZNS+lK+38Nhh9WawEyjuwnSYxI87BL4Q
 t7gw==
X-Gm-Message-State: AOAM531NkzTcPGFRA/W1MyqWjNmdkpm7bsRkNk6R4AM1HfyEqWaAKyRx
 GgHOyITe3QrlzEubTrxEThEpK32ArwsDlQ==
X-Google-Smtp-Source: ABdhPJxupFWl3MwZ4NIjmAJD+vUgamnuHCiKYIaWNfeO9RTGcJSm3+BBrsxvmpsxnEAZu6r9toV8Fg==
X-Received: by 2002:a05:6a00:14d5:b0:4fb:2adf:dcdd with SMTP id
 w21-20020a056a0014d500b004fb2adfdcddmr829804pfu.72.1648246901516; 
 Fri, 25 Mar 2022 15:21:41 -0700 (PDT)
Received: from localhost.localdomain ([223.233.78.42])
 by smtp.gmail.com with ESMTPSA id
 x16-20020a637c10000000b00380b351aaacsm6006490pgc.16.2022.03.25.15.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 15:21:41 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, bjorn.andersson@linaro.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/2] dt-bindings: phy: qcom,
 qmp: Add SM8150 PCIe PHY bindings
Date: Sat, 26 Mar 2022 03:51:29 +0530
Message-Id: <20220325222130.1783242-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220325222130.1783242-1-bhupesh.sharma@linaro.org>
References: <20220325222130.1783242-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_152142_724527_ED20E5A2 
X-CRM114-Status: UNSURE (   7.65  )
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

Add the following two PCIe PHYs found on SM8150, to the QMP binding:

QMP GEN3x1 PHY - 1 lane
QMP GEN3x2 PHY - 2 lanes

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e20d9b087bb8..1e08acb8a59a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -39,6 +39,8 @@ properties:
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-ufs-phy
+      - qcom,sm8150-qmp-gen3x1-pcie-phy
+      - qcom,sm8150-qmp-gen3x2-pcie-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
@@ -336,6 +338,8 @@ allOf:
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
               - qcom,sdx55-qmp-pcie-phy
+              - qcom,sm8150-qmp-gen3x1-pcie-phy
+              - qcom,sm8150-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
