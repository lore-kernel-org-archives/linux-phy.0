Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD59CAC5A0
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVK84i7hsyoOspPGxjKieqkP1/Zw3lywz1aJE7P4GFs=; b=m81NPwCK6NRIN1
	Zy8XHE6BmXR3291C2cV9R6ox6pfboFMBFOuzLSReuO9aXc7IlzS/x4/mGHNep61ZR/VTvBcV4M+St
	NEYS5+6s8I0EJfm+VF/KEo5Ks3mM9Xt4FOM62vX7aRjDrV2IUYhPKi3VNPJFVqHA1J9lLQIb1VdYJ
	8DQrkShdj5i4nlpqZJB4OF7Emgksi9daTst64ny8rkC1uZkYcp/KYtaDS3yAzb41pzOdZq8rFHEQq
	fSYOAm5oATw156aUz6QJTwD6QW4fYXkCFeYNoNDu7Qsl3scPVFpBKqqWRZ09B/xFj6CWlv5ZT3pKQ
	vx9cofiMyraj1721u45Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoAB-00000004eFn-2Zta;
	Sat, 20 Sep 2025 03:21:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoA9-00000004eD1-2nX4
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:26 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FXOq023796
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hKTIbjuAYzG
	ahgeRLyxR3TczQpUAFOZVGJylj2LspM8=; b=kYpG57POq/7zOFNBMFj1qXKnh1P
	ya6V22UUyrh+Is8hMrBBe24ZLon2EtsBjQmdiVITaE2Lgq/v7bbY3wpOUl1oFi2S
	eNpa50/qxdTJgqfpqRL1TKNYKt5qe15YmjptO+aRLgUooV9qa/q3AHxwBSMw5voB
	aoD9O1jS8xaUIHuz1/g7oz6ASZ3DTodsP+1WEc2NGBaIwFixTTUFydDcGqTLBuTe
	++DJEKly8Lb/esYKsmxM9CrBOb2haw1/5AN4b//rQq6z4yHXrNiKm3MsCtL/DS13
	ar6M/gVn0eBxqNi8ng5n7oV0Ytoxqt2GH5K/oBc8ft7nP59t/F5CPliW6gw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwmfy7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:25 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4f86568434so2032886a12.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338484; x=1758943284;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hKTIbjuAYzGahgeRLyxR3TczQpUAFOZVGJylj2LspM8=;
        b=i/a4dNpEjEmGnn685dPRV1s/u0N3PattJU7nu+fK9xsYKP5WiRqMkHKh3gzdNRJHLC
         SanY/nEgZDUVkNcppyG4t5Bmbf4mOOBy3TCpqet68ykx7tR7kc8XYFZb9D9YwtogrCQ/
         h2o40aDrG+5pQOXrd2P/T7g62KvWuP0UwJhjJFFS30rBEApLaJaRwZ7AAlOJK9ISsKev
         6kT6nF9W3VO23iQgg3gGvhpt1GC6Pdmz/X4eOsGL2yS6qi7AFGs7cqQ687SMwPGAUkQ/
         CFUI44i0ZU1OZiGwrCgSnuEmU/rQOecy7oYdoz9uI0oSgFbJ0duwlCK+CHfX7b+mP8KI
         0ZeA==
X-Forwarded-Encrypted: i=1; AJvYcCXUAZG56I2usYCV6XojDuK5yj+pOHeJaz42UelakjkT1vODneiery5j0XlVAqXXZNTcwv6TyDR5kMk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/Qe/Nn3cUeJfHTo7s+HB5CnPwyUo8+Ya6BmXvhhErcBqvwF79
	21jRGiUrr3AQiN4BUUiGU/EA3oSIavb9YiKgOKhhhtJCO7dogJhqJT/9P38YFmKZ7DiqlCq01jz
	Ij6t6V6QLio6Upb44B5dck8pp2iCqkG3FBHZqV6yrl3/GZ02tOw+lVX23FZl36cqDfSgd
X-Gm-Gg: ASbGncv+xNfpZE4fCKwkJ1GWbxTOrTqo1wxdG33uctGbBbV1K+pUGLZ8TNP3tStUOQ1
	R0aMo8MtRM8Fj/jfLFoHTK0OfcX/grRVIXkGfmqPbUrVtXHJrAicMdZAoyqpF6/a/p/MI3u334i
	9K+1A5y1ZYVOeXLHe9wD4ge34CtpscG7jYz7UEW8fNHhXJ9MqaafaF2smz4OX84D3lKRUj80COx
	+9uM7yB0+v1QldPDU1B4kK8OF/+KGFPL6vOvCfwH9Oy07gRu1WcLbQbmsVu+0WsUv5J4F9/yWM+
	sEDhBWuybxxgBqlZtF4wQRenB024+8K0WQUpAHS694Eb601iv4ezcLP+QqeLRu57yyfwBjGsJGM
	KA6rTYcrdZ/4HCa9g
X-Received: by 2002:a05:6a20:938c:b0:24c:48f3:3fdb with SMTP id adf61e73a8af0-29270e96890mr7894685637.39.1758338484211;
        Fri, 19 Sep 2025 20:21:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFu4f72fkqx12SdPWyCieaDsLbh5k1dFhPTt5001lv4IVwkywvz06uoLqtiYCxNzBfZ4zJIbA==
X-Received: by 2002:a05:6a20:938c:b0:24c:48f3:3fdb with SMTP id adf61e73a8af0-29270e96890mr7894657637.39.1758338483737;
        Fri, 19 Sep 2025 20:21:23 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:23 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 7/9] phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
