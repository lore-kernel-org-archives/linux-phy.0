Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 668FDC43602
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 11:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxHAQYGTEDbzYCEhzGY0TK53jXCqbV3tFg+5KNUGkC0=; b=cqcYiYRy43woJR
	VMroQVpliffgC30Rb9LQ2V43/UWpQoUWN5cvq+xSH4JUAl9itAsj/DnUqDCTtrosWXAvfyMbff+so
	LOhuAOTjmjIYgdzW3r15Gm/AHP+MAEMOODP76+eqPkPjTQThL+n6rDC5gQBhgKRowwZNjuBRTyxPi
	xA+KORmIWoJcNAzgF3QBqYw/dHNUzcXYQgzXLK4ENdYLBCBQFovavQqkgIXgHZGuzNm3KmIjLUUCP
	ZVgEfo2sY+w44/696yQsRl55326zUAA6PcuroMccAodqYiILyqYTDaXTdrtKpEjyurtX/Ar5faVLr
	vXMPgdqUtA0qkB0nJ10Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfFmW-00000004LDa-0ooK;
	Thu, 02 Jul 2026 11:40:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfFmT-00000004LCM-1PyA
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 11:40:34 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6627Tsm63964226
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 11:40:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yvIM1HHrlFL0l6iWI8La6WBY7QVoOM4JM/A6nRrd9as=; b=hVSYYrncySxKFDTN
	+hzAslwBpCCahQW05D7UgP0bmZ5MWcmElkxAfKrXLxyyIYR/gHzl9RkDTxHy+E/s
	bv9aU0Z6fL5qwHDBMXzkGmRgHwrN2G1pyebXEpT8E5JN0lHRld0K2T01V7mhQ2sy
	toOJWAiMjGEq5uJaOvblo3FByAXWqfZ/02MlCp2d/ex/UZZPSePU1H/R/1RfhWHx
	jwIPi+cIhdPdVt8syzSx0Dk3sdePz2qy9cjy9y2vrgIi2JwyY97UIyAmFOVyj+q4
	lEL7jBG9leeYPHCgkzMHL/0DB3Ok0fIcLzuZ8fpjcuzTH3WM9fvdKAUi4yQa/OL5
	TUXunA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5knc0y54-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 11:40:32 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5bdad49fe15so1280897e0c.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 04:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782992431; x=1783597231; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yvIM1HHrlFL0l6iWI8La6WBY7QVoOM4JM/A6nRrd9as=;
        b=InN7o0YAQRplNNer5qfQmLjtTGZmgt0TDvUAso1KRJbJEsNEppA59/+wyrt+6TbDb5
         ipWNhM6t6a9dmqdbZQfsS2J0UqAQKkPfh3bPA8D1HXnFOJgndYZOJC6PKSEmp7RG8YVv
         1EPQFregB3lThT4VSA1B+uGiusvhWF0ECCuVC/BQIt8mfxrQabd3J0dMnFnufAqzNo7a
         io/U58EyqQd0diyei7SMZ1CgM9DORv+LqqoFSlRQtYR5OSb4hwZKtWLz/Nyw8cLsyQ5Q
         OHFs4Ns7yRtF+aFTElfTPdk32FLQepFlq+6jdb2gjq8uLzdke9QE8KZDVSa3akEUNL1c
         KvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782992431; x=1783597231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yvIM1HHrlFL0l6iWI8La6WBY7QVoOM4JM/A6nRrd9as=;
        b=NtSTmP3iOTHXCDs+3nkZapo3qXqCT45uAzNh4nmk3RZNPPJMOAmjn8WYH2EtaOweo8
         K39uMRzWC7q2JU2fSyqCeYSxGGW6+0oxULgVLppz5Ld5ucXrh1r4AfWJqRohu22qs79m
         hGbUGKskQjwbGREOZ6pIcBFE1MTIVSdLHpfKRQXaR8L0BnuUe/+kCLjmY3TQ4AD6d2il
         7fTuMJnmuMalPWjSIM+tbnllaaimEAT5mff9ST2TkpXUd3DQ6v8Webqfpyhi7Gexm44v
         O+KAFXiFjRZeoQjs+0Yvqs8XqcSkkjUlFGv6WIKmv9O6MepsokFtEUc2Wu60M6lmXgVh
         5nXQ==
