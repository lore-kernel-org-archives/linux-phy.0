Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 893E9C48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 15:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWTvRryWV8xAvdSSyBfMfQcdATja467egRj9vCmVsmU=; b=ajpbV4OsChhbjx
	YV0VPPF6yisEfIbJLqpkvOWmHgxNqbVjADoVxxx3XAY4EUkXEeFlbaz7YveIpZmVBQK+ahuCLcn8b
	XY171a2DTIuy34yCcAZ6rOXHQOfoTZ5TQomydLcqqCKd7IJaI0l13ez4Q4L6F2L2poKFD3Wt+3j1M
	a8mHs75P1b+MpaFQabx0SN/hky5gu+Wb861JDvD7xBDsdibBQrPHbVWgeZtbnzmBMdrsmYjAL3HhZ
	4ijaWma1fttV7Ann4FFzbWBZb0WpKe6Mo+qh/tzdf9YCzUoltPSgrc8SRfV+YXv6iFsBvhgPAPbJP
	k5DDDr+dkA5mr5FMZPcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSaB-0000000HKv5-0rcc;
	Fri, 09 Feb 2024 15:14:27 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYSa7-0000000HKtn-1Swn
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 15:14:24 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-55f279dca99so1635158a12.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Feb 2024 07:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707491661; x=1708096461; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z1/il2Q9wQBYKmAz0nVoOh3RcRm83j20v/creeLYcwA=;
        b=US294oQvt4LOG0nN5Pl2tqa1PukjIroS9Uep5l9S58Ttj9CrCwAkWPEs2zxhRK4F66
         33IEFOv2x+0mn7HXTL5YdH/yMY09k2Hs9RWmuwodrReLKDMkWHpuGCcD4XIlxL1ySC6m
         pS367BWGwsGbc2/F+9IisRFgW4W6PH7+Z/SH2j0gSdjQO1MEr16Ov85LNCiQq8Uy6IKy
         XPIInpKlipa7Hw7YUouHdVwAdXAFUObqXNH+pvG23tzBWDJn1/9UMnrqwTcgXD1bcm8A
         NKPhyvatsRf1n8+ky7OL1lun0ZQYsm5jVAskkc5Xe9JSn7Bs21tzeyZqNYBwUDuJU16W
         HlHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707491661; x=1708096461;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z1/il2Q9wQBYKmAz0nVoOh3RcRm83j20v/creeLYcwA=;
        b=HngT6x6A9FulPiVLTzMjkJpHAcBH+/GpN4pjLB4NUXOqqzaG+kcoMJn3jCZ6DTktcH
         jH8EBCUXVSH/L5DX9EmqeyG/tOWvW71U8B8H9PTv9GrAOxswb+gdkR+JHjq+YN6b9nLC
         XRaG2j0frD/DzV6kzl5YobLspdb7RFLxnoltMQZaeQDwofSZrbwkNeqD4tiuoITFlEfH
         64ckxFL3ZA9bCCZI9GoM72rxdMR9X1Q3WUhL9TbfsJlxLTMp5FdHi3+v4MMzoTuYBIBV
         iMp6PCLGr4QpGZvF6G9vfOAaKbsjOJMtuR07Y5j23KEBTFW4lcAgkC8DCyDWZPlzKc6s
         ULfA==
X-Forwarded-Encrypted: i=1; AJvYcCUsx5RcJr4HD/ABCBklxBCe2DMEbiA11Ty4+CGdqHE8zoN1VY+vH5hxUb+MtTHwQKUm+8bKSdNRi6L1KkVNiSyYBuCqGn2erFs14wLzIA==
X-Gm-Message-State: AOJu0Yx1ZS47Y8lBU7iiYdHq5RYSjgZk/bMP4mhbvkOtTUH/bfGZvc8a
	0LqyPn0T8lvqH9U1S/XPQp4Rl855aMVKzMDjUuB541L2oUO8JKpJN9pC/pzniQU=
