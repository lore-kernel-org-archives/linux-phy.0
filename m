Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C99EC35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhznTXFwkV095RjZ5a3P78PKdHTDR5FKMdBXVw5aCnw=; b=bwY1nJiIk76JwB
	tV/XzpN9+5psCf80IHRtPoyye8jYACrHwEuQLwAcaINFMa+RZAG61UbWAJZLXJEGzH47dDBX9W1u6
	KHv15i7xh05gIchBumgKp4+jtbxP+OYPO9pbHVVZIgZZKgbu3qA20ivV9IehrpJP3liWDc0v+rmnU
	i2E7cigNyUvD1z92qdwNLv9oE7Rt7fL33Qixjah6TFfybReGfhyhnvsLGQ9aQPmhuIxkt+3Xz9GpI
	JE6Gk/CqgDjwlcgfr+trdZka+wf4KCaZPrkqIceIlT1xgYC+xX6tqKyPtjSNK1xu7EbhrVz9ZW/pl
	Og8M0ML43CKUpxxvz4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQE-00AYZA-2S;
	Mon, 18 Dec 2023 12:08:34 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQB-00AYY1-2W
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:33 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-5c66bbb3d77so1107136a12.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901311; x=1703506111; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+NpBpw87ancReoayxiYNLEpdh+qbLyvkQJUBfcAOaoQ=;
        b=gh0qiVsPjqrw+/pIhFaQCdNfrpjtAXGPnjj6Gc+rxX8ss1aUvLB6cCsQXZnqXk1Sov
         A3K4g+DNrGmzEGFGyJdL9m01SjIL7rg9eRph0lVKjoYtt8QXte35SLN6p40h0G2tFG+K
         jlqB5J6j9dGmn9529t8FrBGlLTe6HXchLiJEeeaAtbqRcanTr/jBkbtOy6fOVuOgoOk1
         BsyV/LMZ3q4iHF6Qp4hjN/TK9Y60D98ZgZuoNQ2BsqtJX9oIk3vaRBE4q+T7IJbp0MpO
         FRNODV+T568D1ucM3EujwMRXUzvKoVx8gUm8BxIzlDN+rmrFbWFYTuKNVEu6ySHMzV07
         PHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901311; x=1703506111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+NpBpw87ancReoayxiYNLEpdh+qbLyvkQJUBfcAOaoQ=;
        b=LXVK1Wg6Kf54J2Za685Sg00G4rr5oU1MlAUkt/+09kaITCwMl2YTd8wNrZZGnVDyDG
         bONZT0GfT0/Keij+sgHozqH2TjY4JubU4I+nlqYvxkg9vxDlvZHkXjuz4E/PDrJ1ekkI
         GH0DjDrZIEv1HCwMEKK1BsKaGlkx00rePFGdolN8DF7WUZg8GbSyAkHQUyFt1F1Dhtbc
         B/o4JNWBlLqi4mTYWKHJBlybWH7ywHOCnckj4Dbb5tc/RevNi3wMmV4lyxP10E9NwvJd
         w32vaMXyrxotP9HGXlR3hRw29x4bHeMmTSbkEKPajN2ih1XIawQ3PBlg3By1+j+gIKva
         F/Dg==
X-Gm-Message-State: AOJu0YxKtzFnA+RdSY7z9iz9y8NK3d6h0Wj80gCmTxYcJXsqHIjbVLEg
	vSYRqaC9jxTWSHzbUzXnsi0N
X-Google-Smtp-Source: AGHT+IHWUgQYCUGlqwV406h6zHwdKzU4NG59nQYN4sJQ2Em0W4gzvKZvabKGPJlQn2udUzFH5dAm9g==
X-Received: by 2002:a17:903:1106:b0:1d3:aab1:6273 with SMTP id n6-20020a170903110600b001d3aab16273mr870341plh.118.1702901310948;
        Mon, 18 Dec 2023 04:08:30 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:30 -0800 (PST)
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
Subject: [PATCH v2 11/16] arm64: dts: qcom: sm8150: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:07 +0530
Message-Id: <20231218120712.16438-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040831_820710_5EEBAC1C 
X-CRM114-Status: UNSURE (   8.65  )
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
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 43d56968a382..18af94852974 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2065,10 +2065,12 @@ ufs_mem_phy: phy@1d87000 {
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
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
