Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63BB6C47073
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wppRlJ7Wwx2gsYzNJ4vB4LP0bbAlOD4LV/B0p52e9ec=; b=LMqVixsvodEuet
	WdmDCthPdZGHwCbkYcz4FmEhBMiGqTDUP0PASAy+/eIZwVjSe3qc0VA/MC1opdgJmgVrP7gVraYw+
	fhz0uGdz8LEAcXmUGvyjXYeqJxrsjfayK1tWRPxJTBpNbRl7OzejJc2QuGaNVmoJDIz2GhIGVlMv7
	oOR/ERiPfbnqVZ4w+EvmIilVK83phwZUzCtiWHOawb/U0LRVpMcaL3aDQGkxmb57JhFFSQynlG18t
	t8XPvoef2Nei1vqRnMjRtviiEnu6LYCmdKYtgF1X15Xe/TR0n0u8BCcDckq0cq5WVY+LybQs+exOT
	Dw5knVAgkO8lB8XmHVrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgN-00Amtb-0S;
	Mon, 25 Dec 2023 12:03:43 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgJ-00AmoX-2Y
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:41 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40d352c826eso50338035e9.0
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505817; x=1704110617; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OBMfr2lODPMTcDmhNi2VGEJxqKx/p+20Q8QVTg+VW18=;
        b=J+AcwQFt87ADTRXCS99VJqmfIrTjBhX7SpIPMpCYr0sDpUEdW1QAOUphxXff0zAvkN
         sVzu/3Cf6cCQxLydCtvpOj/0ktqA1djBRowMPcj+A+oXdnRukB6EJq+big9mzQFM80ba
         MbH1e8KM7H8i4g3LSLuyKzoYtPSS9n8i9yM0SF4X6gNu661vXisIRIqNL7ZLXXyA6WCP
         HYou4GlNBMk+fGjHvQvt9W8HYYNym02o5/AiPadyzaZ31qkNyo5ixJVUx9WN3NvWUaJD
         s84xiJfzw7jsGhQ6z3MwigUVgyddHjE25Do/DfvcbQLC3DI9Qn+MaMYtyNYHyz4MveT4
         Rw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505817; x=1704110617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OBMfr2lODPMTcDmhNi2VGEJxqKx/p+20Q8QVTg+VW18=;
        b=teiBqLK99vbqWK8cQFdmwpcuYgH8Avp0NRYoX0IUB4rZtTh85jCjaUqZbLm/xsqgI0
         rlLIPy3DsgDecYTMaRckVnHPBHypuutHv4n4FdB635GOQdy+gHBADvosjrUQZQgvDc5Q
         bvtl+oqLTIuA/BrndYR2oyPaRdFHCOwfowBlI8wo3XQHkthhiMN3HFlt+l/WeUBtC8s8
         kqzmxK2nyDb4v8ysZZ5aTnyplgr32fZlk02VbTWzxl4fqDOuhnSt/DaR60kbG2Yfgb6h
         B18l/WzDb7JtH6EHqIy/N7LC7GtXFLjfdmLKZtM9Benn1aTjzRIXkTpBP1n9tMBIb5Og
         fYhg==
X-Gm-Message-State: AOJu0YxjUKwGdSY5nKkE/qUx8grU6OoyOklWQYgTQrnxRDD53cYpU6Z7
	prHmISk7kKEQ8fLHzbyw044=
X-Google-Smtp-Source: AGHT+IGfqoB2JSmAZYfEAxqhXVOlF0JJXCI1ezf7LSzIcBi7ZdJYjof7SQRLfWvwB97Fo+0fQFZj9w==
X-Received: by 2002:a05:600c:4685:b0:40d:39ef:baca with SMTP id p5-20020a05600c468500b0040d39efbacamr3117945wmo.167.1703505817073;
        Mon, 25 Dec 2023 04:03:37 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:36 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible string
Date: Mon, 25 Dec 2023 12:59:55 +0100
Message-ID: <20231225120327.166160-3-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040339_828902_56C910AC 
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

Document the compatible for the UFS found on SC7180.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 10c146424baa..9a4f2b43e155 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sa8775p-ufshc
+          - qcom,sc7180-ufshc
           - qcom,sc7280-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
@@ -214,6 +215,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc7180-ufshc
               - qcom,sm6115-ufshc
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
