Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8179DC8300C
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wEzdbOigI5/+0RY9OP0zCaQ9FrY6KRt/zkV8VeIhCo=; b=0vdCpXTE3PtpPo
	10g5bksPgkS0WULaKk07S17ZxLWBRYfB7W3EWW7ry+uHDSqRKgmPYI9CvpAspwmtfjWY1IDEPR54k
	glOgSMolsBPP9J1lmRtIaprBIT9e0QNFre+V6BKslPBJOe6hZ37v6CxkEpsjmeuL19HRLjvxCdYqt
	X1ZLtrdlhTwaeqm/3yl66vgzpRa87Ps2O98MeI/XEuAP+Fng+GbewJl1E+rMwlz3LdE7+zw7ghxI1
	qap1QwPGQrK9QJwt6zoy7APxdm5cOsHXtk9sPmnncG+GlttCaclWzP0iY5LG4zvizK+p9c3zsxql+
	yUrhQLYV3oD3Cdnli08A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmx-003Gx9-0R;
	Mon, 12 Jun 2023 09:24:39 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dms-003Gro-1Z
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:36 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f6195d2b3fso4808157e87.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561871; x=1689153871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=su4Ml188NZQl7/ApV7N4YWW8KD5ToBDayqEyMhucvL0=;
        b=wTReWTESrXF8MQdnFv0BcbECvhA5k1jp/UpUNoz5an+amSVMTnDq4zSy8OhgF+QIHP
         VxqnfBT6c8Gc9esMda2ao0ri3AX9tE/Rej1L2iPODh3z23iryd54EdmTxXf8Akqd40iz
         UUREr/Vua1XefWoHpGHQw9UxoR0Aktnkb6PKHg6zaQXmUGDFO6+IDX5d1DXhwizay6wi
         Sd3rbsJxq7tmZEsN+gMmSOGdFdNh6xTDJfT5ymd+QoUGgf0D1fTFl1R9WITy+EMgUGVI
         c3WesnH2AJ3Dw4o2uhkFqpDxTeAZJc1xoHaxEpGONEJDz97NZzhNi6uUAzStEDQHePL+
         Mdaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561871; x=1689153871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=su4Ml188NZQl7/ApV7N4YWW8KD5ToBDayqEyMhucvL0=;
        b=iX/KRStep8TiIvmkchUCCkkSXDRLm1B0r5ZYGxMsoJUP67OsFC47lEX8LhF1ZQPjfB
         ceiTNs2dI/M7uQ0u7shebzDSw6B2c8cyDJa5+xlEOeE3qZrG85nRgn3pl1dUSDERZw47
         AAQrfu4tDsuOf8UOINc8EJxyZK2BqzjPvSOCcTAA9V0GESLVu5ZjeYHbZnvbluDDas7K
         kvlca1SPKtQ3iMEtz8eXNKPeAeQgSOeYqyJovhBEPfemxUlJO7I4WWPlFC1vOO6QS3VV
         ItifpI80IT2P6ahyx73/wwyx77ginM2nEyNyNPLnhZxq+Sy9C0gEX/iQBsiHw6saXAUR
         2f1A==
X-Gm-Message-State: AC+VfDzOjW+Q31RRUDpR6/20t46EJ3593LMYmlzDQPvrCE/QQuHnhG90
	7Gc6B4MPkPsksYqspJ6L6LaaLg==
X-Google-Smtp-Source: ACHHUZ6avE4dbfTuPulQJx5CHawnorQOK0WS0NUfFL8AJner9iIRg49w5a0WkmL8BvBwi9Ny+W3Ubg==
X-Received: by 2002:a19:6601:0:b0:4f6:5bf2:63bc with SMTP id a1-20020a196601000000b004f65bf263bcmr3203042lfc.3.1686561871076;
        Mon, 12 Jun 2023 02:24:31 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:30 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 04/26] arm64: defconfig: enable the SerDes PHY for Qualcomm DWMAC
Date: Mon, 12 Jun 2023 11:23:33 +0200
Message-Id: <20230612092355.87937-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022434_522874_3D026CBF 
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

Enable the SGMII/SerDes PHY driver. This module is required to enable
ethernet on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8d850be05835..f62c96fd4335 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1367,6 +1367,7 @@ CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m
 CONFIG_PHY_QCOM_USB_SS=m
+CONFIG_PHY_QCOM_SGMII_ETH=m
 CONFIG_PHY_R8A779F0_ETHERNET_SERDES=y
 CONFIG_PHY_RCAR_GEN3_PCIE=y
 CONFIG_PHY_RCAR_GEN3_USB2=y
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
