Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA541C982FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 00:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i61U7plJ199fUIyNJoXnL0oOd7J1VGd4L4h2uc4Kbw8=; b=AxVjuM0uSNa5GO
	6Fimg5qeVozFFyfQLrGUJeLPZKnrH8g4/YMDY3oREl7oXw1nBA99+gkiJ0YTjHXjefS6Mg7LfqFb0
	15+MGfEtJFJ68gY1OYqpIXIerOL7hmLMBtGWONbjwW7Mu99nEKaubA1ZWSNspiEMvbWww2ICgOjLr
	f3dJeJz5Q5P/KqwgM8U06zcErSZr3foyLKdyAXeWwt5NQl37txeaEAIkkoYnL/9l0SFyTcRN58Nzc
	QIGvqhnJU+DyNQRMQnGju3O3PKnxrT/RaKVpKkEsutwT0Jz/SUvH+b/RRWZjUScVSjrnL481hazKv
	gvlKoQPfjFHN4MQblKCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATo-00000006lbk-1VJy;
	Wed, 23 Sep 2026 00:04:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATm-00000006lbG-3962
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 00:04:55 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68MI7Fui368089
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e/ysu29aKJweaPEu9PZ8v1cCpqjGEqBIBOA3xJ0Rr20=; b=Jh4+osgxK7h37ICi
	LvSU3Qua0di2wwJYAbaUOmRCzDEzPY0S74pR+7tckH57zz3RWuIkiMUy96yAO61X
	T4iLN4fqSk9CHzc3+1t8vQU2WhAQsYm7sGmC/agcESIUWB/Gi6Ca+T+N4UF/HOyB
	8UwybVlwyaduY8Qy/or92e8N0GwEyLJyAIacmNVfk3qxNj/+mBsW6Lm3dMxb4Sdm
	fr74OxCpcHDXOvE5Rwe6L82Uns5kXleiyErF9SNrmenTd65tegZwpM3MgfyDH1Df
	WR5Sq9Z5AqdzddbCAaLKvSKKp4tqQ4TYbWN58f+0iMcaoBie7W4GSZO+a01Zxew2
	1Ps1VQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gurntbhsy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:54 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1438492fb40so484756c88.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 17:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790121894; x=1790726694; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e/ysu29aKJweaPEu9PZ8v1cCpqjGEqBIBOA3xJ0Rr20=;
        b=Hn3Z5bYFRtQ0bZyJNgVkgNL30mj6voedMMsNb/FrBxhfHtk+qqwCCLhQi37AsLSKG0
         kjD0KtDF6WPUU1aVtSPCILdZBQ1ngL4cNopKC7KRibNrCEjIM07ZnchjlDELG1NQtAKH
         fUJatrzII0+NXUuHzzG612X3/YZoet8D5MFQ77q54ZxK+LHiBmT1pbfjnWmAJOwFRV73
         v4kW/Fj4XHfg9nHJilgrvr2nqN0de/kid+J2i3tDJc7x5izW09HOncL2bedoFYtP4H76
         XgWqn640EloEcpefNTjuWKLhmuKlx6F1wc1ZgNWVkXHZyhZIRx8P6/kKZKLFqf4oRlWH
         mlrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790121894; x=1790726694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=e/ysu29aKJweaPEu9PZ8v1cCpqjGEqBIBOA3xJ0Rr20=;
        b=zYKtDzPCAs8szzT19VjkETSKFcNkX6YqzseMrDGCz0/jMBaCgPv409gpLDW9CwzaGS
         SBnT01AU0xG7KTOToj1aTFS0yZrJNYBPpopBl++dGH18luhP7Sdv/7iAGBZFU97wlqF8
         n56e23ej0u4YPBYvMFOOQ5Z8IDA2hGqqLuSRHuvo8n0srolFW6+KZj2R6+lQpKkr3LNF
         lsLZH9mDGu79o+SAEp6JX/HHiVVDuRyhl8xo7Lycy7PB2wztDpepiGSgC9fCXyFr/Mob
         lH6okQiBUwtUSdtCgUAilxXIO3cHgjTYNWvLpUDIT77hfjIdJwdRLqaQEp1mOmt8E/TE
         N5Tg==