Date: Fri, 19 Sep 2025 20:21:06 -0700
Message-Id: <20250920032108.242643-8-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68ce1db5 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bxfdmw13fxgBHIVlFAEA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX7Q7lQzqxkg2q
 Iyeb3la4uXeuk2MYTY7gE1aBxDQHG0fxEUmLUMNGMkAYSDp+z0EJlBwx8wPTR0K3R05zhBLemIf
 7CEao9oiUVWxyhhRmxGq94lG7NF7GoTa1R7fg1RExpc7oVGyhaFLdPXXEoEWU+4xN7+IYSv6cO0
 8ZUECRM7PbsSeybDl8wSqbPKTdeD6mGenTL8gWsWFNA1nMENqg5NDHeSCRxq59UjSjEWDRW8qja
 zJtASFi7EPeaYyO9qdZye4AYMSgvEMbIOo4L4OLSPmbfGhyGNTtsx4UExAbANtLXgrZXLNT5wfA
 yZ4u73bIr8k2AkTXEAxJErCsgN8WWouKdEDyPkEMOC9lXHg8UXQsokE+SKqNdd8wlAmgUKwqGTc
 2DHiWzJ1
X-Proofpoint-GUID: YqDKhB0W17iGfbaRCDgg4vLs2jSMBWd9
X-Proofpoint-ORIG-GUID: YqDKhB0W17iGfbaRCDgg4vLs2jSMBWd9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1011
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202125_717737_9130167B 
X-CRM114-Status: GOOD (  14.90  )
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

Glymur contains a USB multiport controller which supports a QMP UNI PHY.
These ports do not have typeC capability, so it needs to be differentiated
in this manner.  Update the QMP PHY sequence required to bring up the UNI
PHY for Glymur.  The UNI PHY follows mostly the same register field
definitions as previous SoCs.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 163 ++++++++++++++++++++++++
 1 file changed, 163 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ed646a7e705b..50e31610ce20 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -28,6 +28,7 @@
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v6.h"
 #include "phy-qcom-qmp-pcs-usb-v7.h"
+#include "phy-qcom-qmp-pcs-usb-v8.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -1240,6 +1241,139 @@ static const struct qmp_phy_init_tbl x1e80100_usb3_uniphy_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
 };
 
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE1, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE1, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE1, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MSB_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE1, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE1_MODE1, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE2_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE0, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE0, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MSB_MODE0, 0x00),
+
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE0, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE1_MODE0, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_BUF_ENABLE, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_EN_SEL, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_CFG, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_3, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_ADDITIONAL_MISC, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG1, 0xc4),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG2, 0x89),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_RX_SIGDET_LVL, 0x55),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_CDR_RESET_TIME, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_ALIGN_DETECT_CONFIG2, 0x30),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_RX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_1, 0xf5),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_3, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_4, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_LANE_MODE_5, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V8_TX_PI_QEC_CTRL, 0x21),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FO_GAIN, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SO_GAIN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_PI_CONTROLS, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_GAIN1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_UCDR_SB2_GAIN2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_AUX_DATA_TCOARSE_TFINE, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_VGA_CAL_CNTRL1, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_VGA_CAL_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_GM_CAL, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x27),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_ENABLES, 0x0c),
+
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_LOW, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH2, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH3, 0xdf),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_00_HIGH4, 0xed),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_LOW, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH2, 0x91),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH3, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_RX_MODE_01_HIGH4, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_DCC_CTRL1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_VTH_CODE, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_CAL_CTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
+static const struct qmp_phy_init_tbl glymur_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_WAIT_TIME, 0x75),
+	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RCVR_DTCT_DLY_U3_L, 0x40),
+};
+
 struct qmp_usb_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -1403,6 +1537,14 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v7 = {
 	.rx		= 0x1000,
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_v8 = {
+	.serdes		= 0,
+	.pcs		= 0x0400,
+	.pcs_usb	= 0x1200,
+	.tx		= 0x0e00,
+	.rx		= 0x1000,
+};
+
 static const struct qmp_phy_cfg ipq6018_usb3phy_cfg = {
 	.offsets		= &qmp_usb_offsets_v3,
 
@@ -1704,6 +1846,24 @@ static const struct qmp_phy_cfg x1e80100_usb3_uniphy_cfg = {
 	.regs			= qmp_v7_usb3phy_regs_layout,
 };
 
+static const struct qmp_phy_cfg glymur_usb3_uniphy_cfg = {
+	.offsets		= &qmp_usb_offsets_v8,
+
+	.serdes_tbl		= glymur_usb3_uniphy_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_serdes_tbl),
+	.tx_tbl			= glymur_usb3_uniphy_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_tx_tbl),
+	.rx_tbl			= glymur_usb3_uniphy_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_rx_tbl),
+	.pcs_tbl		= glymur_usb3_uniphy_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= glymur_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb3_uniphy_pcs_usb_tbl),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v7_usb3phy_regs_layout,
+};
+
 static int qmp_usb_serdes_init(struct qmp_usb *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -2302,6 +2462,9 @@ static int qmp_usb_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_usb_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-usb3-uni-phy",
+		.data = &glymur_usb3_uniphy_cfg,
+	}, {
 		.compatible = "qcom,ipq5424-qmp-usb3-phy",
 		.data = &ipq9574_usb3phy_cfg,
 	}, {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
