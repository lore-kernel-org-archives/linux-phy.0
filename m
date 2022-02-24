Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4021C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 12:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cW4shHgzkpOmp7vAD8wO/o87YlUz7UMV3C5oHfQMMME=; b=onjNotABtRUt8k
	6z6yYIMK1yFbJx5qqR3Ji9KxMRPRFM5sEZCrPg/8Wd8kXxcs6yX8zJ3BMkMmBd7vUBXtIwCxuiF0c
	prLxMcXl6emZaXX1i6nnKIl9d+cLF+jt/PMc6vNpL/0laQ35wb85wmmG28Y3EjS1Nj+ZxuPCxod7b
	ginHo74sbGgUUpKYQPrkyeNpjNv12VLVeSk3mMEIiUifgOZl3ZGyAOAHINyFeVahOvSZhTbZJSfzb
	QRTPukUuPvSldmkzanQfpx20uFvDBBpKZeFWwxbN9IZEkl5g2d3tjX25Tjh/vq0NqijPC25h9mnfD
	i4g9oo0OJ6sdLF5Su/ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNDJ0-000hmx-DF; Thu, 24 Feb 2022 12:33:10 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNDIx-000hlY-Js
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 12:33:08 +0000
Received: by mail-pf1-x42c.google.com with SMTP id l19so1750328pfu.2
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 04:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Uhqs7VB4RRUY7J0XXRbx7LXxMKz2KfECenS4KOr6xXI=;
 b=S2Vf0RYPXrLy1meYNbj0MlVf+rxsZCVo9rIwPYSB9gJ6S5SYMAh2+CxyH7aT8MxeCO
 dG8YQYAMoOCI/bT8oW3od3qZtQ9PzGMqzBfDkCrtglJFkC/+7ub+TbPnhFtW8mYrb23/
 zBeEVeuMsoq7MNg7p74+vABGuT790eFGGmOu780oEtfRK4x5u546ovA1JU8Xm68k7fHe
 ZMslKDPkEsB6k/FKtgdi7g0w36Ys9ssAVaebqZ8Jc+Fli3GAaNhIGl/ynY8WlqXmqKXi
 zATDRMYfxSNP5j3WbCiWA7cqbThaduhq2O7mFEag0NgYKPiaX4ZYaq9Z4U4ekcww1l+H
 F9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Uhqs7VB4RRUY7J0XXRbx7LXxMKz2KfECenS4KOr6xXI=;
 b=TF5qIxPVs5yATvnfqT18wsZ/OP/uNR2xxK27R/MaaNXDaRyIcZae/t2jwz0ATj3Fhn
 2E0+sC8h1lGx2vU1MkqUUDoYxqCFkPet07Zcccr+BMqm5TD1hJjYFjPaWeCZ/G/bKD9T
 u8kGGgs8lHosIAj35pUZfjaIiQOXQfZHJzFkUShFETno6cSWtFN0bCVfuZJVw2DUAnLv
 RQ6DksAFfL/xjudALbBX1QXile7h1ulwuF8WypmVndbaz56ICnHKwVnSPuDmO+c8/iVC
 C2wsxOUmSQbdLLLOPqj57hhPbg6B8s9cGy7GCOrz2PqcG7iFAMCQ1UXxx84keG34fwcC
 gU+A==
X-Gm-Message-State: AOAM531gPTAl8SWx9+IcihsNEJlEoKKAQj3ywiodnvFwDN5hbStFv53m
 bTTxBX1Er3KC0aLrAqwcpBLaTw==
X-Google-Smtp-Source: ABdhPJxE9MbifRXJoWthHwSxtlJ7G04wYvzC85z9VEDcnm5iRZLyuDKyBimvDL1t5y8moHqRV9v0bQ==
X-Received: by 2002:a63:114c:0:b0:373:a701:3736 with SMTP id
 12-20020a63114c000000b00373a7013736mr2134339pgr.117.1645705985897; 
 Thu, 24 Feb 2022 04:33:05 -0800 (PST)
Received: from localhost.localdomain ([223.179.129.209])
 by smtp.gmail.com with ESMTPSA id
 ep5-20020a17090ae64500b001bc56af507dsm6237567pjb.47.2022.02.24.04.32.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 04:33:05 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,
 qmp: Mark '#clock-cells' as a 'optional' property
Date: Thu, 24 Feb 2022 18:02:47 +0530
Message-Id: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_043307_744610_9F8AD0F2 
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

Since '#clock-cells' is not a required property for several
QCoM boards supporting qmp-phy(s) (for e.g. sm8150, sm8250 or sm8350 SoC
based boards), mark it as an optional property instead.

This fixes the following '$ make dtbs_check' warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  '#clock-cells' is a required property

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 9e0f60e682c4..746a929c63bb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -115,7 +115,6 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#clock-cells"
   - "#address-cells"
   - "#size-cells"
   - ranges
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
