Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BDB1C677F1
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 19:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oWZ1VbABZEOvzys/7QvsGJQlV39x21IGVvs+qBpbQE=; b=C6iG7ODen6SIky
	cmuEsokxSdm5jUosrdb+UyJOcvKdkCPtO9OGmyB4oQhmTF6Ouehieo/yg0dxTZClHIa6NZNGDPBhz
	ivE3VOWIKb4flZN4sELvYATUJDQEw1a0Gb7XXEV1+64xbGWD+1iGmqyuLDmdCjia9Lzh1X3oi8phV
	u/fismgPK/9OCuRINp+oMGi9YC4tDZQ/7HOCsk0X2xrATYi6AyFvwX70YPP5VpoiErhofP0LXa40Y
	xo2nQ8xWO6A/RB1QBTjJPZoq+vpDGOsMFz8JRF5ilqDxCtRjX0jiGiOeFc+kmEmEQ+MxOjuCKEVNO
	7lee4TYgV6N2J6rXn1Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpht-00GhN5-FY; Wed, 08 Feb 2023 19:02:13 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphq-00GhKg-PF
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 19:02:12 +0000
Received: by mail-wm1-x32c.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so2248561wmb.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 11:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thW52RtRlGncxJVAXaAffrOQRfnK09M5G6J/HHLJxeo=;
        b=IJPQzDtDJMNd14JAQMKLtLY0kTY8n5Is09xQPcIVEtMbkHyV9QqiYVqGqzyEMjttkR
         OV254jWle7m64ztlPT3PLDLNKjeVus/L1jr8TwaQ9mekCou0BdxzVJZk3CIIFeXHLWJP
         f1S8AgBtpLmTUIzhgNIHDbUuIGr1sYzQ6H45SHwGxtiEfVti6MA4b9lCnW/IXCJQmY++
         +I89ebBBTD9wkKeozRNmT8HPeoUmdZ4/2Lox6mkFoxm4K+xOSCe3ECFtMXL90+1DagmG
         OBEIyUpgy9+qjfvU9wejt9VZ73EAzSfxKGZ9H2f3c4zaz8bpQ9lgF/DhynpHSxNUbGRD
         rgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thW52RtRlGncxJVAXaAffrOQRfnK09M5G6J/HHLJxeo=;
        b=VVgNE4Ddjq3juIXcXnqwQ6nrceSm2OkvzCdoHGw17+5odQQcNyNCNpPK86BpOuBagA
         8ePagZ8HaXNAXwDmuE2g92kjcTY8nYqDbXLBC4KnEzx3LoGwdMUErdCLHAINQKQX3BQI
         BkXzixobVHldK7wHguK7Billtvn51xpE87AFYvw8ih3rIyT4XpLpBi+byZx3vVgcoBoj
         qDiuvGWQnlBPpk+ebfHpH6aZCrPS8al6RnjE7PGD9fTEuAThRgOX9AHI/TCIElKDEISv
         aTENFYt6lAVi6xyTecSQC14E4dVZ4PtZHbBfUNrUqggmLMh5nrxJNDNMXhH9LC5F4U1b
         4AUw==
X-Gm-Message-State: AO0yUKXfyw80x9wRslIxkx9i1mloSXuXvqG/doquHEc6eASb2zSfhb/h
	wAp+UDwNeyOcilj/6jNpr7TkPw==
X-Google-Smtp-Source: AK7set++X4dMzU1+TglBhBaz5aGpsMTEVRAyv1rwdkeuctCDcJF350WikbhtaW9nWta1HACpDwG+ng==
X-Received: by 2002:a05:600c:991:b0:3dc:489e:1867 with SMTP id w17-20020a05600c099100b003dc489e1867mr2320129wmp.36.1675882927171;
        Wed, 08 Feb 2023 11:02:07 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2650327wmc.10.2023.02.08.11.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 11:02:06 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 2/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern property for phy
Date: Wed,  8 Feb 2023 21:01:55 +0200
Message-Id: <20230208190200.2966723-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_110210_839372_47C77A24 
X-CRM114-Status: UNSURE (   9.61  )
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

The phy pattern property will be used for providing eUSB2 repeater
functionality. This will be modelled as a Qualcomm PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v4 is here:
https://lore.kernel.org/all/20230207135551.1418637-3-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * made this the second patch rather than the first in the series

 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index adf88245c409..1e6fadec1301 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -135,6 +135,10 @@ patternProperties:
     type: object
     $ref: /schemas/pinctrl/qcom,pmic-gpio.yaml#
 
+  "phy@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/phy/qcom,snps-eusb2-repeater.yaml#
+
   "pon@[0-9a-f]+$":
     type: object
     $ref: /schemas/power/reset/qcom,pon.yaml#
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
