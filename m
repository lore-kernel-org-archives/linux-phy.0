Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 801CECA0ED3
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 09:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFFUqWbKPRCP8a8gj5O5/7Ct1hOO9YjC1hjw5QD1CSs=; b=Qp9czcFSgTyVbQ
	Sdk53cnAlBD9go092at8ILZ+TFYKp+BoklnrjoOYJrxhtPWbS7pUaQgfIwbs0AFlA9l6wf2ZCQ5DJ
	e9mCk4yareNyND2AHTKKfbdNfGPu4Cp4KCVS6MO5qhhKnxn9+6CE8/gtAl9R77kfS95ogvgqlhml9
	r9VZsZ6iOzFAh8HnhheSU03lZOfEDvh1XAVePPA3JLU+EW8+x++YYTQmsNPhqizN+wkV2Wfk41u9n
	NuQe9JCF4z+XzTj0AWm6pngrte5/8piorhSpO5cMjBTIuq8xKmpn6SJ2OPPmcLaaCwK6njGeSPly6
	zsQl70zdBbdPn0RB6BEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllrv-00000003Yep-0mN4;
	Wed, 04 Sep 2024 09:00:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllV6-00000003RZ0-0u0Y;
	Wed, 04 Sep 2024 08:36:29 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4841FTNr014384;
	Wed, 4 Sep 2024 08:36:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hjUg6dp8iv/xDnMO2y+98MESdKSTd9GcT+uDkUnJ3Cs=; b=TNY4el5xJqL/cV/R
	RoWf3d3Pa/03mxlZwUYVhYk3M+IyusRw+g6LD4LxDeHj2ydbnxQzulkZh8BSDNxr
	O1CjkmwG6W3hnFW5062woLCXjREPwgogV/R2rnYwSxQUWS3DszCcLF0xJH/ApW4j
	tyMnE4VbSNUtNKdy3WLqoKK6ofjxbIHZjyTO47yPPgksWjb/D3D0JRwrqxc2iMhc
	ZHLWVID50yxDrOAhTfLNj0Y8YllRb3xSxKHc+ZcA+rb06Mhf5IGyGyQAzENKf7vZ
	AQG3Qydk9CO/TGhtXFAyKYSmQyHjhZ+Grtw2cIP1qlrtBZ6nBqpbzVpMy481dheh
	q2zHsA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41dt69c67g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Sep 2024 08:36:16 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4848aFsZ007740
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Sep 2024 08:36:15 GMT
Received: from jingyw-gv.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 4 Sep 2024 01:36:06 -0700
From: Jingyi Wang <quic_jingyw@quicinc.com>
Date: Wed, 4 Sep 2024 16:33:56 +0800
Subject: [PATCH 15/19] dt-bindings: soc: qcom,aoss-qmp: Document the
 QCS8300 AOSS channel
MIME-Version: 1.0
Message-ID: <20240904-qcs8300_initial_dtsi-v1-15-d0ea9afdc007@quicinc.com>
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
        Kyle Deng
	<quic_chunkaid@quicinc.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1725438840; l=913;
 i=quic_jingyw@quicinc.com; s=20240829; h=from:subject:message-id;
 bh=wUD+32/ntljbFyo5WHh0uyngC23i5+SdymUp6DFqee0=;
 b=9ZseKVOz9nW8H32uNOHjrVQileRjSxOCj1NBHls8n+Q7oCIE0OoPoLPEIyYFCkZRXxi1jwPRI
 QDnExKI7CLaCPcXPAd0GpZw1CYE0f/BOZYFU8uqtpfDlgKp3walfCOR
X-Developer-Key: i=quic_jingyw@quicinc.com; a=ed25519;
 pk=3tHAHZsIl3cClXtU9HGR1okpPOs9Xyy1M0jzHw6A/qs=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: FKBjZJOI5-CSDngJKHKPcoSRlTbfR3Uv
X-Proofpoint-ORIG-GUID: FKBjZJOI5-CSDngJKHKPcoSRlTbfR3Uv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-04_05,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2409040065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_013628_429513_FB67E366 
X-CRM114-Status: GOOD (  11.50  )
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

From: Kyle Deng <quic_chunkaid@quicinc.com>

Document the Always-On Subsystem side channel on the QCS8300 platform for
communication with client found on the SoC such as remoteprocs.

Signed-off-by: Kyle Deng <quic_chunkaid@quicinc.com>
Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
index 7afdb60edb22..6f5c2609e82a 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
@@ -25,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,qcs8300-aoss-qmp
           - qcom,qdu1000-aoss-qmp
           - qcom,sa8775p-aoss-qmp
           - qcom,sc7180-aoss-qmp

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
