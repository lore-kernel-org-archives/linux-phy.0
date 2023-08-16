Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C099C001B0
	for <linux-phy@archiver.kernel.org>; Wed, 16 Aug 2023 15:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DL61uQW+ZQBjpUQvjWuGeMRj4ByB9C48DVQqQCSaAWc=; b=g2R6ArHmyijV5s
	6BdmNhUjlZ0dOMg+8sRNOw2OKh68FJzH8yZM9NopwkfG/lPYz0/1KuWUp3c0Sfgqy/17nilr5RZlK
	eBsLrYSP5O+5TSHnEQKgN3/w/SVK85EPSbIivinkE9KuLCWqaKcd6M//N1b7RZTql7Diz3PncAEn2
	MDGPiEZMR++97nz5iN1u39ECGuHWuA/Daw7LO8JruTOpQGviXh1JblY2bcTZwTfvOCeEgAn9kX9Eg
	K8Y8A9Axfv73FUD1jk3jsYT0OhJ798PTDsdwc8N9j3eqy02yK7JktDFDzOskany/1OJcU61VbnKl1
	Ye3evcavn1boSxkYvrXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWIlY-004XDW-0w;
	Wed, 16 Aug 2023 15:49:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWIlV-004XBO-2M
	for linux-phy@lists.infradead.org;
	Wed, 16 Aug 2023 15:48:59 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37GCn9QJ001845;
	Wed, 16 Aug 2023 15:48:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=q1VVgRd6l4S/kIJMK4NM0Qezc5H2bSqFKTnDSuMElGQ=;
 b=WPcGeruemqs3LXBqt2q2rdaFIgB0z6lZX09sDrrqQ/xRWvogXtJZ4c5/pc+MP35OYETd
 hPn08DkAMivzjN5yChTHppm/nynM1e5XgeVc/0ibkv4vG7uP9/El96816n3WSOkosHos
 hY5+pRQHFoBHAsuPTCCbpUKo+WzHbx996E3DpzuoLmu4HCUvaBnZrL5whidPLeytzaiq
 5ioVdHo2ARe7ZkDXJpQNE41VtU5Khez96bFpCDeZW5t9XFVGbIjrygg4+Gj2yhBXRchJ
 lRoOkHHe/51/9ir9qHGpwDAuwarnQBkFFXbeujQbCHdkXm0TMdm7H2GIQh0vKQ+ep1Sp MQ== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sg66hu8t9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Aug 2023 15:48:47 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 37GFmiWn002204;
	Wed, 16 Aug 2023 15:48:44 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3se35maye0-1;
	Wed, 16 Aug 2023 15:48:44 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 37GFmi5I002198;
	Wed, 16 Aug 2023 15:48:44 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 37GFmiuv002197;
	Wed, 16 Aug 2023 15:48:44 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 635D85000A7; Wed, 16 Aug 2023 21:18:43 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
        agross@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V1 0/2] Add Phy Configuration support for SC7280
Date: Wed, 16 Aug 2023 21:18:39 +0530
Message-Id: <20230816154841.2183-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 5seZ0W1TkW2-9uOLK8g4f9I-dyWR2hDw
X-Proofpoint-GUID: 5seZ0W1TkW2-9uOLK8g4f9I-dyWR2hDw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-16_15,2023-08-15_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 mlxscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1011
 priorityscore=1501 malwarescore=0 impostorscore=0 mlxlogscore=672
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308160137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_084857_910871_9119F9DB 
X-CRM114-Status: UNSURE (   9.49  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch adds Phy configuration support for Qualcomm SC7280 SOC.

Nitin Rawat (2):
  dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
  phy: qcom-qmp-ufs: Add Phy Configuration support for SC7280

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 142 ++++++++++++++++++
 2 files changed, 144 insertions(+)

--
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
