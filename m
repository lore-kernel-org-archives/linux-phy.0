Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F5E2CA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CevnsTh5R4uoo99HcUzDrqE7+OyU1QSOs8x5yW6TQQg=; b=oHE0/i9kslmq2G
	BgcREOS4DlaVS1NAEbJnYherOtsMWXEsFuoqah9Eji0RRakbGmgGYBihLhKlODnycjH9UoOKTxHP4
	NXVlbP2/fxIgyRVq5fyBtRi3Brh8qibp3vMKPFm9AEp0BfebUl2hf6t4lApWeTPjmCwAW5kuaIxe3
	53lwk9pC03Kn2qgaCVxqm+Z7zWyru9qaERRhrBzJQKqizEYFt5ir/fubTKnwqMezCGFDelXLf+t43
	mb2vL/1bACFMqH8MQBGJ9gA4iZY3QjrPaxnAzvS73JQ1ZmYnWO1pt5XVXgL/w83YC9DBR6OAzZ9rt
	fq9tXiT6PxwMwY/N8wBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdk-0000000DELp-4ByG;
	Sat, 03 Oct 2026 09:02:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvde-0000000DEIk-2XHt
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:02:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6933MQmO069829
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 09:02:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yIPcK6LnB5fcCUY4Eynm+yZ5cpoKNOUDReSkaF3WFRE=; b=awRiZbPGsumCDjWX
	NRvxJ2dQCMWGVFBBhm1Isiv68O3VvPACb34qLyZO1nItsKocp/+7cNr+SQ89EW6G
	m9ZmV6nIAt8of7b+EZnmLt+znuloJI298dhPJtLbaMQPHdgft2Q+FQg6uFuYGh8g
	3SWQ3omA7Wt2ehLzFSJ5ZHC7gv+xY4XpK0Pwai82bHtDhMFWHeT28rrfmE/Wxiqq
	BmFOyi8fnNQoKqnOxmTm6hqIQvkOmA84K+Kth+ek+PbKHPaDYAvR5+m3AvQKDzhh
	lBBybrxNcvb4flBC7+m3PeqD8LeRt2EwpA0sAyH/87vTj8/lfCFfCa9d6OVvuDq1
	Ay/p1A==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sr68h9g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 09:02:38 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-34ef0362d95so731481eec.1
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791018157; x=1791622957; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yIPcK6LnB5fcCUY4Eynm+yZ5cpoKNOUDReSkaF3WFRE=;
        b=Vi0ftocqArNT4lU5xBLBtU93yzcC6nhmTRAJ83J5tmRgksHZnMEtRUrvJ2G+T3EH1C
         RoVxgHpQXJ7r5lhjgwlAdATaRIDV+NTraVgyhwycWqePQaKWLc22wgcqF+E8crSlcoNA
         h6hgo3kOLjlhRGvy3GWLudekjCjhsRmaTWTfSZ0Nmita+j1x2MhMoS6xfVBTKQ9meE75
         86zrY7Dg1pXuUONjxArZpg1wp7V9GrukSS8bDPOIrYyifALCXrUDEMERoUsTp8iaV9H+
         bLT2vdAiXKB4pZz4FtFCHrRlQwVbDfU2PdPMdBkI0K4FeYYy1VKK6RdJnrexnRUplSW+
         hlyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018157; x=1791622957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yIPcK6LnB5fcCUY4Eynm+yZ5cpoKNOUDReSkaF3WFRE=;
        b=xjkhrQ7eF1eV8a30RNgUsvwGYnZ4SoBFzWNTTGyPWsAp6zuVb51uUXgLptEn1LFa8S
         8JhGjIjwlyykYwZ0rPBv0E/Bi9aJjB6GTziBs/57DhLN6SH04uO3201riA6NVvWfyBTl
         fgJDSJTkaurfpxDdDdik6oyZasZVQNh9C8QMUeJh/MgD4i8zHtWpjfZ3mJkZSpELUTkV
         ooqMgsRiKbr5piKe19nK2RMyYBDGT0qbdHuDBFr9ieSpE4MIIjQO2UkzMwwTolIq0kN2
         MUjAwe6awDnWe4bk33LQRhIHeUEx64eO+hot5/Roi/UUtn4ZoNVyNTk28QSgi1KGd+UA
         PUiQ==
