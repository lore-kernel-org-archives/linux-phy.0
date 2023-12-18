Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2B7BC35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeoRYS1E53TgD+rg2giuX5TdTnQN9w4HUk06mU6EGaw=; b=1g03d0CU3rduui
	bTIFnvDHRvPathiAqAVzg7vyUcjUi5JwfmKTJwD+B7hYjYnFPCudCHw+U0jiqQHBL8YzsH6LGC1jT
	nMHbOtaqFRAn/cXpXfXApVMRFf0Alwkacp5/RxDQ8aSpFTRyqSwB2ix7SEvjbEUqUKY74MjU2l4vY
	P62atkeQea1ULOtK3nRN/eJQwziYx31zi1fpQ2o9tggPSXRHU4ZnCoRktHpIRx6QikDO5BZgrvVbF
	0ieE8lF7LSVIWUyF+4Bvq4Ez0YQtdrRpRHZcQraj0GoYhmmllWXsabt+NWTQo2t/Dh48Z79PT2Qvx
	/y1iiB02H0Xqr+5fyDoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQc-00AYit-2B;
	Mon, 18 Dec 2023 12:08:58 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQa-00AYhg-1A
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:57 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-5c229dabbb6so1020340a12.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901334; x=1703506134; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dnV4bcTFVg58y8kcgwcwL2c2t/omr5+/badatgzAJ70=;
        b=fHf1Dpi/6zgelQotFIad8mvWfXLg7npNhc68JYBF7snEC1zOcKRokFIUc4wTfsyRej
         kuNi6Lp2meMA+8pKrPEXvZozkZIqn3QrERvhGYSoIogjI3vHpFWaTKdOT1QRyu21QbdQ
         P/Kfe315YK4KuT+1/NcXpii9uNlKjaBUv30C2LR44QCUEhTb3aawT/kGB6jUPJE3BNZD
         2EV5qdkjXqY3IQL3tQa1rOlMM9lrAaiZys4y10slHvapJDxnpJH1ynrN8PT5gkP/gAGW
         qAhAXAxPiO7sEek0GsllYlW1ROQ05GTeqbf8t5YDtNlBl84bOvKXZP1EwlH61RUtG4gx
         sY8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901334; x=1703506134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dnV4bcTFVg58y8kcgwcwL2c2t/omr5+/badatgzAJ70=;
        b=V8Nqrv/MwxNiO8QhAb3Em+30mf5nN/qx1rneIJwiCu2DprbuGrYIXMJ8Ro8gBX9yPb
         AB0CqDqoS6702OwawMJ2NQlrVNfGFSWZfTb7ChGPvX+rNN1J9GdO4Hr5NUISP2h2TCHW
         m+QukPcCmYoFeLBRprDDZc0BWBywLTH6l5pjAyDe44cJ6lSDPkq6xDkMmbopjNpyq6M0
         JRzm29YnfbscDo+AmkVDlXFg5SJSHgK+el98rmL+5prMAK8HfrdNN5w7pymlSfHzvKJj
         NYFU3JW+UUvoBIiEGFbZHY8bY/wTdcVS6sRSifBSy1wcTQ+XgL4jDlE5XSoKTTbwhRWg
         fF/Q==
X-Gm-Message-State: AOJu0YypQmdCOsrMEbJmAG0lSjppeWvAk2V+Vwr4OjcHikCbg4Zrz0IP
	GkAGXnknlWp38aiNLhZ5XqO2
X-Google-Smtp-Source: AGHT+IHuv5DOigTJpGQgYUD2uD4WFD1pDTqLP86zuwQpiBhfnEWtjDbqCvw3kbTgKREgnnrh11wFeg==
X-Received: by 2002:a05:6a20:5603:b0:18f:97c:ba1d with SMTP id ir3-20020a056a20560300b0018f097cba1dmr7867193pzc.119.1702901334495;
        Mon, 18 Dec 2023 04:08:54 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:54 -0800 (PST)
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
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 15/16] arm64: dts: qcom: sm8350: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:11 +0530
Message-Id: <20231218120712.16438-16-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040856_395880_26DB1F01 
X-CRM114-Status: UNSURE (   8.68  )
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

QMP PHY used in SM8350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index f4b8439200f5..38a09d71b3e9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1727,10 +1727,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1_CLKREF_EN>;
+			clock-names = "ref",
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
