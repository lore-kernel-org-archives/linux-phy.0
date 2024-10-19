Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68ADFD3C919
	for <linux-phy@archiver.kernel.org>; Sat, 19 Oct 2024 15:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zstvt6d89DHT9twNyTeI5zQRw/vah82X2oH60AqEOaA=; b=D+TDP4nI0WpBYE
	reRblWJ8M5Q3bWgJUS21JR9P6iGtf/CrRA/eKmf8KQkyj2BFUnToDKa8HTePPmvf7bCX/Vkw+i+1S
	75DZKpiLJsfx559sb1kCH6EWbGj9yb9+0EvWL+hnORNmNZ5jmpY1Gc7dYA0rk3iz7/X884yp9jTaB
	iStOoPIC5JuNzVGghOUMI0023YIvXHU6jN1r755Hf4xwYPWrVLgNUjvvyuNmiqlYLzNyh3Gyiqq9R
	rMg3ybFCXLzOLKU/FAApIahKtd9hKYlOR3GWF+Zo6fuP4gILV/Yf0BCm/S4nzdiqe5HRkI14Qdyjg
	hNzyNUFjqS8Ik/DwTrCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2BdW-00000003XL9-3cIs;
	Sat, 19 Oct 2024 15:45:02 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2BdU-00000003XK3-1yjT
	for linux-phy@lists.infradead.org;
	Sat, 19 Oct 2024 15:45:01 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-539e690479cso3394519e87.3
        for <linux-phy@lists.infradead.org>; Sat, 19 Oct 2024 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729352699; x=1729957499; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dq+HZX/YrY3XCimbXKEs5fGXUV/6PLqs5QlWH/wMocE=;
        b=MEjvSL93+1ax5dF6oRbZ96MeU/ndEWsOpwNOJ/CBCL5ioZQCdrbXv3rWimmfDaWzM1
         fl5v0ISCaGUuE3aGre2/gcZSY/qQllSvl85uVCmul2HizLQfDq3WbotoWOETwlQz1zJD
         STtyeyLneRQ1v1Y8j6uyZG9ESOwbrKr6Dn2r3ZmXLacL8C3dIVG9YVmBAsUuowqHF8cM
         qebaNoYXun++0nGCbMNkVry5mP+PBuZLqspYjVnLIihhaQY6U8xIedguy6HsQNrR7aSS
         DoTjG+TZ4DVepBRovNdu0qGbgT5XpsN6eClJiHPFXXFZybEQSJOlZhdqY58gUZ+Ar8sJ
         m2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729352699; x=1729957499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dq+HZX/YrY3XCimbXKEs5fGXUV/6PLqs5QlWH/wMocE=;
        b=VpSOZ2FJM337OnoU4b6yRbIk+fU09VTCaRDGoCFcxZGDzKzVW+onl0IddowL1urFHO
         exVeQgymkfKMmlPyX5kP0V5SYPOl8I8tFJuM9ZQW6JLyGOq0mupWp5WHj3S96/eF7+E9
         TJPY1UY1Uq3DJbaecG94vxJvTHshXKwYUSkK7Tt/9hoynp95BtWEtqdNZcqZLIpSsDMr
         N9TzQVu+h2/QTQVT/2ih7isrN7YPAvmh66AEdH7n0FLBXPi0M23KIQPCycAobv4IWPhw
         ehMSjM4eVyhAm5oUS5KjWIg3/SeD0RYLuZp91beS+EWZ2U2yfD8d3TYIrqpgIwftno5Y
         Ew0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXKxDC6aaMG6aqpxkwEKLkmblridj4Lvx70ze4o07xUtIGQPvtue/kdKY4WJhV5kxXaAGmZWWX9WdI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMBfvgSo9oEtN82X3gbmWuPUCNputPnXBI61sfr3lMWbd1tewP
	QiTiBB/hh7nQC+4HWJ/cklitsx09fWCvIb13A5KXFBYqXSrm642VnISxGVKVdr0=
X-Google-Smtp-Source: AGHT+IGhXVBdyhEztuYCChzX7d60nxxES2ujUzXYN4+7ENwUA6EGV+gwyxeXar8eIhGtAYopVVe84w==
X-Received: by 2002:a05:6512:6c4:b0:539:8f4d:a7ca with SMTP id 2adb3069b0e04-53a15507f82mr3258338e87.50.1729352698584;
        Sat, 19 Oct 2024 08:44:58 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211401sm562854e87.249.2024.10.19.08.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 08:44:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 19 Oct 2024 18:44:50 +0300
Subject: [PATCH 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb32dp: Add
 SAR2130P compatible
MIME-Version: 1.0
Message-Id: <20241019-sar2130p-phys-v1-1-bf06fcea2421@linaro.org>
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
In-Reply-To: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1186;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7YeWftVlP2Q/gQUZRfbjxaxvlZtz7wnpUr40ZoRjqrc=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE9P04c176Lp6PlkKHTtQNcyBZlmQqiRmS90eL
 BqCRp/dG1KJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPT9AAKCRAU23LtvoBl
 uLwREAC/Rot4b1mZDwpJkc19mL9TWbVb4G7FYdhmYx0lS0TPeLkuKAF5GGgvRkUz+Gw98ONtcPL
 x8FMGvCINy4j4Rzklsp3JhvEXwWB2DnEEQ6AJR8JQcjh0y4L8aV7J8f7D5tfh1iT3O0KFndwwCJ
 C9asvyApUBtYVNB8Uc9zXApjrRwYSKsVKQpwSSNERy81HZUGpHAtNIixGk4DWZ5snbeHrCEdUcL
 V5AsyjvJzvnuaSIAbziYxNBleOu36T1g6Dhp6PcnJqjY6+xw99sfVAeQO3LtJGm+cYvn4UTl6mT
 S8l768DGzojR1qt6sITTvpuLYEKHHyR4W8JJzj3izsQke9HBZpI7i+I9LgLhscwRVOCxt0TGYBG
 O5pdm6NA1IJRN9kipSwYSo89tTJjsC5LztG/YhncjZVBVIBk/S4GpogN6oHpReeTGK2jpgIKZSp
 9mxiKSc27AFg0y8HaD3Fx2PwSfLec6KC7TOSQRsIjQDRNBk7moR2BpYUop0VxWco3MZOUDfA6lJ
 iVzKhquWsBzHZiUxtTX/1ZCjkGB+mf8xa3Cr8vvWDWM73cA9uyBCSSsw23n0ncj0N0+EpgMXf0v
 2egTt5NoY9Gvrjdk3dqM87gcYXQd2LpPsf3ULsmUJojY7c3xLMeJRn7e0Cv2mjvpxcxOCkAIr+v
 lpNUmQvwR/pEssg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_084500_549722_9380CD4B 
X-CRM114-Status: UNSURE (   6.96  )
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

Document compatible for the USB+DP Combo PHY on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 2d0d7e9e643117f5ec625e49270ac94c70603e7e..358a6736a951ca5db7cff7385b3657976a667358 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
       - qcom,sc8180x-qmp-usb3-dp-phy
@@ -127,6 +128,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
