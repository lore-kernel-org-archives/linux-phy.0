Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2752CC3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMMi4B5lmzRa15nPr/OkVNER20fOkMhcD8wgucKGyaM=; b=a10QDXv8UjeGa3
	awKMxZsnm4ok592swv6GkmBrNbG26osZzybFsIKYyttjD2E1BYDw9VduOJrDPJ2mVgbOrXpbIxLmr
	Dx3XaQ7KGsQqQMkSa7qBDQGHBhivSd5Zh1Tmii7F6mpGy59d+wdbCOy/Y3Ks4GCylG5FHO75RTtsF
	rGbyN7U9BtBFuW+s5W9DeLB9lvVaVhkAYEKfYtba/LnAT6k8Tae/b4Dg5UngLp/EKi46tQ3nemDwB
	D6fPDtQDXf8OXMKTi5PlXyh1Fzdb+G/nzwAReFWfeeGATzWeOZ2bNz7JGTIQEH0828xHm9z3wbbcU
	stymaXcjuA12I/CC6J0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpJ-00Eapa-Jv; Tue, 17 Jan 2023 14:20:37 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmpG-00Eamq-Sy
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:20:36 +0000
Received: by mail-wm1-x332.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso2506424wmq.5
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r70HIPPoSUCJDW7BtmV/6Lm1b7r37Y3H9xwbUY6W4Xo=;
        b=uRRabZd19roB+Ol4p25HXFYM9ypkBiyoXdUJADadlr6OfWgI31cbSLM81p/bduBPLG
         HmlnS1wNdz2KHXDCqNmsCB0Go9MDZIwvp1llUhAvtf1WgFqDt66kfw3MN14YXZlk9oD+
         H49MviBNnhLyIcO7ljKQIJKzJqZvaaWY24lgutszKLNkeWHljrOMrRAGHF+og6mcnJ8y
         8pbt/IQ6KM9lfbDEMMNNiCAkchcmbq8jKCT78KquAJpXDb9zS1qKf30qmKEZB8SyMAB5
         tP1jgw0EBUYZGjtyogxGUZGwX8YZQaL4zLNpz2xCaFFD10j6iYEdw5FKKr0in9nKQ24c
         7wGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r70HIPPoSUCJDW7BtmV/6Lm1b7r37Y3H9xwbUY6W4Xo=;
        b=oc9/X62etiefjP6E0VHBfBSqrgtKim7mT/W3LRaGD5zqPHxObg+79vo2sI/Hq7og1d
         JTqWLpbbemvC0p7+imsnjBbbZa+hr/qc9SMVYUP/g32SgjSsG4nrC4fw0Nnh8KGEE0MY
         HrJ4pzPl2pYpfqND4WV7any7wvsIEOrUxbF7/apbNCCLsnMwJm0UJ6YU5EOMc5UEgdCI
         01wlHhKzcNO/SB4Xe33uABiVJfwEk5Zk0A991VcUaq6O14sdhiWOUFdDljnUcj9EM0Gz
         L96F/bY6O4pCNL5XEUFSPTYH7z4BTjZGUzsoWL1z4NKjHPtSJJIZhA1Qp/Z3s3vq5WqH
         F40Q==
X-Gm-Message-State: AFqh2kpv76j761ZPkH7MXOCpxHYdORP4n+wYUONm9SFJs9Dr+tSGisqc
	2TFpl/Ff+TYbDHdEYKt8hGbSjQ==
X-Google-Smtp-Source: AMrXdXsAllzHCawsRFdiyLfn7UCdizc4IAPDTAwzUNxLeYtqmbUsSPokyJ4aOzCfJQQcLAX2fcBYbQ==
X-Received: by 2002:a05:600c:331d:b0:3d6:ecc4:6279 with SMTP id q29-20020a05600c331d00b003d6ecc46279mr11932841wmp.27.1673965231276;
        Tue, 17 Jan 2023 06:20:31 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i8-20020a05600c354800b003cf894dbc4fsm40443133wmq.25.2023.01.17.06.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 06:20:30 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
Date: Tue, 17 Jan 2023 16:20:10 +0200
Message-Id: <20230117142015.509675-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117142015.509675-1-abel.vesa@linaro.org>
References: <20230117142015.509675-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_062034_950126_47C849E4 
X-CRM114-Status: UNSURE (   8.19  )
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

Document the QMP UFS PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 760791de0869..64ed331880f6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
+      - qcom,sm8550-qmp-ufs-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
