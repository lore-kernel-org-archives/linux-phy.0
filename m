Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5122BC48285
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZCmKF2OLWNckSlupVRah3RB3XHyJTjw52eq1Zp1D9I=; b=nGFzEi/EODBn7Q
	+8mZ9BuRkFdaM8DVrekjtJqj84dwwE//IWBoNtPmM6ieXMVVpnKTwo5AzEGMtpIomLDzoSHVNAdjN
	QX0UexREGrMvKGW8heDpFN1NnsbMp0c3c3Wxp7X5gvWhYgO/sEHZdVE90OFvxdtbfexWBUPsvOHN6
	dMX3yxgJJToMtue5fUSRUVQ7F9mjlT2kx3iM1+bfpAx2ltKUbOa2ImQR1Jz/6YrJe6EQS3gxRYq67
	TUUkDxCgxJxRaRFkk8UPIZbJrR6836yLsJUERc3AH+k3WlycKRWl/C1KhF/JJZ3nyfejDhVgBFY55
	Sn1O1PLfbhwx/tEqLT6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iE-00000001jIb-43ap;
	Wed, 31 Jan 2024 07:08:46 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iC-00000001jGF-0jZd
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:45 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6e11faeb125so1418578a34.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684923; x=1707289723; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njP+OEDQkKn1TrRnppMAcE9vyBEaso10MbSWJKOkprY=;
        b=Oy9ss0LN/aUFkYMtCJVaHPZiobUIxRlc9yKqb96B2yKdu+mYefMXGiKZbHLExeUM5X
         AjP2IAczjYV57ZbJZUcv/Ox90PWsg/ZCW4io66yNEAiCLeEnc87PaxfdEkIg9emB5whu
         8F16akml89+1rmtsd9F0vnkHelX5Zj6bezM+zgVxvcgvRWtFh1ho15lNiuEN/+GZc9BP
         SOEIohmRuzNs5Qz+/2TjgP347XLLJVQJM6qEEKWVT8+rQhOQVBYOjAMaoM+8vNQqblDJ
         SoyeIrW4g3asyFpkDZOd1EKskbl0Al1c3WHuzqQSG390kximEuLdKJ2U4LqK99F9ZGR8
         srbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684923; x=1707289723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=njP+OEDQkKn1TrRnppMAcE9vyBEaso10MbSWJKOkprY=;
        b=wUcdB0GiIKvTrio08rQoLGc6+j22WSWfThqCqJ5DBbQ4V6lKDzTOmLJdGl1Adhy7Ix
         Iqa4ZYmWzry5KBZq/q040a+xX8mylOdmfCUDys0ytXTXcSC3b1ozJW3rRsPGWwdZQHVP
         x+Z3H4XKTLA4Hg3neEIHwDS4gfBZegFg5s3R1jSXSpDv7xeYii5iENLnsQgRB7IfjlPT
         9eICT/9tsqYbtPkTcmW1pmSlOceFQ7GGZWJJWMwePwjNz2CtFI57vH3WZ0mOen16mNNm
         8O4+vsJ0MYeaUls47piYV2aE3p08z9SmKlyYonq0CsqB3Ui8em56W85UtZuBl2mNE3vo
         zSJQ==
X-Gm-Message-State: AOJu0YzeHiHdXCs6zWAgfmqH3i1CiLbSBMHY65Tv5BfzbhYSf8S7xPNJ
	2bana8otXmJt90SHOSKd90YIp64LOwlFdhTC/jVZaDlho73dZjMosXL18t070Q==
X-Google-Smtp-Source: AGHT+IE/klBzjJJNFOmlyV9NZ7vnLMoex1b5CiTVWu6KTQm+yc59VzxgLRefszH2ayFJtPDmDq1Dbw==
X-Received: by 2002:a05:6808:11c7:b0:3be:3326:bcd2 with SMTP id p7-20020a05680811c700b003be3326bcd2mr894825oiv.15.1706684922921;
        Tue, 30 Jan 2024 23:08:42 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:42 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:30 +0530
Subject: [PATCH v3 07/17] arm64: dts: qcom: sdm845: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-7-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1300;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=tmSSLxlW22wzGNtyc8Ug8x3jS/9hAQL5kq/X5wSJIeQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG84WRIqpIT0t2XtB8cfw7v3F+Y9xNoMVn6L
 aZqb4BH0Y+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvAAKCRBVnxHm/pHO
 9dITCACPOuFykTh4yxQHhUpB8zFEvijkc/6n55tor3A3atlv4OC8Aaig39ca55pPDZTpRsdzOvS
 u3o2XfA3i5UIY2Pf5+YEA+54KOq1kcAKApv3LLJgcvPIAb15f7kYTqRYfPIAY+u6DZicjlHvl64
 gDRON7nYBt+Luy5kZ+khEsMAi+aGgFWvPKjNzNOX1MCVHIj5IaLk8v3Flk0nmLAnSKCS+8OgG3F
 e+GSDlqX8F30iNDC8+XMZ8yJ1Rq0moaPTOl97Rd8pGaQvcKd4biXwAr0G/fHSXm6BzLnsk+W8iQ
 ZdlgtoFdkCQNmiCl6fW28VzXA/6HCDCJ4pxPdQVaRIcTYmfP
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230844_251675_09C411BE 
X-CRM114-Status: UNSURE (   9.60  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index c20592fa7dc8..d655bf5bdb96 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2639,10 +2639,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sdm845-qmp-ufs-phy";
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
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
