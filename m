Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02216C46CA1
	for <linux-phy@archiver.kernel.org>; Mon, 18 Sep 2023 20:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TOyonS5Hv4MrtT2D3J9mamxRmC62mv1DzIt7ThhqaKQ=; b=GL0kDwfG+EEwj2
	6k2Y+dScu11YrMaEkt5ZRKKD309pkZDQaP4xy/pU7ild0kHQVV1cwrKvHO0XDFRBSBLXdzzCcGgrA
	svI9zEH2Y8ytPV38BvvIjVFKkuqIzmNr0GdAuYfN2IYzL8McvWch/AUAxyAS3/to7jsqXrEt3qPZk
	AFJ7ZuvlGTk7iSUFuiLX8jVhjlyJqjReZa8J+dUl9McgKqXd9Dbz0/ANlee7h7VyXxBBW4CU1vo2Z
	Q1FSWUOK6EPv8o1x8emQTeMx+suR1ywN4YiPJub87ANEo0Hyd59aomLtxHYcxoAyLolWW657eHJOL
	BgebtXSMJ9KtrkRLPWxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiLCs-00GK3r-1q;
	Mon, 18 Sep 2023 20:50:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiLCn-00GK0d-2M
	for linux-phy@lists.infradead.org;
	Mon, 18 Sep 2023 20:50:55 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38IJTj3W021179;
	Mon, 18 Sep 2023 20:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=oEIAMM1vhMyerGGFGqE3kN4Eje2cLiFbKrP5ol9AMAw=;
 b=T0PYj55v/rSdpNBkIfP3i+qSL9WxpeHQuy9CP+5fmy0O+kqOEGOHARZSx1XmZsTeYW1i
 5dIraaTDtKt8mRAlq2G1YANkgJ6lliYGIbPU/Z9vDJqadztn9Tlq6tTHWBO7sr4qTUYM
 D3PHFH7/fNcGce4e4OdXOIHsLkf2uL9zETds69x5W0V6VnQE0sOageyvQ5Ab+nPLvdy9
 DK9kLUjF9MOcRnCFwbZDJTdxm6Y1Yprw01g87URFZ/f4C0eQSUI/3ETtso9oRTQlXO8J
 8Wn6DHwp7iuYB5FIuGPuHvm/PiHvkYE3//aur3VYAi1q/eX0j659bgsxGEMPMFTN9ROU Lw== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t6v2dg6ra-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Sep 2023 20:50:43 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38IKoeaQ001944;
	Mon, 18 Sep 2023 20:50:40 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3t55ekpd8y-1;
	Mon, 18 Sep 2023 20:50:40 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38IKlYgL031553;
	Mon, 18 Sep 2023 20:50:40 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 38IKoes9001938;
	Mon, 18 Sep 2023 20:50:40 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 4EC1B5000AA; Tue, 19 Sep 2023 02:20:39 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 0/2] Add Phy Configuration support for SC7280
Date: Tue, 19 Sep 2023 02:20:35 +0530
Message-Id: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: NMx9hQPki2i5HUqg3n8S7GOo_SHqPTZ-
X-Proofpoint-GUID: NMx9hQPki2i5HUqg3n8S7GOo_SHqPTZ-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-18_09,2023-09-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=950 spamscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 phishscore=0
 impostorscore=0 clxscore=1015 mlxscore=0 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309180180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_135053_882925_C9F309E1 
X-CRM114-Status: GOOD (  11.64  )
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

Changes from v3:
- Addressed dmitry comment to update correct binding for clk entry

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
