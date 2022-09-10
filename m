Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E661C6FA86
	for <linux-phy@archiver.kernel.org>; Sat, 10 Sep 2022 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTktrTcYTg+t6nnV5quB4ix992V7nTHp/skiZuTcFLM=; b=3mBKajyl4CQllc
	QHift7bofFgmtq9f+D0BZExUC1HorY59pg/H+vEsJqD9PqGfnJWtQHXbiRvrNhd3DliCNTPH5VG5m
	ORAJ66K/A2YcwfPBrlmXkHeRw6vCwUutrmQ6hn0uxPTsP/V2lY+q4ZwnBIXHH6VZF3nyOPtpWQgc3
	I5lDAsba3e4ZIrphI57LbJt3eS9TrKfN1L7bGhs21edy+GgYkq1T0niy/V1VTrUpTU8qzKMqskOFg
	p5WfH8HVE8Juw2pFFt6gRsKRdIAzEGBttVKYzn0hLLuxLq6Qdzf2k99Ckox9SjrVGwU0JElzcsw//
	v63FKHKeXT89K0mWbKnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX1X6-00AsGP-St; Sat, 10 Sep 2022 14:32:32 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX1X4-00AsEQ-8V
	for linux-phy@lists.infradead.org; Sat, 10 Sep 2022 14:32:31 +0000
Received: by mail-wr1-x432.google.com with SMTP id e20so7824392wri.13
        for <linux-phy@lists.infradead.org>; Sat, 10 Sep 2022 07:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=sFfHW+tcAhvs1gk4X+D31/A9ude4NOf/1K3FvL8qEzA=;
        b=XR47zE4K7cWZFBXkzpXSOtjKt00IluqDVpNbPoWXAiA9FzwYaHmKI/UwUkW/7ZfC/Q
         6ibL6zfpG8YN8sj0UZSo8P7oJiXwSHxcyPrfAQRvNgOmHvdexByYpJbcrqMfrfXbkjmV
         gwyXed9rd6l6RrllgkyAJfbA7kkX9MbuMt8w2UouO1jnJkvzhYebIVlbCx/rZKmEUmgR
         EoujilmO/NRyIpgj3Tpk8pazfbMOQ+JQA9Hg4jOdbYKCf+iuISzR7A4r7TXkxbAuLUg2
         x+xpYBAG+KYGzFuFMA+RWVt4nVEJhN+KIe58q+G35O7oHVfmzeZX+/nbwTckbq+QP5wt
         6Fnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=sFfHW+tcAhvs1gk4X+D31/A9ude4NOf/1K3FvL8qEzA=;
        b=bom8TXFzfSh7UFWD7UpvFwgiqXW3rZl07sW4daUTooodbCSDth+6AJiJPeY63Q9ju7
         vjLZLay08W65yKGwPRLLAAEcQPMj3SUPw7IaQCP+OfJXjymYfxdl3tYhmEnNYUfA1AaB
         oyNTd7YA7TA+ZCEbGYITjMBKXstpRYUV5Aa89oGcyhjX7+pLvcKQNCNOO9kkUD+V5A3F
         /AIWi71hfW9zmTGKbxYzTy95Awy8Wj7PJrsF7KuNIefnysffR1LsYf0HKRZTjFC4Y8NG
         2rKQspFDR2fUDA8XGCUi84rVLGHuLr6+c8WijnDz1lshiB0JKYoYHGnfGY8nldkWt2X8
         gVhA==
X-Gm-Message-State: ACgBeo1SKuBwwRCUoc9U6tmEgFrbahYPTyiSAn1lS33H6UqYONRfmOSE
	pKtoo2s7Fyy7x9C5ayPuBbY=
X-Google-Smtp-Source: AA6agR7AyRP0gNt/nRJaEgmEQXnNoSL7mRSyLOVn8mdCAISjbd70lfGcxObe5S1PdqnLi6V3opWN9g==
X-Received: by 2002:a5d:47aa:0:b0:226:dbf6:680c with SMTP id 10-20020a5d47aa000000b00226dbf6680cmr10604031wrb.581.1662820347641;
        Sat, 10 Sep 2022 07:32:27 -0700 (PDT)
Received: from localhost ([77.78.20.135])
        by smtp.gmail.com with ESMTPSA id m36-20020a05600c3b2400b003b46d9c3709sm2255106wms.48.2022.09.10.07.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 07:32:27 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Iskren Chernev <iskren.chernev@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/9] dt-bindings: phy: qcom,qmp-ufs: Fix SM6115 clocks, regs
Date: Sat, 10 Sep 2022 17:32:10 +0300
Message-Id: <20220910143213.477261-7-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220910143213.477261-1-iskren.chernev@gmail.com>
References: <20220910143213.477261-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_073230_321229_C9A58627 
X-CRM114-Status: UNSURE (   8.73  )
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

The Sm6115 UFS PHY has 2 clocks and 3 regs.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 6e3c186b9972..815c375d0f7b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -121,6 +121,7 @@ allOf:
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
               - qcom,sm6350-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
@@ -180,7 +181,6 @@ allOf:
           contains:
             enum:
               - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sm6115-qmp-ufs-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
@@ -198,6 +198,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8996-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