X-Forwarded-Encrypted: i=1; AKwUvByaZ8qQH/IP5saIoR1WXjbCQpF0GxEc0KUm7091hUj9gO6xo/mgvEd2g0h23TiSNRQ6v3IDNM+A750=@lists.infradead.org
X-Gm-Message-State: AFuF++lmlWa8mTL9OtA62aAklzHMWS9dqyx0U6i2OEhuFmrLgfHd7Acf
	ga68wuC4q9Oh5p97pnGRa6eE9B3hPH+C3m0IIQCPokH86kLmuh7qTNeHBS8qOlmqd/9T6kdHC7W
	u6TgHCBhGC4kWppAdj7FE46lt4qdkcXs0BG1J+AF8DgL6iV8hzh1RVoCbcuGdr2xV43IK
X-Gm-Gg: AYBFou3JPTDY0M723iKvw9yZEGEV8Bo4C6JOGXhjVtGZ2h5rawbS/qUiu6ErJRU/BFy
	K5XkUIdckiFeWfu1JzpYA263Xky/x9ptJ4btL6AkKILFkII31J7Q41auUDb6/VohSILSVP8Vfta
	YzgC+wAyVBrRKM1eo6zxzzbDPiJqEiLFXXIlGJzPoZmMJN2oI541qTa7yHBUCEaPuIAaR55cxkL
	dQqRgIxW1e2FKikFXhvfk1iFpY/HN8Itf9l7tuWn+X/Qw4QigHGMqEP/ZlGTYZ3Na4E86ltxbSQ
	JLO456UVzZG5YSjbpypOqUzS45UzmnGCe8rP7RY38nKa9rvtZCQcyPxYWvxhqj1unAHpuuRo+/k
	9W4L3UzFGxYWId2nPuDB6Mb+m9Ju9czY/MUYGWGQ=
X-Received: by 2002:a05:7022:1402:b0:143:2719:566c with SMTP id a92af1059eb24-144f9198b49mr1187615c88.40.1790121893302;
        Tue, 22 Sep 2026 17:04:53 -0700 (PDT)
X-Received: by 2002:a05:7022:1402:b0:143:2719:566c with SMTP id a92af1059eb24-144f9198b49mr1187555c88.40.1790121892587;
        Tue, 22 Sep 2026 17:04:52 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e939fd955sm1688347eec.1.2026.09.22.17.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 17:04:52 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 05:34:19 +0530
Subject: [PATCH 3/3] phy: qcom: sgmii-eth: add Nord USXGMII support
MIME-Version: 1.0
Message-Id: <20260923-nord_ethernet_serdes-v1-3-f8ac1c487882@oss.qualcomm.com>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
In-Reply-To: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790121872; l=17640;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=ed4vbtYjyj1FMsT2CGuXKcms1U/AqYCuj5E6b3piyi8=;
 b=9iw1gS9LvwyAoNdKif9vwnYW2s9eBv5f8J589WCt1NJdKSWSH4zJpcGI+qF0ezsfDaE0sFnS1
 UQOg/NmHgF3DWb36FwfkaIxoj87qJE6eVIZLxH93Qudjtao4cxN4pyu
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-ORIG-GUID: 47IEcrAbh_AEFKe5Nff1YpcCBrBmtWq_
X-Authority-Analysis: v=2.4 cv=eauo7LEH c=1 sm=1 tr=0 ts=6ab317a6 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=-j1QTKR700wLKSosX1UA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfX4twu0GWbZ77L
 tEZZxCJ4Upz159Q/g3NqrbO1TJ1RW2flrEdhB1bK0DimaYjjGgWTR3tu+KEWqZT3uaXQwf8KH2V
 QT9hUMM/AwgLhhlDp8Z0m4fFsajkSldugUzsrhSgroZkGCOedYm6ZiHwNjt1G6klOT/te2zbgJD
 2hmOksS9gnhsk4V5iwH2pG3ifYaXrVRBVjqICU6fj/RU3AhRc3rwl+nd5ij8AEo3rUKDNuOOzPV
 mTLHtB992kbla4Y8LoQfnnnA2G2/xAVhHZgN1+BgtbtvvXreAA1N65I5OrSVBG8rABrszprxbWx
 l53GOP5rBAnJXIReectYQlRS070lQV77OF6IQ9SMphT5XIPU7Hxsmn3sgEqLFgjMzgy1JEUow0i
 MGF+shGiCnu7rUXeIS9jPNOKHAJbsIhPMFabiUW1L1YHftvQDyjZC11X8F3sP5bPErsM+y5bbCZ
 q5Mg0zXhzhjcfBTaMhw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfX2q/w79ILJVFR
 DKRXfwHsn0/PlbOWJm8Vmw0J5nzenybAimTu/7xn3WjYkzA6AVCXdNKn8V6+eswaMlCBiq9lPFC
 O29i0wh+TMZtesnyoZlCV7aFhABUDUY=
