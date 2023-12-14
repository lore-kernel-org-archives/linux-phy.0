Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F5CDC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ik+7u2/eCVG+k1Jujzb5qXo+FdrwJcjOBLUTgxjiSJc=; b=P8rIB2J2eYF1Mq
	+vWpabmdwDSxAL+7ikwrxDP78qwxxu4K+noAyh69HJpx0BCMXCsbOc3u6YStDmPHIpUgz1k3JZJX/
	rQDeWfooJD9Em4+wJAyB/mUuKq7j8C2aCzfJcW8pCfNIbzUJa461I3Z+fPdFo3YbLFOdreUCOyMBm
	qnpqrQIXJFB8MVXglcYr6p559MX1Ww1a2+EnE2GTa8UM+6KksupNNIFaeEQyKZylp9Mttx9FQ3d/g
	kGVlHOUjE0K7MRaIvLq+a8t39SvnYt5UqwT5UzUdMn3Kk4nMv9a5OX//skVkUZmtHDJ9oOV6SQt2c
	FnIhWPql/GD71OAvWAxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlE-00HJev-2j;
	Thu, 14 Dec 2023 09:12:04 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlB-00HJdu-2l
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:03 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3b9e07690ccso5129437b6e.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545119; x=1703149919; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQdElwhJNkunjNkKmQMPCEqC6kOTfOJsifUeDg9TJE0=;
        b=eNeDN4I1cQwhkygEdHn1LrpTJXWHE7qw6c1imrDer01vVyLHMLkyHU2s52V0Ue36kQ
         wCmFEvIPJEb1S6sWpBGFsK5hiUa4r+zdje25QEfROL3y1rbU0ePRFnpcjv9X4ta2r4w0
         krygmzPQi5Uc3j1GU5NQxgc14oIRBt3v1x6cxg1zT4K+PdYiu3hIGtZqKrMC9MbSRazo
         Yp2Wgh6wPVzfcs/H8dAon34zxKMSscWOj26JRcetpvxHXwnvYDRdSYlsltljfM0z3H7T
         aq2QjtqlBSsiiuJlAS18F29meb9Z7uFmOkzbp7/KpQK37NMG3JMCaIE/HQwlC11Nxqi2
         lfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545119; x=1703149919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQdElwhJNkunjNkKmQMPCEqC6kOTfOJsifUeDg9TJE0=;
        b=u2l2EereoVwF53sEmouXSR+nvojJ9ITWCT77UkWkJzwcJ6CoXj6oKgou8Yacpt0EXd
         9OWZz0eVf3ZG5SHbNuiyZ7/zDkmVhaH9b9WUd1A1QUtU2OnHvPlgJWf/KkS6i4vZp5FU
         wlf8l+R8TBcfnXfWhMxJMzg5dn8+ULlTCm9lraDXqwSmwz2ZqgZDl5wsEtdxW7vQzala
         6E0F71aBO3nE5WkY73cJcAygdkKptXX72MH3S9SsNWMOAezhJoEu2c+CSKGrWana6Pb3
         u1vt4SdJorWLS2EnyXw8+tbsBStPloZpP03KnPPOPTsNvwWK2YZpDdOwqh9f3oRvSQmU
         hLNQ==
X-Gm-Message-State: AOJu0Yx70hhmFvQDn4q+7SkSC2NMxmZME4+Jvkyw1pkZrm27FM8CkAbd
	69B94gMQCxntkMjvvRXVJ0Hv
X-Google-Smtp-Source: AGHT+IE2ZXrQH/tkC6vPcWBqL20LyUag+GiHHbxwgkxRG6aaqafMpRD6r+uRgW7b4qI1XbBm1Rau0w==
X-Received: by 2002:a05:6808:1b11:b0:3b8:b063:5d67 with SMTP id bx17-20020a0568081b1100b003b8b0635d67mr11293668oib.78.1702545118828;
        Thu, 14 Dec 2023 01:11:58 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:58 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 07/16] arm64: dts: qcom: sdm845: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:52 +0530
Message-Id: <20231214091101.45713-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011201_893759_1A33436C 
X-CRM114-Status: UNSURE (   8.83  )
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

QMP PHY used in SDM845 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: cc16687fbd74 ("arm64: dts: qcom: sdm845: add UFS controller")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index cb3bfd262851..a7529af5bc6d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2619,10 +2619,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
