Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA21DC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 03:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tu3BzW016nZJKYGKKzMy0zKitVgXz1a5jAvdYU3bRAw=; b=hpotver4hGIKL7
	d3lJebFnnQ1GFLDlvghBTPe8AwlOZX0WlGJIFrqDO0jvOf+pSdowUyRXTvVYxafITkIhnGw1fVip5
	Jw/XS2QuC49ZVPKUh3VqeItNVMuYFNfd8/2xL57c8+ieTOHto95ETs7qbaM1iRxj1IpR4qOUi5iai
	dC3d0l+ytSGbYf5XXNTNrFl/+DfbD/wu8LzeOxf9+WOXdazgJHTPx6g+1nsUqdFp65Fh8jIhtwOWV
	+2PiJS8i0Unr+2cHRdKYbVaKXqkFuHqGXcvET+54Pv/Rpk/7iewXVsAf7MvXivub2qRrDt+mePwOU
	NOKqeMBV1Dd5L76Dcq7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNRbT-003AXu-QA; Fri, 25 Feb 2022 03:49:11 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNRbQ-003AVK-BT
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 03:49:10 +0000
Received: by mail-oo1-xc31.google.com with SMTP id
 w10-20020a4ae08a000000b0031bdf7a6d76so4656886oos.10
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 19:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iWhQoexzMJ4YVq6mliMw6qRbb7ug6Rs0Kh0Av2DrVHY=;
 b=ClafonPf8HIXuz2w1Ts+14JW+qjZzdQPIpJVXJbY65wEbjP56oQVustgTZlrh4EjNt
 Bq4b0cHnS+z/i7waQ/a3TedWx8W1Gi2ERBuaoPIQG6yAOIvAlOpcDI4keYI4Rf2ElQXg
 6ItH0NdOhGuQ3+VSO6WejJtF+ZXZsIOZ+azBgFOhE08FTE2+CLHlwqQrzStB0+oFYaao
 b8EBwCmdeaDzUqP8rGBfX9WTRG4Ya5JKYNPlpgPLU1OmgtUoyCDGQfFtXPvaP9biSL1k
 ml/tGPKK25ATmtyljNBDBFHj2VdM3/vsOFaeE+eFS1nMF/DaKegEAkXscMlsZZ5VgKMo
 A5zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iWhQoexzMJ4YVq6mliMw6qRbb7ug6Rs0Kh0Av2DrVHY=;
 b=g0sX1ajImcCZnIfinzbFUmUFFc07NnNg+r4jHCprkUcJ9oO/Jnfp6SDuxe+nqjJSRM
 TGYQdeEebT797dpVCxonpx030XLnRjPnaqbqKFSEfhB62G9xyJshJGNr+8W3tTxHKabB
 wppt/r6Eh6y+/EQki2Zlv3kbInMHoDvUo1d73GpsenNjO9cjoIdXQXxezzCyfOPowdhF
 H0qLyWA+it1ahVsADQCKKUUWOy2cwg48WSl0cPBW0zvH1vYgngxllFUZZ6N+iiCJH7Xe
 gA6jijT1eBxY3FAkvN8NqydubFLGiPDm429FNsAMY88dWz/vGUGrIbwJWmvmoeAzYW81
 +XBg==
X-Gm-Message-State: AOAM532PplRS/KlX5WaX+hHHLrnrLxTmXmjIWFIEaKX21SYXnsqfy1UO
 4NOnbxV/HU17YJk9om77Emb3lg==
X-Google-Smtp-Source: ABdhPJx6Aal5qcCZhdiDZiVPcmRXuc/9MkCtFBvvqaqJlQvMI9MjfC49G+hBO7uxjQUysO8MZkuW+w==
X-Received: by 2002:a05:6870:c888:b0:d4:43c3:ed64 with SMTP id
 er8-20020a056870c88800b000d443c3ed64mr585528oab.110.1645760947119; 
 Thu, 24 Feb 2022 19:49:07 -0800 (PST)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 a10-20020a056808120a00b002d404a71444sm664088oil.35.2022.02.24.19.49.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 19:49:06 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,
 qmp: add sc8180x and sc8280xp ufs compatibles
Date: Thu, 24 Feb 2022 19:51:04 -0800
Message-Id: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_194908_470964_A5875640 
X-CRM114-Status: UNSURE (   6.95  )
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

Add compatible for the UFS PHY found in the Qualcomm SC8280XP platform
and document the required clocks for this and the SC8180X UFS PHY.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Fixed indentation

 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e417cd667997..e20d9b087bb8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
+      - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
@@ -280,6 +281,8 @@ allOf:
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
     then:
       properties:
         clocks:
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
