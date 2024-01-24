Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A542C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKUrcbhr52bhjKMZPg38/WpRXIq8B9AipRt6eQhW+nI=; b=Vb0J8+e2M/WH8F
	HgO4XZfbRCxK9YY04cYmH9ELQYPt6+Uyf1yAWtArz1+8KTdoAjKFFePILDlz/aLWBzkC369Lczj+y
	0U2qLoCsluI1PNRN3PXQTH/vV424mhzfp7TP5kMfBb0TxTBWlta7Lz7RG3FU5VCP0CmClDx481xSw
	CXar/SREqcr/Z7K3sWqqvLFm1sOpACWuPMNrOS1gLB8nREkgVJ7xAhWAc74Wby6cv/n9UKxSROEks
	AX+NjTUMGKqIHkgbTsof4t8h8uzMXPnbUj0owl9BQcF+cN5WEdL302i7wbJ2AT+BNIcePKrdo1FSO
	wyVlZ0xyVUG9xj8XNhxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXp5-001sT3-2C;
	Wed, 24 Jan 2024 07:37:23 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXp3-001sS5-0A
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:22 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1d76943baafso16003565ad.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081840; x=1706686640; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oJnupBgFvOzDewfsN2fbqfoXAijS1cIjpRbgOobXJnE=;
        b=AX2SyfBfme7/SONLfHttKeVpvhUPFvPievWNmmGuDYfaI2f2VBQ+Zayi4YfJyKNCFt
         3rd5/iSb8lP6h9hNaUlgHlBihMGn9qCih2OyE0ihzaMlxuE7nE7Czbqtbx8gqZfoXUpY
         sr/ILwbejgd/O2qm/Mv1bjLyG774jFK4UUqfXR6K0GjRrHpvc+CpzLEVgMLTtF6WZ7mV
         l/5EjUI3yQpYZzTPDayMVXFQK5ADwfnXtqJX2+n7BJ3BoWNMJi4xsjL9UHi36YqtqVrA
         X0KIxAjr7Q3PO6ORixH/qST9OEV1r/gLQVxxCVpgQgkmOPz6td20RkF0W/7jrTHWVJ9e
         BGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081840; x=1706686640;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oJnupBgFvOzDewfsN2fbqfoXAijS1cIjpRbgOobXJnE=;
        b=ibWx74LeGQA313R3FF2sCDdv1bRdTTQi3jc+eEwuGkQdibBLCddqp2H+9YeOvlR3Fj
         cOZJmJ1damOD2YJXZiO+PrFgXQs3it7aC3PCwUeSb35oBFTP4N8Bhh+3cLjrrZAk3fA+
         RapokMqUiKctwKybQdkhykx7qE/I3fhojD+6qa4VUPNmvyqs2xf9d9XGisEGqQf4urad
         ArEBJvolblwWfJUWrPIqfa96XWnvhdalrmgQZkR4ETQg30hfti7arIuUAlZ6E9dAIktm
         Q+Nd24Xvx7h8ZYy3bOQGYjN89UoX4AVVvAseJ7kYgNfmEqUAOTIMfEQhmAFoO6g8/d1m
         ly8A==
X-Gm-Message-State: AOJu0Ywwq6zpZuk+PWs0hSxQUiIZDZ1J/Oa5n9bc+O38maILiFX9ngSy
	9fU+KZ+mJKvzjvIr+9SvBp5Bv2f3kpGjDnaZd4sOLx2TtqIC+eFbHR4t377WFQ==
X-Google-Smtp-Source: AGHT+IFgsPWxZquxFDzz8I+/ShqqZin/JEW0/exyiv5vB1JusQRtCefw4n6e95w8cWZvyOJd08aWdQ==
X-Received: by 2002:a17:903:8d0:b0:1d5:f255:d386 with SMTP id lk16-20020a17090308d000b001d5f255d386mr363745plb.11.1706081840194;
        Tue, 23 Jan 2024 23:37:20 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:19 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:35 +0530
Subject: [PATCH 07/14] phy: qcom: qmp-pcie: Add a comment to clarify the
 use of "aux and "phy_aux" clocks
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-7-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1589;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=SMDJRGbt8Jv9ABIlOfDcm2JYxpzZQjqrX46K5L5t/xk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4Ey0uoNqHHYLtSpRKMWtRALxolVDEIjsBe1
 zYzwB5mGOmJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BAAKCRBVnxHm/pHO
 9WzXCACg8RokdsMoSt1cI+uOd7qIPPW8HvoqXvRdXwF/FVdYRM+4YTHK6EJJElspwuRhLnphsdy
 I/+Z8lnLaKfuPLCXoircyEnF9PPdsGKbcCCII0YGpCWaSmLIkvRddCBfZvXKsN9gaegvATDg9Pe
 xA7iGWN9VVDOmdVyOJdadAtul4vlv3KrUW8QdLJL0vCouWa/OJx9m6CwnZ5A+iUMXO7gmWvgCrj
 WQsUUQfmlRWqZAmEkT1p8XoYs7Fwo5a7T8LDXcKSdbbkQTHNI0FbpTPq9IDoWqkqv/hGznNtaVb
 BKEJ7RfVUA3wOjPqCq86Shm4jUiYP6nbnLRDjXzXLdFxdPKZ
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233721_088147_1FB3191C 
X-CRM114-Status: GOOD (  10.55  )
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

PCIe PHY hw on some SoCs require PCIE_PHY_AUX_CLK when the link enters L1SS
state. Historically, DTs of those SoCs passed this clock as "aux" clock.
But, SA8775P passed PCIE_PHY_AUX_CLK as "phy_aux" and PCIE_AUX_CLK as "aux"
mistakenly as the latter is not needed at all. Even though the SA8775P DT
got fixed, both of these clocks are kept here for backwards compatibility.

So add a comment to make it clear.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9a220cbd9615..044e3c5ba341 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2328,7 +2328,15 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 	readl(base + offset);
 }
 
-/* list of clocks required by phy */
+/* list of clocks required by phy
+ *
+ * PCIe PHY hw on some SoCs require PCIE_PHY_AUX_CLK when the link enters L1SS
+ * state. Historically, DTs of those SoCs passed this clock as "aux" clock. But,
+ * SA8775P passed PCIE_PHY_AUX_CLK as "phy_aux" and PCIE_AUX_CLK as "aux"
+ * mistakenly as the latter is not needed at all. Even though the SA8775P DT got
+ * fixed, both of these clocks are kept here for backwards compatibility.
+ */
+
 static const char * const qmp_pciephy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
 };

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
