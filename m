Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC7E7C44500
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 13:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRu37xANMdn1QsI7Yr14DsBCyDTBxYwX2Y57P98eQEM=; b=dyt3PC/dWeEGd3
	SJAYzbobaPXM+0PbnEoQ9LxP90u85wwB+PDeNThe06lqCY8or4eXphZN43B/kaLEUCNbsCgeteDJC
	FQQI1hhkIUP7dBMpqNAN4w0voRzFGLK8TIgDhxCVgButnApg3WzTGcx/nAnmQ/OFsD8qu+8fm6zpJ
	V/4YaMn8ol9RfGTsGY8hkiyWM0/AQAwiTHxjaYICfweCp4CInXjD1AGgadJI+t+f02knXQfR3tUIN
	niXs4UmhSDbwWxPe8JNqmCAVVokQbOB2g08INEvmclKRhUOFuqkYRpA8EUZYmL2V4bN21KVK0b/2N
	br3Z1AW7GNpIv5jFYXGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjlK-0000000CfUu-20Uz;
	Mon, 06 Jul 2026 13:53:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjlH-0000000CfTA-2aYS
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 13:53:29 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxCeu238118
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 13:53:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SdQpLezsbJjyrDZrcr7035e753eL68/YpvXIbeQOnNk=; b=OZR/QZL0Pimb89Ub
	CS2/OXbyJzhlMWNJcSt7uI+koqL9/vs8OeCEwMOzVSMvyJDYnJmMX1C+QixDsxss
	BWYYQ+J3l8Kw1Yo5L10SlfafvCrXzZ0SQBZkCxIKcJvUTOA2AZOSzex/mRN8rTJ8
	n5kCCB8rlkeaTgg0LmZPmwLcNiJQCe4Adt0te3yBj9ElWtBMlmNXBqqQfjhu9+Sm
	WtxrEAH4TEHfoTla8403m+F979QEcgymhcGlfi210b4K4h6/nQ2it3R36FX5K2pf
	MheHXZLuOQ6LkIvdpz/csCdT4ru8S52PWVC2sbB+Fq4VKzmizQtPt8R+HRz2R91J
	2zhw5g==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88t899cb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 13:53:27 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5bdda66a906so4343002e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 06:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783346006; x=1783950806; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SdQpLezsbJjyrDZrcr7035e753eL68/YpvXIbeQOnNk=;
        b=ae8rxdoU8ank++fDKkddEg9PT9+pJlEntuxSRlwWQGg6SNeiRpumHvX7NPtAxaoceJ
         2/BUneWvM8uTNCx4hVWTMCQnxXQoCJLa2r9qWpJG/x/96amt75AU++rx3uvCvVYEGeXL
         rhrWsU00hiEcL9/uNUTPOcpEGORjjpPCl448k+21RNy9HzfLzLQ3NHttoXPW3g7C65oR
         quGY+26RXZcP+8s37FLqRVo+/APAjy30BYAihmERJ3KxkGAqRrc9qRAYFB36NM/6Ecos
         /UhI4UFP5aUozG9LVgVytACC2WQg+Bvy8eL4iBUsyBgnnjH5zd1SA+BOj+Xpw41uzz/I
         /GGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783346006; x=1783950806;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SdQpLezsbJjyrDZrcr7035e753eL68/YpvXIbeQOnNk=;
        b=nz5EwLonraV68ZlVa0/uE2UDbkY5pfcLOPP1cdHEtl96cDbPgBNBgD3RVK6ewTVcBc
         UIpcSFnasAgM6OP8P5oh/MWFZbi23cP7ytVBIJrGn6CUuheu1+Y00uALdma497+e1W7Y
         Q749HmCU1RaW2ZwMUu9vU7TIExs5+nHTE96n+b0YO++cEc9b9t5Io1ERMxq8WZODgcs8
         baadb+5dnJunLplAZeVTLY0/bm55OJwgvT7VI3W+nzG7rYMopZInyEXjiKMNctiJ7UvO
         lsbSlSLZaRITRhxG97fk92LbWwjgSTBhwi1BP67ja2iqqK4hyddqonzYAA6y2UCPJ6Gc
         aomg==
