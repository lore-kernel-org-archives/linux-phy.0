Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDCD2C678D5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 16:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQBFSeNIUZsCBAXsRn46nmuhqLxEHFbjJIUvPZnxaG8=; b=TumPD5TbMnB0ov
	KpyEy6bOjLkrrTtogvZGAzqjJodygDWdUk8qEFOoNgiLefHn0N8QWaLDKoqapfoelW7wgCdFrffhV
	qAdg1JVbyHC+dqP6TILuPS/+moYdIprBTsGJGQpTpzg9bIdgg3PRIvrBepCe6tlrWMGDOM5y7srcl
	5xoNB4ybVeI/DRoUYg3myl4zB6tQ812K90hYNsiY8tEeA6r3DK2K/Rr62RH94PMnTknmdc8nSXz2n
	u8+O5QoCsg6dTXyyKxuUsw9ZKnz6cdc+OXNKCb8PFlH9S/2wxiov6VAEuuUYuLn82WiyBcb+BfHOW
	2L4yex45hAJ8ZC7PRjYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUsFR-00D4tZ-CV; Wed, 22 Feb 2023 16:45:41 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7X-00CsWI-Bu
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:28 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 130so1966840pgg.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PaLsYMr6sPMtYqx6/6slHF8podsGBf53BiFDK64HXmc=;
        b=JEBZurARAxQd3WPnYht6AlUxWoexdJT4GuVbJuj2TNvtAmqOtDcuSHkAB+/FkThthL
         7qWRTZIn8jk+bsjchrH92/Lahul3ev6xyNyHIJm5gIrMjYloEcY8VW0pziQQR5cn9qgB
         po4lKozQvt01/1mGRD9OpAISz31pkXX16DmvKAc8FqOiZ3+oJyGMGpB9HoHlj44Kp5S/
         o+lF4v6FSjVeRx5MpCxDNa4ZQWORf1/2cBnavuyojKMSQ5ms9bLd7v9gCGwqAigA3FXW
         T6tOokotW0pk6Eb3d74AAxskhjgl8k0Mh4PdrqveEa/QcIQwD3QCXVO/3rMFW/QYDtD2
         ZARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PaLsYMr6sPMtYqx6/6slHF8podsGBf53BiFDK64HXmc=;
        b=rSRp0jvfl8lNjuk9fgPuSZEEWuhZqFybcExddr/+qYXvgdDtac8YL76d5aHeGSkcp6
         o3ItT35C0v8UNT3bipk/8RKUEScFX7M//NRofZjtKChWV/HncABb0aKaX0xdTfUB1kP6
         Y0x3BCfniHeh9vYemBxPtPYMri95cXIv1D7giLZ1J1HhcqIMmkl1qGpF52C1W5uIRqgB
         hEU4lxDndBpVKWe6Vd90j6OL9kltY4oy7XUXnxDGIBlTLrcv7eEWLoAfausCH13nF9GY
         6QwyUFFWobdfF3saqRKJSb6W0Ibr2+xsocM0ljGJtfUq+61Y5y97OChOWdCW7BrNu6F+
         V2+g==
X-Gm-Message-State: AO0yUKUE/Ic+CIayJc3SJj48gqiRpmp0DkP3YZsci0Sm3AdjnBZgCv5g
	E0/V2LzArOMa8hsGYKvarbaX
X-Google-Smtp-Source: AK7set93D/+Y65fUkj+aXuUylHYlgnEkSZkMhiKK4SYK1nAUmRkyHQgVA/Le0tEFmwP3SHdHAyegWA==
X-Received: by 2002:a62:168a:0:b0:5aa:7ef7:f44d with SMTP id 132-20020a62168a000000b005aa7ef7f44dmr7605073pfw.2.1677080004421;
        Wed, 22 Feb 2023 07:33:24 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:24 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 04/11] dt-bindings: PCI: qcom-ep: Fix the unit address used in example
Date: Wed, 22 Feb 2023 21:02:44 +0530
Message-Id: <20230222153251.254492-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073327_422596_679FF838 
X-CRM114-Status: GOOD (  11.01  )
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

Unit address of PCIe EP node should be 0x1c00000 as it has to match the
first address specified in the reg property.

Fixes: 31c9ef002580 ("dt-bindings: PCI: Add Qualcomm PCIe Endpoint controller")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index 8d7eb51edcb4..c1800e44f3da 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -164,7 +164,7 @@ examples:
     #include <dt-bindings/clock/qcom,gcc-sdx55.h>
     #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-    pcie_ep: pcie-ep@40000000 {
+    pcie_ep: pcie-ep@1c00000 {
         compatible = "qcom,sdx55-pcie-ep";
         reg = <0x01c00000 0x3000>,
               <0x40000000 0xf1d>,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
