Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 825A1C678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4L1eJZNnosVqQTujzJ/Ya5e8SItVmvahNfGfqujrgw=; b=GynNiIou2NGaj8
	snRMZRSgBZlzIO3H7cHZbSqZ9EX6hVxzVBstDdhiI7Q7TPl93ECJrRtFDrNKltgxATn84RONRPYSW
	fiHbNBp3PDocX42tBf4ycnxqIUNcQxjY9/FFyMy6irLQ72wBut+ae9QudmP7uewTul66CqpEy8DrL
	9ARvmn3cLsl8HgHL0YYSGffSmPdbBb2ftMEzoIHyoDE5Kq9D9q98fuHtzJpHURw+W403q7wivTrax
	g5/S5f73386tDSVOIIAYJ9dIqv1s3sHoIiWSf7eezbf65g9uyBVFVO5bp0LWghOZ5gIU8aaZG9onN
	8dy5gjxxB2FfvTNluZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6H-003xWu-UB; Wed, 08 Mar 2023 08:24:41 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6F-003xUn-D4
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:24:40 +0000
Received: by mail-pj1-x102d.google.com with SMTP id fr5-20020a17090ae2c500b0023af8a036d2so702058pjb.5
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hku7GI8fxnyC2ugXj0rjNviSGHzIDWLdfW64e83ph/U=;
        b=S2IrAmdHcm7bUgPqWiRffn0Hlsp2BqnYwJv4XBFQgfPcJI+vFmaDXjPCWfARaed2IH
         wIrPT0Fe/TNOMIF+Lb9G93gvD2TWYGJ4fKJXgRzUGfQtkyjg1wxeXNlDu28qFDtclfKo
         p+S/QhmEhYh8mUs11wPkrAqZl0FYgSZ5Y2MxAJPRx9g1XHCpKIvREMFt4rPbnQ2ObMas
         bo5mij/kUtqhHkVyYDGWNrseFO7SRy4jHVVyfMR6saiNOkS9WxxFYJyjl6Q3/ipIosB9
         m6OhFbIvpb9Ya4NILIg1L/Vt7q4y7HhbMzAbkvxRiqtXVaz64VFovjXvvALw/Y2zkvv1
         tzMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hku7GI8fxnyC2ugXj0rjNviSGHzIDWLdfW64e83ph/U=;
        b=K6vPMeTEAY3yyIdbiL90lJeXE3+E7/AUs/1Jjh/tz9RdVdLGZE/IDe0Jd+5DFBxbtI
         oRHp8gARTEDPlORNkQaJKGWwAVsqSPAzxKVwfe4STwXNtyPxrb+/ucr0QH2nzDdIQGEd
         IQGqhlF2dGQXsi6kQNFOkkWaztbdZ0QuMRYiis7A/HGI7cjmxOb+zJwDur8uoPAkkFCg
         6kR9/WkxTyediAF9Sl/RfqjMk+TPUIyLhAqeyEbnpok6CI1Bm7oxe1XUlm6xgablH8YN
         lU5+8HpgfWIXG+WSaM0Xgs+yQp+s8j6hXCSCSaOTXPe/jI/hJDPugVMsMlbqwIxP/4aI
         bIVQ==
X-Gm-Message-State: AO0yUKU4sCCWHIbPvwKzt3q2YIbANFazXaWpezkXQXxA+abSglRgiaGf
	I/9SkMeSPBMkeAzWZhLkFci1
X-Google-Smtp-Source: AK7set+z2ohjLMrW/ySDf6/Oh+UEPC1wQb+tHc0FTJS9Kcx/n4N6wSZuXNOT6xuA5n5AkVTr9Gltmg==
X-Received: by 2002:a17:902:b282:b0:19a:b151:bf68 with SMTP id u2-20020a170902b28200b0019ab151bf68mr17535437plr.38.1678263876361;
        Wed, 08 Mar 2023 00:24:36 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:24:36 -0800 (PST)
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
Subject: [PATCH v3 01/13] dt-bindings: PCI: qcom: Update maintainers entry
Date: Wed,  8 Mar 2023 13:54:12 +0530
Message-Id: <20230308082424.140224-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002439_464626_F21B3A13 
X-CRM114-Status: UNSURE (   9.93  )
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

Stan is no longer working with MMSOL and expressed his interest to not
continue maintaining Qcom PCIe driver. Since I took over the driver
maintainership, I'm stepping in to maintain the binding also.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index fb32c43dd12d..92eb273581f6 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -8,7 +8,7 @@ title: Qualcomm PCI express root complex
 
 maintainers:
   - Bjorn Andersson <bjorn.andersson@linaro.org>
-  - Stanimir Varbanov <svarbanov@mm-sol.com>
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 
 description: |
   Qualcomm PCIe root complex controller is based on the Synopsys DesignWare
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
