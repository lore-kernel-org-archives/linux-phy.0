Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBBFC49EAF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 952DE61380
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 952DE61380
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2sob7LmjEgw48IQnovoGehd+DpMcg9xDWTGg8hjdKM=; b=F+r5sj1xKvgnHD
	M8KcL44jb7duNI6vBw28C+jjNszgLNdL/Fauvd5HQ0TK4uEjrKCpVXMFoH+ESfLD7lodFIWpyYSLf
	2btK8uNwqqXkky9zx2Ye+jsip/KQq6WcxNx1JxL4SctAo95uNke0dBpXyy06OAIXRVB33SHB98ktd
	ngZdDd7i6QiOnzQ56CsE53LjtCk1fuXR3qRzi5gDoWWDscvEhpa6j4b+PsFirCjCn0m/Y6Iy7531X
	EoA9Ytw3wznW202ih2W6NmE3QcgqfKekkl2zCoyaIZ2jWRHNgpIWTWl4N+17e790Y4Wrl31rCrfyv
	HYhXYju1vUv6TTvjEIUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvn4l-008MBp-6D; Tue, 22 Jun 2021 20:32:51 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvn4i-008MAV-KH
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 20:32:49 +0000
Received: by mail-ej1-x636.google.com with SMTP id hc16so341235ejc.12
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 13:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fmVw9pStfenfEOP3qSjlczojcgA/tTjIT2DLlSdXh+0=;
 b=WkwTLrEXm5bfSNXiGy18ZXmxAcf2lFYjWpEJ0mhRfQcr7LsSkQSJ00Y3dnnvXNA7bP
 hC0KAC0yyZJxuA/b5UorpOpYvG7H+KhJrOX4qyl7DJmCpIAfVm0p+MErmPhQFA9wUFy5
 pW6op6qf6AfHSotPx4laPGlN+6Efh8FFXya3+bEnQZCLaGERZ/wcvDBAdn8TQTGiaW82
 sDruRHgKAtQu1+D6lqMcipOzQhYBL9ibHCwcakvVvx6ACIb6TQ1ZjSICf/xNSgwT52PM
 te2gEEiX+J6HU+k1NHbEqtlSHlh5+YjDXpQFcCCIwVo3LRHH0F6pnW7RpUZuqphmQ1Wm
 vnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fmVw9pStfenfEOP3qSjlczojcgA/tTjIT2DLlSdXh+0=;
 b=dprZwbPk8noMfIMBQuYMyOfkxyTF7Q5u6bDTOMTFBAuvNdrkgG8P7si6mb3/twxyVH
 HCReXyZmD35HgXUsQJnx7LLowQbkYdSC5umg16oWe+S90IH9t6lbi2DCs/c4qVQIE2UI
 SAD10iG+9cntXBjfBfwORNYJqdXKxG07ujT8ioVsYeV8rg+HMZXZP8Y2ha+Xz1C1qLaQ
 8D8pCu/wuzr8msvKC6h0lFvrNIO/zvPqACERWXQdWePSwJXapUwb5ri1oL6G7dkDnThA
 464w4PZUGsqBrGh0Sxa7Vrj7BYICtxWMSpkU4mXLIjnss9Su1D34e3BeUALV3AjK34f8
 syNw==
X-Gm-Message-State: AOAM533hqlGvAS+W0vSEP892R3wzzcd/SQx9z2nlRwcos7PvaVw1x58c
 pSLcj7+4AxJtbuLpG23Dx6s=
X-Google-Smtp-Source: ABdhPJwBBF/JzwFvctm6Kb/5QRElS2Jo+5/sgmj4KLRBIJ/c2T5sA4W8f4/PpG9ANWgbSDPuhPEe9g==
X-Received: by 2002:a17:907:7662:: with SMTP id
 kk2mr5879847ejc.218.1624393967267; 
 Tue, 22 Jun 2021 13:32:47 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id i6sm6429481ejr.68.2021.06.22.13.32.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Jun 2021 13:32:46 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v1 1/3] dt-bindings: usb: qcom,
 dwc3: Add bindings for sm6115/4250
Date: Tue, 22 Jun 2021 23:32:38 +0300
Message-Id: <20210622203240.559979-2-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210622203240.559979-1-iskren.chernev@gmail.com>
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_133248_692677_E83374AD 
X-CRM114-Status: UNSURE (   8.84  )
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

Add the compatible string for SM6115/4250 SoC from Qualcomm.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 413299b5fe2b..4e6451789806 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -19,6 +19,8 @@ properties:
           - qcom,sc7280-dwc3
           - qcom,sdm845-dwc3
           - qcom,sdx55-dwc3
+          - qcom,sm4250-dwc3
+          - qcom,sm6115-dwc3
           - qcom,sm8150-dwc3
           - qcom,sm8250-dwc3
           - qcom,sm8350-dwc3
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
