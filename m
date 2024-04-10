Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5638ACD11C2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 15:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hTYE5Fc9SjrqkEiQvRdQLYzOiGFQkXXE7Q9NSg9VJY0=; b=SpgSwufBBfvVTh
	Jc0YjdxPxQD69ETUoBMRKV77S4vqm3V3crpQfWLagrp00yFvsqj923b/Pq17WEYcwCr33dEW1BifB
	xfJUfN1eqhYW1vR12hr66dS5yF0YpAXVBm7R7s8QitbKwfwZS92lpkIahfqS9Yt9poSBAxElFSTP8
	CxBKHxKd4ZM+5uw9pU5GkVA57/XmVyp08rQPM5NRrBRLJU3DTEoF8JfdQ9qX6DFewf49ZfiTDsZt5
	ZCwT+A46BvQpb59oDoYa/tA4MdIstW8z0+zC9ubNRmcl9ezbJvhROwx0DCfKkhXoCFs6J6gw9/siQ
	C53Xd96JlGQ6npmvsk2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rua38-00000007pcW-47XA;
	Wed, 10 Apr 2024 15:39:46 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rua36-00000007pbH-1DeX
	for linux-phy@lists.infradead.org;
	Wed, 10 Apr 2024 15:39:45 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-343c2f5b50fso4503259f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Apr 2024 08:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712763583; x=1713368383; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d53vYczkCVTwIJoyWEVHYrjviB2cJtuYV4baa1qAm7s=;
        b=GaHgPAGwfhlYDUbmWgKPsP+I2kjKjIN8vcnDyduNw/fp+nfj3W/J9IF0NS0puqu9Rb
         60E+yauUaQXKzT6vbdOOljj+wSnFn3ROn2yz3uHwzoLbQAwUiUk5pkdu6LeGDXVsKJvT
         ySiEWljkXRNgx/z8GDc2vEfkPZkCnPne1f4n2Q51nvX9HbqMvMnoAKHiUKbXvcv1lJp4
         8soKa1DMgR+bocCB4qJvadzL59egO77e7zDVgCKlNMk8a4K00qcfpZY5XGezIRBo+x5f
         MPk2eo/UDET2PzrZOrjtl68drRUo+tKECQ4VwwprXsKCkL5CFrISTFvO0YMMWwPi/CpR
         Y3Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712763583; x=1713368383;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d53vYczkCVTwIJoyWEVHYrjviB2cJtuYV4baa1qAm7s=;
        b=k9gTZ89l6jkih8/CNYlhAWdD70ZH1lgaJ3xSC5r8WTRVh0AzdsziiOd/WMCwYW6+Rw
         svICHceVUJJSufLFvz8++7k9uVlM4RNZvEV71EOLBVDANqXoWHlu/lxemPA4aMR1dbl4
         QwibalCqq5F/AMQy0Pd7VtPnf32nHVJRhcnV+r8i/vfIKlHOkPnhQqGBoo/FwFFUnZlV
         9NM4sBmKwTIR9cDxdYFXH+jpcSTJfPXQZdu7lfvrIjT6cEWxZ5OlzPM20p3t9iIAFwFG
         9NoVSJoARBh5qBxlYfmAHRyec1cGEJ0itDllHxHXXH2y+cCEMNMjtxf19XxbGZvq75kh
         QdVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeykhUionP/H+1ItyE4nR4/SDt8XvuLLrCxWqzG4qA/RjKYtDyxyAOIHzshvoRRkw72vwGZBY3EKX60GAL90+JkLNTxy1DPpmdF1Y3gw==
X-Gm-Message-State: AOJu0YzNtFw6x+W8uFNvnAU9h8Ykf9eWy+P615uqPx3KPdcCCdiC85cT
	mYJNzpuQ3HGbLwKPWitHKqFM5RYSsopfvRMSYHu/IFfirtKv3lfqQNPChalXCJk=
