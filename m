Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50EA3C64EC4
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BP7F41c5m025SECCRZxle8ZlyhPxkRfh2jskhGuIlKk=; b=hTa1fQm3V9Xb9E
	7nhI6TGZSOLr1uMbaqu68qAapevWsKFu4o0iZW9vJ95xxbeZ1ILDZfJg8WfTdIeYqIk25vZYdd2b2
	E3J32xOc1J/waKQUbjKpC9pNfUQ4ZzdF1y8SRc3iV4ryoroLQwS44MjimTtGpX94ydoKNxFk+OrB8
	83Ipw/5qLxOKTcTmq9fBh1KKxs3JLYsYSFqw7katBgYX7rjkk/pooJf8iTSYw/ZxwH6VsdQ6YMAq7
	5v4cZA+xobFKJZpRMYFISqrCF7o+IzYk7wbCPaHu8fGbf2tNFyEpBpqBdhBSgr59WNZ/eJbdi3WFx
	5kxtabqDVBxT4cWGvfwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7Q-00CsV9-Ol; Wed, 22 Feb 2023 15:33:20 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7O-00CsSi-JN
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:19 +0000
Received: by mail-pl1-x635.google.com with SMTP id ko13so9787460plb.13
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uGDet0K+1/m01Mue6GMZv5iNZBwdpYi4DRLEmHhKT40=;
        b=e8OzNJHBrUsax0QZ5vhaNQNApDvVLjnLbFaw8uXDvLGnHcdn9gchb+57K1RNfkr+XD
         3qtDxULa5bde2YfYUzyND9T6izfeYbws9/drjyvPyb2xZYkCmvr2MLAsZPkPJwVOLjP3
         inJqdZUf1SbRVuiPucZ3F7ErIHzRCPusMF0sGLJ/bWZCl+hcmR9rHcvOg8+idRRCeli5
         z5rHI/74PQ5bdXQWYUhgueYan02m4X74cJSKh52YobomLJggUEQDq/KwH5L2nCiaQH+J
         PaBLY0iR8sDOh0Iudx7GjVWdWixLfkmk9y3xx5IKK5uuhrN/ETsEniCNrzuQbQBFgxy/
         8HVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uGDet0K+1/m01Mue6GMZv5iNZBwdpYi4DRLEmHhKT40=;
        b=4KZ6PZ8U1g8V3dOIhvpFUldOFYUVor14VdpLnyNjh2DyJzOBqAukVtTxGk/AFoa5iw
         75DgXfQwrP+3zosRjQAoQiRwDIAhIfaBUs06r55XzAD43vQcu49pFdU7WP2V+XS6nqnm
         z3xkMwdDPrDP9aNyk9GesmqmD6FVowpDAZoY8DKK8QaQFxJReZnDCxxa7QWEVnR8rW5t
         3sYJk3/0geQxMEByaz2CtxeZObu71lRY99JCVXrtb+1xg8x+wo2OJOEVZP0J64r7pWVC
         XKAB01FrTx6TMxww5JZlYmXI2gF2szMA4MGOZLVN1to1p1Bk/boTyYY3PcQMx4duC9x7
         rMZA==
X-Gm-Message-State: AO0yUKXMJYdLOlnEm2PF9e6ImfNTYohVUg13trQ1CP/3dnEoOI4w4wTD
	baZBmbNOYZgUOirIfMFLOT1C
X-Google-Smtp-Source: AK7set85fOda6NNHVt4rOXQqxDXgbFFt1j3cqkh0/SrhLRDeQeJPSHDWGBhyu2q20Bbo+vf9uURHhA==
X-Received: by 2002:a05:6a20:8e0c:b0:cb:c276:588d with SMTP id y12-20020a056a208e0c00b000cbc276588dmr2906445pzj.22.1677079995590;
        Wed, 22 Feb 2023 07:33:15 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:15 -0800 (PST)
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
Subject: [PATCH 02/11] dt-bindings: PCI: qcom: Add iommu properties
Date: Wed, 22 Feb 2023 21:02:42 +0530
Message-Id: <20230222153251.254492-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073318_652115_2BBCC3F9 
X-CRM114-Status: UNSURE (   8.60  )
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
