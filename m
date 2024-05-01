Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20881C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzKBebSlYTAslWyMEtL0CmgmaOvb3f1A738WBEeisWo=; b=OU/WohPDlE75QU
	xGEfkTTGdUL60I6fE1Qu3SY0N5v+xFKLI2q42n5GCr2ecps4bukwmlb2z7um74agE8h5hnKKdSXtf
	1AokvQ5Lvf+q0P1R2AksMS6V/yLWaEVKf/mgcrGq6bjDQClyVUP1u5ZFR7SbuOetD2s0RPk69jYF3
	0d5ehXYU2rqHIEWwe1vmQHlAUHpSirvQhcVRJ5ESOTwWTz4v+KSaOKSbfQabPEBEnZ2XnUoBM8kOk
	6tayYx7VKSNi0iNFwYEFntTmpqUGaovP4LhyORt8SE6TYqjKSiZ8sg9CLqGPl/QuvXTuU4CSTpWkS
	XPTOyyca2Pjr6d8d49fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgU-0000000A7F5-2Yk2;
	Wed, 01 May 2024 16:19:54 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgQ-0000000A7B0-3PGF
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:52 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-516d1ecaf25so9535031e87.2
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580389; x=1715185189; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tlBgmHn/PpDtQuONndN96choDJkuX35LPpUAOc/PmjE=;
        b=IhqQ17H/dh9KrlNqPtHBQaElV6toC5aJhJod5E8gL5OvtQSOLRgJEh1EfsB7qt1uby
         Uel0nAjLWDNc6ndvhmZogfg9yAC/ls5+vfKF6fgDWwTUUESZQuFeSXwHq2Scq0CGbxn9
         VyOcHHKJM6Mzqe45fK8QG6YxkRY8ubZ0NSieH5t6efKBwchREZDwvsthQlzWjXW9zO5Q
         wzIzQ1ZK+mWw+v9cN6a0ySjsKkFKxGohLBPDipYy2RZTfHU6i7SbNKMbPonCXEKlaY/D
         6lnsH58hplG9LxVg9ZN6d8LGKdmFQPwQ8Av56gtPk3ZiYPjoyMx3WADSfuE2GlRm6bf/
         r9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580389; x=1715185189;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tlBgmHn/PpDtQuONndN96choDJkuX35LPpUAOc/PmjE=;
        b=v6r3Iq2eqP43l/len86myfXtW1cKt23aFtx+obe/teEPdXCawt+71ftzId+3nzJQPt
         Ach5Iqfb4gVqugyILEmd2oQPxdxRoWfaoZm3mnYBRgZWnhpjCJMcQm8r/8En9Gt2W6bz
         J1xhoGFfFQJTw2S8p/AT3ILO9YGtcIZdpcK/JWsZB+zP1qyQz63ie09KBhk1r6m1O7d4
         IdXwF0fYX46/AheMzANiikYerjXIVNOpfU5x3G/Mx+SsGNM2YMJrEAzqf0t2NASMkSZ1
         YgrV4PaleqtZgH/WBufWasWfv7eN6c0wJrGWDGPH245QM5CXLS+HHuMBK+Q0PDCQ3tLO
         IFUQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/KCcafDG0nzc/o+ITpJprJV9pCTnuVodBDQ+vfr2pu1JKRifDyezg5KlNhjq9d5HRJcklu+p5yZYznJtwPfpx+ai1STybVri50mmMEw==
X-Gm-Message-State: AOJu0Yzw8w0fVyXRq3xGKwWP8U4Z/zq/Prs1w3ns8gF+eJbpRX6DHgMi
	ZBdrYFSowavUTuLD2cMvzQ0a+d6kZ/8Aa18OU+TgFlUUeGkyuxG+EY0FxyD94ls=
X-Google-Smtp-Source: AGHT+IH8FWbYXk3WZsUX6Htio1PWuqLPJdA+M4B9jVwynpQ7Y34McbPbsLdTXEBKn2F/NOZNkgGkPA==
X-Received: by 2002:a05:6512:3a91:b0:519:2828:c284 with SMTP id q17-20020a0565123a9100b005192828c284mr2198578lfu.65.1714580386985;
        Wed, 01 May 2024 09:19:46 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:33 +0300
Subject: [PATCH 07/13] arm64: dts: qcom: sm6115: add power-domain to UFS
 PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-7-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=776;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=naWFrW0qlpkbnfyMNz6lkTT4Kg5gQ1w71bgFqDbRi3E=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZwoMNt8+h8OWQtoxvqSZIxiOCZBaMItpbd
 b/edI/5yvGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1eZ7CACMljpmbXnA5ga9/FaUsBK5o+tLmIW71XhWxRYNLrt8LMrExJ4ipQK0K8sWVC/looM7E/R
 u7XZZ7lBhiqujgBmVDadEoCCXwNOC/TywEiJ92xuL0vxnq+kVahLBmqTs24oGW87n1Z142516f7
 uyVkoLc9H0RYffUSnOurYUZ5vg/dZUdySGjrV2MMAhLOb+PdPolrSChfj/wtoRQGSoRwVoWIZSz
 za0TYe6q4Bn7/3HjjUvStVIbss2akuYGHOnJ7/zx+jH+SwEIZirRJVNVVobMsx7ufawo5ZBTw7b
 7uW+TcAQVjV7dwgP6qTnUV7Nrhs35mcse7ZfzM0vXQifmcse
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091950_929035_3F296AEC 
X-CRM114-Status: UNSURE (   8.62  )
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

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index aca0a87092e4..5896868d9e6b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1230,6 +1230,8 @@ ufs_mem_phy: phy@4807000 {
 				      "ref_aux",
 				      "qref";
 
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