X-Forwarded-Encrypted: i=1; AHgh+RofMp0g+oL2n/Wyho5FqYJbD+pLPlrDsRU2VIq49MmLmj7h5YwcD3bZbWrb5QfwQueo/8PVMwWEtE0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxilr1xTtW7qDMKQ17R48VoutlPHYtXbQuMxi0Nr2+wON81i93u
	Eo7OF6l3R0jibqS9kEMxXN3cTlr//da1rsSWs0sug5DoDku3EuFf6Ig2FiAohdpxcx/bBloR3I4
	KQ+Ly/M795rwftNBeAkw/ivTP2xQiF8k3E5xcPqnzuD1PlgwzEc3uG11ZaRQuaJpemS6F
X-Gm-Gg: AfdE7ck3qo2b8EA6x8yPGUe3herbSGuUtLrBxD8lRyZWISwvRUFtBMNl1pXlH7nCCRA
	Gj2tHoYpEXYVJqB0J1+jmbhsHLhobQAB3wzx+Ty2MS+PH+bitpIFMNR2IGmsgsCocsoFzj2Zy1W
	nWKro8qWCPz/azQ1bpkOjRya1ZfdL0I/tydOyZZ4A5W8Y7F/Q/i6yDqNtc0UDlQdCku3hEmK92W
	XiiUPSW7UmOxKJ08BhVfgXEIUbpluxCF1S/R4EYfqusgm8JuHbs/CTZ5b5XxND4vDkv+4wHmf46
	ePScronTP0VcZfw7UGdCgdbBIlmEqOfe9t+1OSJbtKEdqpCUs6nhc9qZUKjdTLrFtlUUYxUTTuQ
	vCxsiQBkJJzP2M9scVr4afkBsn1p9ESAzHNIrazNDFe7Tpw+jOLjTAL12h6hOWAjQvJdOL25iUD
	S65+Cs/effjIap3mRzE5DBhdbZ
X-Received: by 2002:a05:6122:659a:b0:5bd:a810:b090 with SMTP id 71dfb90a1353d-5be907f3f57mr369444e0c.5.1783346006180;
        Mon, 06 Jul 2026 06:53:26 -0700 (PDT)
X-Received: by 2002:a05:6122:659a:b0:5bd:a810:b090 with SMTP id 71dfb90a1353d-5be907f3f57mr369426e0c.5.1783346005707;
        Mon, 06 Jul 2026 06:53:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13701easm2932551e87.16.2026.07.06.06.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 06:53:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 16:53:16 +0300
Subject: [PATCH v2 3/3] phy: qcom-qusb2: describe autoresume bit
MIME-Version: 1.0
Message-Id: <20260706-fix-qusb2-v2-3-8d9cd73b1db7@oss.qualcomm.com>
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
In-Reply-To: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6855;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=0Zby8MYfFSRwktg6RL97bzxRA8Ua1+HCPzDewLrqorU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ5b3Zt/G51eSOSvv2W9f23H9XezGZepRciU87W3H8jpuH
 jxTEnSqk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATqWdj/8NbGHIucOE7/Xiz
 6RM8hDuUF3v+M1aJk4g59o3pUtesNR/DNFaX5XSUNzC+CQxcy966/awH77I7sZz77HQ3nChv2HD
 f6YsTT//2vnebuXyu383o/RxnGcG+v7RzfmVcW9kFNVblwLzHph2LNq6X1o499CHurpN1sYkZE9
 MUQ7mlS/eeEQ4IN2npn/ZnYYuw8cdzUVE7dIo72mPN0vtXO55Xt9BaP41/3xuJUpcMMVdJrx1/Z
 jjUrT3Qyv806NtGM96zDEd+XzWLLNRVaXJN9wuYmtVnPm1SzEuv5ZrTH5ZzG87k/52cwBAjyZt5
 aH4kR6BF+fRkARbxr/znk10nfSj2n73P+3+tgb1DnwIA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE0MSBTYWx0ZWRfX+pySeej8+cjO
 nUyScvNkxxlElNuef7A3yYuVw4WWY4W0UGv3PCugGQ7zrLJfjfrU5erkhZDqwPWG+e58WzOh+l2
 rDSWhDgZ6Q3MmVpsd6cnWpPY4Zp9RQ8=
