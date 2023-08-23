Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8CBEE4993
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 09:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IQZD+JogmdpDg1HTfcUM+S/Mn5irZLXMRSwpiAymeHU=; b=SmkER+P7niZFEF
	bk8m9ZNiouPzPbU9vqCdK2PI6qU5wYJu6+5lrpuSJ1La35DDdAEHTrz0p0pFtffOCDayGQ3aJCZ1h
	WPQWtcxtGY4QIl+5p+/I9AguJnxCNw9sRsMRMJYNkWVi5JFLQUMC1l2g+axWhjo+fwwSqNBQnmlUC
	HFND4BE2yt8Gx7hWvWLZpEhUkhsybDDzxr7v/w62jtbs4MVQAliXEHUYoIA14GRinfih8aHZjPmKh
	SS5zkekKvIxHcs/zqHUrtM3qL448/5H8X31aKkL04b3JG9WJCl58lDnqobGXgj/0mPRUzsku06x4d
	qaj+TjBqNTLLGDowa+BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYk0I-0002qw-1H;
	Wed, 23 Aug 2023 09:18:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYk0E-0002pc-0S
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 09:18:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37N7Mmwf019703;
	Wed, 23 Aug 2023 09:18:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=regJct096Fmi2bn8PvXQq0GlUsAVo2IwLQJ1kIczaD4=;
 b=a/horabiDg00k2PDk2Bh6h38I0LMhJh/wQvfla3YOxh423sPlxp0G9KRLQkM+uJygjig
 F9uhpzHsiBzIxucsfgHycuokOotXqUuZVgIF7qzP3A2hKQhYHvIKEkXKYUuMxNbZ1DHE
 cxGHEiIwMWOVx3q1muhC3e19Dyubt5flrLVJHVXKxTENWzlKhtyxoj0z/6hKWc9DXl7n
 IdHfaiGS4edCfp7t9h7VpIFCfMrwsQZVKyQ8p2mEG/leG6abPq8hTk/7f9fKhyJXa3Nn
 UwJe1Pw5hizGOJn3LCusxJvCyxE9y/Y3aOworDyaWvCZ70qEMLWUc1dGC/VLffljD/kl Bg== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sn25vhn08-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 23 Aug 2023 09:18:04 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 37N9I0pO018288;
	Wed, 23 Aug 2023 09:18:00 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3sjptkpxt4-1;
	Wed, 23 Aug 2023 09:18:00 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 37N9I0fJ018283;
	Wed, 23 Aug 2023 09:18:00 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 37N9Hxdw018282;
	Wed, 23 Aug 2023 09:18:00 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 355535000AA; Wed, 23 Aug 2023 14:47:59 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V3 0/2] Add Phy Configuration support for SC7280
Date: Wed, 23 Aug 2023 14:47:55 +0530
Message-Id: <20230823091757.31311-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hdGhXtUqK1Bbj9kPlU9cH3ASHLT4a0s4
X-Proofpoint-GUID: hdGhXtUqK1Bbj9kPlU9cH3ASHLT4a0s4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-23_06,2023-08-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=920
 phishscore=0 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308230084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_021814_183558_3FAEA5DB 
X-CRM114-Status: GOOD (  10.65  )
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

Changes from V2:
- Addressed Vinod comment to replace upper case character with lower case

Changes from V1:
- Addressed dmitry's comment to align sc7280 register arrays in sorted order
- Addressed konrad & vinod's comment to align phy compatible in sorted order

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