X-Forwarded-Encrypted: i=1; AHgh+RpOoSNy4MjHHseTXq7HtZqjvlK4oClv9BXugODoGJN3vkXn5PDEAAjHDJdDcrbuyBYZ21A1Mt0WC/o=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDF7AqMLbvhQI6eriaI54UbibJRwQQAXHRwuJvAt6iTRfHA2/H
	SdlwM8iuWwljQlDkJTYpvoUk/DTIzmD3DnYkvJbqACsLIq5Iik+39lhcYqeigrcmTPJbt/8XQgE
	BkimrI1Y8J+7QeNOakply1G3zsxnWCrbKeGNy48jucNd98Bu+ScQx5GGjODfatGkxWSUJ
X-Gm-Gg: AfdE7clbdrIe2/5mvohUFBVUGyhD9goM4A5EKRtIau8g5fZwQdobaZLUxqTC/X3YNZk
	yE5ieNOXb+9ZxbAaXzmP50SF4OwptoGjAfhWDlv/LOrD0SZTCZIdehjMVLVW8NZlZFsju0cD7vZ
	o5qPTNOZD5tvjWW5zI9lgNB2mRwSsLzWtS2+BgarCgxsyIHougOcgkcqQ/MDa+TJVMEizEpAdjm
	Ulgq2NsB7NQkf6YKmBAYgyDrkfHqOuq4qilquhoqc4ZuW51lD8rGUvq7uGJZsvKRHSy3XpacpSu
	ZM5Z8t+KsZ73BTkhOJfwgwbSSEZ7iwaoTSO5M+dMQIgyXrV3NLIW2g6cTx4HmsDfft5+dyNhqBg
	5RBUf8OJfS4n3Rz2ioEIA+U9PeIfP27zc2CoC09q/v2ELfsvQJr2WTZB5NlGIyv0RizHrEeAZtU
	LPaTHKxTmvBChoeokcTL4boyaY
X-Received: by 2002:a05:6122:2218:b0:5bd:89bd:3559 with SMTP id 71dfb90a1353d-5bddf69e4aamr2427571e0c.9.1782992431494;
        Thu, 02 Jul 2026 04:40:31 -0700 (PDT)
X-Received: by 2002:a05:6122:2218:b0:5bd:89bd:3559 with SMTP id 71dfb90a1353d-5bddf69e4aamr2427553e0c.9.1782992430858;
        Thu, 02 Jul 2026 04:40:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec8991affsm626240e87.13.2026.07.02.04.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 04:40:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 02 Jul 2026 14:40:26 +0300
