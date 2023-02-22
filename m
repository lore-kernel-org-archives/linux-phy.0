Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2FE0C64EC7
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYz6pfBMpdcX0aqnHH8ic2i4Y+wNXqkq3vc/02CITwc=; b=bBASdYF9l+1k1v
	iXj4fnn5Hmj9q2uN/5HxmuGWUlNK2za9oD9OY813WyTXoDQCGQtKgbno871UVux7J1AxfIMORtjgl
	DQj+w8fBjl4UrgoyOozs3cnprioNKzCaGU0BsFtwl3pc1XXMvxSkTVPzGWYjKd3wfyH9MfjDbSdSq
	Y3HNL8IePnvUsj71NgtZIgz3AuziLahFXpL/zY1qInKtjEztXA1y5jhvtZB8XM6d9nPsPnr3LKCni
	Q7aZLdha+NzN8GqSCCMt7ZO9TNOMlcsCyeF3V+u66SgG1yJijQx3yqkLiEKQo6NVX2vuowzH30MiZ
	VgUtIk0HSxyswqi2ZBeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUsFR-00D4tL-8W; Wed, 22 Feb 2023 16:45:41 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7J-00CsQx-Fk
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:14 +0000
Received: by mail-pl1-x632.google.com with SMTP id z10so6022760ple.6
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gl2oK6m3W4idoG0++YXdR0eH/S7JB1Clcx3ixNJBnNA=;
        b=nX0UqMMW/E/UxVR2q2VD0VyQdZv/U42NNCRZwdTFx0DjM8Qyqtsg7ufdwoour0UicS
         wq1ZzUObu+TF5PHoVoH5zuoCj+k+M6DRqLhhkkmn11eyzeyNegyeA3TmxNu/ogBgVA7/
         TF6RzsorxQ8e8lMsigtdFHwEpXi4mTgucncArvai3O1Lug3RECeqg3q1w+2xQxjjTM08
         teK5+it+Nt0pXvwNWzSSGnmX4jp+A2iKSt2gOCmG4oEctC65y5rN8zZXxifQ/K7yhbDd
         ph25MXMBSO8ZE6ZiZljWEha52/6TxAARJJRyadNQgbnrkgBwtnt4RH+jiGVf5rh+jEGs
         ckbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gl2oK6m3W4idoG0++YXdR0eH/S7JB1Clcx3ixNJBnNA=;
        b=lTw0INR0G+PwClXbtYUx25wkuBBX43I1GbXr5fDCV9ZNJ7ulGXN4loUJMLdMIF2ggk
         CAPdpl209JhCtIFyKEwwlLZoVQgwFniXSPUK6ftrsMg1PUxOesZFcVo19ldhfiBtBQSl
         kNXgf9Fu1IHWRI/jjhyQYnsPprXLNt0eTzKLZaFOmSJRcJpMyPy76eA4XWDEzhfaygGf
         Bc0U816jJcwx+RU90XELSdcbyv+AWKxPegvLSbk6xXsRBvjmwAP5xV6WKXHYHZT6iOpS
         lEBLYgcsh2FKfIVAkuHXmNjEe4atsrcxw2xKeMRE/lhFoNrQs0HWjS+Du28hGSx6Gg1P
         bKkA==
X-Gm-Message-State: AO0yUKVZp8oOwFI9JUM4GWnUUqVcunXEb8fC155pIw+pwD1Y8V/uM31G
	1MPg9XVSqhAISHhz+gxX3MZ+
X-Google-Smtp-Source: AK7set9WVD42hOyS9N9jO61XZ88ae5caQzTdmddlRBoTHPQZ+QttHFEtj2SdZp7EPHxzDn9YD9Gb/Q==
X-Received: by 2002:a05:6a20:671a:b0:cb:7ae6:b42f with SMTP id q26-20020a056a20671a00b000cb7ae6b42fmr5975151pzh.62.1677079990532;
        Wed, 22 Feb 2023 07:33:10 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:10 -0800 (PST)
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
Subject: [PATCH 01/11] dt-bindings: PCI: qcom: Update maintainers entry
Date: Wed, 22 Feb 2023 21:02:41 +0530
Message-Id: <20230222153251.254492-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073313_543278_63D4CBDA 
X-CRM114-Status: UNSURE (   9.92  )
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index a5859bb3dc28..a3639920fcbb 100644
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
