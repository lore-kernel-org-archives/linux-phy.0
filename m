Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 344CFC61DA3
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BP7F41c5m025SECCRZxle8ZlyhPxkRfh2jskhGuIlKk=; b=eMfFe6fWBYzAqC
	ajy00AaFkD2rfOfJ0zyLnTymfhzImYGBD8CzlzFAeI8fhnxPao7ucQqU/+nyofc4HwbGAh6xPkoiw
	LD58bIcb7ZcK//TrrY7QDpEWphZ0hd2myn1k+j8knCPIFt+6VHW5sW3mgsqqa23HqWYXFRqDsabxg
	+n5Sk8kKqNp0wIb8fsPGhc3ceY3uC9I0yJsFvrRDRfVo91vEAu8AdVma1WqzVim9bYz2pwWJvLUYm
	tSOqc6F0etIzl/YsS8FScGA8FyC5eCUSXt8LONv1sirlUlj+dHwDdDwcIO94pr8/1xH+XeOtRzxjL
	AeoGKqRyRLoScTKk5V/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnV-0029HS-LH; Fri, 24 Feb 2023 10:59:29 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnS-0029FE-Ej
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:27 +0000
Received: by mail-pj1-x102b.google.com with SMTP id y2so11807084pjg.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uGDet0K+1/m01Mue6GMZv5iNZBwdpYi4DRLEmHhKT40=;
        b=wzykzWTLm9WRroHFoG0Wi4/XZv56thmYBqfYcTMsjRvlgFIqS7YEcL35e6oZhoDeTX
         3iZRGY2Qj1zBi0n4Ds3Q9wWRoRQCHAHJtnggV4VvKboWqiHGa0a7So9m9rN5Yl8p/evu
         cF9l87jWQ0FHeQFwLjYeevwF+dvbUSgO/jVW1rUrmvT3qcKt5ulkUyDD/+wNzPBc9mCb
         kqvPxj3z4FBMBgcsSp12n1L3AnTJlNbpS+tDJWKlIHsPxSVmjmOAlNW1/TWKObSDwMhg
         b3SbhF7WiUVvgYLj9kIwU+AkuSMLl9PT2tneUhCIC/v0JlFH5zOHDmeaSgPtKSEKfjI3
         xnBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uGDet0K+1/m01Mue6GMZv5iNZBwdpYi4DRLEmHhKT40=;
        b=zjJf5utPJfaea0pjG/7zt9BKC41GtHhDZfJnvezmLjd6jTv5+RPHgZDa69spNGr2/R
         r6mQj4dGDaFh3AhQNWbAGCi8SuOgqqBo8hERVa92Iic2hkUP46AMJNEroYkYiGQ035iq
         nN4op02yfzxdJHYXNEj1DuQ0vHnLtI8QvP7Z3QdMdL344rWgKDOxeoFe64ravzu37afx
         CslL3nnTqjSciAneBVnt+sfqqz+BIcL67iwjC0nlucR209ueeDTTRLG4bAvkV/fNowNp
         DlP/FdatZ4PhLo3OAw1Txd2WtVWMAZB69LZ9DYhtmeoWrNWNa7KOjAQIEMB8GQxUtQGs
         HNNA==
X-Gm-Message-State: AO0yUKV30Yj4Kjs4HY1A+JGGPMtY2eious70VUDGQr41POY5wZduDm5S
	9PIbqlkKYLUNSwsubEBic7b1
X-Google-Smtp-Source: AK7set+6mGj4VAtYdGIkQ1vBWDtOV7gy94BYTfFVLAt8JxLm/NlVJr/LsvVWmNSRz2bjH20PvJiRDw==
X-Received: by 2002:a17:90b:388a:b0:234:1645:5266 with SMTP id mu10-20020a17090b388a00b0023416455266mr17301662pjb.30.1677236364970;
        Fri, 24 Feb 2023 02:59:24 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:24 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 02/13] dt-bindings: PCI: qcom: Add iommu properties
Date: Fri, 24 Feb 2023 16:28:55 +0530
Message-Id: <20230224105906.16540-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025926_509354_9AB199CD 
X-CRM114-Status: UNSURE (   8.23  )
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

Most of the PCIe controllers require iommu support to function properly.
So let's add them to the binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index a3639920fcbb..f48d0792aa57 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -64,6 +64,11 @@ properties:
 
   dma-coherent: true
 
+  iommus:
+    maxItems: 1
+
+  iommu-map: true
+
   interconnects:
     maxItems: 2
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
