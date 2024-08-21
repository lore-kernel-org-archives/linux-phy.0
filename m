Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 901E3C52D6F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQ6bRmsSvvxn7OI2heTcG31S+YfmqxvZ02O1fTSkxxI=; b=qB8a75ZIClUSi1
	YqWmMN/QS30MbDhilX0OQi3D2yLq42hUnCBKVoLnr6/CVQWTkGduEQ85vQiVIK64W+8/yT27lZ0hK
	Ih0GdgnSDmFNW3mqW/dygRrr+IZjMh6dNIu+RIXgwx+nOEuhzHHxmg3j64Zvwti0zZwi4Fusl+FLM
	OBD0CrfgKBPBxED97MNfdh26UKPioDSbclfR7OBDWyS9+yQB/+KnrG3V/H8q4HmZz8wfJX4Coe20U
	4rGf4n/sUe0DjNK6khxhI75mOFr9yqUDRDZ9TQUcwdgoqdTwEdf3JJuH8tHgzdyYuKuPp4WKJQIhM
	aZBw68ZmYE3gzjGmXdpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggti-000000087Et-1Crr;
	Wed, 21 Aug 2024 08:40:54 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggsE-000000086uc-0zrh
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 08:39:23 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ef2d96164aso72585901fa.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 01:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724229560; x=1724834360; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XW5mUnNxro8riCIyxaHkbcC2c1AimCjEWCDq55C4owo=;
        b=xm2zujAzodCsm37wsJtXWxWofQe463MZjLKNnbi3ljJRiefZkrnVcSpjwKXHSZBR9k
         yBJZ039FHgiQOR7iMMRxK7UsbMaRKUDRPLxLiQTGr83Efk+cRw+tloSbZdYtHqDoCe3Q
         FAeU2vXu0+bPBPygnLMlLouUwM7+gSwwxS+vSH/1L+1xOYLvuYOyvLqQfAdEdJth4pPU
         oMQDPmP3LcDNX+EmnAEat56K8V8HVr/1NFTMs+KRxmOp03KCVTdJLz6Yz2YCL6LnIYcI
         onw5hXM7Y8bRQ+yrZI90XA1plBvjtKJ2Bw53a2rY61lFGvzgbpHs5mJuKZsHZIItQmBz
         N1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724229560; x=1724834360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XW5mUnNxro8riCIyxaHkbcC2c1AimCjEWCDq55C4owo=;
        b=W0Lfo4iMORVdxyhbL+njBhjBhGlXV38TqyAJfoCBdz0jOU1X6Y/R98dxH1r7sgGYbr
         h++Xr4QuTsjszsJEqHOWYgLUTv4q5AQCXTDIy13K4kz6DW9iqQ/zEyCc9S5OSoAx5PCq
         bwlzKCXi8h0UsTkK7B+DJjRW6a7unkU5l6DVWRZ4TnSxiTTR2ejcJljj+s7tYygSg8m2
         KhqD65HB/BhEPlrxtRhnVc8+HlknI7z+Fz6Rk9RVbi/YHIN6T6V2oTN1TCo/G0KTT4DL
         a+w+pHf4QtFTBB/7Qp5RvODAROxMZgvjKyTPEoP4K8XHptVXxmqVG4y9MAbayy/tVRrq
         vObA==
X-Forwarded-Encrypted: i=1; AJvYcCVtGsEl8aGidQWn3/jB4Modhi/ZeO0WysulBpkdjXsamJuGr/s2apZ/8rlKNG6pFLMdhOSlOaz7mTM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+kDQU9COU7vlD4c4Fq8sjn7bNL5Ayk4cg9tr3YbzJWdF8n0Ep
	Noov3FglGKbzEDyN7CfoRF3djiVyg9bCipEYIbM6gQuhh+IgPZbx1udmkU/aN5Q=
X-Google-Smtp-Source: AGHT+IERO+IDQyEBp/hErnAumhznnmvnA3dFgXMO7vZvWt4uQGrSdNVPCWdcTB6bCEgyLm2lNmDM0w==
X-Received: by 2002:a05:651c:b12:b0:2ef:26f2:d3e2 with SMTP id 38308e7fff4ca-2f3fd22519bmr3157451fa.2.1724229559656;
        Wed, 21 Aug 2024 01:39:19 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bebc0817a8sm7785019a12.84.2024.08.21.01.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 01:39:19 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Aug 2024 11:39:00 +0300
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
MIME-Version: 1.0
Message-Id: <20240821-x1e80100-phy-add-gen4x4-v2-1-c34db42230e9@linaro.org>
References: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
In-Reply-To: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1471; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=0hjm0dG0v8Da7V655fPK+1NlV7mcfIrkrKbGwkw3CAw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmxaeyZXFTjg8Mcst9z+XweZ39L4hKqTRTHYjv4
 hZfQCe4LEiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsWnsgAKCRAbX0TJAJUV
 VlauEAC0aywWt3dkE/aKcT3+0s01lx7RDGRvwXYEkB4sc1i1pN2MW7fxw8dBtY95ed05z/SLakb
 P5dyowNz+CtjoOUmZX4ZuNrDOCuS50RkTkDk8GiKJHF+CT7jCDCaR209SZQXVRXEcbxC0DH9zle
 MC+nENCbfJ4DV3WItRt6V0bxjcYA8qRWa1wrwNQ7xIl/gsrhvRj3b3obYgDp5enIE/3KR3JQ2jN
 KkGOjPxbyG9AhiusOE963s2QY264GHHLARqqVt++TtPl8uQ1bHbG5dK/OzD4faM+o8w3uuqVu86
 bYGRoLSKBYNq0bFqjf+E2iX8dOfaJIyUtHfQiLoM5XtRt+5xK/6T/U1zjyJQqQR1a/XTbP2Ng0v
 S/iYy6hUeAlec82mTabzRpohNsXlP8LJQFvQu2C/IE/Jhfyz76v/VDkWLeG/WTNwW89AP4KTbXB
 lscfEHhXaXkq1g46LSy5bZhQb8d14Hp24IOuNO4XIPteTzU9o9pzmPIYZ3ImsLtT0cXcoG3e+Ns
 7+rWRru2+eNyz2geJ7uvt+D01XL64IsHCvZCqead/tORbwTrk8jGV0D9jzAcaTd9DpYO2l59lDQ
 LCCHF+Fq8sqE791eHbZ1VMnXbpgwGJ1lNtDv7XO0In4RusHsxoPC3+K/unlBEbIFu95M0iZ2Dtx
 JP5ywwt53W20AKQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_013922_317846_9E534BF8 
X-CRM114-Status: UNSURE (   7.71  )
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

The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
2-lane mode. Document the 4-lane mode as a separate compatible.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 03dbd02cf9e7..dcf4fa55fbba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -40,6 +40,7 @@ properties:
       - qcom,sm8650-qmp-gen4x2-pcie-phy
       - qcom,x1e80100-qmp-gen3x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1
@@ -118,6 +119,7 @@ allOf:
           contains:
             enum:
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         reg:
@@ -169,6 +171,7 @@ allOf:
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
