Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 447BDC47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poIrIRltSD+XV40ArJDYuO/YJSXJnUuSWpI8CD/ac8I=; b=tAetcg85HxRjjx
	zNTTFMWYdpd1POeYYTmleqHr86t/UxNPap/YZOFvaKTz7zPvbuvjv8EzgtORiIAHMEM5mnauBek8p
	p6R2TvRqS9wP7RfVAZxgBeIi/VfV5nk6W/W1x9QEmB4YCdt9nRd/YGbMVIDzfSHaqYXcrVlJ1YIe6
	Qq9B8xoQsFuK0nojJIK9vV7CTrHaF8dLr2RBo+Qm8rKk9quQrREmEYVmjyJBFHCqBnElUOZTIPUve
	XGxEDJ0UhJhasWwHW4iQzw16A8kjrrCBlWqeaQwhL8UMls1aqRiFuaRMSSe6gfSHRBKZTFd2zjWo3
	E6FI7UHgN4vlAbvZEfKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXov-001sPm-2j;
	Wed, 24 Jan 2024 07:37:13 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXot-001sOV-0l
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:12 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1d70a986c4aso22720025ad.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081830; x=1706686630; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OZuZcdUnAaZplEI/q0+jQccDNm87eHwhpTq9IdQtppg=;
        b=QbmAU7rFHQU7B3LzdtVBlClGmjWd5KcjCsWjEN3pHon6DRZYQwDKYUt1+1b+3UGgzy
         lbNVFA15QYoVpwZC//2n8JObQrIzzT6411pYHGjUgPUwXB3C3Oyt81YTodacpiSpgRhk
         uuKRRB/7RtekDf+3Mq7ANOtq4/BlsGPbv66t5IbtZLJWkohb2vRPjKTOsXrjNINYU4Cw
         9S3sIDyj9GO8LZC7KJKXhhsVYah3rbTeUujJNYPdho4l4QN7q4H6CKJDuEB0q8jCGIMH
         7unj7RDIedybeg91Lm/iH+/X5GVo7QafvRBkjJHNRDkTsrtpJUA1D3nyL5XpAJKza9wJ
         9eJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081830; x=1706686630;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZuZcdUnAaZplEI/q0+jQccDNm87eHwhpTq9IdQtppg=;
        b=OqRalsB2vFbuqWJ1iv8a/BLD/pgSRcf17NosLwqsLWi+3gqVcN3b2U2LMRanCRRjYo
         zmk1M7mCrbpHw1N8w0M3NyXChv7BPZf/cdmx6fJ22aTNP7/ovAWHaOTnuzY5sUYpZdSm
         CvyYHJxv2ZyuJQ8qGitQZf/DY+Btv60d4iFiwUuxRcCzFYF126B5nU258WzNBUjFZv7l
         Dq5PwetpcIiJrshxmK8nGZPsd8gqJFODoIBdEGXVkvnnTHRBBApDkSPSYSY26Ocb3vnA
         sTeksIHu/j9zRCR8CbPVR1z9ghFM6PqUNPYinRBuqKH75BhemoaHhk3W+fDCkp27Vdw5
         1sfw==
X-Gm-Message-State: AOJu0Yxqgg+b029WTBSvXgXs+lkix3NYo7oQbCPOnQUUxiWVke+xtREs
	5OU156aG4jvPrzoFhQj73YCq3kVnjyhHcYNGJdchLjRX+FU47NN7cBGOigXkgQ==
X-Google-Smtp-Source: AGHT+IG/mhM1tXpIYDJ+QgSt5kfSy06HMtXU3+wdXvqf7yd/1q4iuQ8Li1G5PSzHd1qUO9SSeGiszQ==
X-Received: by 2002:a17:902:a9ca:b0:1d7:599d:ed25 with SMTP id b10-20020a170902a9ca00b001d7599ded25mr293175plr.39.1706081829738;
        Tue, 23 Jan 2024 23:37:09 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:09 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:33 +0530
Subject: [PATCH 05/14] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document missing compatible for SM8350 3x2 PHY
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-5-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1285;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=w51HxUcd7PIFxEJ6OgE0FVVFmZ15T0vvM8776BQDfiI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4Do/rhrRxBBcGh4nzbe8uTfLLa/A6k1e8Nm
 cQmYLYOUzuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AwAKCRBVnxHm/pHO
 9WSnB/wMBNvlf+Eb1MLAZ8tHAt7hDQbZWgUDPDi2vLIc8inCjo3y79EjNMOBDVB8rvgiO6TDEkF
 TvJIRY+rMb+1aAPNL/PGpk9TQHAOUHj9jIbQEHkZf3Ff+x0HThfGIQjSEiqTqWSwFZE8p1o/Z7u
 DVsMJL4cpCICemBXdHgOZW354scZhFwG4lJevvjElux9zZ1ZP6yeme47movn5L0e8oI8FMhHg6L
 gHZCqGC+Z3AeNALkvgGj89QPtz1x69XxWUmRzRn6mvdyXsyzC6fxRhikZ5fttFyaLW3sRKrHqXb
 8fHNzR6BVRYNQcBT9Qs3tlIUuRWNVfn4Dce4+rcsM568XqXA
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233711_274969_2404738B 
X-CRM114-Status: UNSURE (   7.67  )
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

Document the compatible for SM8350 PCIe Gen3 x2 lane PHY.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2396a457f9c8..77338184cdb4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - qcom,sm8250-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-modem-pcie-phy
       - qcom,sm8350-qmp-gen3x1-pcie-phy
+      - qcom,sm8350-qmp-gen3x2-pcie-phy
       - qcom,sm8450-qmp-gen3x1-pcie-phy
       - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8550-qmp-gen3x2-pcie-phy
@@ -131,6 +132,7 @@ allOf:
             enum:
               - qcom,sc7280-qmp-pcie-phy
               - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8350-qmp-gen3x2-pcie-phy
               - qcom,sm8450-qmp-gen3x1-pcie-phy
               - qcom,sm8450-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen3x2-pcie-phy

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
