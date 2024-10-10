Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEAE5CEDDB7
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 02:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XH5XdefQBffVZXL2iOYFPVC+hcQI7x6EXelHnE4Ox2g=; b=aF3ykP4j/37Zie
	no34mxN+5np0jOe9bXMx9ClIIo/W548I7+S3i0WBVSej38YZUJeTuRCAlPLFz8xOuffjytRStXZd1
	yekBhLeVQOh86qTrxk8jvnpP9cOpKb3OnegZn6AbqfIs8ob2fqmluRjBHZUB3D9Wc3wdXzqPzwMMM
	KHNrT0NFyZpptVy4BkhfAUJ7CGpctcW28qHEMsdqaRytZGoKx1P/G6YBW56dpeNF73UBYfWZJ+5Ja
	YSUWSdXbhlmPJ8wz2wJ5wbehgEqNL00Yv3Wu0Aq44MT3TPlyg4QIxKYAf5eq7nkILWRrGoQR+j/X4
	GIrIObVqYn0q/T+91YAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYg-0000000BGFY-18MA;
	Thu, 10 Oct 2024 02:05:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYa-0000000BGEk-1yc8
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 02:05:40 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49A1b1xH026795;
	Thu, 10 Oct 2024 02:05:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PwguU8K9q4ElaypTqADSdE
	jaBpITo1N/cE2UK0wTvlo=; b=PucWOVUectwALyJK6+gH3sMjq8crcTSDQ/4iHJ
	O+ZWIWIQLkH8210u7bEFFNS0QeUtC7ldmBj6mWjq9k3n9gVAfTZQLVBvCk4D68UR
	BW0zakZkBuLDKzFh7cM44huQdvjJ0nJrREflhPNUmHXvmsnBoADORLen9fjgVUPw
	1OYKmUjo8e8K6i5WjL0FWmKj2Lp0jlQvY7pNi6txM7c65qYWiIi11QehEhkHqVZP
	sgyZ0qGUjjs1aS/5U181yK3eUqusMGvwy3ljVBVaxVb/3mR0bna5Usv2vghWaPjB
	00hbhbCoc/FUDaHOZ6FrNmKEQ66H/xrDVqk7f9jffhE7s4nA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 425c8qvaqa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:24 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49A25NNa000712
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:23 GMT
Received: from yijiyang-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 9 Oct 2024 19:05:17 -0700
From: Yijie Yang <quic_yijiyang@quicinc.com>
Subject: [PATCH 0/3] Add ethernet dts schema for qcs615/qcs8300
Date: Thu, 10 Oct 2024 10:03:42 +0800
Message-ID: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP41B2cC/x3MQQrDIBCF4avIrCuMkmDIVUoXjpnEWcQWp5SA5
 O6xWX7wv9dAuQorzKZB5Z+ovEuHexhIOZaNrSzd4NEPDh1aTZn3aEckpBBC8hNBjz+VVznuo+e
 rm6KypRpLyv85fzOc5wXYMImIbgAAAA==
To: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        "Paolo
 Abeni" <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh
 Sharma <bhupesh.sharma@linaro.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
CC: <netdev@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>, Yijie Yang <quic_yijiyang@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728525916; l=1227;
 i=quic_yijiyang@quicinc.com; s=20240408; h=from:subject:message-id;
 bh=8zg7uqJ9F9dHFV5MUGZbEkc0C4syuarZNtsPZdOTC1w=;
 b=oCL7TZG9kQ4YdHZE+54xecj+BYNcwqM1fbzZOQRtv0td5mOVAR6MWjiS6we9TuVamgVX6wdPD
 tTxcPcMK/VRC4VBiKOeWRGbwVp7XBEEtfx+c7dJFNtYvjR0hMDDFTXJ
X-Developer-Key: i=quic_yijiyang@quicinc.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: kp9LMD8qygJjScGPbJUJBEvHuHGfvBuv
X-Proofpoint-ORIG-GUID: kp9LMD8qygJjScGPbJUJBEvHuHGfvBuv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 phishscore=0 clxscore=1011
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2410100012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_190536_670230_79152124 
X-CRM114-Status: UNSURE (   9.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Document the ethernet and SerDes compatible for qcs8300. This platform
shares the same EMAC and SerDes as sa8775p, so the compatible fallback to
it.
Document the ethernet compatible for qcs615. This platform shares the
same EMAC as sm8150, so the compatible fallback to it.
Document the compatible for revision 2 of the qcs8300-ride board.

Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
---
This patch series depends on below patch series:
https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
https://lore.kernel.org/all/20240926-add_initial_support_for_qcs615-v3-0-e37617e91c62@quicinc.com/

---
Yijie Yang (3):
      dt-bindings: net: qcom,ethqos: add description for qcs615
      dt-bindings: phy: describe the Qualcomm SGMII PHY
      dt-bindings: net: qcom,ethqos: add description for qcs8300

 .../devicetree/bindings/net/qcom,ethqos.yaml          | 19 ++++++++++++++-----
 .../bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml    |  7 ++++++-
 2 files changed, 20 insertions(+), 6 deletions(-)
---
base-commit: 70c6ab36f8b7756260369952a3c13b3362034bd1
change-id: 20241010-schema-50b0b777c28b

Best regards,
-- 
Yijie Yang <quic_yijiyang@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
