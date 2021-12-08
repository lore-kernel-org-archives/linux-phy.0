Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DA8C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 17:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=445XhlDHaJIW+vwRKtr1v1Q2SgYJcI2bzl8u1nJ5/OM=; b=dXSAw1XCIEFGgg
	Ndh/mFWjL68aMyYPcq5DdTG7TL1v3ys45OzCaX4Awinn0IJ6n+uD7UhPFtQXG075Mepzr4zBdUUlP
	hv4eBaij6pAO0Z5NtWykqyYEf7Kcovf/tjPbypfI3iePhFcZKk7/ZNTJElXd0Wg9cUkAn3PEw7tT0
	1SPEaRpkW+/cZuVMALTHXn4asqaAQNZQ1ZI8UTSYij3K8XNGTRBSfjvDWMw3se2jlSSTiFanfG8Z+
	WFl/hHepd2hGnfhYYfkLadOlmiH7ZElxNSczHfM1Z0YkPhpOVmcN+45Qmg5vM+t2MZ6+JeZWFA5jG
	54hQWuuyBhwWF+DYkpgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0Wu-00DgtU-4q; Wed, 08 Dec 2021 17:14:56 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0Wr-00Dgqw-9Z
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 17:14:54 +0000
Received: by mail-lf1-x133.google.com with SMTP id c32so6953285lfv.4
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 09:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
 b=GiqsfntNaSI82qioDW6hnyhFjU2z/SUV02rzfFzcleBRXBxUMikcAcJFBXER2lPphX
 hpBEYZ7hK5iBY7fYYy/i3V8SfPqpvRrcF2mT+YSRJhapPmqS9sD6hbI2ymtweqzyavGl
 vszyLNUCXuolhEDzCPT3qYx9wNxRRZ4TJTVqKGCgoW39G80U4VLGO8DG8IBEMv3Nb/gs
 Uh/SDY4c+B7KM0eS3r/sbWVlo25+NAM6HnRD65Ub2XteBisifxcPp6dBhwg//8ZxPGBD
 iy7qzxRFCNgWpfr0fUJwpArWrtgTGKHuQbrmr90V29ZaplojI8HdoEGPbKl56AumC9x7
 UR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
 b=sJyxwgqvcATy0e1Xbsh4EeQJS2YtWnJbNsSB2jInurdEX5tkUQrquN3JI4lEHQi8vA
 UXYq9TMlk9KtEcrGcyip6K/VqqqfH+un0VZcYihtXbrFSDdYNzV/+znSFNQLpUTfiAT1
 Vr60LY3+DcNy9npf/IElMGt2AsR+1R8fSnCNPHSjA6pjJn20tftWCsiiJq8ZSUApa0Ne
 eU3hvnUtIb6+oDlvvGUpxwj/s8bKM+PgPPj1pdloHxwTUFGH5pnZ/mEThDufmY4OH64s
 cUgjX/3MRTbPrLf+sxVAgeZOauT8HuLCWLS1e9uGekRPbhPjqtmyHCJtdfXD00vVNIkc
 an3w==
X-Gm-Message-State: AOAM530KSZlcedYBOHwxnobO5VZA47HOEAFWylM0Uh382hyL1pdxM1pD
 AFt5MRvhc94JsNbXp1ryVHbq7Q==
X-Google-Smtp-Source: ABdhPJyLmmHF1K32biMOFJNZVCgRuWge+W86qVR9zXqexHcmbBmvI04a7YqLiRvCokbc8UUgzqQsBQ==
X-Received: by 2002:a05:6512:3090:: with SMTP id
 z16mr701620lfd.335.1638983691372; 
 Wed, 08 Dec 2021 09:14:51 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id t9sm307213lfe.88.2021.12.08.09.14.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 09:14:49 -0800 (PST)
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
Subject: [PATCH v2 02/10] dt-bindings: phy: qcom,
 qmp: Add SM8450 PCIe PHY bindings
Date: Wed,  8 Dec 2021 20:14:34 +0300
Message-Id: <20211208171442.1327689-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_091453_366172_415D5E4A 
X-CRM114-Status: UNSURE (   8.26  )
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