X-Proofpoint-GUID: 47IEcrAbh_AEFKe5Nff1YpcCBrBmtWq_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-22_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_170454_805658_0535B8E1 
X-CRM114-Status: GOOD (  15.81  )
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

Nord uses a QMP v7 SerDes block which is an updated version of the
SGMII SerDes PHY IP.

The SGMII SerDes PHY supports multiple operating modes by programming
different SerDes line rates. The driver currently handles SGMII and
2500BASE-X configurations only.

Add support for configuring the SerDes to operate at 10.3125 Gbaud,
enabling both USXGMII and 10GBASE-R PHY interface modes. Finally, add a
driver compatible for Nord.

Select USXGMII as the initial interface mode for Nord. phy_power_on()
can run before the consumer calls set_mode(), so this ensures that the
first calibration selects the 10.3125 Gbaud programming sequence.

Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h      |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    |   9 ++
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          | 166 ++++++++++++++++++++-
 4 files changed, 177 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h
index 4d8c962f5e0f52974f3edd5d1acdd8da535de200..67ab2fe085de3d90520cfc43cc0ac7abaab1f21d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h
@@ -10,11 +10,16 @@
 #define QPHY_PCS_POWER_DOWN_CONTROL			0x004
 #define QPHY_PCS_SW_RESET				0x008
 #define QPHY_PCS_LINE_RESET_TIME			0x00c
+#define QPHY_PCS_RETIME_BUFFER_EN			0x018
 #define QPHY_PCS_TX_LARGE_AMP_DRV_LVL			0x020
+#define QPHY_PCS_TX_LARGE_AMP_POST_EMP_LVL		0x024
 #define QPHY_PCS_TX_SMALL_AMP_DRV_LVL			0x028
+#define QPHY_PCS_TX_SMALL_AMP_POST_EMP_LVL		0x02c
+#define QPHY_PCS_RX_SIGDET_CTRL2				0x08c
 #define QPHY_PCS_PCS_READY_STATUS			0x094
 #define QPHY_PCS_TX_MID_TERM_CTRL1			0x0d8
 #define QPHY_PCS_TX_MID_TERM_CTRL2			0x0dc
+#define QPHY_PCS_SGMII_MISC_CTRL7			0x114
 #define QPHY_PCS_SGMII_MISC_CTRL8			0x118
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
index 7430f49214779855df1cf40acac96440957f9e6d..e8b4a26b361adab6e2b0bd3c91e719f84d1ffbc1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h
@@ -58,6 +58,7 @@
 #define QSERDES_V7_COM_CLK_ENABLE1				0xe0
 #define QSERDES_V7_COM_SYS_CLK_CTRL				0xe4
 #define QSERDES_V7_COM_SYSCLK_BUF_ENABLE			0xe8
+#define QSERDES_V7_COM_PLL_EN					0xec
 #define QSERDES_V7_COM_PLL_IVCO					0xf4
 #define QSERDES_V7_COM_PLL_IVCO_MODE1				0xf8
 #define QSERDES_V7_COM_SYSCLK_EN_SEL				0x110
@@ -75,6 +76,7 @@
 #define QSERDES_V7_COM_CMN_MISC_1				0x184
 #define QSERDES_V7_COM_CMN_MODE					0x188
 #define QSERDES_V7_COM_PLL_VCO_DC_LEVEL_CTRL			0x198
+#define QSERDES_V7_COM_BIN_VCOCAL_HSCLK_SEL_1			0x19c
 #define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_1			0x1a4
 #define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_2			0x1a8
 #define QSERDES_V7_COM_AUTO_GAIN_ADJ_CTRL_3			0x1ac
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
index 6ab943ff57ff666e4f23f4ad0b4eff211c6dbfd0..0c38d62284e4d0e64a27fb82c468f47aee3760bb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
@@ -7,9 +7,11 @@
 #define QCOM_PHY_QMP_QSERDES_TXRX_V7_H_
 
 #define QSERDES_V7_TX_CLKBUF_ENABLE				0x08
