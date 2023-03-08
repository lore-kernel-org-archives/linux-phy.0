Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D92DC678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hslTvYU1FrwbK/6zYAMOxD2gF6GTOVrAdRfJsShdzvY=; b=241n719Y6dW/Kd
	nAnUPSvJdkBEb/KWUJHhEbiZIu8qUnNa0Hyjft2zuV8a0KdsIngkK6xWNrDRzYmEJUXRgi8HQRYID
	ecRcaYq4A24JW4lAtC2RElG5uOQF/3BwtMv2RBxH8MAeOSXwkdfrHb1B9Jl3t+eqxNH59XXgM68yt
	EmqiakxJ75l4u4eHkaMZP27Z+52TYPS/s7faWBgCR0iSYclM56WQTJW0CRGTi4t2odBs24wTbIGU1
	L6K69O4G+XUeH4DCjwjdSNG31WmnGhSbacf01IVmvJCxmW0+L1WZBAjN3pi95GOcsWg9ocmUXBJsM
	H80cdtyFIF58QMj38TBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6W-003xbE-Ii; Wed, 08 Mar 2023 08:24:56 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6T-003xZL-LG
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:24:54 +0000
Received: by mail-pj1-x1030.google.com with SMTP id h11-20020a17090a2ecb00b00237c740335cso1197591pjs.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMlNAANegEf4xx1NXIuCik/6RdcS3sC+7JZ54OhQzec=;
        b=eBibBaaC8WjGYl5ji9LuEtbfgqV8KIqyx/OB3HDqFwG7s8TlYGGwzWdaI+QbXuTTar
         2KQ/Pmc3gWpIj44n29MKHsmZH4FlPMfLHiMM41Qou1AC9/Q0B+aetKpEYskgzH+wI5UL
         5q2E6TiRCv1hBimV/xy8MIu/ZSrFqQ5LdfSbfeXqkmxyx00UbrkG9YzF8EXnJk1rwo03
         p24664/E1wnl9qAVIhH/BWkcvi7amecMYJL/0Tk0HjrYrRShMSLHrUGkwmxh2nZrUYZO
         /QWrtj+5Ql0sZMb6BJ2M1RY6bD6P6adr1HNiJTROIu7a+A1iMbB7SAKTud1HcYAy13XY
         hYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cMlNAANegEf4xx1NXIuCik/6RdcS3sC+7JZ54OhQzec=;
        b=NLZpg+D2zWltJrZEb3geaHq0r7DNcmsmLlOwkD2IHVvItnK633voHz1Y2PlU695oOt
         0h2o2Tfi4wHOkLL/sg7NIjkCnDFHbfNP5sLZcC8wa9YKKEspR33nIq8d8xyI7kkzgclL
         DDwP5mmzVhyO4urh7Q2e2Rvd1MgHaE9Fj1m92KkJnXK1rLgy9Xspq25WSVtkeXXz5UVd
         G4UOYntv3Hu1pM8/EWTO3J6WfzHwNGC19SgxU3NHwi9vmtMoJWnTjHnVuwDI31qx+weD
         SyD2es8uLIqQ3OPe8L8kDgoq1fXBhkw3P2ir1Ma2S0c3b/uoJRPe7oTIiGVVrlyzIhau
         ivQg==
X-Gm-Message-State: AO0yUKVSoAye4bU4FPilfdwoSY4g8erb9kh7KLmb1hVTM3iKEwrqJnsH
	h2T1rwxHxeyTZeO5mc/hIpQF
X-Google-Smtp-Source: AK7set/4JPpqY/DEaCsjMr/Q40idU76TpT65q6X/mbVl72aZv/GG+oCgBUuvTqz10mgmE96actYxpA==
X-Received: by 2002:a17:902:9b8a:b0:19e:7182:b54f with SMTP id y10-20020a1709029b8a00b0019e7182b54fmr14919592plp.36.1678263889918;
        Wed, 08 Mar 2023 00:24:49 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:24:49 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 04/13] dt-bindings: PCI: qcom-ep: Fix the unit address used in example
Date: Wed,  8 Mar 2023 13:54:15 +0530
Message-Id: <20230308082424.140224-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002453_716570_596875F8 
X-CRM114-Status: GOOD (  10.93  )
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

Unit address of PCIe EP node should be 0x1c00000 as it has to match the
first address specified in the reg property.

Fixes: 31c9ef002580 ("dt-bindings: PCI: Add Qualcomm PCIe Endpoint controller")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index 89cfdee4b89f..b7f6fbaa0ba0 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -166,7 +166,7 @@ examples:
     #include <dt-bindings/clock/qcom,gcc-sdx55.h>
     #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-    pcie_ep: pcie-ep@40000000 {
+    pcie_ep: pcie-ep@1c00000 {
         compatible = "qcom,sdx55-pcie-ep";
         reg = <0x01c00000 0x3000>,
               <0x40000000 0xf1d>,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