X-Proofpoint-GUID: Y9_dQ1GGpNLIxwapIcT_apcG0hGxV3UQ
X-Authority-Analysis: v=2.4 cv=C6zZDwP+ c=1 sm=1 tr=0 ts=6a4bb357 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=RF7xEcOzHiF0mxsXtxEA:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: Y9_dQ1GGpNLIxwapIcT_apcG0hGxV3UQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE0MSBTYWx0ZWRfX0Dn0zLBkEytg
 z2eSRdnXFTixk6sBDEKfBI9CYyVoyLM2xLbgOY6fQQXiQKN8nYiX59017twA1bhJxhta1MGYZMA
 3R5CuGFv8LO2psLvYQF9MibDwuFTMhXsvbAfNtnUyjAdICQO7mf7Y9Z0QhIB1wd8o593xcjOBSC
 haL7DQop99sKhXZb4CYXeBOx/wlLFZay5+S/7g6Kpl1dEI3QrcOmXD8vwJVnU6JolICNn4RqAl6
 +J2JPb4OsXgh26nNxC4wxgWN7tATs5UhgEIVwaWE+884F2kOmHcmgpfF2Uey4duTqGmaZmIdEa8
 VA/V08yOexdWiwYk+qv2rsxp3DrBay5WOYPTcNHFOeZRoZ0x9iepYs7DH03RorJRMjPzaTV0Fe3
 DsJW6j+wO8hMW20M5aOxCtxqlcP2/eBmJaqV8Zm+jNmN8p4UZu3Jd/wR0dg3iGKxt6qhFbj0CVH
 xbzBJfZh5eSy9fuKW2A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_065328_358021_C1B6737E 
