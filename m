Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE8AFC4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 04:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UilHA5x8l6aAZH7kqACMsAi2u9Zubi0T6Ohp7M4Xjtc=; b=RicSHlz8ToZ31F
	ekx/DniZJvEYffxA3NHRNFv/UUFh0FbaO5uCaaXNRigEFePL0kfwfaUCTXEi3ia7YkV17bEslDEX7
	IHNnlFJaKJHIuICeZcVx5akHyVHvH90ehecSJ2MnqV89+ljF8WU3HcLJgjOPbHxm7+/JT0Kl6Zlxc
	9NlQpG3cMVj5WmvfoXzzImi2KtB95U8N5y6D2QzVG/G+T32tCi6QhWIcOfemGLF8XS7mk+pTDRW+C
	u77JIu1jLsTtIgfRVGsyocDIWu2WYwoxjB/qAzL2FW4HV9cXFBjs3RUfSnCpaaRyZS6hjKaH3dml2
	ZRX2x/3/CQC5+IJdJW2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21GT-00000008VMB-3jSP;
	Wed, 01 May 2024 04:08:18 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s21GP-00000008VKq-35yF
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 04:08:15 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3c74a75d9adso4257462b6e.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 21:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714536492; x=1715141292; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghcu5svxDDMwf9Ya6V/1d6nG/9vm8dM7H011zLAoFaA=;
        b=b19mikk1lEiAMVXOVHGUBPW+fDa0X6RF3IrZJA5ZRb/aGiT/SjVKKXXgw159kQFBI/
         O2tVgRtORA7a6LG3M2s/9ga6+r2emsGP4dd+60WvjaRRWgEmTKnEFsqx6VE803GLe/px
         HtipTDTPwPz/5+w6eWWtRfQZ5Fj4h8Knqy9qRzhujUQWAY0XjQsFKODAx/Rz42py/FZX
         ec5teKCNrQ18x5fxZ8+3wfBNT3NHuiuEnhB/k+o4srEoe5AUMLy/Yf86o5vzXiOv2PCL
         ShJsZKoKL/m9rM+HjlqJWbPGIsQGQLIJylFazhlK0KSL/5Nze30686B3eSxkaEAHISrW
         N6gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714536492; x=1715141292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ghcu5svxDDMwf9Ya6V/1d6nG/9vm8dM7H011zLAoFaA=;
        b=nQA1Eep6djAbz9deB3taQrkByzbTza6GOWZEyOtzMer/CQR/hNaqTgbCVvINu/Fp5S
         zjArptZFhDAMpT1Bn8l8H9/VXUzeO895MoW4LMAYOWfrFk7XeNOuC9/WIgLYCr9D+at6
         XkKAxLqV9wVh5qFEavNQDY8KjEEBMXIRDqaqmzlQl9b+LKTv7J3RXDHR/8oJIzMdrMfz
         q53em2Pf498NRKai+/R1B2faYtYYY1vr85bN3nN/EZJ7DWffwXlJFOD3GIuXI4uLOOux
         kAlXlj9snSGFhEVOAwJRAg4qZiCSMEvmxbr3r80qP+yNcENJ/796UaSq6JOxNNWgm99a
         ry7w==
X-Forwarded-Encrypted: i=1; AJvYcCVsZHQOfYEDlJH+m53h5SLBGmJ0kCHXYrMq+bxIMQ9wyTBexfJGov1pJDOpwaY1PhzkjALmvCU1cD7defRSsIR6K5Vmz+9tzpTajNMLTQ==
X-Gm-Message-State: AOJu0YwHdl0yOEsPb2AmQ/imgS4pEVQQeughunDvkh9O/kK7v+GD06UI
	VHzLqKm0V6/eQ8DGz+QhBh1JVE5HhBdbgACdOt5NiR2ZPoxLihpF
X-Google-Smtp-Source: AGHT+IE0E0/DvAkXZtkuPvqDWjEfhTKVpwqRMdFGJ93BhhRobghlUJxth/c+MqrZ9nW0kZnouPr8mA==
X-Received: by 2002:a05:6808:5c6:b0:3c8:5c8e:72db with SMTP id d6-20020a05680805c600b003c85c8e72dbmr1526720oij.56.1714536492481;
        Tue, 30 Apr 2024 21:08:12 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id w2-20020a056808018200b003c8643f0e5csm1067872oic.16.2024.04.30.21.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 21:08:12 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	quic_kathirav@quicinc.com,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 6/8] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add ipq9574 gen3x2 PHY
Date: Tue, 30 Apr 2024 23:07:48 -0500
Message-Id: <20240501040800.1542805-7-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240501040800.1542805-1-mr.nuke.me@gmail.com>
References: <20240501040800.1542805-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_210813_803352_339E9B00 
X-CRM114-Status: UNSURE (   8.32  )
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

The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires the
same parameters as IPQ6018. Add a new compatible string for this PHY.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 634cec5d57ea..8a8e23282d1c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
 
   reg:
     items:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
