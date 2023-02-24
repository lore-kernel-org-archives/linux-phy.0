Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F00B7C64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjz5IG3IA6PCrr6o5CmVfmNBvWo2Iokhy8I4flKPaU0=; b=PvfLlTWK6utGDL
	/ONP+Gu1qbDdP0faVtRATPXqG71qxrAOU5VL1uqOmkq0nug9j4/+hTgjtROgmRSFseNlElHWOmHS4
	HUwud/TNU5QxI7J77gYb2BIvYLL4zyurvL5rXMXekCey3cB7pIGNpakcPnjz9Nq4Df9ob94jGP1se
	bb78dsHhYifEBgXV5lsUXLpeToMw+aW1jBhXfMLhVsJUGaN7p5UgCYLU3YS9AFznUfvMPRAYAM80g
	vRJQZxx/2Pm+Almjjmb7R7YdoR5Gt15ecwoBmQVk0Lb1cbFXA71f37nV/5BIGbxNJlWWiD5sFPUr4
	4yFQlJ8jOZ9TOG7UqW3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnQ-0029ER-DI; Fri, 24 Feb 2023 10:59:24 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnN-0029CB-JQ
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:22 +0000
Received: by mail-pj1-x102f.google.com with SMTP id qa18-20020a17090b4fd200b0023750b675f5so2464826pjb.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7g1uqAd+GBvLWxylp13ChAu3aZ2qmP9sP5D+Fm30PJ4=;
        b=xMS93kYtTEWQdbX6qfOwCbcRYIGnoaDf2QJDnzsBG1pI8dHP/gX61gX4fLgH/twQzJ
         /XYaG0UG2ZbcmamgvygW+VMhACiR0ijaXbGnqHdojoFsXmF1pUX+yOkQGUqG2hKUdOE1
         Yluzn+n+d81WXnsnHRCJmIuo2lvf+6VzZzYvcRHDXhF9I7+gv7ARITZ57947CHWinHn7
         fi2BhJDcGjuwrKoVxcrJ4r8zbaBTpKm83kP5a28aqeRygtjRVQzRssVxqNtrTnS7FjtS
         5pclT3FRd82lh5EuexCw1XznkKdhrrd2yv1XHxfaeZ7RqTU/l7gDAaWGEnGhCmu64iOA
         us+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7g1uqAd+GBvLWxylp13ChAu3aZ2qmP9sP5D+Fm30PJ4=;
        b=YP46cTaKjXZNFwVMy90AoK7E2lGpswYoshWzKHZBni0wghtzP/ZIhXYLyHb8abOfNq
         oIuQ5fhS+rG7YeHdMOA3SY1dILz8pTLOqMRlFw9f2p7TLf+vL3tXHWqZrqJodgMGBW/0
         7GovPH+2sSa1EP/n47pfekiVqacCFVWdznaHwD6yNpUXgdLKi6Jq7mQzGNuCTCqFyU1e
         BL3si81ehGQLvvEo5ct11uyBbOrIXdg7m/OaO2foac5aTVHI8jjb8WH0rnf77SpOqgA4
         xcGP9vfppqNu/PWk/jpBf3Hlh8s2anrYRj7DQFhMLFvuS1xr4DnsDkTVwhjbZK2a8Iqb
         I4Iw==
X-Gm-Message-State: AO0yUKVaiN79OikynzR7irYiJNMxjK9pYPkdX02MOd0oG/EioaRHU+RL
	TKDXhkX7ekBvzoAW+irla0V0
X-Google-Smtp-Source: AK7set+ZDd7rHtMLxF526vFXCKgB89SNppmXHQaAki0dC4fMRkmaETiCaGeFktgQlPL46hfmwQY7bw==
X-Received: by 2002:a17:90a:188:b0:237:3dfb:9095 with SMTP id 8-20020a17090a018800b002373dfb9095mr9674382pjc.6.1677236360228;
        Fri, 24 Feb 2023 02:59:20 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:19 -0800 (PST)
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
Subject: [PATCH v2 01/13] dt-bindings: PCI: qcom: Update maintainers entry
Date: Fri, 24 Feb 2023 16:28:54 +0530
Message-Id: <20230224105906.16540-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025921_656870_7603D503 
X-CRM114-Status: UNSURE (   9.57  )
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
