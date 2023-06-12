Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1DCC7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AVytr5IIRmImN9OpH84rTRBfkN3vk0kE5fAdiXVNcM=; b=qP7IUdidMt/COx
	olx9YLggbAS0SeSTXY3ho6bN2m2nEifXksmpD0N/lbNWAdp3DYmIRW/VF9F2mX3Fte7k7WSIXfRTL
	I52lUVD0x0WphAaOBEc+uMDJuXGp1Y5og5GoBlpUm5rfNcJ2557yugwma+Wbq5wy9A1dBdfTr1D32
	a0srP9mrczHeUb6+1CDKLOdUCPZ5yY7kFugflY01SRpprfrA2zufl7+S9pcJhRGmIHEYgbcs/m+w5
	AwbmJR25heb4Lir2EfwF9gFwsFAeOFArufrI+Hxm/Z6KQqakTB64WYd2ayjarwwjzPGMkqYD7rpjW
	JJJCI+mHZfcsNWp0LUNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnn-003HYm-32;
	Mon, 12 Jun 2023 09:25:31 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnJ-003Gt2-03
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:25:02 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f736e0c9a8so29742315e9.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561900; x=1689153900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f4hcroDV0hdKX/DQDft+g0yZ5ckCppngKltjTy4swGs=;
        b=MAMjiLP/Ub2YMkZrYMQu9I+vzT6+M/KG3XopFjXfiAgrNHxfkR1XAmH5b8FPhTzsfl
         AqRdT7fKsLe1LsAM2ySEpkmdoZpmATyl8UlCZdD0WerCqDDnXfaLcu9TW+BsqAjtpDP3
         h4Y8lowLuAZMm8+6vaV2+O5tZ4JOtojf9TOohwrc3VXLVH0Lp62NqHuEEzvSQ7XMsIgJ
         FjwcfKOhlAEOQ+sWQqGMbhR8naVGQyOA17XnUN5/G+unqZS2uYPEfzRepIdPMJ3pNCJT
         C2VSAmBfiHnpDcna93MrdqjGaOpKmOoY5f4NTJ2Krkj/Qavu3TIAsxqxZqX2d9tNvUnX
         YUrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561900; x=1689153900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4hcroDV0hdKX/DQDft+g0yZ5ckCppngKltjTy4swGs=;
        b=g30pX6k6zqq7IIoqYX0U25ZYfauI4+5TffSpVjzYAoz9q/kLwMhl4fsP5/CXbm4zB9
         tiLLZIvtu50OGJuTnAs5sSvLjAO3rBVJYkORnElQdQYuOvZ4g5Z4r+DPES0YC2kfmo0C
         wEuo4RWbIHv1T7C0DceylDXUeWTYGfUFINnUif1AmW5Vhq/+gankWiuSkLVxYN7t7fFt
         YygtbvNRJuIW2XgNgh6Z4D35e6Gi3TvJzhDgl2hYfUuUl+IOMl9dwATe6jhbnn2vTR+f
         zXqlXRuLrDFI0W77AnQ4dORSOd1obx1PpJRjPfcjsTNEI6CJB15bGZXPbZmeknYBB8oO
         LcOQ==
X-Gm-Message-State: AC+VfDzbihf0JYb2x8eHA/Spr54k6eWBRNjqoOn+7RHFpNA9+eFhXOeS
	/UBe8q1NcyN88Gd8U50WZXoNLg==
X-Google-Smtp-Source: ACHHUZ61vW/FRawgaaHnvQGC2M+qoPMGa2BJ9bPXYYT98KJ/c8JNEM8dFY2uCnSfW5vwruY6E+eizg==
X-Received: by 2002:a7b:c047:0:b0:3f8:1b55:ac08 with SMTP id u7-20020a7bc047000000b003f81b55ac08mr1200775wmc.28.1686561900531;
        Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 24/26] arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY
Date: Mon, 12 Jun 2023 11:23:53 +0200
Message-Id: <20230612092355.87937-25-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022501_058906_64413F9B 
X-CRM114-Status: UNSURE (   8.52  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the internal PHY on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index ab767cfa51ff..7754788ea775 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -355,6 +355,10 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&serdes_phy {
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32764>;
 };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
