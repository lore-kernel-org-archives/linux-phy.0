Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 668ECC4321E
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVWmFDDPgBZgXDkCySCM6aPkK9rWA+39uex432S8wu0=; b=miI4D6FikDTGv6
	gkWXYIK683pTO7DGAXziVs03yHB1G6gEc2AoMoMlGfJ3VIqrA2eM48yydGhCfWQbIM1QPGsjqHM95
	Gz2XgY81N+1l47hj/OeV2HresmeaR0llh5VOEv/bjk/Jdl+bRHXbK74d6VMZGB/JCal9aqw8lDitz
	f1EwVrmmkxjjAw0yYXjq9LYqRcM/r6xmCEJlNqBBJUbF26l8ygwm9meKzslxq6E3fo6D2ajTnMb2E
	nSHLj+ZKM5gfB+2AzS+4LdBg4xYZhO+3nXQ57KaN3bliiWObu3+IvyO7a/ztgjYWrH/dCvmKu3U+l
	wDwSBPfOCxUxxMB3aEqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuT-00CWvP-Ld; Thu, 02 Dec 2021 14:18:05 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmtz-00CWef-JA
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:37 +0000
Received: by mail-lj1-x234.google.com with SMTP id p8so41606702ljo.5
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HqI3xY0pvVoBQsxGGFtLbY7ZwwclD846C8Wf2Zpc5JI=;
 b=Qz072+OVsCJ5CVpMCyIHIw09YNYH7GbOPhpyIQeJ2rUgTjq+h7vZiRleND8F1btLYN
 TfkwBQiqXG0kX2kz8vjUB3ll7irIWVmZRAnKb5MRVWed1rPYYmDmrUwRvmmz8CL2er4S
 ux6T2VU2IJfci8xBN0xWG9qmSObB+NNhSeyWUcNKTT8VbXEb3fjBh5OiZCETonJFxhbz
 DQJ8sXCBNpiU0EN4JFbiFbQ2WlNR69aKt+/t6SpgGo9xyjglnqcnoIfVtYIfxeXHmc9j
 Guq3CXI46ixg9A46zqg6pnXOJeMDnBhmszBaMdk16xckzTk/78wrn/XbsEx8HMv6zvxV
 lC8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HqI3xY0pvVoBQsxGGFtLbY7ZwwclD846C8Wf2Zpc5JI=;
 b=GJDWT0UuIHbltTvlInVyupUuBLGwHb4IBTa228pZgFKAOmGsbDHoI9vNzSeiInXtWm
 jTb/A6yfeV19Y7FeDM848zOzPdpTrHOJclt47Zu8qLHn6j2UmKctiRXzl4+YrePRkQul
 JYZQJDjlKPVtzid2uj/jypm1Dj49KregppjRaifqrdn6p9MBy397AQ6UcoH3lqAla7YI
 k22IEwBxrq1D+7xde+GF9MncrAUtZH2OFPkr6CncSQzUdUO718qmhcFokxTaGztIv6Jw
 9mXc/Xj5n3MuFam1s8Wy8AVx3PIfc3Jy/o18Wef4EXn+xG/Vaj7iSjX+m2WfymRsoihW
 /lPQ==
X-Gm-Message-State: AOAM530krL1v/zC6T3uyY2Hn99rMc+hsHsbW3eL2ZwPzbCdoFXRxfufz
 1w2GIztN3GDDCjTcm2+hcto5zw==
X-Google-Smtp-Source: ABdhPJxoMQNCP8EWnMrmq9jByGLRIQ/uPFv58dRF2c8p1RSH22b2+KPHsCvOTzTInoQ3AP5mC/XvxQ==
X-Received: by 2002:a2e:985a:: with SMTP id e26mr12260167ljj.265.1638454653505; 
 Thu, 02 Dec 2021 06:17:33 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:33 -0800 (PST)
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
Subject: [PATCH v1 02/10] dt-bindings: phy: qcom,
 qmp: Add SM8450 PCIe PHY bindings
Date: Thu,  2 Dec 2021 17:17:18 +0300
Message-Id: <20211202141726.1796793-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061735_680722_9A35534A 
X-CRM114-Status: UNSURE (   8.36  )
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