X-Google-Smtp-Source: AGHT+IFQx2zcDnsBKcteo9LmWHs24zhxEU+vtkb5S0F1UgsqpxC9T5bB794YwK49xQmk/LdIM4Dyrg==
X-Received: by 2002:a05:6402:281:b0:560:5fc:4c9e with SMTP id l1-20020a056402028100b0056005fc4c9emr1323018edv.41.1707491661569;
        Fri, 09 Feb 2024 07:14:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVc/SW1j2mzZQHl76VPOwGOQYPAS6PUbLDGZ/dNvVAx6FhHaZ8kQy10UH1kUwnOoBN5FHoOSx3UIRLGQA1+5CwXLynfTOkkCiVUvlX6yh9e01KJmqyw/lispncx1j7AizlPyn8kojQUslpIP6yuwFOdPlfrVync1/mhxGhiyRPvlKeHr8JbYLKDuooWfyIkAjraKInM1HKVcJyKvRR+VBhMCTabQMAOBBR24Q1DvyEebfcQf/7GkJUAtsVUiqCLmGT88BRZ72D9PiIHO3PZ6tQLpV0vwVyylCsU3PfFcw0Q4BFGrk5ObKpkpbdnAXqSbOdeAG+XeXfpLoGVUk9MG7YVGH+DaytxRepXjSpkBYTsxkZAo+y6mbq08exi4rr5vCxHHF51Mw==
Received: from [127.0.1.1] ([62.231.97.49])
        by smtp.gmail.com with ESMTPSA id k6-20020a05640212c600b0055ef56f4575sm860240edx.39.2024.02.09.07.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 07:14:21 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 09 Feb 2024 17:14:09 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for SMB2360
MIME-Version: 1.0
Message-Id: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-1-af2ca4d95a67@linaro.org>
References: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
In-Reply-To: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=842; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=nlvI7EZuEJ/t7vpE1HQr6Bfm+OHJLNdD1aQwrjw/DeQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlxkFJpdc4rGZiRQnENaXSOF7rvgvpH8dOlcKuu
 NHk48bJM6CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZcZBSQAKCRAbX0TJAJUV
 VhNuD/0djAOxaAZ2MlMyXYl5Gy47cInI9gLtan/9A8H8m3rsP+R6LgaS1PD+jxR/NG5de3zHkAV
 REa6Zu84k6MMNWNy5bcYJEfyqj+HEHcVHhDjqAL6D6xQhG/t0V583YeIiIKPamud2cTBXLjLUm8
 dfVD/Mr/ksA38SoXK6bFSArbFZ6/6921dYnNZ8tl3AuiAxhz8aiCfKObhFiMyUyxOXxYPEBzueo
 CjYjWpPiPLpjXmfJPpEvWGj8Vt7YLg+3LOJd/UEfs16O84Qo/9B32C3wZEX3bitU9Rqu/a7LChM
 AdaclbyURqPQ4Q7/YQ/55ODag8ftYHi5xSc+G+/9cC0dfguuHmnDJqrF5F5thE5qomPnUZ0k3g/
 NpfqxRV7QcRb2MGK+G6I235ChBS90CrdhmjL40o5wTf9KO2Y7exoW9/QX3JrxzE2fi+hDlw6EYC
 MSw6xN85IDxMhm1u8Czu46ub+EjU/FlqCycdzACLTOrlyE4aWC3U8Bt0OSROB4Lrj0YTnCwNPWz
 Z20rsJD0BdfVmukEo4wQVjWANngs2brR0SKM3i8pVBlkTy4hvwyfDzxL+4eyXxbTSIEmnohsoHD
 /PeiW4RIh3UaPGXqHsgs8RQ3Lk9beOUfnyoN3ZKTqgExo/AS/+MHbrYi3oX4l3CILisH2mQNsjW
 VVOt+gFYk3IlljA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_071423_424130_66D977A0 
X-CRM114-Status: UNSURE (   7.05  )
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

Add a dt-bindings compatible string for the Qualcomm's SMB2360 PMIC.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 24c733c10e0e..6be20c157568 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,pm7550ba-eusb2-repeater
           - const: qcom,pm8550b-eusb2-repeater
       - const: qcom,pm8550b-eusb2-repeater
+      - const: qcom,smb2360-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
