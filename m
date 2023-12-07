Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0C65C46CA3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 13:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqMYYsLrTXmoPRd7G/FMd/rsmpBUKxuEEknO2NfH/Ro=; b=Dm1aD5zzr9xT2Y
	tmrOyxoEM+N1ddKw+uiYDg+YAZYNXXmAcyluDA/8w1OQ8ZFRCM+yXRt9ftRJP+SWkfbQ9hfr2Vy0p
	UjdUV4qfGEBd/OUZjXXhb8LZk8JWAEn9Orz8ZTuoosUvOMmjK6Tw/3idpd3+CCENSJBvuAdSV+RB6
	P3Xp+wURGigeg8r1O/8nOY/xJINpdME/mNXQG5XzzDjvoTK6U7uY8+5ehr9quwgKod41s4PvMF34c
	aTOccVFvzv3F5OMMfbGJ7L17xPaTG6o98TO2l3wjXrF+jiYUb/QRG6ghEedVHtUtvFWCOwegxdFuW
	h2n98VkI3YZDBwDI307w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEFR-00CsmS-1v;
	Thu, 07 Dec 2023 13:17:01 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEFN-00Cskq-3C
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 13:16:59 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c9f85eff28so10440071fa.3
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 05:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701955014; x=1702559814; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rk8qsAP+TFlPc9+aBIEsrkcMIIW7Ca+8Wo1Dz8GCExE=;
        b=La4M8kRPku62Pv8t7fU7FdYmQJNCPbTWrOQr1F+iX2sg6t5rz6S6G4ycb6XknYmm/d
         Y2gzhyUdPdzPSJ8S2GutsBcgWxt4ccpDRXxgmQ32jG+U3UvrpDF9kk2er0PsUduWzUcF
         sz1vxQu6rNymeSu3GYuu7D/p4RBe/riT7olndlN5WKF4NuSWbakdTku4adfln4WFfQhQ
         NwE1wywrl8idcCMEnq6bjDNi2BXdj3bVU5/kshw8xyCJQ78ZjOjzMtxBMQuS3i5HWzSY
         yahwGGcM57B+DjN8I7DTXfkitDzgurOWW7x1BSezJ74uD9M/vZq1BAuTHeExmfe5PEZF
         sPmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701955014; x=1702559814;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rk8qsAP+TFlPc9+aBIEsrkcMIIW7Ca+8Wo1Dz8GCExE=;
        b=E3No8qx9u1Lv8f2trJjTTfQyi9la8+mlRrnbAYEfltIHlH1B30di8+NfdUzsey20nv
         FeBGbVFQmAfJuwscvtd4+2Fwmo8GepA8ShCvX90MPUftLdgxVlRZ32NdpuJQ4PuMGFhl
         x2FkK0mdaWuaIRMF/HktqVXV4yBlS86Uia9DmUS6xmMPZmNcdeODlW+81Izh//P3QwXe
         s1R7SQsVs+YdAbA1jRa779ohk2f+6OUPDJZynMhUDK4b8/X8AE+jeaSWS5hkZ+gAIDak
         /4sjfyQ/ojDnEPY3vzfzIPMqujnWQwILnsAQLw44NBecDY9DeWQS7a8NJiZN/azWRd1f
         lxEg==
X-Gm-Message-State: AOJu0YybWYc9yboJyP3BqMUNLzdVlDuz8iHfzbJW5OMyapd91IUMYifK
	k/RXxih8Q7FPwB3OcF0gqgoEbQ==
X-Google-Smtp-Source: AGHT+IFGDrNGI3ZLhjzr4c4hGQgz6xvhbmIM3ZCtrclnigWgEf/f2pmFXpCsGhKpLrzQPADENTmIbg==
X-Received: by 2002:a05:651c:2129:b0:2ca:2425:e069 with SMTP id a41-20020a05651c212900b002ca2425e069mr2075467ljq.85.1701955014160;
        Thu, 07 Dec 2023 05:16:54 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id d8-20020a170906040800b00a1d01b11498sm815233eja.24.2023.12.07.05.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 05:16:53 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 15:16:41 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document X1E80100 compatible
MIME-Version: 1.0
Message-Id: <20231201-x1e80100-phy-combo-v1-1-6938ec41f3ac@linaro.org>
References: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org>
In-Reply-To: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1070; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=+KllDdHtSqAPF3nrZrVao8XwpqtX0txm4oMk2jjIl7w=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlccXA4kvy/jYG73+UFQnfH+xstGVNl/jY15osx
 9jCCD09aIeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXHFwAAKCRAbX0TJAJUV
 VgN8D/99psDcOee6DbE+I1kLhwpqH/rhcAkgSWsOMChYH/kkP972vTxtQZhdmzH39ZGuM5DDjy+
 tKUhmMICnG3HRw5QqbZWZMQmUi5e5xhO8wUBF+uEFrABJyGPlWvoFqBzv21SMmtMyBTGlT073kd
 TTrfZHTLlNMBB1ByIJ2ZVfUKiV6m89E4BBfOs3Fl3NPEIYkKI783FxsB6iu+tmLLRRcLHCevzCx
 x3eRCnPwAUld1PHMGKNykTm50AZ6HN98BugWJX++Y8Y44HqnuwVwpnytwCNHJbjFby9lX9uHEwT
 AhFuwpx9ptyFHuDbVk/67ZLAtC2t36M8W4EzJDCW8Jebz3w4UHoeQvcKTG9SY7newf7kCJ2lV3r
 FZ+myR1Ejhe8iITQnJECwIoXrWxcOR6j6/4GMVZZ4NdMfZI/4Mw3w4AdPGzV/SMqxlckATQtvLr
 EBK8IlOvSDWhPqTfb7ZIgps1+znnnZDO6HfbxgDMEZZap5SjTIErUAIXu5V7p/KuW5hzTKX2tmn
 +GLNiSXhCuCf57PG6WW7ptp+o+XMJxOOSobstX/6v7VWBLbNaYlTeJci6I94neFaJCmMKZhzNGg
 aZLB/qXKjQlccB6HjeCC6M+Lk80en4HkYBHj9OM3H5BtOmL3ofFslIDiaOVMycA9bulguFUJTGg
 d0IHYQAOT5pArVw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_051658_028242_378D1E65 
X-CRM114-Status: UNSURE (   7.62  )
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

Add the X1E80100 compatible to the list.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index ae83cb8cb21f..159a4a37dec3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -28,6 +28,7 @@ properties:
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
       - qcom,sm8650-qmp-usb3-dp-phy
+      - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -130,6 +131,7 @@ allOf:
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
             - qcom,sm8650-qmp-usb3-dp-phy
+            - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:
         - power-domains

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