+#define QSERDES_V7_TX_TX_EMP_POST1_LVL				0x0c
 #define QSERDES_V7_TX_RESET_TSYNC_EN				0x1c
 #define QSERDES_V7_TX_PRE_STALL_LDO_BOOST_EN			0x20
 #define QSERDES_V7_TX_TX_BAND					0x24
+#define QSERDES_V7_TX_SLEW_CNTL					0x28
 #define QSERDES_V7_TX_INTERFACE_SELECT				0x2c
 #define QSERDES_V7_TX_RES_CODE_LANE_TX				0x34
 #define QSERDES_V7_TX_RES_CODE_LANE_RX				0x38
@@ -35,26 +37,32 @@
 #define QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_LOW			0x3c
 #define QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_HIGH			0x40
 #define QSERDES_V7_RX_UCDR_PI_CONTROLS				0x44
+#define QSERDES_V7_RX_UCDR_PI_CTRL2				0x48
 #define QSERDES_V7_RX_UCDR_SB2_THRESH1				0x4c
 #define QSERDES_V7_RX_UCDR_SB2_THRESH2				0x50
 #define QSERDES_V7_RX_UCDR_SB2_GAIN1				0x54
 #define QSERDES_V7_RX_UCDR_SB2_GAIN2				0x58
 #define QSERDES_V7_RX_AUX_DATA_TCOARSE_TFINE			0x60
+#define QSERDES_V7_RX_RX_TERM_BW					0x80
 #define QSERDES_V7_RX_TX_ADAPT_PRE_THRESH1			0xc4
 #define QSERDES_V7_RX_TX_ADAPT_PRE_THRESH2			0xc8
 #define QSERDES_V7_RX_TX_ADAPT_POST_THRESH			0xcc
 #define QSERDES_V7_RX_VGA_CAL_CNTRL1				0xd4
 #define QSERDES_V7_RX_VGA_CAL_CNTRL2				0xd8
 #define QSERDES_V7_RX_GM_CAL					0xdc
+#define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL1			0xe8
 #define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL2			0xec
 #define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL3			0xf0
 #define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL4			0xf4
 #define QSERDES_V7_RX_RX_IDAC_TSETTLE_LOW			0xf8
 #define QSERDES_V7_RX_RX_IDAC_TSETTLE_HIGH			0xfc
+#define QSERDES_V7_RX_RX_IDAC_MEASURE_TIME			0x100
 #define QSERDES_V7_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x110
+#define QSERDES_V7_RX_RX_OFFSET_ADAPTOR_CNTRL2			0x114
 #define QSERDES_V7_RX_SIGDET_ENABLES				0x118
 #define QSERDES_V7_RX_SIGDET_CNTRL				0x11c
 #define QSERDES_V7_RX_SIGDET_DEGLITCH_CNTRL			0x124
+#define QSERDES_V7_RX_RX_BAND					0x128
 #define QSERDES_V7_RX_RX_MODE_00_LOW				0x15c
 #define QSERDES_V7_RX_RX_MODE_00_HIGH				0x160
 #define QSERDES_V7_RX_RX_MODE_00_HIGH2				0x164
@@ -75,6 +83,7 @@
 #define QSERDES_V7_RX_DCC_CTRL1					0x1a8
 #define QSERDES_V7_RX_VTH_CODE					0x1b0
 #define QSERDES_V7_RX_SIGDET_CAL_CTRL1				0x1e4
+#define QSERDES_V7_RX_SIGDET_CAL_CTRL2_AND_CDR_LOCK_EDGE	0x1e8
 #define QSERDES_V7_RX_SIGDET_CAL_TRIM				0x1f8
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 029dafacee7853648ef24afd0d9c4b83a549badf..3c68bfe0ea443ef5cf7f17cead4974862dc04884 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -15,7 +15,9 @@
 
 #include "phy-qcom-qmp-pcs-sgmii.h"
 #include "phy-qcom-qmp-qserdes-com-v5.h"
+#include "phy-qcom-qmp-qserdes-com-v7.h"
 #include "phy-qcom-qmp-qserdes-txrx-v5.h"
+#include "phy-qcom-qmp-qserdes-txrx-v7.h"
 
 #define QSERDES_QMP_PLL					0x0
 #define QSERDES_RX					0x600