X-Google-Smtp-Source: AGHT+IHyfSVJpENtYwkcw5XEx41O5hbrKOhJxBfU+FCySBe7Hl7lIlIJ09wsi+hxLDs0K1PUsib3zg==
X-Received: by 2002:a05:6000:1ac8:b0:343:c58f:7af4 with SMTP id i8-20020a0560001ac800b00343c58f7af4mr2121310wry.59.1712763582629;
        Wed, 10 Apr 2024 08:39:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id o14-20020adfe80e000000b003436a3cae6dsm13970910wrm.98.2024.04.10.08.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 08:39:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 10 Apr 2024 17:39:40 +0200
Subject: [PATCH] phy: qcom: qmp-ufs: update SM8650 tables for Gear 4 & 5
MIME-Version: 1.0
Message-Id: <20240410-topic-sm8650-upstream-ufs-g5-v1-1-5527c44b37e6@linaro.org>
X-B4-Tracking: v=1; b=H4sIALuyFmYC/x3MQQqEMAwAwK9IzgbSotL1K+KhW1M3B7U0KoL49
 y0e5zI3KGdhhb66IfMpKttaYOoKws+vM6NMxWDJNtQYwn1LElAX17WER9I9s1/wiIpzi1/zsez
 Id8FFKEXKHOV6+2F8nj8D/+qUbgAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=9822;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=f3GHd6QNvPmRJrTFu3PXrrq17seSZz+8VF3s+UCv4Xw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmFrK9aBTyXRcKLmIAW28QRwwXeXvz6SXD6sD27iUI
 A6zFoYKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZhayvQAKCRB33NvayMhJ0bTHD/
 41ZTP/9yjEQXAuO8ob1sjTxSLTgMFEH0IVXWsMK5eNirPhHdqDAH4gynZ851we2G31KcuopSKQLvLE
 FF33KluyzUp2NprhXITfqLFFkYgEFAohzEohwmBsJMu87I/nX299BxwNYe7DTht6ApPPgmBe60Bnik
 BbVE30n+U65BZ8BzolCZDo4Dtn8n+uBVPgvfWGmbpC9rEuVxN8bmB72Jo785yspa/hHja4GXGQtpiK
 cxV2vFmPACvOZJC8O662QgKkNfliCjo2TCr8sKMGvMUG7p5Hdidqhj2bXl5zzOWAzFpLzp88a0Hnew
 MJWT1VLMPmAe/vVVl8TaFRw394gF9+CYzcBi+2ecGXrbMty2qUCdJIZQRVUbq9ifuVT2ugN47AzuhS
 RoJRWvbYRutlLYgnsIAaJTCFpJ3yLY1SM89j/Ji2nZglEiJMyKa7GIDrqlg8V/e8YJscVCoql36+g4
 r1Gzp30G5IwIsxMeHoIEH6AS/B2pDehvIiX438T8SQaeganJhr09dfFKmYUikFtYcAU4gjn46tdpCe
 bsQHiQpVQnaxt+5n7m8RshRLO+JZQcPwswHKjH5rEKFt9hZ3ybcnA26kyCT0DczxxddLNx62dZSyXy
 /q6GaZDjnFjFvtZYe1mCrr8Hv2vm1Pa3e7+gg2zd+X1gjSaxheD0mVondjTA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_083944_420208_F12C4E9B 
X-CRM114-Status: UNSURE (   9.66  )
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

Update the SM8650 UFS PHY init tables to support Gear 4 and Gear 5
using the overlays setup (only supported Gear 5 before), and sync
back with the latest Qualcomm recommended values.

The new recommended values allow a solid 50% bump in sequential
read/write benchmarks on the SM8650 QRD & HDK reference boards.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  4 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  6 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 73 +++++++++++++++++-----
 3 files changed, 68 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
index 970cc0667809..f19f9892ed7b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
@@ -30,5 +30,9 @@
 #define QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1		0x1f4
 #define QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1		0x1fc
 #define QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME		0x220
