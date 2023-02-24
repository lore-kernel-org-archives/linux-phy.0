Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA90C64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N78P6wOwwUJfCglPpWk6ZEBSmDEmRwImpM4rY3RSN8E=; b=AbB901yNZby5Gw
	hr/Bb3PYLWc/rGBpmW78q64jvuK6udHEEMCtrg/0O59wL5m7+LDdPxjFGDAAYw42sCK4QgKeb7uOA
	mBHsh2k3/DJyFolQq9i4yDnj2Q/V8KVf8F0z7pJB5FwxKo3GenxxuY2QK0Exv47M7ZFZ3lsBg3D31
	UKpcbnPEIhJiVScKOXhqvbz9QuFJ1bGp42uuxG0JMed2/71cG4xp3bnglRdFn+QJij3WzcGZ0+rjL
	Ys7FSthcdNMK2r2y1vxzfXkj4oLbPxLTLlS2kYp8fAIm1pdJPbmWMOrOvbzQpCmvrGjG1pB3sMniQ
	z+/pFU7+wQa5xlJ/Uxyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnf-0029NJ-8W; Fri, 24 Feb 2023 10:59:39 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnb-0029Kc-Oo
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:37 +0000
Received: by mail-pj1-x102d.google.com with SMTP id c23so11198729pjo.4
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VslRr6K7dtSVjJZa6fQapZMGTntHaQJdO/Shpvvg0kE=;
        b=MGOUmbwJgUA1fRVJZwgB9pWpXSaFDZdqmuK/QbXECACx5ema5PaJeJLtueCdGflZWD
         +iVRSxClMuj4nGtJLHvDdO6Q9QcpOyBQab03jB0Fi5EH6oBo+cTRex1svC3RQpI+FRtV
         BwH7n/u/g0zlgDqs4+hnb1sz43b7+alo7Vf5gHBXbYBFt16snBeALQccZPXSGxIN3P57
         skmZO/QNwavAugcQZXxwYqr5tLJYtgeN6XJ+z9GhF8WX+UQlzPkAUzLzaXLM9qk3nTRx
         WeXHm0rRlwL93rLX51fJGDc1bj26EJS8vetwl82uGpYQh17dTbTGfQr59idAdiPKpg+d
         Jzfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VslRr6K7dtSVjJZa6fQapZMGTntHaQJdO/Shpvvg0kE=;
        b=YzX4N/zLx95h1MRqyv6cwVfvuteUq1xUsMEXVoTi182muV8EgzvtRud1Jm5aMVMCbY
         SoOFJz6ISmDQBNkGQgwtoOBwwC9qJ74tzXgGJEgkQvgFStOA+L2sj6y3ZY6po5Kfh3Bj
         4/5x75i1DxO9tYP8X1VbdOjU3cY+u6Y5c5GiWAykp/3sU538oS3T24ww8I/tU5PIO3ZU
         VLcexfuKYFw12yiZDh2Mv1FsH/LOe+ka5DU8icrbQ3ozriA64RZ5YecXp7382wj/Uuvs
         mJv3waKmm+kLMLkoxpq7tIBgsN1T/iY8TxSuneromEbvNyBw748PKMfGttsxrRzSPLee
         sObw==
X-Gm-Message-State: AO0yUKUODPpN1AirV4RJInt5yo90r2bKwSE5j1CodtCaR7vn/KJl+jWV
	RCBXicqFgtzufL7rRIq4xLv+AhwiD4jaNFA=
X-Google-Smtp-Source: AK7set+r4n315Ty6V+j5fxdDXOFOvEcth9W92yPHLkj3kMcik/XkG7t/jrX6t5of1AEnZduZqIlfgA==
X-Received: by 2002:a17:90a:57:b0:237:161d:f5ac with SMTP id 23-20020a17090a005700b00237161df5acmr13869044pjb.36.1677236374349;
        Fri, 24 Feb 2023 02:59:34 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:34 -0800 (PST)
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
Subject: [PATCH v2 04/13] dt-bindings: PCI: qcom-ep: Fix the unit address used in example
Date: Fri, 24 Feb 2023 16:28:57 +0530
Message-Id: <20230224105906.16540-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025935_835176_6FA28986 
X-CRM114-Status: GOOD (  10.37  )
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
index 8d7eb51edcb4..c1800e44f3da 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -164,7 +164,7 @@ examples:
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
