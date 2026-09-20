Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E3A3C982D8
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 13:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJcm4E/YR8e9tREyJXjP7TTm9Oh62Q2uZkGuJlSaBQ4=; b=tFGFYxgeqNe+q1
	6zPONfcHPlUe78C9qDxoc/nD2c5sHB9u7CVgi7lgM2y9TNiyrdw3vcgc3RX9FrwmMAUgUSJA1s0c3
	gZOMhaFkraIgctFSUwKFLXPRPiOJjAqfKhTdMfQkm3/69EOLcRFmcAxHDrfO3btxD6AlPggg1WJy3
	dT02F6bDn1fPyM4TEhOCaYsvxGs5n8ds2j88h9hQzS3L4ZCZhg+QeF9ZMRc8hcEEBn4s1hf++h0aa
	K/pDykkmwIIgP7PU23sfNfHHUcudOtvdhV9aGA1FSpbl+cZTc1VKxZAa5RR5w7XuVB3e78ulVi7Cl
	/MmxNoXcEvTeWa7FadXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4m-0000000HX7A-46TF;
	Sun, 20 Sep 2026 13:59:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4k-0000000HX5t-3ZK2
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 13:59:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68KBnsDJ2909980
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cpaEUk4ouLSDddqj0xeVFcwk3yNTz1uMr5TrFDwAj9U=; b=hg0idlaQR3FU94Kz
	p+TKB46Kbvvt3QrcMWHycY3LI8OdpfY3BRk2El85kJb4E5mKPbUtwePODux3iwmN
	i4wPtYqV8ltwuGNNvW36HM/EwKanysPfWtm0fQ9XTnfHdqRAVVmmYF46jYAaGyT9
	xICFx7ddId1ZIORz8tSu9vjMnZgeqVJxV7sM7Z8EP4ClR5WNFOf4pCTBtGVYeag3
	N58tQ7OP03MRqwtG8XZPliNwBwTVFTgjygOFlOKPItuB56o2TmwNtVk4eLrJtEZs
	btkMuj8lAGxLSK33ovNj5SH2KdBHH+D1BYOq76w3nyb3uR75CuD/xaNHmneWk4wH
	9E0NgA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gshyxu52b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93a0c7126e7so423190885a.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 06:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789912765; x=1790517565; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cpaEUk4ouLSDddqj0xeVFcwk3yNTz1uMr5TrFDwAj9U=;
        b=TjwkDrdz3Dq+LbWJmMLFmVXiA/GBHS49c8EIvEkerdfNC1vXb22Sigypy0mOJeMEQV
         i4cY4xPxO6pneESp7wF8dP4YK8XeZt8FgbxqVEP1ADKVOfRVOu+z+j259EbwSaWWDrBN
         xWF6rdIGSb5NQ4G7Y5q05gh0EKse0kSpH8OvDXduZ1M/jvrSe4U0nsr42kvYV/81xJz1
         f2O/Yfkgf2ss4JcTUsT0yLMZoPppxS+JchHeXaIZNUjGCDxz73Db7iGyqabKJewjfi0I
         AYKAKJsFJZf+tpO5qa9U5ppSppSk96iqkWfb5iqIuJtiYg7JvhAJA4m7B3dh0sJZRSM/
         WPuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789912765; x=1790517565;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cpaEUk4ouLSDddqj0xeVFcwk3yNTz1uMr5TrFDwAj9U=;
        b=WMaSN3w87JIHp+fDJTb8sbkc/W/xH+wqJ1Npawc8blvYaDP5I1xKSJNZqtwL5zq6jV
         iCLvdKz8T1rdXSlXhfXWMahG7hRH0ZtqRM6yrh+n7vDNPkJ30Lq0CzkSj8qFWo7YP/lK
         2dyZ2UVSS2gPtrXINWUcR+PloPNVkmmH4/Z2cbBt+LtQcnAynkhBap0ew9VVNrzM008+
         dwFT7dh9oDDXVLOm6OKa7Oyw1vMYhkeBRpAF4kx8W27dgoHijwb83ma5GfW6SI3htSZH
         JVBM5JMuNEf1vS16vwrjNrYvvshKm4WF1IWAZFJNkqGjKg+YY91eNWmdvbP50n39NlHw
         xs9Q==
X-Forwarded-Encrypted: i=1; AKwUvBwE7jb6tYrjGJ7MAH66CJwKI86mihfiuMvARXr53k5ikeUI/oMPQms6yR5Pqa77c5xw4SU28Zjet5o=@lists.infradead.org
X-Gm-Message-State: AFuF++k9neX+X0FEEzRfTB8th104aFSxp1ymRULkYpM7Yh83oN1TZiGO
	UAvzCqvmDUfQMmbXULuHRFW/cUxot9C8r72VoeChPvwimphDyF43nBRJn8F+gZoHaY+gx7TYQoA
	BICJyHNZFKY6veM6zmYUgq1UKf8mxfT1u/u7vwKf0mIazWnZm7tsu2uDS64zl7cxNIef6
