Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0322CA0ED3
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 08:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEb8ZIinAmFVNoJ5SYMj/8J+51PhLXu7dvvW/cgtoiQ=; b=N57Q3Ud/5yhEFJ
	afs7J0Gukkm7eR/uZU+EIaG0tWIMI+4aQ2/XMEwVO3pFlDytqCVTw5Ogs4oG8R7rRS4/14zMcOA5b
	KUZMsZWFgyONZOJcwj0FQKZDZEX2c3PcEHAmwRuRBNq+eFAseOFaKvcXjFWOpPAzGYhACTL4G0Bxe
	Ona0stoH1zxZzlENn5VRKu6p9tzVBBfGoZ+MDyyzhZB3JSbiK6T7h5CHKFeQ5Ql5knpog6jZ+XhTq
	Jvve6QYbwXuGfQUWQhBOv8IseLQI7fOgWt6oUHduattmVPmRaE8+VrLr9lAuSt1aAJ1z3eR0xnWc4
	SdDrzdLGv19B9FUiKpKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slleF-00000003Uox-1gVP;
	Wed, 04 Sep 2024 08:45:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllTO-00000003QlK-3kQj;
	Wed, 04 Sep 2024 08:34:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4844Xnad010426;
	Wed, 4 Sep 2024 08:34:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QnS3/EDK8HR47cM5NE2NfzQ0KgghedA8wZpdrLIzU6w=; b=IV3Q8XJNtXoiGFwK
	SbsP3amoLhi5LMWk2b9Bw3P/1gneQpHsMckuSPL6Wvyhv3zXrN6V/AWI5iF50Jkt
	SiExRM3sGQNOiEchL2a/tNr4KRusAqzfsSSwxy8vnF/Dw/IQkilw+XTCRLw8KuXo
	OCfstUXbq5xusOLJHfCIMwTk6X2cgSGHZ+htB6YvYBhzXjPbSns2NjewQRcRwiww
	VakVKnjLAH6geZSxLTEh2qg4Z7CPHssYde+JuQnjGIuhh63Gkz/OkMvMboEKei6r
	1NmT062OdWm+k+2oNnDF53XM8+f2OqYZb7/KiQnzex+fpnai8T023LC8WGAIzMDd
	qH3oOw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41egmrgha3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Sep 2024 08:34:19 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4848YI0O028383
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Sep 2024 08:34:18 GMT
Received: from jingyw-gv.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 4 Sep 2024 01:34:09 -0700
From: Jingyi Wang <quic_jingyw@quicinc.com>
Date: Wed, 4 Sep 2024 16:33:42 +0800
Subject: [PATCH 01/19] dt-bindings: remoteproc: qcom,sa8775p-pas: Document
 QCS8300 remoteproc
MIME-Version: 1.0
Message-ID: <20240904-qcs8300_initial_dtsi-v1-1-d0ea9afdc007@quicinc.com>
References: <20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com>
In-Reply-To: <20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier
	<mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bartosz
 Golaszewski" <bartosz.golaszewski@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, "Andy Gross" <agross@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Thomas Gleixner" <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
        Robin
 Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh
	<quic_gurus@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Lee Jones
	<lee@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-scsi@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <iommu@lists.linux.dev>, Jingyi Wang <quic_jingyw@quicinc.com>,
        Xin Liu
	<quic_liuxin@quicinc.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1725438840; l=1612;
 i=quic_jingyw@quicinc.com; s=20240829; h=from:subject:message-id;
 bh=7qnOboI4fqKc5XrrI3q9z18NMRMMqBJJw9kgOxQk0bQ=;
 b=Wo485Ih1CNVeaDbtWfF0DDBntjURgokd58SjDBoj/xG5d++Ga8vZwDsNWDoNv6zd8gvM2I709
 YZxsL/qMlJFAXt0xb3le7y+Gi/LdzTymB8qP6RWse0C3znLc3z7+ewY
X-Developer-Key: i=quic_jingyw@quicinc.com; a=ed25519;
 pk=3tHAHZsIl3cClXtU9HGR1okpPOs9Xyy1M0jzHw6A/qs=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: oL01RJ88BYIa5LcmW0JTb_Vd29LdFJuY
X-Proofpoint-ORIG-GUID: oL01RJ88BYIa5LcmW0JTb_Vd29LdFJuY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-04_05,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 suspectscore=0 lowpriorityscore=0 mlxlogscore=921 priorityscore=1501
 spamscore=0 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2409040065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_013442_977264_1C19DC6E 
X-CRM114-Status: GOOD (  11.78  )
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

Document the components used to boot the ADSP, CDSP and GPDSP on the
QCS8300 SoC.

Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
index 7fe401a06805..b788dd77e40e 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sa8775p-pas.yaml
@@ -16,6 +16,9 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,qcs8300-adsp-pas
+      - qcom,qcs8300-cdsp-pas
+      - qcom,qcs8300-gpdsp-pas
       - qcom,sa8775p-adsp-pas
       - qcom,sa8775p-cdsp0-pas
       - qcom,sa8775p-cdsp1-pas
@@ -64,6 +67,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,qcs8300-adsp-pas
             - qcom,sa8775p-adsp-pas
     then:
       properties:
@@ -80,6 +84,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,qcs8300-cdsp-pas
             - qcom,sa8775p-cdsp0-pas
             - qcom,sa8775p-cdsp1-pas
     then:
@@ -99,6 +104,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,qcs8300-gpdsp-pas
             - qcom,sa8775p-gpdsp0-pas
             - qcom,sa8775p-gpdsp1-pas
     then:

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
