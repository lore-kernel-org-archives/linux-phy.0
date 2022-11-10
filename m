Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D26C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fu+rAeeefBMY4C6PIryOBDq3J4jGzyralZtZ8kl3O4I=; b=yyoEOEllqwV6tc
	Ukb8VUwkd1pdh/rEdGy2iOiIQL49A+3fUgrb0FvZJga/VmumrZwJtQzXXoqWe0NZulTSx1Vf56290
	n6ZyfxD/TtR2/gaFENJELd+k8nzyMWUUJ6h+1tz3UduHmFM+ohQgeEO3MytCmx87d45SsjA82yEfB
	db25PTlQz8MWBrK0KNF5OjoCQPhOc7Y4AzYHOvzEw1OYfrrT7cswFlETcq0LSyDAK76BystqcfO8w
	mZPPbZjv9Ffc/Mmm42nKxQCaV8jBQXnUu9+oXRr+Tv0RntEqPPNcjZlh3I/9enRpmrxuM+D34NpeP
	F+pm0Pmjs3+xI/O94/lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JU-006gGW-2p; Thu, 10 Nov 2022 15:17:56 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JR-006gCY-5o
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:17:54 +0000
Received: by mail-lj1-x231.google.com with SMTP id z24so1386746ljn.4
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jbQznSb+wFqLy2HcBXlIBiqg0pLGuNPn6ZTMMPpMP08=;
        b=NJZBH+bUTAN6LToP/lQVUOtU6xRnQfGMSENBFt/kJwPlJ6KdryPRcgU/76Dy0p5pJl
         a9cvkEPin2scdvEY+2QhlW4WZ05lG/y4rPe8NVhVHm8djUOzZzev7iicmDH6RB6S6xnV
         65cCN7/LvoINp2MYI7hy9D3AvCPgYn01m7By7F+LdSYPehenrruXyZ2DlCCK/0shgKNu
         qilIGasMItKDWAkz+PnwK+48jNr1Xf26UDUEQx1LoUNv3pp6F+zrIXuUilam7ejwbOOa
         ln7ip7h5RBTwg+vAdfDDkvo4HFzRWRavLIS9o4DmZEKvgDmG+0L5ALszzG3sHANTU8KT
         BNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jbQznSb+wFqLy2HcBXlIBiqg0pLGuNPn6ZTMMPpMP08=;
        b=BByTNKJW7TL8MBwyNzLl0rkqY+HmxLB7QiCnECiSM9pXOqbk40jS8nfyQ29qkc7JMH
         eLbaq1Nk+rglZsTGDqcb+iFIYcJLow3KhSCyuMDgtoqpaRhTsxgV+SQrxWpc8pXlEfI5
         qZqiTO6GHIf01TLPk6UNmFNLlcGf1CA7jI7LhBkoL06CThPiofGdZenihmFGc7en9Xck
         LBy4d78TqqUMuWRGA8uHAdI/gndLFLVQT9vAis9weaaDNH2ESJCR5K0sFJFA9PfSNtAc
         6z/+Eprnvnn2wdXdEnxYQVqZXSL1CsLNsRBn7nMkkDGLxUBOx8FoFkvyTtN4+uWWE3J4
         HOUw==
X-Gm-Message-State: ACrzQf2cOfORUAywchMCA4+85qBi1VNomOxtPwtA3yH1bpsQnGzPpan/
	D9hLtalmWHgbv+bneEdlsas1mg==
X-Google-Smtp-Source: AMsMyM40MD54Ti3W926Yrdnye+Fcqn5AQBkXm00rZi7PD6JJvmEc8UiE+zZ0P/piCo8AhKh95I9yYA==
X-Received: by 2002:a05:651c:50c:b0:277:31b0:8ba3 with SMTP id o12-20020a05651c050c00b0027731b08ba3mr9531076ljp.290.1668093469744;
        Thu, 10 Nov 2022 07:17:49 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm2719591ljo.25.2022.11.10.07.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:17:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v7 1/4] dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
Date: Thu, 10 Nov 2022 18:17:45 +0300
Message-Id: <20221110151748.795767-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_071753_258331_933E8634 
X-CRM114-Status: UNSURE (   8.28  )
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

Add #clock-cells property to the QMP UFS PHYs to describe them as clock
providers. The QMP PHY provides rx and tx symbol clocks for the GCC.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml      | 3 +++
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
index be41acbd3b6c..80a5348dbfde 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
@@ -75,6 +75,9 @@ patternProperties:
         minItems: 3
         maxItems: 6
 
+      "#clock-cells":
+        const: 1
+
       "#phy-cells":
         const: 0
 
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index dde86a19f792..32ed1886fbae 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -43,6 +43,9 @@ properties:
 
   vdda-pll-supply: true
 
+  "#clock-cells":
+    const: 1
+
   "#phy-cells":
     const: 0
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
