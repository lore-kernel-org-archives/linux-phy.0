Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 978C7C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=445XhlDHaJIW+vwRKtr1v1Q2SgYJcI2bzl8u1nJ5/OM=; b=VSWacAKpOmgRrJ
	FAFmXmF3US0k442z8Vkyqy36BkuadkVitV3z4lWy19eesw/l4/X663NStT+BNy2fQH6Oyp7ssIiKJ
	5oNUvVp2a4CFnzrEucDfj+c8XwbCxNJDCCMV7IB2vzZrBxKsi11LDfWkvkpFLn5BF8aT3S7CukgmW
	rP7Mp6xYWiYsOPzGuVLZ0r2SUXajyVQp0Amk14zCmnwC/LMBTASWZFlYU6ffQxgduIoGBorsU5RHR
	r6x7tlG3Cw9iZ5KzxngD8V5ooZIzUpqwtTp5SyRAKZh6EcCBoDS+/Ouz4F6/BBA1UTxxgCPmNzA6B
	/gNUp1hbhmzLAxWlyerQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGlD-00G0Qo-1F; Tue, 14 Dec 2021 22:59:03 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGl8-00G0OH-5L
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:58:59 +0000
Received: by mail-lj1-x22d.google.com with SMTP id m12so30596864ljj.6
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:58:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
 b=Z3VWMAewwvLv+zL0H226NTFNhnnM4GNVE5NoZlH+wpu4OPMo10OiKy1gcgQjntJoUU
 SuJVl1qRWnKBI3ODoChCoLWwT3UQAQZOVvDTKIKtJGWGadCX3Tg44S0WFxObpzdMXMSl
 vYpRETIGN6mz0PD5p3bn38aQj3UuXOWWtK4e53HBYzlLIdNUDamZ1SeGRYV1b8g691of
 9ikCHKiDgYBOv9sNov5jdC5lGLLuFHw083XLP65mDUsv+INJC8U/IngDRMV4fuHiSyBk
 hpmuBFVnNRa5ER9GHZNW8q2XQeHu9tT/HhO8xQqcGmTHvnbgQQ929rF7dKsD39/u0RSA
 76ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
 b=3tDE6Lcbc+YeGjUwmcdec6exu33X+ETLMpTMQVzYlJDUgc2j/KxQC2VPvz8Q4KTgdC
 MPRVIiLVJsRvndudJb0vvQSrg4K4+WCNyqK2pdevcE6fm8MPtQJQPwpAYuxqvBaCFh4n
 htTr6cehD7UvIweS5uuRaalf4WKLHzf6P7cN/jcZkjwy9KiGswhADIis7lrRokmYmRLa
 ZrQB0N/iWmTbA7h/bLeGskT1DqlIHh/S6DkcSe1JTVMSjDcLVhqtU76wz07XwNmWdL9I
 BL+qFx1+4kWUTyjpQNvoC08V5Zj90rz+duMK5As8dj7Gck3w/AyKskneLggzBK0Hxrto
 /17A==
X-Gm-Message-State: AOAM5310fI8th+raacv3xjp3nJ0zXmEc8/JjqqsPyJ6UV2DdW2YbjH0P
 rb8c9IFHWHESPv4IMfKKUldYyA==
X-Google-Smtp-Source: ABdhPJzkX8S9auCejbfr9NolWxTiJ0jAaRfO+D1Ny8lCmFVFFuJBF7RlJtrhw/4VH+8ubGp9JMRbsQ==
X-Received: by 2002:a2e:80c3:: with SMTP id r3mr7603572ljg.8.1639522736348;
 Tue, 14 Dec 2021 14:58:56 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:58:55 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v4 02/10] dt-bindings: phy: qcom,
 qmp: Add SM8450 PCIe PHY bindings
Date: Wed, 15 Dec 2021 01:58:38 +0300
Message-Id: <20211214225846.2043361-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145858_224348_28E35811 
X-CRM114-Status: UNSURE (   8.07  )
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

There are two different PCIe PHYs on SM8450, one having one lane and
another with two lanes. Add DT bindings for the first one. Support for
second PCIe host and PHY will be submitted separately.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index c59bbca9a900..d18075cb2b5d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -50,6 +50,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,sm8450-qmp-gen3x1-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
@@ -333,6 +334,7 @@ allOf:
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
     then:
       properties:
         clocks:
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
