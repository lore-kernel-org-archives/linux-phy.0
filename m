Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD269C47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRBbUy03nNn/3hJJ/QdL/E3pNxn1pIZexqFv5NFQruQ=; b=JnSa2VEoKDjb4d
	WdYlezgz+P4oTcRNobjJE4IZXrPFPaMFq5X2vjDaTKiUaTaWNv4+WzScRgDy4Owf4bG96RekKed+n
	9r+IGRw8cKNUgUuPY9mhnlTq34E5BumuGkvjJEM1vDafXsGzOysFeD4KP2ZobddbZPODhfNGa3gaB
	WJzag/OR2qFF0X96VQL6wZ63RNNTPHzo3XYX/zBAEPyo4mqOkXKSYQ8wzE5a0EWeiRuG3kt2njJ0M
	VBnRCGmBKnFMXfeJceMwbvxIeiDGo1/yp6aN4ZRSf1OJ7m35b28ZCCcoLatyCeaUJXfXQnAe5tUrE
	uNU52tG9Kov2dIfZnMCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iY-00000001jPo-1mDV;
	Wed, 31 Jan 2024 07:09:06 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iW-00000001jPH-1lUJ
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:05 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6dde65d585bso2464303b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684944; x=1707289744; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P9oRSAu04dlCPd12GT5wZXY8U+i0UJEJNPn5iJdXIgA=;
        b=Mn7wz/53eWRtUD0fC9NNM3gSmpyuOE4iSaABhfgV1PhUWUJoNmkO5W8NrJpwBS67WR
         in6il4maNsYWsBbeFhAAQQrwd3g03NFc4Zi+RUL8MoIWf82A2vBtJP1ehloYrsDUgxh8
         FBy3cX5erUuPzlGPGZcBvhEiYhjf5IiY+l3NfEXLomiY84dwECnOerPK5Y9S2aYWmKzP
         MtN8/0ipfkuAO4bIXzHwcbO6/ewTfoPJnWhMofJJHrUCMmQLJWS9h7UAeodI6rkAPxwD
         dC8U9NBkNDGOhAIllYxjxevpAsKNPDK6kxTJOH4aqKCqFFyT2tgFeVcJJWNmbmIVYyds
         YhUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684944; x=1707289744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P9oRSAu04dlCPd12GT5wZXY8U+i0UJEJNPn5iJdXIgA=;
        b=t0bVJIssH/b+3eQYCah4UqHyhjZC1D5eCwwYTYL/XeGQGtPRCENGXsn9Q5sYKBKw+Z
         PJRq3oInARl/q6J0lfhr3LgRKb+neAuZiWdf7Zc6X4/4pA6y5dC0Hy9oM0bRuS/kJW8M
         rmJ0CiDiem7HAIEPOvev5lLMa8qilJDBkar2euquGHMQWu2uQq28b+lteJORF+AgAPjt
         vBq4Vl+NB5QxIRzJJbWEGqW9jjy4CvC8E9Vrs0hFprHDO1ee6vXlUeVnTStPt61xohsg
         BkOZM9wqW2/LCkG2G0Z6Pu/Cl+pOzeRZzWdOMHrIpQp8UPJsiKNlCiAtsu6z53rLRJZY
         66lQ==
X-Gm-Message-State: AOJu0Yxi6gq+U9/ozU6VZxIQ/snzJPDw45Vfnk0iPavuXaaXI4mHSuAb
	Lm9VJsjNmoKgRtZ+VfwkCfTD4iG+7ZX8CH/8wOj1ceNTgJGK8DnFhYY0zIg8rg==
X-Google-Smtp-Source: AGHT+IHZyBeQI6x6hJT6GYjp+TEq7RFTYqHZ3UOz5mdIL2YfygnxhP80fmM1OmJz57MlcaGiJbIX8w==
X-Received: by 2002:a05:6a00:938b:b0:6dd:db87:6356 with SMTP id ka11-20020a056a00938b00b006dddb876356mr1201124pfb.7.1706684943548;
        Tue, 30 Jan 2024 23:09:03 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:03 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:34 +0530
Subject: [PATCH v3 11/17] arm64: dts: qcom: sm8150: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-11-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1280;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=ROl06bKVN5C5JMVM/k0aozEkWtTHx+mchi2GT8R0eL0=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG9iupD1/Y4aBPSYlnuMUF3Udkm8VJwVjvGz
 uoQhWBDgyWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvQAKCRBVnxHm/pHO
 9YyOB/47DylBxJWasrkUuurfb0gcQALAFgW3b7qLrDKrxTl/uNX6iZj7wgH2YdtS3/PK96mUaXK
 wB7CxJOcNjN/25xYGPRnyCTK/qkRl7jwXKD1YuMsE0HQaWYjQSTehD6GZwk9OpoGc89D30CmNjY
 2krUhFisIhqOYNl+MMZYPcJ48WnsA3uJFiYfjCVE4CKhdcfGrsFEgz2MZf1BpKWi8gNXQdRHYES
 O88WjY1ujPXxjyUL9/GZRdqqbpucDSRDJsqtU/pwFgR6pvICvAmRqz4mMFY+L808ETRMIthPUpD
 hbkKONYrb2Wkwd+OH5Ih/Lonh4C+dr7mr2PvDZLPL5AgXY1J
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230904_497778_87424D93 
X-CRM114-Status: UNSURE (   9.58  )
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

QMP PHY used in SM8150 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 3834a2e92229 ("arm64: dts: qcom: sm8150: Add ufs nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index ad1af87991ff..eb1acea2631b 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2095,10 +2095,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8150-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