X-CRM114-Status: GOOD (  19.82  )
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
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 48 +++++++++++++++--------------------
 1 file changed, 21 insertions(+), 27 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index b1d34b080cfd..b22b3c6adfd3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -131,8 +131,13 @@ enum qusb2phy_reg_layout {
 	QUSB2PHY_PORT_TUNE5,
 	QUSB2PHY_PORT_TEST1,
 	QUSB2PHY_PORT_TEST2,
+	QUSB2PHY_PORT_TEST_CTRL,
 	QUSB2PHY_PORT_POWERDOWN,
 	QUSB2PHY_INTR_CTRL,
+
+	/* layout of the autoresume bit */
+	QUSB2PHY_AUTORESUME_REG,
+	QUSB2PHY_AUTORESUME_BIT,
 };
 
 static const struct qusb2_phy_init_tbl ipq6018_init_tbl[] = {
@@ -164,19 +169,6 @@ static const struct qusb2_phy_init_tbl qcs615_init_tbl[] = {
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
@@ -184,10 +176,14 @@ static const unsigned int msm8996_regs_layout[] = {
 	[QUSB2PHY_PORT_TUNE3]		= 0x88,
 	[QUSB2PHY_PORT_TUNE4]		= 0x8c,
 	[QUSB2PHY_PORT_TUNE5]		= 0x90,
-	[QUSB2PHY_PORT_TEST1]		= 0xb8,
+	[QUSB2PHY_PORT_TEST1]		= 0x98,
 	[QUSB2PHY_PORT_TEST2]		= 0x9c,
+	[QUSB2PHY_PORT_TEST_CTRL]	= 0xb8,
 	[QUSB2PHY_PORT_POWERDOWN]	= 0xb4,
 	[QUSB2PHY_INTR_CTRL]		= 0xbc,
+
+	[QUSB2PHY_AUTORESUME_REG]	= 0xb8, /* TEST_CTRL */
+	[QUSB2PHY_AUTORESUME_BIT]	= BIT(3),
 };
 
 static const struct qusb2_phy_init_tbl msm8996_init_tbl[] = {
@@ -217,6 +213,9 @@ static const unsigned int msm8998_regs_layout[] = {
 	[QUSB2PHY_PORT_TEST2]              = 0x250,
 	[QUSB2PHY_PORT_POWERDOWN]          = 0x210,
 	[QUSB2PHY_INTR_CTRL]               = 0x22c,
+
+	[QUSB2PHY_AUTORESUME_REG]          = 0x24c, /* TEST1 */
+	[QUSB2PHY_AUTORESUME_BIT]          = BIT(0),
 };
 
 static const struct qusb2_phy_init_tbl msm8998_init_tbl[] = {
@@ -259,6 +258,9 @@ static const unsigned int qusb2_v2_regs_layout[] = {
 	[QUSB2PHY_PORT_TEST2]		= 0x258,
 	[QUSB2PHY_PORT_POWERDOWN]	= 0x210,
 	[QUSB2PHY_INTR_CTRL]		= 0x230,
+
+	[QUSB2PHY_AUTORESUME_REG]	= 0x254, /* TEST1 */
+	[QUSB2PHY_AUTORESUME_BIT]	= BIT(0),
 };
 
 static const struct qusb2_phy_init_tbl qusb2_v2_init_tbl[] = {
@@ -293,7 +295,6 @@ struct qusb2_phy_cfg {
 	const unsigned int *regs;
 	unsigned int mask_core_ready;
 	unsigned int disable_ctrl;
-	unsigned int autoresume_en;
 	bool autoresume_disable;
 
 	/* true if PHY has PLL_TEST register to select clk_scheme */
@@ -318,7 +319,6 @@ static const struct qusb2_phy_cfg msm8996_phy_cfg = {
 	.se_clk_scheme_default = true,
 	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
-	.autoresume_en	 = BIT(3),
 };
 
 static const struct qusb2_phy_cfg msm8998_phy_cfg = {
@@ -330,20 +330,18 @@ static const struct qusb2_phy_cfg msm8998_phy_cfg = {
 	.mask_core_ready = CORE_READY_STATUS,
 	.has_pll_override = true,
 	.se_clk_scheme_default = true,
-	.autoresume_en   = BIT(0),
 	.update_tune1_with_efuse = true,
 };
 
 static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 	.tbl            = ipq6018_init_tbl,
 	.tbl_num        = ARRAY_SIZE(ipq6018_init_tbl),
-	.regs           = ipq6018_regs_layout,
+	.regs           = msm8996_regs_layout,
 
 	.disable_ctrl   = POWER_DOWN,
 	.mask_core_ready = PLL_LOCKED,
 	/* autoresume not used */
 	.autoresume_disable = true,
-	.autoresume_en   = BIT(0),
 };
 
 static const struct qusb2_phy_cfg qcs615_phy_cfg = {
@@ -353,7 +351,6 @@ static const struct qusb2_phy_cfg qcs615_phy_cfg = {
 
 	.disable_ctrl   = (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
-	.autoresume_en   = BIT(3),
 };
 
 static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {
@@ -366,7 +363,6 @@ static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {
 	.mask_core_ready = CORE_READY_STATUS,
 	.has_pll_override = true,
 	.se_clk_scheme_default = true,
-	.autoresume_en	  = BIT(0),
 	.update_tune1_with_efuse = true,
 };
 
@@ -379,7 +375,6 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.se_clk_scheme_default = false,
 	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
-	.autoresume_en	 = BIT(3),
 };
 
 static const struct qusb2_phy_cfg sm6115_phy_cfg = {
@@ -391,7 +386,6 @@ static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.se_clk_scheme_default = true,
 	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
-	.autoresume_en	 = BIT(3),
 };
 
 static const char * const qusb2_phy_vreg_names[] = {
@@ -679,11 +673,11 @@ static int __maybe_unused qusb2_phy_runtime_suspend(struct device *dev)
 
 	/* enable phy auto-resume only if device is connected on bus */
 	if (qphy->mode != PHY_MODE_INVALID && !cfg->autoresume_disable) {
-		qusb2_setbits(qphy->base, cfg->regs[QUSB2PHY_PORT_TEST1],
-			      cfg->autoresume_en);
+		unsigned int reg = cfg->regs[QUSB2PHY_AUTORESUME_REG];
+
+		qusb2_setbits(qphy->base, reg, cfg->regs[QUSB2PHY_AUTORESUME_BIT]);
 		/* Autoresume bit has to be toggled in order to enable it */
-		qusb2_clrbits(qphy->base, cfg->regs[QUSB2PHY_PORT_TEST1],
-			      cfg->autoresume_en);
+		qusb2_clrbits(qphy->base, reg, cfg->regs[QUSB2PHY_AUTORESUME_BIT]);
 	}
 
 	if (!qphy->has_se_clk_scheme)

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
