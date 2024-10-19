Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A45F0D3C91C
	for <linux-phy@archiver.kernel.org>; Sat, 19 Oct 2024 15:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvHTz6+x42L9mLvAjvF8oKJ+McdSTkpwaNAiuk4RRsI=; b=OM6+oKC4weum+X
	SYEtHtIBDxWyGb4tYa4nAo8e6QQ20wyo1Psul3GbAYhIO4MyyXWkEcF5UjGBhWcyi+ZEk08Lu1boH
	ExgKFCRnNRi9P9RZPZNRJ7NA9DILd5O0FfsNYs+M4p4aZCiLc2tJSsQWEToGFMvyHbrF8EKvkTzWr
	jBhrg6ao2Xbtj7RPxV6AImBYPYvGy8IseUTuW1pw+zei83vQm8dVNiTKSVUFrgnhzNTJQQD9Z15SM
	AUNBFQf+01V4tTlB68AnnkPCsNYsU9MUAM55tS5CTKwSf/YMXBDadtJQuL1/C92cSm9p+RQlKP+6q
	wyBjMtRjfST+L4zscilg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2BdZ-00000003XM2-1R2B;
	Sat, 19 Oct 2024 15:45:05 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2BdX-00000003XKw-1bBl
	for linux-phy@lists.infradead.org;
	Sat, 19 Oct 2024 15:45:04 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-539f2b95775so3799289e87.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Oct 2024 08:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729352701; x=1729957501; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gYfkdNF3O8TZS4V0T1JegIJYADXSJj7bD5ghT8EX1Qg=;
        b=Wyf3ozl7EBm1lRUz4bQhSLsNAKnkM4tuh8Jde7si3heVdU3Miev+ucCE5+dRGIxzog
         1it51QU/EIQsQoEfYy18tDReBSO0M9uhOOaf4G13OZRBPVvsYowkpNzAdw6ikmJLBige
         qd39LV7D2ZBR0dVAxPM3A9KQrbCzYVKKgTVh1st77j9aEyvm6JxqM05J6rraah1ct2Rn
         WfBP4k9Kgka5fzLt4MpFmEPalfE2G5vm30Hi3zFUAckb6AZTUBAlimkSrjg/FgtV9vo7
         EYuwB6ufoBmZU0oe+HibCKrFqeniydyTkzQiyZD5JbiiYaNgyE3Ou73NAjz469sytf2G
         Bfyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729352701; x=1729957501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gYfkdNF3O8TZS4V0T1JegIJYADXSJj7bD5ghT8EX1Qg=;
        b=MDhxRr70sKIOa5JCkob40iyM/wva/Vex16XJOhwO4gZDg4iShRxf2hFz3hV3dIsQrw
         PLcN2JzONP8kTI2TAIq8BPfcKYzrvWh3AySiMGZTfdGpfgkcVX0frE1IOQ2zmXkm0/eo
         5Xbnf87kFknFYu5G+3ZzieKkZQyk2EKz5soUCFjocQY1uenw9UODi2HOCzM6iSh1/YPD
         vvCRYzOEASsT+H1HUzffQHffAe87SqQQMzhsBFyQ9qCLEZhIAcaCnacuronuIHsBJ1F4
         RLb5kopLYvzykjB5mt1FpLRE2L8upX90aHeEA36xasS5ZdYDM9WFeF7rvE6z+Y4080yz
         VIvw==
X-Forwarded-Encrypted: i=1; AJvYcCXZAF/v00GpUw7nDzqeoN35yYPOzHcV3QNecuRTHlY8e4j/J0NPoJkG+5YQr5kr/VyBY3R9U9cGeOY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpJyEw0obBALkjPQTxAFHPKlPyUKoE+oWZ1t6ltpdlhe2ZnpJp
	T7UrwQEvuJ3Ao4G0INRJredXMjcLnNuNBTOqkSdC5H6hXXo5OJOelGYWmTTUDhA=
X-Google-Smtp-Source: AGHT+IGH6Y5P6FyFHKtLYJ0fUjT05rH9kh6VARZhWP0R9zDdHuzkdQyoqFz2sXtSlq05GusZGgw/YA==
X-Received: by 2002:a05:6512:1188:b0:539:8f3c:4586 with SMTP id 2adb3069b0e04-53a154da832mr5560399e87.55.1729352701053;
        Sat, 19 Oct 2024 08:45:01 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211401sm562854e87.249.2024.10.19.08.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 08:44:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 19 Oct 2024 18:44:51 +0300
Subject: [PATCH 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 SAR2130P compatible
MIME-Version: 1.0
Message-Id: <20241019-sar2130p-phys-v1-2-bf06fcea2421@linaro.org>
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
In-Reply-To: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1242;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5Y/fABq9b4vk+PutXYP52URTjzKP/DzFXovrE11VWQU=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE9P0W3I/EDrNDCVj5yB0/w7HCAzPrYSmmTAYW
 KQgQDeBCxmJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPT9AAKCRAU23LtvoBl
 uIKXD/0T87NUhAJmFDsDGEks/ElPd0y0NKgCp/ExgE17orDaDiLFy2A4uL2VsI1ok63vOi8DT/8
 1dC2T3tv1Wznedh+WvW2wUi7d1BEGmtUswsmzovHCEL0CuXrQIFGPIckYWu8fKeLJe3X+3SgHbM
 WgJiuba5KMJpnGjlo7S2IN7bJ97QRmoL1eCGhU3ZXJ/82w7CH8Ades8G9+lkTv5SGuKIDpA2uX2
 3dFEyDdTkdcweBI86WW2rh/trWaxAbnVWqA9RNsjF6QryqBb6hS91qOCCe9n7TxeHr3DeQ1RG6+
 eOqIGyWv164RunqLJ4kJGWaaoLrJ7vfyaDvo/ATYDXPed9C9TX2xJPuViEzTUcXLsaFiit57dPi
 0wrXxLRGJdQggJTAm1czG9xLhWLUhHQ5EjqqlVBeGo0TQtcTcT93NWewoyrnsFs2ha70/chNh27
 sXIBYCg+cf5S6hLCdjtk5bb4DVUYUpo5h9J9HVxptVfU8/q0S3CB0KWm05H1MXzYQWHeuyaRXqc
 88b/0WcJzup88PE+ukO5i7KVtkZx3VIxHEsDc6Eywz3BWMF178wFR5Nm7YgfMTGXGrlzNf6Gfpf
 sBro9Hidm0BOKxf/lk5lNdxeF/r7potcps0lK9ZTqbvEcJpT0jw7vfSuyMtvK6Ezq/ZU3p67dB3
 Cm6WafXl4uirKYQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_084503_463455_6FA4EC61 
X-CRM114-Status: UNSURE (   7.04  )
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

Document compatible for the QMP PCIe PHY on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3c16330a58ec68da32486637e02ae89af9a06a3a..9b3b6fedd70ee924e7757ce531bdab0fb6a3cd8d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x4-pcie-phy
+      - qcom,sar2130p-qmp-gen3x2-pcie-phy
       - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
@@ -139,6 +140,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sar2130p-qmp-gen3x2-pcie-phy
               - qcom,sc8180x-qmp-pcie-phy
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
