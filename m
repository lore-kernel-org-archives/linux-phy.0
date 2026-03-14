Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D0F107BCF7
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhsojPejApKV8pPNnpJVHS0JZ+T0QNjyw6rWtq9qYSo=; b=zhGw9uNIyLU53r
	bMRf3K5xOrvalimc1CkA0XCtht7ZxHEi4m2icixB39xaMn9jTwqNZ29H37hGnNLQ6e8CCamiEEeu0
	04Lw4AoDBhoBxX/pOTJn67CFJ384z852jMwCs1fIF42gQlWZjIipTeGKjtqyG5YAGj6+feAq6CiIe
	nU3rzk+56OmsXgX3BlmDgzzibMo8Sy6VHdUahDLgKvaH6juJYU2duGSCxqdo9ZxVR0xGWZlCM5Zu6
	gBbA8cbzgorbrrOKoCR753fjvubkiJei1OavJunTXHzrcI0DTG9VUbHckUd7jvUCvxJBcUpX4yQ6n
	3hHzXCs3280ibLBcz2SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKW-00000001VwX-3RhW;
	Sat, 14 Mar 2026 05:14:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKQ-00000001VtD-2QMZ
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:14:24 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E4C6fT722061
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oRJW5ApLate
	O5UNHV8BBxzIXxI15m4V4u2/xEsvjSOA=; b=AtBL9SHIhVudkKDU8sUK8dt4b3v
	stlM13iB4ZecH6zunOHcPJ8B8eAswoaRBljn3mcsG0B/idzFn9ZT7Eq8qEnWGSSs
	JE7lLno0N/RNtNO39DDzOiqI2EF+i2KG70JfWZAWnQ9sunKvqa86vvvZM/6B6Z2e
	uvaGIcwkfLLVYeytmlsVlmssj+9G6jej8REFQw1Ngo5wDbXSotQpJM3/zrnRaTrJ
	7DSySgN9yrbloAa04tp6qhuROJKUcgW/oL+RUcg2RbrRawvxUadK5uFrb1kMfleK
	3D3FxgdpNEsz5KxPjQFQOKgwq651Q7ecmU6ZJKobsIXTDoG5xIZRnx0TI7g==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0ec82u0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:22 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bead0a9123so40476412eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773465261; x=1774070061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oRJW5ApLateO5UNHV8BBxzIXxI15m4V4u2/xEsvjSOA=;
        b=T/A7vhbMNmrxuj8D3KcnmKV3LYcogJiE1ciBFaIgzBr14afdW2y/PtjDwwqUZmPtYH
         V696kwiGlLO99iuNHuIPDCZ2eTC9LpZS/SONw9EPHZADTemJY0o7FVW4GdFmCPvyxDYX
         rfbNPkGdBBCtJyd2lC3lfXPRutZix4hYKJj8QuIz0VwN6eulJg558TCt9K9Nk0t/mLQH
         xx/GQJB1czSvDDYARcSJ3K88bJJRqkWBfFZStf0Cj0ArGi+2yzcEiP35t6yi6QOX28Yw
         HqrtX1ugwfN8NPsWUN/MQ6T87RhieLaYpO0eqmu5FFpLse+tbQp9g1cFQgYVJ2/H547B
         ymvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773465261; x=1774070061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oRJW5ApLateO5UNHV8BBxzIXxI15m4V4u2/xEsvjSOA=;
        b=nPt8yTF4FGyPr7s7XCM8Nrf9PZHdSd+aMbuhAGPV6HATM1HdaUSJyhwE1/SFrlwNxP
         Hmhl5qfJq7iIFg0l1qw8N82KjCncMvTllCZiSzOLtfLZ6oDE6Dv/rfKja/g8PxVugolY
         pNX+W3mrZSiFfPnFXIr8fVfwoBDDOi9DekA/rcTqIhA9aDijapNaTlii3vEicGfpsr83
         fV+XoojlQSNXZdfpLsEQi9gtJ8XuavgsCQG6i9EKAAY/HunPw0+MM+/Vmz9PdHSsylyc
         sXgfDk5P97++BF+YLPPbteTxY7sDCLdCNp1Yl/H3tyS3AXObxil6zWoYLhQGygzZEjkB
         6xnw==
X-Forwarded-Encrypted: i=1; AJvYcCV+PQjfWY+iy2MP9givjxipYOpOsj/Uz++Gty6Kd6vnM8fmOZQxfO0IQAqVRlXQIQZHa1ucZlVnLnk=@lists.infradead.org
X-Gm-Message-State: AOJu0YymTdmSpGugzfQlBFRADwKThFRQ+xBiRRNlKIQr4trXchRQrSNh
	n1Z+J2WPIL05AR2bnXlk8NGOHrtlG9BnzwfEMYIZ8y2NsEJg+1Ux7xx5PaiStZlEj7O6DJGAXSu
	PM0lklSqD416mHdUCjtJB9FJz1bifB4lGZ4Moe6MGNV1KKCySMMOJQlWMXBZlDpyHvtPqKNPVsX
	in