Subject: [PATCH 2/2] phy: qcom-qusb2: fix autoresume handling
MIME-Version: 1.0
Message-Id: <20260702-fix-qusb2-v1-2-b5cf55621524@oss.qualcomm.com>
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
In-Reply-To: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5398;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=mZMDOZsidMvP4Sf7A/yARzoaVsw7RzwuGmMvlmFgEYU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqRk4phLT9hZHptz2O7KfLs3K9OZFhzyFpChdtF
 KYg0OYYms2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCakZOKQAKCRCLPIo+Aiko
 1Q6/CACPuzxmqJ8UhIx9wTczhBRB6KVAqPOWFo1rWA5GjmYW7pDcCDuZhNC38MIJODmpfv6JQwc
 PkfFi2f4NX73BeWYfoDu9wMHqHtKaNmA9M2VDYeA14HIqY4spEk/tdL6z6M6FE+1fPtIT0HlmY2
 Bir8p3rB22cZWKyxa661hl0tXO+v5/29ObXngPsxr2AgGCGg3Dj4z8eUzZReDwiMafJI+tFbX1O
 ElwbXFn8rjH34xKOYYAUbOgEGs+OU4eqP4DaGennA9J8fJgSqhAdhad1DBVKfnDnEBZCwvdy8FY
 DrvVMYecwApMUzVoSL7F33fJtMo9bKSvNx6LbwYx+7I5h0Ao
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 4xeN1NnESydLf7Nu6WI52gCa0w0T31CB
X-Authority-Analysis: v=2.4 cv=a4kAM0SF c=1 sm=1 tr=0 ts=6a464e30 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=6YfJv8JmAF87wY5fNyEA:9 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyMSBTYWx0ZWRfX7lnNmEN/4hq2
 gUv1DwJy3gy2p+nnT7nsR3/VIVJM8W2oBSXDodJTI3poeeo38J8RCbaq7qZxXZQGMDQnMBvlETe
 ar9d8WwWwyc9Dq+xCkf71T/IOLYKQwS6bcLKXFm6KTzQlVWlfQpBDu8oPkzJUUv/B1HQs/GpbiH
 +60SLBYH3eYIXJ9l3TDcYAILG08nOEeqw7C8L8JynQ0I8PF0OiMhTEGUOzUgFeUC6/4iXVDUx6k
 Zjfcdk0WWAmNaSrmdXTACW2zQ63AOQuWwja8K70FoRSnBebuA/pX6/PiffTIuqzD4C/VmwMffo4
 RKHpryv99D0X7fdl2j7dEqAV6H6+fkGp6ysUfLSU7IlpPwYNimE2AVrr6TpdXw/g6bnJJnFOJQk
 +lRYbN2Vo97mYtnBZGP09ICjkKPYkWqUkN7mTGvTXNUA1nYhoEC90KcqMpPD8nxOHbGl5lv8qqZ
 9UVxGHZWcMau1wogSVw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyMSBTYWx0ZWRfX2DqSnEIerFTX
 y4u9w9ZW5R3A3TwIP2LWl8Brv68Y+KS/GrSecf3cBRbEkxyHOGjUwAZ9/IRHAgsxPG6kadbg1VV
 PMHt7nwEyAfwb2nHi8FTgyoYBCtKxdA=
X-Proofpoint-GUID: 4xeN1NnESydLf7Nu6WI52gCa0w0T31CB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_044033_503011_8B3CD21D 
X-CRM114-Status: GOOD (  18.63  )
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

