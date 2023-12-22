Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52600C4706C
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qGqaok1h3neDLSeCFVfC57f/EzaxkaA9vZiqgCpR1k=; b=XFje0fCcBBuUWi
	Ve3sgUS5cRX2cas0eMJI/IOG7YywJwBPRRTlIMerhrcnqBe506NG6YMHLZtQFcBTdcylWnCbR7Xuc
	/5EGDVkdeB08SmNaqQjOkLfLQwX9FUqXZQ7L9Bo6JI5bcNu3/XPzxtrXhmZ2nFy6a6yhnJKBhhk6i
	SfTaRYXf/4y5XnZUjotaPrBhyTtGrjGzIvlJ03qqvMCz5ViAWj0rYJyGkkkK0hxXhVUM1fu7eHQEy
	hJJrIw5e5RKZhXA63N3PVP1pmR3TX65kdU2S/Iok+9fIl8KuPzQic6xKXNoxx2/Z4sATus9lwI+YT
	UjXgJJLcfjw+cU3bAQ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcxw-005Z2h-30;
	Fri, 22 Dec 2023 10:41:16 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcxu-005Z1n-17
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:41:15 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40b5155e154so20716405e9.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 02:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703241669; x=1703846469; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8tOWdLJ/qZbSy8WR0cdDIT9XcPRLZLEVuRq3Zyqwz0U=;
        b=IFuiRloSwI4fVafleVWNCkPTNP0kRfD8GNtbp1NqXGgnEQHCQto9N+ibJAdT0O1ZR4
         U2AnIcDUcBDN7UjFOUcrIwboN8EGCt1jrny/GR3VN+xfEF+B85g00gMUOKHskN6DlV/K
         dAdG2Az3hD2zrpAbnCVaZ0M+c4cLtLWle5l2LA2Mjhkbrk8F5kYwzr7/hwGDoqKrFjti
         k0ez+IboC9b/QnhZ1VAM0iuFtIXCB8RRUe0n5uYyxG5yRjJ5REEICW56+Y+VWxo57VT8
         1h6EC0nWSPhhq4mJIf/rWGZI9Opr2nDXjK6TagdgW/SInwi85ciiBIoIpID4f405s0EQ
         rc6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703241669; x=1703846469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8tOWdLJ/qZbSy8WR0cdDIT9XcPRLZLEVuRq3Zyqwz0U=;
        b=du40ikWVMUvbA8Dy2GwYSM+U19RdFyAVKsDfuaqBkTa/1QfojgLWlfVbsz7xhSCUah
         ef6v97NDMzJBXJrhgVZ0SPlxjkjlTYB9OfBkQpvD6e1J/5aIo+6pVQADtFSUlf8IHo/u
         HLoxq0q4vyAtIkbK92qVMZbTvnyTyNgyYw+8D4fnJL6noOXs8t4QQig8tzkNy8YL2rhb
         IPlBR5CHFHO+teQOkv8QziMp42E3dgRHdxTNCgNJyA+5YFO+pjHXwU7RFpD9SEuG2QFo
         y2wzw1pI9OklTZaIJSeEhAI1eXUY4KKvAVRU/ycE5MGFzdOu5QRFBIhn9Gm+4fqukPGE
         MU8Q==
X-Gm-Message-State: AOJu0YzEgSoC33wbKVr53mzgAV5CZpPkf1Rg7Tzxd7Ig4Z4B6YMmd5za
	jQp/wM2IEa9EUaTcSwVQWTbr1RElcUYtWQ==
X-Google-Smtp-Source: AGHT+IHlgGpHsPmPZ6o7F+D0KoHY/OSoELcVoth/eynYcp3Ou/FckjiQSMxcHoGW4tX/Ngg2HZk+mQ==
X-Received: by 2002:a05:600c:5494:b0:40d:44e5:9baa with SMTP id iv20-20020a05600c549400b0040d44e59baamr439971wmb.212.1703241668849;
        Fri, 22 Dec 2023 02:41:08 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id v11-20020a05600c470b00b0040c5cf930e6sm6348728wmo.19.2023.12.22.02.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 02:41:08 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 22 Dec 2023 12:40:53 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document
 the X1E80100 QMP PCIe PHYs
MIME-Version: 1.0
Message-Id: <20231222-x1e80100-phy-pcie-v1-1-b74ac13390bf@linaro.org>
References: <20231222-x1e80100-phy-pcie-v1-0-b74ac13390bf@linaro.org>
In-Reply-To: <20231222-x1e80100-phy-pcie-v1-0-b74ac13390bf@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1502; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=R8BI8+v89/SHzkE5IaFv+EDCthFqId0vtwYtd9w6b4o=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhWe/heco18MecLvIMzZeQfAX3Pk29W9uQ8KYS
 +Y2M9wmeHSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYVnvwAKCRAbX0TJAJUV
 VnecEACCZHTNHmkVyl77Yx9p32RdzMgfuZ22r1gkMXlyl4dxu1RET8hK6+gSdyxXaDjgXe1NKul
 qclkUvLEjTu6PakpyQDb4TJrcKHZ00YHcl56HPw/TJM9QYd1ZE7Bqf1pOLQS2L8YE61Yxg/5ENJ
 7vdmfZEpVJTM0RE4klO4UJhrYtVe/QyNMQnmr842sKZ72QtSnC9dvGIc2ZLr5VL/YM3/r5hy6fY
 3OM6GSxCIJYe7GrWcHTqS5qUtGR/aP0ejBaOTR0nI9SBOglMCm5RIM9eMte0xbhP6JuLe6LLWLQ
 UR6AJKq6h+rV6vhUleT/R4WpzD8s+lUu3VPKISE3tIcbyKU3/oSAKvN0089jLFe35kLMa77Ax0k
 MrR7sm6PGRFDhvGRLNFW0lDnxW5UabLH32DxCEcVJq5AHrSDBhx4FHr9jRWQl8ADc/ZSLBJ2zRN
 s84n+kEUZVEzKtqX4BJhGKuWKjYOGmrcsMSD3QTUTbQBURDBOaGn5M9a7AvKTv7T2sUblxQSlvp
 rqfNjdBSMAHL1geFWz6B2ZCD6xCyBpKrOX5luGtkB323XtzH2jGdpSRzMgddzegpCk+yVFrOGJV
 fjMq9tz/nICn2kE4mSEo+HuYSP6z8gM8oVcONgB7et8rinfx9AYyLvH4gr8IZIldPuhVLZpT9e3
 bVhOWiygxz9H4TA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_024114_381632_2BADB09E 
X-CRM114-Status: UNSURE (   6.78  )
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

Document the QMP PCIe PHYs on the X1E80100 platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 6c03f2d5fca3..ba966a78a128 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -38,6 +38,8 @@ properties:
       - qcom,sm8550-qmp-gen4x2-pcie-phy
       - qcom,sm8650-qmp-gen3x2-pcie-phy
       - qcom,sm8650-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen3x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
@@ -151,6 +153,8 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen3x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
@@ -194,6 +198,8 @@ allOf:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:
         resets:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