@@ -221,6 +223,114 @@ static void qcom_dwmac_sgmii_phy_init_2p5g(struct regmap *regmap)
 	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
 }
 
+static void qcom_dwmac_sgmii_phy_init_10g(struct regmap *regmap)
+{
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_POWER_DOWN_CONTROL, 0x01);
+
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_BG_TIMER, 0x0A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_PLL_IVCO, 0x0F);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x07);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_CLK_ENABLE1, 0x0F);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_CP_CTRL_MODE0, 0x08);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_PLL_RCTRL_MODE0, 0x16);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_PLL_CCTRL_MODE0, 0x36);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_INTEGLOOP_GAIN0_MODE0, 0x1F);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_INTEGLOOP_GAIN1_MODE0, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_PLL_EN, 0x03);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_SYSCLK_EN_SEL, 0x1A);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_LOCK_CMP1_MODE0, 0x23);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_LOCK_CMP2_MODE0, 0x43);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_DEC_START_MODE0, 0x43);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_DIV_FRAC_START1_MODE0, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_DIV_FRAC_START2_MODE0, 0x38);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_DIV_FRAC_START3_MODE0, 0x02);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_VCO_TUNE1_MODE0, 0xE6);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_VCO_TUNE2_MODE0, 0x01);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_VCO_TUNE_INITVAL2, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_HSCLK_SEL_1, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_HSCLK_HS_SWITCH_SEL_1, 0x00);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_PLL_CORE_CLK_DIV_MODE0, 0x04);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_CORE_CLK_EN, 0x30);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_CMN_CONFIG_1, 0x16);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xD7);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0F);
+	regmap_write(regmap, QSERDES_QMP_PLL + QSERDES_V7_COM_BIN_VCOCAL_HSCLK_SEL_1, 0x11);
+
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_CLKBUF_ENABLE, 0x0D);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_TX_BAND, 0x04);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_SLEW_CNTL, 0x08);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_RES_CODE_LANE_OFFSET_TX, 0x09);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_RES_CODE_LANE_OFFSET_RX, 0x09);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_LANE_MODE_1, 0xF5);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_LANE_MODE_2, 0x06);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_LANE_MODE_3, 0x3F);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_LANE_MODE_4, 0x3F);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_LANE_MODE_5, 0x5F);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_RCV_DETECT_LVL_2, 0x12);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_TRAN_DRVR_EMP_EN, 0x0F);
+	regmap_write(regmap, QSERDES_TX + QSERDES_V7_TX_TX_EMP_POST1_LVL, 0x2B);
+
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_FO_GAIN, 0x0D);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_SO_GAIN, 0x03);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_FASTLOCK_FO_GAIN, 0x0A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x01);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_PI_CONTROLS, 0x81);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_PI_CTRL2, 0x81);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_SB2_THRESH1, 0x11);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_UCDR_SB2_THRESH2, 0x22);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_TERM_BW, 0x03);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_VGA_CAL_CNTRL2, 0x08);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_GM_CAL, 0x0F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL4, 0x5A);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_IDAC_TSETTLE_LOW, 0x80);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_IDAC_TSETTLE_HIGH, 0x01);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_IDAC_MEASURE_TIME, 0x20);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_SIGDET_CNTRL, 0x0F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_SIGDET_DEGLITCH_CNTRL, 0x1E);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_BAND, 0x18);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_00_LOW, 0x1F);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_00_HIGH, 0xBF);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_00_HIGH2, 0xFF);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_00_HIGH3, 0xDF);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_00_HIGH4, 0xEF);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_01_LOW, 0xE5);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_01_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_01_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_01_HIGH3, 0x14);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_01_HIGH4, 0xB6);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_10_LOW, 0xE0);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_10_HIGH, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_10_HIGH2, 0xC8);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_10_HIGH3, 0x3B);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_RX_MODE_10_HIGH4, 0xB7);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_DCC_CTRL1, 0x0C);
+
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_LINE_RESET_TIME, 0x00);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_SMALL_AMP_DRV_LVL, 0x03);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_LARGE_AMP_DRV_LVL, 0x1A);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_SMALL_AMP_POST_EMP_LVL, 0x00);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_LARGE_AMP_POST_EMP_LVL, 0x0B);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL1, 0x83);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_TX_MID_TERM_CTRL2, 0x08);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_SIGDET_CAL_CTRL1, 0x00);
+	regmap_write(regmap, QSERDES_RX + QSERDES_V7_RX_SIGDET_CAL_CTRL2_AND_CDR_LOCK_EDGE, 0x00);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_RX_SIGDET_CTRL2, 0xCC);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SGMII_MISC_CTRL7, 0x00);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SGMII_MISC_CTRL8, 0x14);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_RETIME_BUFFER_EN, 0x01);
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x00);
+
+	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_PHY_START, 0x01);
+}
+
 static inline int
 qcom_dwmac_sgmii_phy_poll_status(struct regmap *regmap, unsigned int reg,
 				 unsigned int bit)