+#define QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S4		0x240
+#define QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S5		0x244
+#define QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S6		0x248
+#define QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S7		0x24c
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
index d9a87bd95590..d17a52357965 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
@@ -25,12 +25,15 @@
 #define QSERDES_UFS_V6_RX_UCDR_SO_GAIN_RATE4			0xf0
 #define QSERDES_UFS_V6_RX_UCDR_PI_CONTROLS			0xf4
 #define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
+#define QSERDES_UFS_V6_RX_RX_EQU_ADAPTOR_CNTRL4			0x1ac
 #define QSERDES_UFS_V6_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x1bc
 #define QSERDES_UFS_V6_RX_INTERFACE_MODE			0x1e0
 #define QSERDES_UFS_V6_RX_OFFSET_ADAPTOR_CNTRL3			0x1c4
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
+#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B2			0x210
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3			0x214
+#define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B4			0x218
 #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6			0x220
 #define QSERDES_UFS_V6_RX_MODE_RATE2_B3				0x238
 #define QSERDES_UFS_V6_RX_MODE_RATE2_B6				0x244
@@ -38,6 +41,9 @@
 #define QSERDES_UFS_V6_RX_MODE_RATE3_B4				0x260
 #define QSERDES_UFS_V6_RX_MODE_RATE3_B5				0x264
 #define QSERDES_UFS_V6_RX_MODE_RATE3_B8				0x270
+#define QSERDES_UFS_V6_RX_MODE_RATE4_B0				0x274
+#define QSERDES_UFS_V6_RX_MODE_RATE4_B1				0x278
+#define QSERDES_UFS_V6_RX_MODE_RATE4_B2				0x27c
 #define QSERDES_UFS_V6_RX_MODE_RATE4_B3				0x280
 #define QSERDES_UFS_V6_RX_MODE_RATE4_B4				0x284
 #define QSERDES_UFS_V6_RX_MODE_RATE4_B6				0x28c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 590432d581f9..1b78c1330a12 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -830,17 +830,20 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO_MODE1, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
-	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
-	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
@@ -848,17 +851,28 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_serdes[] = {
 };
 
 static const struct qmp_phy_init_tbl sm8650_ufsphy_tx[] = {
-	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x0e),
 };
 
 static const struct qmp_phy_init_tbl sm8650_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
-	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
-	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CONTROLS, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_OFFSET_ADAPTOR_CNTRL3, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x3e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B2, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B4, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
@@ -866,23 +880,41 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B1, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B2, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B3, 0xb9),
-	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B6, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B4, 0x4f),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_SO_SATURATION, 0x1f),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CTRL1, 0x94),
 	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_RX_TERM_BW_CTRL0, 0xfa),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_DLL0_FTUNE_CTRL, 0x30),
 };
 
 static const struct qmp_phy_init_tbl sm8650_ufsphy_pcs[] = {
-	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0xc1),
-	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S4, 0x0e),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S5, 0x12),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S6, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S7, 0x19),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_g4_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x13),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
-	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
-	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
-	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
+};
+
+static const struct qmp_phy_init_tbl sm8650_ufsphy_g5_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY, 0x4d),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
 };
 
 struct qmp_ufs_offsets {
@@ -1407,6 +1439,17 @@ static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
 		.pcs		= sm8650_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8650_ufsphy_pcs),
 	},
+	.tbls_hs_overlay[0] = {
+		.pcs		= sm8650_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8650_ufsphy_g4_pcs),
+		.max_gear	= UFS_HS_G4,
+	},
+	.tbls_hs_overlay[1] = {
+		.pcs		= sm8650_ufsphy_g5_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8650_ufsphy_g5_pcs),
+		.max_gear	= UFS_HS_G5,
+	},
+
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v6_regs_layout,

---
base-commit: 0112ca4447c2969b8106377a614f010ba85e4c9b
change-id: 20240410-topic-sm8650-upstream-ufs-g5-b192e80a6c8f

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
