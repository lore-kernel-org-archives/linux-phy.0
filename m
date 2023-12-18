Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C1B3C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3F8LjyplphwMB2+b0Tp8KT0j9oRP3wErNem1bV0hhaI=; b=oCZGWu+P5wp2An
	+LKYzFnn1CWUGEFPnOQkiwRuwygbbtEKk7R5qGVMUhri7zgQxuC6hyq+whcaNiJ6tMFmEOZVdzWgT
	FaHyTO3nAmRfX5x6SO9TcA0hCzyQH3ogcmR5rFtYqUvVKGu/97e/qo6/MT7ZI4PdAD6cuuMI720o2
	H2i2yinSKh5ePl06F1EUFx7g/jKayGXe2X6361+7Esw2HlHupIJmkLQHCwWF8ch0dVkFjk2M4wnOp
	ifMh3hJSmhQa/bCqUkr5T5M/3Cugg6VnmleI9WckgDHz/DIYViD+yCs1+I0NWUr9mUUgR/TTgYJrG
	qEzdBAGf9wdscEF3i9jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQT-00AYfN-2i;
	Mon, 18 Dec 2023 12:08:49 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQR-00AYdN-15
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:48 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-5c6ce4dffb5so798349a12.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901323; x=1703506123; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=IWg9Cw+mrMLnyXj73okfL+6cqRCFdwRGzMCF+jqdWnaQBBdv22d99Wpa7DnNOZgpsI
         IH9C1htQPzVQSmBs4SGZSyvP4znHmlen9YiIoVs22DhoLbQwXLrXyHKV0TgP+lzN3nkU
         twmlt9V4Lz78ip1IkWUIKCSuHS2PdHCWeFXkLb9nw3FEFjlZivFsse9TdnYWvE5wJ0mm
         ldzX5z70BpHoevl//teoHK6hLRd1s1kTk1tatOQBv0Ba7V7fWgKZmNUSvMlWzADXT1q4
         Y8QQTK75R8pSYqq6WjEF0XOWuzWd7Hw5xCtQ0d6/HiXckAKaZaB2WGAdsZt7v8ASA+GP
         IGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901323; x=1703506123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=mSsIk6XGIBPgVyHaBVI3qia+UI15l3jDfr7YOJOhZTIKYkQ05ug6fR52ngyQlHnDF7
         dUY5Qh+z9yG/dfkt0kD26Tgnc5/jjA4sH5i+s8ij8PtedWTxgjrbySNZeYnH6nwjDA7k
         w2Bso0O5zH/gATmovaECA6DdSZk0PzmsbavhYqTP8FI1d7ueD8nqP/NaB067E87JTI/h
         R1duGWBIDIDxVtrCBGgb8uIjkYT2Ly8Q8eXzKLQOEGfNHomRzWnQr6K2Dl5UMuaVb5oM
         tLXxCDa96+z2ojpD/byRLQU0ADwKkYebbj4RS4+mO6qMpGE2YEHwby9sY3e23OdSUedc
         jSgQ==
X-Gm-Message-State: AOJu0Yz8nXg0Hkfqz1/eVu7jLZdbDF78bll93n30mJs2uAxyOHWHhUSw
	wq3u8B+WVyI+DlwoVqt0tShm
X-Google-Smtp-Source: AGHT+IEFzKmwQ9jijXgAmsmDSBEbNm51X5eQbNutP//715SDDDau68UX4AE2HLchbkXj/fguvb8Jzw==
X-Received: by 2002:a17:902:b197:b0:1d0:6ffd:6e66 with SMTP id s23-20020a170902b19700b001d06ffd6e66mr7691134plr.94.1702901322911;
        Mon, 18 Dec 2023 04:08:42 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:42 -0800 (PST)
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
Subject: [PATCH v2 13/16] arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:09 +0530
Message-Id: <20231218120712.16438-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040847_380739_26708E46 
X-CRM114-Status: UNSURE (   8.22  )
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

QMP PHY used in SC8180X requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 8bcc8c0bb0d0..5591e147bde1 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2122,9 +2122,11 @@ ufs_mem_phy: phy-wrapper@1d87000 {
 			reg = <0 0x01d87000 0 0x1000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_EN>;
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