X-Gm-Gg: ATEYQzy+chaYwjP+iufMNXDblY07Zvt6BoLPBabTijADD+NMUGEXZmM1UMnXWoUujUI
	iJDv9gVtfB8dX7Ha+XGoFsDHk4ylw9HTIpV7W9FJzHPryQAu+fBju1Nph0bitiJLN6q4CtWSLR5
	PIuiwUWBhjPZAOb+jWOROG6Pw4YXwxV6CbSyDljGr/QSjjp1tk4uzXNjjmpnzyYiCsTxVwWll3S
	eWc6BP85lsdTgYlDsew7rQlM/WT1Hye2Km3LYLKb02X0LHTn4J/rYhc+krWATz3qjrVF8sKCaCO
	SFTzURRufmXdwPTepG3BZcJbyh8CPkdgxb4p/DEbVr4cXSc9QAwjJ10FvU7dc9zNZryDE7YW/Ml
	diMNKBJ/uOnCIsHJQI9y166McPUTyUekIMkchtAPpXarJWMXIdLvlzy8v2LBOvDWILCnqgVjHb5
	4Q+RThqw==
X-Received: by 2002:a05:7300:a54c:b0:2ba:9ba8:5af4 with SMTP id 5a478bee46e88-2bea554b3e8mr3208867eec.22.1773465261407;
        Fri, 13 Mar 2026 22:14:21 -0700 (PDT)
X-Received: by 2002:a05:7300:a54c:b0:2ba:9ba8:5af4 with SMTP id 5a478bee46e88-2bea554b3e8mr3208858eec.22.1773465260965;
        Fri, 13 Mar 2026 22:14:20 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c098cbd4dasm1784045eec.0.2026.03.13.22.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:14:20 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 1/6] phy: qcom-qmp: Add missing QSERDES COM v2 registers
Date: Sat, 14 Mar 2026 13:13:20 +0800
Message-ID: <20260314051325.198137-2-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: XiAk9cTxC64XXYw-RQ2IgZt0XvwJpe-q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzOCBTYWx0ZWRfXyyDVKGm/aQMt
 Hau7/tsBklAYH1wmWsvmNZwl9Rg5/Gk30V5uvooKan02OYYLD48Eq4ay/TtbQz+H/UF/EpVxsKb
 JBctPtndBZcCr/6XCUOoygQD5IP5bHWY/ecxjRHykuwIQmwh6om/xKzCf2jLJgT5Dug51Fgb0GM
 wZAQwcBBaaiTJSj6m7n23gbbSN6VrsAEM0UyJsGp0ePvezpARGK3xBudYbl2cHukJ3SxgBNYjZY
 Hi2MtD+XcMFw0S/76+tL7Q48PPAprpbZoprqkr7vruFO86a7ov7gvTTh1dpfLQ3tE4rPWebvWYO
 UgpLYwB1feVnKa5rmmhNzsA+ayX9gTCa9t/q/DV66j9GmMXZadMH9nMsA2TzYaIesq/NYH0Swix
 b4CdSmxKrRo23vE2fjGkZsHVMNetJJF816xH3cxW09v+Dxy7qyGlYy+nwDFHb1tmd76COvjZzDm
 I1pMiPgLPaFVjrt5Izw==
X-Proofpoint-ORIG-GUID: XiAk9cTxC64XXYw-RQ2IgZt0XvwJpe-q
X-Authority-Analysis: v=2.4 cv=BqqQAIX5 c=1 sm=1 tr=0 ts=69b4eeae cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=PaEeUX0na0p9oEYLet8A:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_221422_616633_31EC843E 
X-CRM114-Status: GOOD (  10.44  )
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

A few registers that could be used by phy-qcom-qmp drivers are missing
from qserdes-com-v2 header.  Add them.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h
index 3ea1884f35dd..cb599c113189 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v2.h
@@ -34,6 +34,7 @@
 #define QSERDES_V2_COM_LOCK_CMP3_MODE1			0x060
 #define QSERDES_V2_COM_EP_CLOCK_DETECT_CTR		0x068
 #define QSERDES_V2_COM_SYSCLK_DET_COMP_STATUS		0x06c
+#define QSERDES_V2_COM_BG_TRIM				0x070
 #define QSERDES_V2_COM_CLK_EP_DIV			0x074
 #define QSERDES_V2_COM_CP_CTRL_MODE0			0x078
 #define QSERDES_V2_COM_CP_CTRL_MODE1			0x07c
@@ -47,6 +48,7 @@
 #define QSERDES_V2_COM_CML_SYSCLK_SEL			0x0b0
 #define QSERDES_V2_COM_RESETSM_CNTRL			0x0b4
 #define QSERDES_V2_COM_RESETSM_CNTRL2			0x0b8
+#define QSERDES_V2_COM_RESCODE_DIV_NUM			0x0c4
 #define QSERDES_V2_COM_LOCK_CMP_EN			0x0c8
 #define QSERDES_V2_COM_LOCK_CMP_CFG			0x0cc
 #define QSERDES_V2_COM_DEC_START_MODE0			0x0d0
@@ -83,6 +85,7 @@
 #define QSERDES_V2_COM_RESTRIM_CODE_STATUS		0x164
 #define QSERDES_V2_COM_PLLCAL_CODE1_STATUS		0x168
 #define QSERDES_V2_COM_PLLCAL_CODE2_STATUS		0x16c
+#define QSERDES_V2_COM_BG_CTRL				0x170
 #define QSERDES_V2_COM_CLK_SELECT			0x174
 #define QSERDES_V2_COM_HSCLK_SEL			0x178
 #define QSERDES_V2_COM_INTEGLOOP_BINCODE_STATUS		0x17c
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
