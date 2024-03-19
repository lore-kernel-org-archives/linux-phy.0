Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74460C54E5D
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXi4VF7HLbGc/57HE8YR5a1tLs5t6vyFVnbNq5K+ZRQ=; b=GV5Rk42nuMntNr
	78XHy6UAIl38CJmmzOYhbPqvXtASs/VhPHmnwzO/ZjZZPlHiXcJIsvMjAw5Y5QuAzZtfDEZ26FuiD
	OXq3tAHEliv0X9SwdpRZx+bOtVG7N7PmrpXHQoPgGMRA4vjKldCeY+WUqBHwoJuoHOxdog6cP6Dwz
	7jGt/yRCk9PsAiBnch3EntFmop/1dvkOTlSwVPgIqDZsKch+m/o01kguWqTv6AYiX1nyVnwxQzBPV
	imswAVJt+j3AljcFL6sGlogDW9U4YI1RG2boJsxF305zn/gUxknjLEydk6QlZt1/8fCoukxu/TBGY
	op0igC1G5PBO7TPlmiCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxp-0000000CLLm-3OOl;
	Tue, 19 Mar 2024 10:45:01 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxl-0000000CLFd-14Qv
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:44:59 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5101cd91017so8536414e87.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845084; x=1711449884; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8m1FyG5u8GQQEct7h4s3Nz1dXp2hiHWagDMj+Ic2EoY=;
        b=wxouV/7WXchxrXlQ2ctnqJLzp1/MRwC8g9w8efq2zLtKnWNPwhZgysESANBK5RGf6h
         u8u8Z00pnQhMghnzF/JFpLF8Y9c+q3U9RmflvOs8tNVuHcJW7vV48Y4BdppSgjW99PUt
         JRHo15JWEIa5LbEee4s40lL4YvKz0A/0HIDVX2mRYrQkRseZRr0QuPz7ybPp7J+ucLao
         EdjkngsSuk2JWYMGTqHO6InG/stpt1Hlx3eJnWuwoE+SdKDrIYwKSr47lwTGyJ/JCvxL
         sPAtuxNvDYEw73PGOaRhSGaqsBygpNXr9pNSZu66JDi9dUNkrPJ0ptPEasP26DpM0ub+
         1Wag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845084; x=1711449884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8m1FyG5u8GQQEct7h4s3Nz1dXp2hiHWagDMj+Ic2EoY=;
        b=Q2xgDcCLKJprVYYjnZ540g6b73guOqjFxP1t74gcSLscCIqqpZbukc/+juGic1Bt//
         YqPWqD9Zq2BciE6fVoljVabs3PBU0SzpYyv97nHzVcCveSAtQwyL3lZ8c1vF1frfY2os
         ETeaDDajPC/B0fpPW7M3WBK3Q2BvUx4lUNNhYrEeGpSAYMwloKG8oI1kD8w+rnvZPLJ6
         DLmvifvDjTuXECp/DV+00IipzlUWtJRrnt2r9z4rO7ZCaTadu39icm0hlSAsTh5RzOlw
         zcaYty+l+YFT8pkz5I6xQfFzCx5lKylsDJ7zk/HlASdjkGxRI+UKqqetw+p+XxsAJ5pB
         nHTw==
X-Forwarded-Encrypted: i=1; AJvYcCUJi0yn18ZbS5NNHa2RIASqcsdx+/5RNZRdrxQ8ewC/doS9BadIwdVD80vkP+YT197bG0qeuB0mOWJpAcylIqkMNqwkMPLJNvg1FeY1dw==
X-Gm-Message-State: AOJu0Yy6Lgibf89Xfmuy1PbO93PPenA/Sctbrs3J2iGhjHq7PdTpgWol
	cnIyBQIL+PymdpoVQ8FKdebzV/M2flv07w4nROwJhBXzQj2g++nOC37ZsqKV5q8=
X-Google-Smtp-Source: AGHT+IH4qgI06dPYApwodVQ3FTy74M/71xFzY2Rk7TQE3K2QipKLf85i9PNvOV0/4Gk2z5jeC02FQQ==
X-Received: by 2002:a19:4353:0:b0:513:cc91:9ed7 with SMTP id m19-20020a194353000000b00513cc919ed7mr9114318lfj.11.1710845084028;
        Tue, 19 Mar 2024 03:44:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:43 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:30 +0100
Subject: [PATCH 4/7] phy: qcom: qmp-pcie: register PHY AUX clock for
 SM8[456]50 4x2 PCIe PHY
MIME-Version: 1.0
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-4-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1591;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=7QLKA3QCwIHTu1uCl4Uft63n6NWS0zSd7AfWUoODRBU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyVAZDzXPG4KQTDQzLaM56V66kA63IMsZinIMaF
 RF3mAvCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslQAKCRB33NvayMhJ0YCoD/
 480ztKunFuE+cthxpgF2RoGG+eQevCPiCjSpq6O0B/HkpJWOiFzXAhAg8LU3hUWvPzZA2WPwRQt/tE
 uDH+Jpbi1gFTDqLxDksVgl1r6Lgq5MrXfqOFfXoVhbK4D9Dl32xOzFnfsu1SgUKgyFv+9oUo8jiLJh
 tl8d43+NSrz3WlI5wipy0S7BKgugJ2edl8bM4B7aMZXKwZOuegivHk+UU1LzClaPQfXmz+73szI6Q/
 S9BKQQ2cPupiBymf4mdw7NisbsAPSC19vZ51MYONjXkaVoFVMCMucIFOo5vBd1gGoAX/3+IVrvCnih
 e51bEMEZfcGZi1yZQFsBWs9YY/oktcJTJyXY6GZz+jbmwUWZuhFY8+gsbT46YQKRXaGJBF0EQl/Ttb
 n8Om/JYuYbkT/l7HOszxStDFIGxx2ib0bq4Gz7IDMsXJsJ6ismk1r2xQU5GiLifz9cO7o9/tqJJozz
 iTRALtmM80MY1tyj5hd0rbXgbkt7VV/AK51BjEWkLVcAhwdD5YJVpVpQlmedCMaZ0Qdp/Mf4Aq/N6w
 2RJnfVTjm8dhe8rqKUCBMIHicZPx3XIb8kAAApj69vQz/u/ElHuLi79FS/cF5x9g0a0rabZg70Gbwi
 /e7j8bcwhg7dBHbDwSjSC9kvpefl/9E4vbKmKeNE6xDqUobH8FZ2H1gcZelg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034457_412785_6EE53E37 
X-CRM114-Status: UNSURE (   8.67  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
enable this second clock by setting the proper 20MHz hardware rate in
the Gen4x2 SM8[456]50 aux_clock_rate config fields.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2d05226ae200..cea5655ddc21 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3141,6 +3141,9 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
@@ -3198,6 +3201,9 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 	.has_nocsr_reset	= true,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
@@ -3228,6 +3234,9 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 	.has_nocsr_reset	= true,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
