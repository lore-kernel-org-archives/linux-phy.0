Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3386C678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ3Ri2eH/iZ4C0pOLVoNQBQTnAa9T366mdSLH1EK8oE=; b=mClMjLjoxAVHsS
	HVKToOtKkStLu/eAB78KA9QXAxpXdXEVzJNZLaykGQs9LAjKtjIgr8t9HZ35fd8ASU3N1cVBi+H3p
	YKgtu4qXSiw0nxEahMSNorKWdMoUE+YQisNITMte6Vk0VVIwQX/by1vo678ajLf9kPBm0w/ls/wGG
	DjX7dsoJHsUVHuadweYmLO77OsIraP0j3PU+9zIW3tbNIEIi3z8cANDVZTQoGTYXtuNh9NFDPuKUl
	o+uUO5hWHwgagqm4u1T8cKqjzgLZcLLlUHLT1p0pcIW999YE992vikidqaQ4PPKRduFxkpPLHQDgw
	kL8vrCrIrqNMKfLl57bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6L-003xXy-3W; Wed, 08 Mar 2023 08:24:45 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp6I-003xWl-QD
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:24:44 +0000
Received: by mail-pl1-x630.google.com with SMTP id h8so16922725plf.10
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WT/YBVNsPknrBjyIkGUY9UiL+2Gj/Zemk+zRmMN7Jkk=;
        b=IU1Ed86toqfeL/Oy5S9RLvgyjhKn4YpmAkbkjTUtlIYfyxwE6ss5nnj0A6aD5fihad
         5YkLLWGCXIfYwDa6fLQxk3cHtvfit/giKXBtqIMZpOPlbTcWOVLPFxDj0xzeWoMasOma
         iVMEvW21hIS6FfgzrVtxi2kRHuAiOtEGHFbxOmoj4ltE7uWTJ0m4kApJme7X5j0NPIkb
         D/Rk+8qsklFZegDG8Os2SB3hNuI0zl2fERMn3Ja62fix/UnUKPeOZnopO4OUqfm/94/5
         ewWodg5fB/p4yGvAfQoErsiv/UDPygj7R64RzhBJn5eRSKtuGp2tZLqcjUotGOPJxD9/
         SGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WT/YBVNsPknrBjyIkGUY9UiL+2Gj/Zemk+zRmMN7Jkk=;
        b=kZT0BCjakp2eDuxD1cW89TWhNi+nXJyRbWhyOlZ+IMZMUajidTeesVl5de2tTLxSfN
         8kogAJr7dhQTOBya/ZJ2XHIfFoxw7sqbrEsBA5jLVXz02QYqlbeDrSi9nS9f0waBed3i
         gpoI+1gqx1DK3QlnDY+x6aWzC3ucq5X1tkRMu68jtTOEgif7+V0ZksJxxr+fhQeUQEGc
         y67BWPQrYgAIfsdX+ty2Y8Ew9K1WNi0Z7IBgroYPL23YarfNjy881qko1XvWbRf+qNlB
         aHYqvqHsqZaUn59WxZiLTGElaZek4i6jMFeegtKzFhB0TMjPRDqOb6EPwUXmGQiIp5Hc
         /saA==
X-Gm-Message-State: AO0yUKWgQ7ELXb+ymdKfmtIaAIJK6WiIXY+iNlh6aZAamLKebK5dLkeB
	IQFQw1rJOJe8Gvfqwvd6dft+
X-Google-Smtp-Source: AK7set/u3U2U32Lk//wFu6fAj0zNV+97AFPfKeYRbfUxhcrYTjxdj5ItKedSSAA8khsHfHl97oL8EA==
X-Received: by 2002:a17:902:c948:b0:19c:dd49:9bf8 with SMTP id i8-20020a170902c94800b0019cdd499bf8mr21710306pla.28.1678263880800;
        Wed, 08 Mar 2023 00:24:40 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:24:40 -0800 (PST)
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
Subject: [PATCH v3 02/13] dt-bindings: PCI: qcom: Add iommu-map properties
Date: Wed,  8 Mar 2023 13:54:13 +0530
Message-Id: <20230308082424.140224-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002442_874998_46B23009 
X-CRM114-Status: UNSURE (   8.34  )
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
So let's add the "iommu-map" property that specifies the SMMU SID of the
PCIe devices to the binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 92eb273581f6..55ee86facbc0 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -70,6 +70,8 @@ properties:
 
   dma-coherent: true
 
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