X-Gm-Message-State: AFuF++kKhyBJg8bo58Wv+psiiOYB2LC6ai1+aTUt2U0A5dmitDbHe+yi
	MJXgXFlGY+EYAscb6f3eFcf/bXXl41Eaf0DxUZNQIanwxftcYvS3c4nC9me8kIWJs2pnbPEiqAH
	xuSOZnaCv3Ofz4hSAKRV1CJGCXfEh7Sv7C4F4xUh31cYdxZI2q5ISYw0kJVBE+xpvNmEl
X-Gm-Gg: AYBFou1NPEnWgbBsQtQVMl9e1YhKNsF/dX9cJkMQX84WdPEx0jKF9OlUvpJlZAsJ+u0
	MWoV0+5vesDC+81zIyiKYp6D/at+zyCwvbtMPEHIwsxvM67trNc9a9fs/P/0jjxpWgj9GuU12J7
	EKuggMYYZ6cRFoZTYDl1PW4PGjZp6M3KW5tNccE5hsVC6Q/4uXX91VBSLt3Yqzh4+k5D/2RaCJG
	ofD5j2ZEDt0VwiQr+hkP2f/6j+deAFAcd6YPB5eRHi6SrMQFOqCG+EZWkD/4xU3vn4w8kZrclYV
	I3dsFkd8BVO1ohHgOvzYki5GwUp5nJuheLvGxH0WadW1HASSrD2Bd8aZjs8p4zuMinklDrq1vZy
	xXRe3s1Vf/sMZHvQ52G7ywL4CajpPx14TM127P1MXt6jCTqqlFzh4pul5vjWvT0+E9DPNziAu5Q
	/JXRbUgHN2Xw==
X-Received: by 2002:a05:7301:1443:b0:351:1d75:dd34 with SMTP id 5a478bee46e88-3511d75dfe2mr52514eec.5.1791018157279;
        Sat, 03 Oct 2026 02:02:37 -0700 (PDT)
X-Received: by 2002:a05:7301:1443:b0:351:1d75:dd34 with SMTP id 5a478bee46e88-3511d75dfe2mr52469eec.5.1791018156725;
        Sat, 03 Oct 2026 02:02:36 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34f14f9f2afsm29278695eec.18.2026.10.03.02.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2026 02:02:36 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 02:02:19 -0700
Subject: [PATCH v18 08/11] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
MIME-Version: 1.0
Message-Id: <20261003-kaanapali-camss-v18-8-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
In-Reply-To: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX9TjJvt8ztu1f
 wcM3FIZMo3zrVhINVLCwjYDGQKF3lJ1EDcW1gwGxEv/+IW+yD9YcIqUYUD9VOltR3kREW2yVFD+
 e7HvdihtQUDEblAY1ZtKWlUQSMlziDY=
X-Authority-Analysis: v=2.4 cv=NaBzRGD4 c=1 sm=1 tr=0 ts=6ac0c4ae cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=zvpRHedlNIWp6186mRgA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: h2evCe9H4ttLk0XcvV-hVU0mCHu2Cepk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX+CPEtdybnWHu
 ajcE9iFvXEygxsJULnfP7G9065s63T6dOVdamE8vqLmmczEz/SoeU44kwHSItzwK+nfhTBIVrea
 3alRxB203Yzr1qex0JwKPkJTmlF7LB06/9HM8uTBHwbFx2jL3AhPV6FkOsJC6n4nhAgQauUh0Un
 5t4ZlGudTOBpYzhPzBMttt3hce6bOm5UBeCaLEgGjJZd2SqUaVgLnZAn4/Z4pMOlq4AmI+iTWpE
 xwsntec4IdERqiP8f0ur6WnFw4AsuXpg3Ly1lL6Wv/Bi8DBgUqvaJ76vHRAFUvqwSKNYx/pYCph
 KTiwRXeXKh8iXw/EUqTMUSL7fn/xvEJOQFpminkS58De6aA451CBojwHWgHIg0ttUCTtMMLeYCS
 +VQ9Rr4b8IXgP+sI3dRwu6rY333V55pREmFqrT7sH9gWva75lANUA7zMDRvUr21exB/yksHA6e7
 C3ykdUOTyaLNn1CiceQ==