X-Gm-Gg: AYBFou1a5qjzE8+wPZcFge6KhTcpfdEbiY2/vmYr6RrRjwF5Ik6+LfvTn5snJEjKPg2
	dt+YB0kn5rVcHb8SrlpLezSYxN25NmzKsFE6KrFEc92ChKuJImVlSJGidoArLtYlcOxIJSNeSc8
	XtBtNotxIL0cCfnRxhJel9WyhT0dj8DCu2ovQKVF4yqJV3ClKMxyiD8NFbl6SDQB5+TkiJKiLG+
	EhOw4/0d0ifPHU1kDrK4yapq4pX75PhYomU+FGuEYhuisvWyWDwV0iVe38b3B4xQ+Y2/KKInEqd
	vqFnaoUqR9yWN+gUIFZ1CD7ViF8vXSgc9tSn89a5uvDQGG+b3KJdpfvwSM1fTowKGoK5swE/h6Z
	giOk/12vecYLMOg3Q95kJEIEW22V50cyamcjxbzEQN5BAoWlR/Xvh0oxzvubh1xJB2Cqc8+6dkj
	OJon6bIyuGFtkK
X-Received: by 2002:a05:620a:319a:b0:93b:f083:b268 with SMTP id af79cd13be357-93bf57e17b1mr529284485a.69.1789912765178;
        Sun, 20 Sep 2026 06:59:25 -0700 (PDT)
X-Received: by 2002:a05:620a:319a:b0:93b:f083:b268 with SMTP id af79cd13be357-93bf57e17b1mr529281585a.69.1789912764708;
        Sun, 20 Sep 2026 06:59:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a607678223sm13620541fa.39.2026.09.20.06.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 06:59:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 20 Sep 2026 16:59:15 +0300
Subject: [PATCH v3 3/3] phy: qcom-qusb2: describe autoresume bit
MIME-Version: 1.0
Message-Id: <20260920-fix-qusb2-v3-3-c273e75c9fb7@oss.qualcomm.com>
References: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
In-Reply-To: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
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
 bh=tDITmfjnTcDQuM/CcuS9NmrD8cjJcov96HMKbqv/qSs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqr+aypTX6Lpyhx0cyOV8bYXKD2oglL3uQVx7BG
 BLvRJjk4DGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaq/msgAKCRCLPIo+Aiko
 1U7YB/48gIetc5GBviJ1BLrmcMsVaKxHRchOVP8+cO29KmHFr1B2/jLMdIATkiTq7peQZYLFDEi
 AwVubVt3cStqpSyO/5rD0NMSBde9HT9QZMTuaeO6fXo+i0b/5ecSTqMuwXFckbyZTzG3Ux+KnXZ
 RPLUTF9kSA7FdUFDR03C2H3+Vd3jkL34Ib2q9HdOsoB11JLm2whLX00vXdgNzJvIvDuIx8xBdc3
 xBtjaF5E/fH7QOXktFPhjIYrnA2hrfba+h4jVNhS++ts29XW27JbTHZie6M7C2kChOsmmarB9s8
 ESOXg9bpTESa/CWdLLhTA8odYc0h4s32R4DbKgdgFSDBc4Qp
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=PaRqFShd c=1 sm=1 tr=0 ts=6aafe6bd cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=RF7xEcOzHiF0mxsXtxEA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfX99Nhxack6png
 ewtUsgREz/YG8CUxwnF2uBgrY93KGz56ZogOBauNx0egBcwz8eSa+mMlPzndSq05gs4a993Gfci
 4lMVDS3KV33Yge+hf3YyngOYczxvkDY=
X-Proofpoint-GUID: pNG_CoikONV_vUEK58ZP3xPPf9BEP5K8
X-Proofpoint-ORIG-GUID: pNG_CoikONV_vUEK58ZP3xPPf9BEP5K8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfX7eFltXRP5n9b
 +K/P1meAwmD8ctgrUTLuvZMVr1arJg1iuRnBbaDNF3lo4Wh/t+PEPiEuwTUccyauQKOX910E+Cv
 rG/Qu0RG10Ng8KyA1G4eAttfSKl8zrzx9NuCLqle4yAZFF4kJtOmbjpjxftPYLvdcuw/qxEFUT2
 m+OPbue0KM+3RMV7yCM4zu2fpCzSsfNIpWq6HBmO3p6oXmJQRM6D/5V2kEUyWjx+dFZumFCj3Pb
 Yhg3HbMCZ3ZxS02bRGyL+C8v5gKaTxrYmyjP3OBe7j2aQDXVxyIE6JAMe2j0e6znLmCuvoM5/9m
 qx8rcqrN8FFYvFcJJWv+/JJC214HEABKaG4YVTXINBFc1dzhatm1Mn8wCIMM4ZLSVejX6Z3oJEI
 mt0KnCVri3YwUVtDLP/2NIaE52TidOlqNXXakL5lhj32R900YfXpvtX7naf3ehlWrkbWEZr/6YA
 TM/L3nPntuJ+zcbiaMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-20_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 clxscore=1015 spamscore=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609200204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_065927_035953_CFB43781 
X-CRM114-Status: GOOD (  19.47  )
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
index a1de05a83128..101c0820023d 100644
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
 
 static const struct qusb2_phy_cfg shikra_phy_cfg = {
@@ -402,7 +397,6 @@ static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.se_clk_scheme_default = true,
 	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
-	.autoresume_en	 = BIT(3),
 };
 
 static const char * const qusb2_phy_vreg_names[] = {
@@ -690,11 +684,11 @@ static int __maybe_unused qusb2_phy_runtime_suspend(struct device *dev)
 
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