@@ -265,6 +375,40 @@ static int qcom_dwmac_sgmii_phy_poll_sgmii_ready(struct device *dev,
 	return 0;
 }
 
+static int qcom_dwmac_sgmii_phy_poll_usxgmii_ready(struct device *dev,
+						     struct regmap *regmap)
+{
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
+					     QSERDES_QMP_PLL + QSERDES_V7_COM_C_READY_STATUS,
+					     QSERDES_COM_C_READY)) {
+		dev_err(dev, "QSERDES_COM_C_READY_STATUS timed-out");
+		return -ETIMEDOUT;
+	}
+
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
+					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
+					     QSERDES_PCS_READY)) {
+		dev_err(dev, "PCS_READY timed-out");
+		return -ETIMEDOUT;
+	}
+
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
+					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
+					     QSERDES_PCS_SGMIIPHY_READY)) {
+		dev_err(dev, "SGMIIPHY_READY timed-out");
+		return -ETIMEDOUT;
+	}
+
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
+					     QSERDES_QMP_PLL + QSERDES_V7_COM_CMN_STATUS,
+					     QSERDES_COM_C_PLL_LOCKED)) {
+		dev_err(dev, "PLL Lock Status timed-out");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
 static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 {
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
@@ -275,16 +419,19 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 	case PHY_INTERFACE_MODE_1000BASEX:
 		/* 1.25Gbps mode */
 		qcom_dwmac_sgmii_phy_init_1g(data->regmap);
-		break;
+		return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
 	case PHY_INTERFACE_MODE_2500BASEX:
 		/* 3.125Gbps mode */
 		qcom_dwmac_sgmii_phy_init_2p5g(data->regmap);
-		break;
+		return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
+	case PHY_INTERFACE_MODE_USXGMII:
+	case PHY_INTERFACE_MODE_10GBASER:
+		/* 10.3125Gbps mode */
+		qcom_dwmac_sgmii_phy_init_10g(data->regmap);
+		return qcom_dwmac_sgmii_phy_poll_usxgmii_ready(dev, data->regmap);
 	default:
 		return -EINVAL;
 	}
-
-	return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
 }
 
 static int qcom_dwmac_sgmii_phy_power_on(struct phy *phy)
@@ -340,7 +487,9 @@ static int qcom_dwmac_sgmii_phy_validate(struct phy *phy, enum phy_mode mode,
 
 	if (submode == PHY_INTERFACE_MODE_SGMII ||
 	    submode == PHY_INTERFACE_MODE_1000BASEX ||
-	    submode == PHY_INTERFACE_MODE_2500BASEX)
+	    submode == PHY_INTERFACE_MODE_2500BASEX ||
+	    submode == PHY_INTERFACE_MODE_USXGMII ||
+	    submode == PHY_INTERFACE_MODE_10GBASER)
 		return 0;
 
 	return -EINVAL;
@@ -434,12 +583,19 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct qcom_dwmac_sgmii_phy_match_data nord_match_data = {
+	.default_interface = PHY_INTERFACE_MODE_USXGMII,
+};
+
 static const struct qcom_dwmac_sgmii_phy_match_data sa8775p_match_data = {
 	.default_interface = PHY_INTERFACE_MODE_SGMII,
 };
 
 static const struct of_device_id qcom_dwmac_sgmii_phy_of_match[] = {
 	{
+		.compatible = "qcom,nord-dwmac-sgmii-phy",
+		.data = &nord_match_data,
+	}, {
 		.compatible = "qcom,sa8775p-dwmac-sgmii-phy",
 		.data = &sa8775p_match_data,
 	},

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
