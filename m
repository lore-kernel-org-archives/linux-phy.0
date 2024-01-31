Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B04E0C47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07R628Bbrhdcw8E0uCqDr7I/1YH8uMUxR2oaL/+UD/g=; b=a9tLNwoEMegPfd
	nWHXlMoeQcacSt2h2Ll+QZpkrLzbkdx7CFZEMxs14KdYY/7vlt8yAaIU8uJnGWbP2QZkkO9sw3rVX
	HBj5WoqNxUfAvobuzu6DoD2QwEd4S/813v7WWcm9/s4acpbbBE6yFRJAmU/fgv1Xb5piu1W4Z/X+N
	y2Fk89d0lVMTAl/rEzFi+oeBifisbfN0sjLtpQpVX87lmTpaKtN045rngpX+dmDEys/OFHT11Ug6J
	p98jYgKj5bZLzysc7Q51lRREj+KY0VirRKL6ORRzXtJmZA13zw2WM36AZUPIHNXsIlbnsJyF2a6+B
	UTiPzCGBEpC3NjTgN8aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4i8-00000001jFE-1XG1;
	Wed, 31 Jan 2024 07:08:40 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4i6-00000001jEe-2Sul
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:39 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3bb9d54575cso3531433b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684917; x=1707289717; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d8indJKUI8pGQPbvIeJ9tzfW5gFCDfCoIo/mhOUWR34=;
        b=M4ve/m5EaAz1jcZbOBxXzcp95ZtNulXQIuKkbGEopd9nGE5x3+9dB+rFiUjXrS5YAZ
         b1xH8fiabtxHHwcGSVVHjPUEK43PT9/wHzrzKmctQ6pVLaMNys3ZwCKPLF45TDb6VXj0
         U1k6qS7oRd2FG5LUOzZLXuj22UIm3S8H5eBd6UrfGtwkCH6JEAQAVqNUXFKt6N8NPUY8
         wl8pRjxx5cE2xfPrMGt8uMV6dVdcBBJWghH2/SLiqbmt3N3MumJASxThnrLefiQXfrwR
         EHhp6fiWMmcxerGXjzjWhiARPZj70EQOB3wBnOvVIhAkbr+ZR4hSOd5plcmh6uGim9Rn
         n9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684917; x=1707289717;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d8indJKUI8pGQPbvIeJ9tzfW5gFCDfCoIo/mhOUWR34=;
        b=vfckyPMIASrjwPZqpXBD/18S7UkRvtAnTH8+6Tk+gRD6zZX0CDiLybw3HSlY+03fKa
         AJn9QRQuP2Ryovnzu9RnPAyPnvBThrCcMFHONM3zphgxSIKzBFtAJg6Spc7eoJwtmHaG
         Qvu6731q3eoSolbChfGan5tmrmDuXVa67Vf1q063jCtO4FMXBGB1oi/8jUf9AFNcnubu
         iC3jRqUETmuA4sS89CHcqsqBR+qtqkOvyOf1pLcVbyFmL15TkLYxTBwiaHdNpzwoWitM
         xdilQcHgI9Cc75iUZPskAfDcuf8WxULXy3N6G2iuWsH9ZVYmSf/HoE1q3aEHr6TCnnqk
         58uA==
X-Gm-Message-State: AOJu0Ywubosoy2uKloDzG8w2iKeScfOFtSWKIhLN81CHf5DkvIZIEGZS
	yROavFDT4gOlLKU+oTFTSDYi8fHhSaVdNZ8e6wTuNtqhs+GMe85GQcifuyzwTQ==
X-Google-Smtp-Source: AGHT+IGcth/fxCroCHkJkiBlCEEVz9j1ekHj56akkeS7TqDFY6QyojDtaRnH7UXtZIDJHJ4Kzm5K3A==
X-Received: by 2002:a05:6808:1401:b0:3be:6cf:c321 with SMTP id w1-20020a056808140100b003be06cfc321mr1072595oiv.36.1706684917547;
        Tue, 30 Jan 2024 23:08:37 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:37 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:29 +0530
Subject: [PATCH v3 06/17] arm64: dts: qcom: msm8998: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-6-58a49d2f4605@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1212;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=e7nJmTvx/9CHmZViBGU+Oy61iNya1IQ/hQ7GwRFLJgk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG8cDqh3gn5ouf8J0xFBIJgGqGxYPII45jdo
 JjvtJ+nuL6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvAAKCRBVnxHm/pHO
 9QNTB/wIL75aClSvj1fZKDiN/MxxFSiGp6t815HxU2g74mUwq+NJlVYxL1X9p5Jz3KBnn1sPj3D
 iPeNvxLoVk8K2Obm8qRUEunKa55/wrCjlk8DgbcOOB3osPC5ZnQMqb4tQd8s7pIsxZs4Gdhj57R
 Hajw+9u25ynORWBIMybM3FwCL+hY7XdyeUzNu4EEFBMobrBFqWvbHz/voEytIoWxMu+9HX3eP/z
 l/uUueyBeyCgPY+Rf5bT4Kgk3uizpHsEo6mIWcC5cGM0Euv94ybpZh9zkh5qlWncqOaKmzuQ6Yd
 X15tBflDWATttpEYXLwU2RBTSnBOT70GwEzLz1uwwzUv8wSf
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230838_666233_B05A8DA0 
X-CRM114-Status: UNSURE (   9.20  )
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

QMP PHY used in MSM8998 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: cd3dbe2a4e6c ("arm64: dts: qcom: msm8998: Add UFS nodes")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 348eee866451..a4716b1c50e6 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1047,12 +1047,12 @@ ufsphy: phy@1da7000 {
 			compatible = "qcom,msm8998-qmp-ufs-phy";
 			reg = <0x01da7000 0x1000>;
 
-			clock-names =
-				"ref",
-				"ref_aux";
-			clocks =
-				<&gcc GCC_UFS_CLKREF_CLK>,
-				<&gcc GCC_UFS_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK1>,
+				 <&gcc GCC_UFS_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			reset-names = "ufsphy";
 			resets = <&ufshc 0>;

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
