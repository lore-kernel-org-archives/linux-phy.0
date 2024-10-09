Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E012CEE355
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 21:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PwVsr09PeE6YkmbJ64VE3jsyuiStEbi6FSf4yCDFvV0=; b=wdqQKRAG6S5OSx
	UTT2Q+OKKiPMJLJmSA+yaN1hf+T2bsf3Wj+/0UcPG9YH0FJqxu2Mj95TvD1+Uk2xrBaLZJO4WHs/J
	Nhl/Mykw6WrTr8aqPz63OEK7ZnIWN4YmuPhtD7L34hvP4CS/JNpEreNrEzLKp1Qc5H3XeyJqInqpK
	NQGiFJ6NeIKKTAVLBYjbqaJ2guz8yPqjZ953je4yCDWqljnntY5m8N5FNqfuoloz7WOgfKesgZeUV
	/8GYr4tKxKp6qb9AStMfSPBwheUSxWDjzLHyGLb5K3YF6JYgSUVYMLHK7iXhPqhAX/1rdWfhUEILJ
	lzU0znGnTZv6oRI9E25Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sye2R-0000000AkSi-1oAb;
	Wed, 09 Oct 2024 21:16:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syclB-0000000AXsr-3uT9
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 19:54:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 499FDLjc022606;
	Wed, 9 Oct 2024 19:54:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=h5NhgdrZThmxkhNJYKIxi+
	89HThSLGgv6QLTXuhjyEg=; b=A4FMgyUk8rm3OdDhIgFwvD//AfM4G1RCOrK6xc
	jtEPgwmM/J1YFPYXCBql92wuXQJjZI1Hlk0XFpwR6gmY5WRTt61oA8VSbJK/rhVM
	5udMfIAkhhkL/3KPH35/jmJxm6zISF96tJn49rzx+bwJyzoUOm3a42RkiDod+423
	62xPWQlS6Pu3jbTL/vk2nBX4LCr9Z0KkCtcJzpp3GvMC/uPLCay6AluWRo3MfCSB
	jFJFtZcmBrqsnbOmKsSzFAN74e8yQCJg7iA5klMbpVoR1FwLDEyasXu7VtBkr5NN
	kzLXREl6VbWK7i6/r7hW9K+Kg6nadXX+V8GXXF9xi3dA7y9g==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 424kaeyh4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 09 Oct 2024 19:54:07 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 499Js6cT024599
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 9 Oct 2024 19:54:06 GMT
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 9 Oct 2024 12:54:00 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Dmitry
 Baryshkov" <dmitry.baryshkov@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Mantas Pucka <mantas@8devices.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: [PATCH 0/4] Add USB Support for QCS8300
Date: Thu, 10 Oct 2024 01:23:44 +0530
Message-ID: <20241009195348.2649368-1-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: urM4tLSNWLGsC9297-gwI_kDVBLRYlsE
X-Proofpoint-GUID: urM4tLSNWLGsC9297-gwI_kDVBLRYlsE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 adultscore=0 spamscore=0 clxscore=1011 lowpriorityscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 mlxlogscore=870 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410090123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_125414_107175_E5E7DFE1 
X-CRM114-Status: UNSURE (   9.00  )
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

This series aims at enabling USB on QCS8300 which has 2 USB controllers.
The primary controller is SuperSpeed capable and secondary one is
High Speed only capable. Both the High Speed Phys are Femto phys and the
SuperSpeed Phy is a QMP Uni Phy.

Device tree patches will sent separately. DT Binding checks done on
the binding patches. Flashed and verified working of NCM over primary
usb controller.

Krishna Kurapati (4):
  dt-bindings: usb: qcom,dwc3: Add QCS8300 to USB DWC3 bindings
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QCS8300
  dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add QCS8300 compatible
  phy: qcom: qmp: Add qmp configuration for QCS8300

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |  1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  4 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 65 +++++++++++++++++++
 4 files changed, 72 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
