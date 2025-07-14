Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 361C0C83F17
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 08:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ow0DPvxz/npUgR7xfqhUTuScWoSJ3BjwjCYU9yzzsIc=; b=rxtRBIJ1NWxp1K
	Plp1S5uSSrW7ZTtBFRftrhLprJ2nJbE0tiPydLfUaCy7OkfZiAs2vnpGK8FoT2gDBfeOYpwZcCXuf
	MjX/5VEZZPFhHV0oFg5TmlRVTIWp6mCBsKtMeDLd/ihtTrgcz90tQi208r5BcXDzMvZeSvq5pNyWF
	XGowST13o13NM34swtdSQHEqdBaDrYA8h44HeORlQvLmVSl4VEH2laQEwyPBsW/4XxndCyFkZisvX
	5iQoKovIqZM6E622KBea5wvT9Bsl3WbCOzPC/az3TI/awaNOKv8C/qBEK9hWPbfc9GUfStpGh6YXb
	TSHQ5e78ImDCfh5L3zAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubEUL-00000001dTI-2VJR;
	Mon, 14 Jul 2025 08:24:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubELf-00000001b1L-3xGL
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 08:15:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DNs6G1023688;
	Mon, 14 Jul 2025 08:15:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2hzq8z/9Xmu
	SCCuDue7qA1Husl67ct8whTNbCFos3Fc=; b=nM2nrGIHdud1oEMjEGjRPRp2FfW
	LWkoF9Z6vtwGhU4AIFTxIhmqeWkjxuXe/BHjeT1PkFTgrrOTKqnIZFJKLhlAmfze
	Gc8OXM4rUxv5qiKt42hbKkXAoiP5HH9m5gB4hPQJJBIWhL4LExkq91Lz1reygtPy
	uhQ/DHFyy0yDjOLQCoSxh9rfngeaNuNJm2xtqr/bk+O8IWUHTuK1LpQSSFvh0Qgu
	fi/5R9QuKypzrdYiUuU09IMtsgVcoedeTII4oemz7wnX7jkAx2QG73HIXIJULUzI
	R4fF57JmbD+ojW3A+kNCw8V41gqXBNPIWly5hLGjpJkGwr6qLXYqSS82RvA==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ugfhbtuh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:15:35 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56E8FXMQ021302;
	Mon, 14 Jul 2025 08:15:33 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47ugsm5xjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:15:33 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56E8FWVT021292;
	Mon, 14 Jul 2025 08:15:32 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 56E8FWbj021286
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:15:32 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 0C62E20C52; Mon, 14 Jul 2025 16:15:31 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v8 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for qcs8300
Date: Mon, 14 Jul 2025 16:15:25 +0800
Message-Id: <20250714081529.3847385-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
References: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: UJ7Ivad1XLYuTC_eNUMhchLdRXqUAPH9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA0OCBTYWx0ZWRfX4k7FgxEpVD+s
 0HuaffngIN2uCPPgESsU3dpCKjHzCfyMFHmt7U1NZ2pWdxEfY8fDZUGesQPO+vaenYNHR+TzcPr
 7ZNAMqqIPO04Rt+fxP2l/33tloOrlMPbvQ/dinZ4FDkkRdEfHwFqCdt1ez4rYSNpvlCNt9vX0uj
 rE7v3M78Vi/yVJkQDTSxYxKytStpsr1AezjFSNNhS4DJtSXtMNnIXYuK/+hF4ZwbgnpzThET2sG
 Hm5uYQVxgUBI7KXtyCycleTnalQPZiBLUhB0SyKXryoGTkOZQRbe+pIfEbOP/3nReK//rqiH3Yp
 Uaq/Vx2pslPZrPumTqj/195Ape/jS/yUDwfBiUn+cIN+F9soW1JeloTYXYxlS9xmbZAv7QyShsZ
 1LBEoS8RqvaI4PA8Iedn0s88fQRrvrKfasn/R2h4yD44BcTBRsgAR+1nziqHBfauRR3Wf4fn
X-Proofpoint-GUID: UJ7Ivad1XLYuTC_eNUMhchLdRXqUAPH9
X-Authority-Analysis: v=2.4 cv=HYkUTjE8 c=1 sm=1 tr=0 ts=6874bca7 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pixhw7HmqKTquG-jXeMA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 mlxscore=0 mlxlogscore=999 malwarescore=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_011544_006528_3E03137B 
X-CRM114-Status: GOOD (  12.20  )
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

The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
specified in the device tree node. Hence, move the qcs8300 phy
compatibility entry into the list of PHYs that require six clocks.

Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
Fixes: Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c6c9296e4c0..1d4815056bc2 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -176,6 +176,7 @@ allOf:
           contains:
             enum:
               - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -196,7 +197,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
     then:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