There is a confusion regarding the autoresume bit. Some verions of the
QUSB2 PHY have it in the TEST1 register, while on the others it is a
part of the TEST_CTRL register. When adding support for autoresume bit,
the code attempted to simplify the handling of those registers, putting
both registers to the TEST1 layout entry. In the end,
ipq6018_regs_layout ended up correctly definig TEST1 register at 0x98
(because platforms using that layout didn't use autoresume), while
msm8996_regs_layout used TEST_CTRL offset (0xb8) for the TEST1
layout entry.

Update the platform data to specify the register to be used for
autoresume handling, define both TEST1 and TEST_CTRL registers and merge
ipq6018_regs_layout and msm8996_regs_layout which become identical
afterwards.

Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 38 +++++++++++++++++------------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 1109c480843e..ff3bc8fc2f18 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -131,6 +131,7 @@ enum qusb2phy_reg_layout {
 	QUSB2PHY_PORT_TUNE5,
 	QUSB2PHY_PORT_TEST1,
 	QUSB2PHY_PORT_TEST2,
+	QUSB2PHY_PORT_TEST_CTRL,
 	QUSB2PHY_PORT_POWERDOWN,
 	QUSB2PHY_INTR_CTRL,
 };
@@ -164,19 +165,6 @@ static const struct qusb2_phy_init_tbl qcs615_init_tbl[] = {
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
 };
 
-static const unsigned int ipq6018_regs_layout[] = {
-	[QUSB2PHY_PLL_STATUS]              = 0x38,
-	[QUSB2PHY_PORT_TUNE1]              = 0x80,
-	[QUSB2PHY_PORT_TUNE2]              = 0x84,
-	[QUSB2PHY_PORT_TUNE3]              = 0x88,
-	[QUSB2PHY_PORT_TUNE4]              = 0x8C,
-	[QUSB2PHY_PORT_TUNE5]              = 0x90,
-	[QUSB2PHY_PORT_TEST1]              = 0x98,
-	[QUSB2PHY_PORT_TEST2]              = 0x9C,
-	[QUSB2PHY_PORT_POWERDOWN]          = 0xB4,
-	[QUSB2PHY_INTR_CTRL]               = 0xBC,
-};
-
 static const unsigned int msm8996_regs_layout[] = {
 	[QUSB2PHY_PLL_STATUS]		= 0x38,
 	[QUSB2PHY_PORT_TUNE1]		= 0x80,
@@ -184,8 +172,9 @@ static const unsigned int msm8996_regs_layout[] = {
 	[QUSB2PHY_PORT_TUNE3]		= 0x88,
 	[QUSB2PHY_PORT_TUNE4]		= 0x8c,
 	[QUSB2PHY_PORT_TUNE5]		= 0x90,
-	[QUSB2PHY_PORT_TEST1]		= 0xb8,
+	[QUSB2PHY_PORT_TEST1]		= 0x98,
 	[QUSB2PHY_PORT_TEST2]		= 0x9c,
+	[QUSB2PHY_PORT_TEST_CTRL]	= 0xb8,
 	[QUSB2PHY_PORT_POWERDOWN]	= 0xb4,
 	[QUSB2PHY_INTR_CTRL]		= 0xbc,
 };
@@ -294,6 +283,7 @@ struct qusb2_phy_cfg {
 	unsigned int mask_core_ready;
 	unsigned int disable_ctrl;
 	unsigned int autoresume_en;
+	bool autoresume_in_test_ctrl;
 
 	/* true if PHY has PLL_TEST register to select clk_scheme */
 	bool has_pll_test;
@@ -318,6 +308,7 @@ static const struct qusb2_phy_cfg msm8996_phy_cfg = {
 	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
 	.autoresume_en	 = BIT(3),
+	.autoresume_in_test_ctrl = true,
 };
 
 static const struct qusb2_phy_cfg msm8998_phy_cfg = {
@@ -336,7 +327,7 @@ static const struct qusb2_phy_cfg msm8998_phy_cfg = {
 static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 	.tbl            = ipq6018_init_tbl,
 	.tbl_num        = ARRAY_SIZE(ipq6018_init_tbl),
-	.regs           = ipq6018_regs_layout,
+	.regs           = msm8996_regs_layout,
 
 	.disable_ctrl   = POWER_DOWN,
 	.mask_core_ready = PLL_LOCKED,
@@ -347,7 +338,7 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 static const struct qusb2_phy_cfg qcs615_phy_cfg = {
 	.tbl            = qcs615_init_tbl,
 	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
-	.regs           = ipq6018_regs_layout,
+	.regs           = msm8996_regs_layout,
 
 	.disable_ctrl   = (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
@@ -379,6 +370,7 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
 	.autoresume_en	 = BIT(3),
+	.autoresume_in_test_ctrl = true,
 };
 
 static const struct qusb2_phy_cfg sm6115_phy_cfg = {
@@ -391,6 +383,7 @@ static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
 	.autoresume_en	 = BIT(3),
+	.autoresume_in_test_ctrl = true,
 };
 
 static const char * const qusb2_phy_vreg_names[] = {
@@ -678,11 +671,16 @@ static int __maybe_unused qusb2_phy_runtime_suspend(struct device *dev)
 
 	/* enable phy auto-resume only if device is connected on bus */
 	if (qphy->mode != PHY_MODE_INVALID && cfg->autoresume_en) {
-		qusb2_setbits(qphy->base, cfg->regs[QUSB2PHY_PORT_TEST1],
-			      cfg->autoresume_en);
+		unsigned int reg;
+
+		if (cfg->autoresume_in_test_ctrl)
+			reg = cfg->regs[QUSB2PHY_PORT_TEST_CTRL];
+		else
+			reg = cfg->regs[QUSB2PHY_PORT_TEST1];
+
+		qusb2_setbits(qphy->base, reg, cfg->autoresume_en);
 		/* Autoresume bit has to be toggled in order to enable it */
-		qusb2_clrbits(qphy->base, cfg->regs[QUSB2PHY_PORT_TEST1],
-			      cfg->autoresume_en);
+		qusb2_clrbits(qphy->base, reg, cfg->autoresume_en);
 	}
 
 	if (!qphy->has_se_clk_scheme)

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
