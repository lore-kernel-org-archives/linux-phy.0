Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54417C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 07:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMVPJyKf4A5ZoUEA1LIfbT9qInx9VvgWjmMr0rY/vcg=; b=qgL7gXFlIppbVg
	xZRdZZTIOznekaIPQf4nJIrkNOn/ImTk+9hiXklR48zh5N7osikOe4zRjAwrqgvoyQYKxosEzK5wI
	oWX5l1qbpD+RpoSFlia+C0aVjn+cAZiAf8o0LaIvZUbjPDDYd7C8bF0VWRaUWWaxK7Kwe1cnOe7+s
	r94XPo8duU4ESdz71j9BGXlAhE98zFKDTOZFGF3Siu3XupFMpF7c7nEkIuYJOEPe3Kj2d0HYJrBxf
	2J5bylgAboaTpwqTipGD5xsCbThiAGDdhB1UIMhE1uOgyZ4UAsDk8xB63w81Ji8p31skHY7YHk4iO
	OnxRnNeSLwGA4aG1flkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msKIn-007ifx-No; Wed, 01 Dec 2021 07:45:17 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msKIl-007ieY-BR
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 07:45:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1A3CBB81DBF;
 Wed,  1 Dec 2021 07:45:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D939C53FCC;
 Wed,  1 Dec 2021 07:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638344713;
 bh=ZFb4kEFJO2dFEUBEylX8+TmvWBSphjPhhbxj0ifxpvg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m8fao50wZbrOiTOa2Gtqtjh+xSTYnoFzAeXmVjE2kzGw1Sys63D38yfOpk89ps1Ko
 9pAK+tn1kbUV3n7Cb3tJev6tQkgLCZdHFctMqHvvt4KeQcp6LnHUndlBY8xj2BHtpR
 tk6CRxdY/+WF3eX1eOAbiHLD7/HwWuVk8mIiGULI5fwUkt2CycwWxiIukNf9y9WxSQ
 cwSTm+IObtcsaG1ufunW9BoeUzDSZ9+X6anabnkHKUMIqLKCllIlcBQ4ivaBD2N33F
 YOE//fhrCgQktUy4rSfJuq2YY6Vu96mWCkknBEGmXKRFO3mL7PEFMX68Bvbqk99ojT
 Ko7aOoEbGIOEA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: phy: qcom, qmp: Add SM8450 UFS phy compatible
Date: Wed,  1 Dec 2021 13:14:55 +0530
Message-Id: <20211201074456.3969849-3-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211201074456.3969849-1-vkoul@kernel.org>
References: <20211201074456.3969849-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_234515_552188_2DFDBC18 
X-CRM114-Status: UNSURE (   8.87  )
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

Document the UFS phy compatible for QMP UFS phy found in SM8450 SoC.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 630ceaf915e2..c59bbca9a900 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -50,6 +50,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,sm8450-qmp-ufs-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
 
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
