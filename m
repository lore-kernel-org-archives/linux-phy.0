Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A109C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 08:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iU0U2ZRfW0NSpUxPRjtMstJU+vx6CDJLCHOW4jMMwcQ=; b=fnsU4F0UKl1XNw
	O7lnmIzCPlv8rZa8YBmHQHNUC1DL83nGK0k1akmEKDB2w1bFvJZqe212REVWSPL1qKgacjjoqmcp3
	ksNnjwO81Vz+/CQpuNjuTjZPDqFYGrUdvjb7VWpuAIRrKBJlokYaRWlTyCUC64Z6PSdKQ8aAmr1+3
	8bnb5+eTyCB2ZQGJ0lTVi1KtgZ1PZ2/bkG2LVTb416PZ3htKEStgNoVC17yka7GDii7YY1GBSkQvT
	i7yxNK5X4ju3s5evGn3YOZM1cj1w4nfkFo+CQyk4arfoQ50H9Qd95pmghZfmySZnu4VjFCoCswvKE
	DOlct2PSmsIU0dvMMiWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwgg2-008HtR-49; Mon, 13 Dec 2021 08:27:18 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwgg0-008HsT-C6
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 08:27:17 +0000
Received: by mail-ed1-x536.google.com with SMTP id r25so48908516edq.7
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 00:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GMm67AIvcXY6qklTj1xMKUOirDsiafuBtic6EDXbrUI=;
 b=DTC7WGjdvAqdjanbrAxw5grBfcgQE37OeqT/pwC0Z2eG8+QPNAM6ZmOvObjH20NFlD
 w8RrRFpVCJ3SR8uLRF1DGeRAs2tyspzM5ovfUYKdAA7H4b87a/0jNW1UBQ3zSsoQbFK2
 7jqEbNJEEJ8j/Sjzwe8o+uPJv9H8ZrHsAcroGWKDen7Teyv/IQtz7ugWiMDq0ILvNu1J
 IU4v9K8t3VaiPyDjv32G/SXS6eJ87nH/ruw73oR3Y2Vv4HNfxITUpq0Cudue8S/rXFN6
 mCrvQY7YDDBs5i8xpfMvc92dQEr8qoSt4xLCNmRnZuYW6DhEhce1c4LKfU8EY1XTdpT9
 mFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GMm67AIvcXY6qklTj1xMKUOirDsiafuBtic6EDXbrUI=;
 b=inTsUOxbEOnw0lXUNcO/ntl/JLSnrJloed2HUxg/sWLoQQSPd79VL9uQMo/0IkBD6w
 qK7TZ8YJfsCJ46LxSG8xliWWkkRFwgzM5/5dF/vvzOh2iQ1hMBC8rgDkLUNqVQwfb+NV
 64vY97ARmwT9vP7W2AHrH9KeoEPuyL7ODuZo6FtRZ2LiJm7DYAEz86HeiQryhNq7//gu
 Gvyy2IUAXH99CqWdPH9bRXacl/7MpJO5PjnBXjT3Cg9FBV2a5QRXlUr3d5desZSluSJe
 fGJDwcAAZenZaUSgBgtWrtGViWP4SkyuMxNBEeFBTfw7o/Uht0O72DrpG1lw9DhaSM78
 1I1A==
X-Gm-Message-State: AOAM532Yp4We17p6bN1SEC2C5LXJff5Yvsn3yet0C2IpcU9udbDLV4hb
 j0KHQeFzIB/FvfCIsVoMDRs2jQ==
X-Google-Smtp-Source: ABdhPJxIY/9Ksv9VfDYjeCpOETIdPtwglBsGFiqhDKYDlmjLwPkjFgt7OAp+YsiBCBAG7DoZeqM9xQ==
X-Received: by 2002:a05:6402:b23:: with SMTP id
 bo3mr61598431edb.366.1639384034612; 
 Mon, 13 Dec 2021 00:27:14 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
 by smtp.gmail.com with ESMTPSA id b11sm6062432ede.62.2021.12.13.00.27.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 00:27:14 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Manu Gautam <mgautam@codeaurora.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 04/10] dt-bindings: phy: qcom,qusb2: Add SM6350 compatible
Date: Mon, 13 Dec 2021 09:26:05 +0100
Message-Id: <20211213082614.22651-5-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213082614.22651-1-luca.weiss@fairphone.com>
References: <20211213082614.22651-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_002716_434308_6256C02F 
X-CRM114-Status: UNSURE (   8.16  )
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

Add devicetree compatible for the usb phy on SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index aa2e409a1a09..e651a63a4be3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -30,6 +30,7 @@ properties:
           - enum:
               - qcom,sc7180-qusb2-phy
               - qcom,sdm845-qusb2-phy
+              - qcom,sm6350-qusb2-phy
           - const: qcom,qusb2-v2-phy
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
