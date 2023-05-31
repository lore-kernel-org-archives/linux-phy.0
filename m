Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A6ECC7EE39
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voHo9tOhEANT/8AGbBkIooBPDGT4Frvsl5yWEZWn4xo=; b=1wUdUQXiTAd+Pi
	UOAqS3zvJvG/mFoUUt2+P+Z5rq07gmvHkKsvBUq7GhE7BpqjBM2fsYT5loTzVTimO/DYYjc7AabzG
	ljNMBfEbLRoZqfTg+Ep7MWRHLrRjht7i4BF5d3aiQgSR7AzX7ivo+kJc5CGLciaDJS6K2K+Pc5CCy
	2mjyGKxCTVmukjOfmTQW7MDVnIVcvlnd8sDz+o6TnCU8aLQgxlrmCBlszM/pUM1qN2aoDWAaYHFOG
	4YBm2Mpu6wFbw+5Bo228LeCFEUUJifyFbMg2lFjDmE6YqssLtBNCV4qV6aF4Tr06y8wh7bVZmbBZW
	bN4vmIJtJp3R6pCd1X7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfM-00FoBa-0N;
	Wed, 31 May 2023 02:34:24 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfH-00Fo8z-38
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:34:21 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f4bd608cf4so6048333e87.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 19:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685500457; x=1688092457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=NyiS4StnKsQuB+sUdX/bQ1GdTGAS1YaHpbvTfV85nacavoRtGRwlyy/dAkHtQf3cie
         nNblZ3ma8WHEFUdxbeB9bhrJ1mJm7GxtYHyF0vkwvX79yRIKDdgfTial3t+azlinEOrh
         Rpay3Dkcb0z1Pv/cQ8I5JNd4s+l79JUgRZPfKdsmQN2M/SUGq+Yp3bG9GCcN5g/Y3f5o
         WqV0UWQPFKkuauNGErGTmLhgtg218Yv5zp8Fgga62LeAf67hayTg/908SXeWTP+gbF5z
         nj8c0fGYrUHFJO0vCQc6dU/THyLz7vEFB7l739GPfgW9KPSBLz/ibNf5h6eyKGlB/5+E
         NOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685500457; x=1688092457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=QQwWH2ONuwrXo/Dje8As+qjT67sTc1udO7VqtN5oC8vyQKw0basBkS2OgGx/eWWP2t
         3vE5LuRNAYQ/A1ZZjNPqycHW27KkHjbEaJVvPFLhUvuMCZ3Sa13eMqBo/+2yLvIYJ/6Y
         fANiHdy3//HExoFPEjpan/8kYE7cEpEw29RD3Vg20bNOi5L8+FjlbVH+yK5P83ZtCPpE
         Dmdd4YbchnH9xauwNWa0gdPDygsiTk7ix/6TA946F0RVx84oELyz7uho89vS+fS1w8PT
         0RPJIJ2LzrxknTcDvohvIyZBLRKZ2WxlxgSTahq8Qmwyppp6/DKELMAU3BpL2ytoEGNM
         UIUg==
X-Gm-Message-State: AC+VfDxfvxa+qczsMgW0h4ndSIjUGN27mXTSm3acbJNJUQqMfxRdDWJh
	q9/qGFSmgrmcQtSilowvNowCeA==
X-Google-Smtp-Source: ACHHUZ7oWC3y8Digzkl8eFkWeOswzNn/lZnKUVLFya7/BcYYrFW6hzBQjKuBq5JlJ11O4ziS2OVRFw==
X-Received: by 2002:ac2:515e:0:b0:4f3:bb14:6bac with SMTP id q30-20020ac2515e000000b004f3bb146bacmr1743330lfd.56.1685500457769;
        Tue, 30 May 2023 19:34:17 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm524096lfd.128.2023.05.30.19.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 19:34:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
Date: Wed, 31 May 2023 05:34:11 +0300
Message-Id: <20230531023415.1209301-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_193420_009248_A9625B84 
X-CRM114-Status: UNSURE (   9.16  )
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

Add bindings for sm8150 USB+DP PHY. These bindings follow the older
style as this is a quick conversion to simplify further driver cleanup.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 0ef2c9b9d466..a2ddf718ba76 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc8180x-qmp-usb3-dp-phy
           - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
           - qcom,sm8250-qmp-usb3-dp-phy
       - items:
           - enum:
@@ -192,6 +193,7 @@ allOf:
         compatible:
           enum:
             - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sm8150-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
