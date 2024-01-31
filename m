Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16780C4828C
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01NI91J8o7gv+E7HIhdt4sXMvHSoBrLj8Vd5IFDntBg=; b=tcMCHG2oeqa4Y6
	YwjJZTtWiDn5dquJikkFgC4KD5KbG8Gdc5bgyOve1oEyCiELkgID751DF6HLW/lgr666R4ia1Cjnv
	HNCYx2z0GaHEQoDn7ajiwQnYoZmYKgOkg+Qr6RK6SbGJvcsKOfDXkPQetOuVQgDzrntUrZQj2GMKV
	AhK8TKpuxrXBjSoLP8icJUh1lzyNGAzAjdRmBVBIOuW1NhpN3tSQtJptZy6HMtEeX8OklTSnf4ri7
	xLrZZYKNOXfFPMaLEcBf4jVsCo++KvHcqzFTaggcgJNZsJ2e08kdrfX8E/EWhrgttEaqXMDk5m44x
	5c+KkJ2b3g+1jZkhSTJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iP-00000001jLT-2KFQ;
	Wed, 31 Jan 2024 07:08:57 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iN-00000001jK3-195n
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:56 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6ddc268ce2bso2851515b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684934; x=1707289734; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lfqgfEY/9zrFocieEsFvG+BaeQL3QtvBSTTkm6Oh0/M=;
        b=gYcyrmQ8iPQeDYs5aY8LXjvn17MPdgcAASm58ylrLm6ET0HIWn9U7Cp5lW7EL/oyEV
         Nos/UayIsCsJt8zfDTUJYnqhcQZVG4InICk1gI3d4baoen2moO69R2gGUhvsU9xBDUiM
         eW+No2rBW6x0ckn4C2+y0VlhljeFLGgBIQ3X6k4KP7GAcBug1i5FfpKtQBbt8dU3JhAX
         kBMHoeN1F87X/B+oQNBoC+aZN5euzYlSl/fMGxl0bRaagujF9Hz1XvLuCynF3JEkAMra
         Xh53IhB6hlUm/HkuKP44MwECJDtJngLDcJ0IuJs5flipzG8ju/Dz9uRm4GxCVei7xy/R
         CHOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684934; x=1707289734;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lfqgfEY/9zrFocieEsFvG+BaeQL3QtvBSTTkm6Oh0/M=;
        b=d56JokoNr9C+WxhpGcsTZz50KQlonc3CtJunnNeMypFTash2H1bR3Em2lQlZZEkx5W
         Pv2qgD6xO7BXBv5IaVMvFH6pkkcxOVcWxBuCjNTBkZjPYE8KUAf7IkNwfCGB2raBlN/Q
         axS/2uNUA0XEu2d1Zhkqpuu1QB+CblEOz9EbUDN82H/f3m7bDW0cA2TU3oakoV0fM2Ti
         qCTHB42wnV6chTi04vIFHZhLX3udxW2CiywEi57NDJnhag5tBXPAu7nF0YzZgfU/brgi
         j2K3N3WApS9u0JyQGAnZ4aYDh774KNWyPhcpWx2m6YbQEqkVJ+0Nhlfu+X6ZZCCUPKmz
         RdXA==
X-Gm-Message-State: AOJu0Yz78yH36nGBSL2lGxUEo0ZlMvacvthTXbaDmQaW2LSx67/hMRJx
	lY+CLQHz99fiz9pmZ1cd2tAnAX1v9MiI466wRG18M780/fVARTzTOW4Irv80UA==
X-Google-Smtp-Source: AGHT+IE183H4+eBdANrB/y+h/GNBreHlIeZu70BjrckWXN5+iab4z+T0w1c1FZKIZw+rEZuhBpgvvw==
X-Received: by 2002:aa7:9909:0:b0:6de:1d17:f554 with SMTP id z9-20020aa79909000000b006de1d17f554mr668851pff.31.1706684934040;
        Tue, 30 Jan 2024 23:08:54 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:53 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:32 +0530
Subject: [PATCH v3 09/17] arm64: dts: qcom: sm6125: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-9-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1191;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=K932Sg5/cnLt0pSLtpFRZiy3/pbY2ft7JGRey0Tz5go=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG9rAlbxLZ1YRxZjQkn+XueNJgJv1TDILi5c
 HHslYkwMqKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvQAKCRBVnxHm/pHO
 9XQVB/9lvk7C413OiitfjIvmwPhhsaehwY0HT8cMBf62Rd3UR9apdvaXiZrjPZbOuGFIQ+MgRse
 lCPJdh/c/2AcSAK4msr+ANHA/Vb4IhJsct6GVCzx6TlAEoEc51DFxJSxCX6RJtDidsRXwqRtfp1
 ee7oCVrzneUIywk74pynD2nDlMeLEvWM7Bo+pS5HwJvtiX16RrDEtJz0Y484w43UZd4TB7m2yGy
 kAO8olIfCOskFev9+iDmtFb7K5IBOld/p2E5/eU3t7BOAU0FlEN0uVjZlfDvWTj+eMRs3YjJlcK
 Kq/0lUDrBjDvTTgQtmSORJ+iIizqa2cJSJR+rralqFRNzBxM
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230855_359187_7E07D96A 
X-CRM114-Status: UNSURE (   9.22  )
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

QMP PHY used in SM6125 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: f8399e8a2f80 ("arm64: dts: qcom: sm6125: Add UFS nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 00a2e0980163..98ab08356088 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -812,10 +812,12 @@ ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6125-qmp-ufs-phy";
 			reg = <0x04807000 0xdb8>;
 
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
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
