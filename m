Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F517EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnkNY0ptWm54JF5ASnss04/OyFTuoO0nE4qiMpuI1QY=; b=Zyrh2nVLTTF5+t
	G0BZWfmOCIWc6iRIJcvN8Psc6hsniETcRanAEpKIzyHSws9aOwTvSkEAIrZFrKWcJpQ7zh2p8h+lq
	MdF2P+8hzteNXcMnBRmVxyV7cy6RjGQZjTgYPnmQjPF73M43IcjLFXWtekJA+SO13ikQFt97l23w0
	Bqp44ZwgDiuWPHf19SHhhfb6nlWp5SSnUgiomUyoPbYiNLG2vQifRkfjWpao+EApNsb1HKDY99Ou9
	Z5sQRiDi/cTarGV8yVtpxAN9T6IqxHnRJqn7g5WghcjRFbNz6AIHBhfz7M3epJa5wKS1enCuWA7ij
	WSLaqklbqDz0p1cpuQIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ltJ-00Eq0g-0n;
	Thu, 15 Jun 2023 12:15:53 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsY-00EpHe-1H
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:15:08 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f8c74af64fso17308105e9.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831301; x=1689423301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVlJCvybdeYjvv8ryzmcQEkNwtr78sKz5e8xX8tuWYs=;
        b=VtZQthxXkJ6Gl3Gr0Rxhxkj4r7xw8xSfqcyo9Ro9BTEa73QgC5ovx5U8VkkMLcJFIT
         dOOekEovMOtoZ7L5ZHlpSTlLUk0AXaEd3ozCrfIK3bZ8wMuapEV4saO+zeZ2vz1MEjxl
         nRTNWBc8b48QbHDddC/7qEExOcUIAe8i2thkfeIzzQwjXqroTLFDoGb1jpHWjTGQ3ytO
         z1VEcPtNOi/O9Yi8JqETNIHYJ262elgduM1jcv0VLPk9QGlmYs48fY4aMnx5KyJ6lPWb
         51Zs6aJ8EuAUBbzhlgigq7j57hfdcnfwCViI9jPL3AaeVeboRN0uGYzOmD/rrzwBsw7N
         kASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831301; x=1689423301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVlJCvybdeYjvv8ryzmcQEkNwtr78sKz5e8xX8tuWYs=;
        b=J3eJwV1EpL0A8dCwBEyjlQuW5Q1tI2eHPunl2Xf04O41t2g7PbK0Q/Wlzv2XL1OSok
         szlop8eLy5/PC5sISREsqIshgtZdcTSnooptr46p+JgwX/tezpNeVx0r01raPtMXTEo6
         SSRT6cS/ZRdpx6GV6jOGygqlFiB8uQEg22dGpYk3ICnR2lKRP86Pg3lbeayeEc/Wp0WN
         bhQJDdJXMa6JnOnQTwCiLX/EXEl8ajAWtOzneFivEchYHyU5IJh99qupGOXE1NGxtRNs
         YH5PAA7U+yfpZbcZD2JPSfdqrrdSLuQi9pBsQM3MsratomSxdmxUgpdNnFjObuIbahdK
         4GJQ==
X-Gm-Message-State: AC+VfDwR95SfzK2gCCYTvk8+9yVBf+VXPAK/2SvGg11y0C9M0kTrlQz4
	9BGcNSoenxy4NHkl1UsX/RqHsg==
X-Google-Smtp-Source: ACHHUZ5fGl2Bmi5j9EaSiuWzDcHUl/220qF10Rg89YYxqATkMANkXIIxOxpidvYKUgDJ7K0JFIeqiA==
X-Received: by 2002:a1c:7213:0:b0:3f7:2638:9691 with SMTP id n19-20020a1c7213000000b003f726389691mr13309387wmc.41.1686831301121;
        Thu, 15 Jun 2023 05:15:01 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:15:00 -0700 (PDT)
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
Subject: [PATCH v2 21/23] arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY
Date: Thu, 15 Jun 2023 14:14:17 +0200
Message-Id: <20230615121419.175862-22-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051506_440805_987E03F2 
X-CRM114-Status: UNSURE (   8.46  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index ab767cfa51ff..9f39ab59c283 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -355,6 +355,11 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&serdes0 {
+	phy-supply = <&vreg_l5a>;
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