X-Proofpoint-ORIG-GUID: h2evCe9H4ttLk0XcvV-hVU0mCHu2Cepk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020238_676602_799CF0A5 
X-CRM114-Status: GOOD (  17.61  )
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

Add support for the TPG found on Kaanapali. This TPG uses hardware
version 2.4.0, which drives test-enable and reset through a separate
TPG_CTRL_CMD register instead of TPG_CTRL, and routes its output into
the CSID 1080 RX via the CSI2 TPG mux.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-1080.c    | 15 ++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 27 +++++++++++++++++-----
 drivers/media/platform/qcom/camss/camss.c          |  2 ++
 3 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-1080.c b/drivers/media/platform/qcom/camss/camss-csid-1080.c
index 46e443e05195..851b3cd712f5 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-1080.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
@@ -63,6 +63,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -140,6 +142,7 @@ static void __csid_reg_update(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	u8 lane_cnt = phy->lane_cnt;
 	int val;
 
@@ -148,8 +151,16 @@ static void __csid_configure_rx(struct csid_device *csid,
 
 	val = (lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
 	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
-	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
-	       << CSI2_RX_CFG0_PHY_NUM_SEL;
+
+	if (camss->tpg && csid->tpg_linked &&
+	    camss->tpg[phy->csiphy_id].testgen.mode != TPG_PAYLOAD_MODE_DISABLED) {
+		val |= FIELD_PREP(CSI2_RX_CFG0_TPG_MUX_SEL, phy->csiphy_id + 1);
+		val |= CSI2_RX_CFG0_TPG_MUX_EN;
+	} else {
+		val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
+			<< CSI2_RX_CFG0_PHY_NUM_SEL;
+	}
+
 	writel(val, csid->base + CSID_CSI2_RX_CFG0);
 
 	val = CSI2_RX_CFG1_ECC_CORRECTION_EN;
diff --git a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
index d29de5f93c18..770a9e5d5ba5 100644
--- a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
+++ b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
@@ -22,6 +22,7 @@
 
 #define TPG_HW_VER_2_0_0                TPG_HW_VER(2, 0, 0)
 #define TPG_HW_VER_2_1_0                TPG_HW_VER(2, 1, 0)
+#define TPG_HW_VER_2_4_0                TPG_HW_VER(2, 4, 0)
 
 #define TPG_HW_STATUS		0x4
 
@@ -33,7 +34,9 @@
 # define TPG_CTRL_OVERLAP_SHDR_EN	BIT(10)
 # define TPG_CTRL_NUM_ACTIVE_VC		GENMASK(31, 30)
 
-#define TPG_CLEAR		0x1F4
+#define TPG_CTRL_CMD		0x1F4
+# define TPG_CTRL_CMD_TEST_EN		BIT(4)
+# define TPG_CTRL_CMD_HW_RESET		BIT(0)
 
 /* TPG VC-based registers */
 #define TPG_VC_n_GAIN_CFG(n)		(0x60 + (n) * 0x60)
@@ -164,18 +167,30 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	}
 
 	/* Global TPG control */
-	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
-	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
+	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
-	writel(val, tpg->base + TPG_CTRL);
+
+	if (tpg->hw_version >= TPG_HW_VER_2_4_0) {
+		writel(val, tpg->base + TPG_CTRL);
+		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
+	} else {
+		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
+		writel(val, tpg->base + TPG_CTRL);
+	}
 
 	return 0;
 }
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	writel(0, tpg->base + TPG_CTRL);
-	writel(1, tpg->base + TPG_CLEAR);
+	/*
+	 * On TPG older than v2.4.0 test-enable lives in TPG_CTRL, so clear it
+	 * first; v2.4.0+ drives both test-enable and reset through TPG_CTRL_CMD.
+	 */
+	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+		writel(0, tpg->base + TPG_CTRL);
+
+	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
 
 	return 0;
 }
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index ddd7d94989ed..8ba21934a85d 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5869,11 +5869,13 @@ static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
 	.csiphy_res = csiphy_res_kaanapali,
+	.tpg_res = tpg_res_x1e80100,
 	.csid_res = csid_res_kaanapali,
 	.vfe_res = vfe_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
 	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
+	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
 	.csid_num = ARRAY_SIZE(csid_res_kaanapali),
 	.vfe_num = ARRAY_SIZE(vfe_res_kaanapali),
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
