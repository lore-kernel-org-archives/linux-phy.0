Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A709C3ABC5
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 03:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyQ6F2S+i/Mrx9KszjhEdM8Tds9Cg3kKgXQJN8QZzvo=; b=0/4Dp286FVjtvz
	ZNWKXFH/kwqDeEE1LO10yuGUu5xo3cYpYLv9wE9xcVyiPXhcFIolnrr5hnszlPllj7yoGJyygf+vw
	oyR6DixA1mK2bRiKlNhTkLqL6CDH+ypeUyea68MZtT3CeZTsrZ/nFPLNookRS+ot3VzMYmeli1bcY
	ePWbKfQD5XTpa1Dne7PqPfscoNRQGQMCfBLnjA8vUrXnhltc00HQnny30BKz7HSCssUNci1YiJZRe
	gOBgRdyAwVfv2JIswEg4NbsiLb3qB1U7AgQU2MGJnkqEZWeU8h0xTONlF5tRoJPoeh1Gw9/y7GmHw
	kb+B8SwbcVUfYMz06anQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVGi-0000000E3S7-0mmv;
	Wed, 07 May 2025 03:16:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVGg-0000000E3RJ-3ViU
	for linux-phy@bombadil.infradead.org;
	Wed, 07 May 2025 03:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Ko96WMYCjhfnkHlSLv3qudWFvcVqQt11yvW1BUhMEyg=; b=VY3xORfuXmb31uvMFOt591TYka
	S0wNccmMq8Wp0zmONYmDGpG2QtZwgEoZza57g6irNVMPreHIYcnoGADyO4DQ/WzFauqF/Sgo4a0ZG
	gW1/YJLAc9nNby7q6aY4btxwGne1VUjQ1X5jRol1lVJe61483MPixL7+YN+Eo4cg65nKqD3jpEaI/
	Cv8kNGqsZoBJ/lQqdPhYGtMaXP0w2jtcXChqV8WM0CAEXHhFZ6kJJrgQgWgj64XkpQ4oqMwxWjbkk
	YvzMaT5kHXNFQi0U0iKdNYeHd1r6SCTZ1T0zE4zMWrlDN9nxiQ+DbbB2G7+8C3KUdZKRCV4Q7lxU+
	2cw0SYMA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCVGb-0000000Fk8C-3oe4
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 03:16:21 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471GYax002374;
	Wed, 7 May 2025 03:16:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Ko96WMYCjhf
	nkHlSLv3qudWFvcVqQt11yvW1BUhMEyg=; b=LsYSsYPRUMM45ddUrm77jZQVgNf
	4k8kPufosZ5LWn/6s/JJlVu1xGZOnUQA3YxVmXbQ2Dzm9nTsROJbIXcnqIYvax02
	qSxg2smpzsn/4WFZeLuWDr1+dP1ApXZ+2dCpGK4Kktc4sizrne7ILi7X/dWsIRC4
	JwmhNdQWZBEG7OSjbEDNDtRoWOib3FlGOYMqq8vEQVbxY40CZEHK4LxQSn8QuO3W
	CrQ1SNTfCqhTT8PNiEc0S1Un0C6LF9e8vivPDk4KZc/OoUgmYlb7EevdBZZe7mJ+
	QlPh1GZjHbk0LzxkACQPK76YA6FulSbdAawbyzApGERBe6lFx9isVoyGX3A==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46fsmt0rbm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:06 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5473Dbn5018774;
	Wed, 7 May 2025 03:16:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 46dc7mdxhp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:03 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5473Daft018759;
	Wed, 7 May 2025 03:16:03 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 5473G2OG021700
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:03 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 100E22F3B; Wed,  7 May 2025 11:16:02 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v4 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for QCS615
Date: Wed,  7 May 2025 11:15:55 +0800
Message-Id: <20250507031559.4085159-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=U9KSDfru c=1 sm=1 tr=0 ts=681ad076 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=oxzBFytuHnZbSq-PjLoA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: yGmDO-aLH2cqz3Pbz6lJT3JJtu_r4Dq6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAyOCBTYWx0ZWRfX+301AFQlfhup
 KmZn4vEZ0M5Jc2gIdYQLT06syJLyeSRuA9j9ZsXCUXA/RW6Xntpe5fwgfLgV6Jsux+hFISTMLI7
 QfsbkUWQQqiX+m01C2d6GSEnvd8zCEzxI1ENGlXpp38zG8soXwq+bkxeBYzpfe5BxiczSNI1xn8
 +gc9Pw3Hc8U4enPxWWysORI6UDNqex/WN+AbqXGuY3U30p3bwcxg2UuA0KLRy9dfkbjNaDX2md/
 3ayNxLeFLFak0/ZPCJiCcOj6idS/2qz6aZzyqcnoLYsvAf5Y1k/eiu2aWD30NZg5drFfWOPt8pu
 MEA2N8tXTP7jxyywQpUzKJjTQLhVf63MQ+9bdYFOjsFc5wSshq6FqNyjx5xgp+DjufGcVezW6SK
 aXekjSBcHsRyNQ+8Ctlwmd4wbBFuSiV8C0B1jjEcJJNOqLH0A/FwKm4AdyKmNYwSDhYKkPRn
X-Proofpoint-ORIG-GUID: yGmDO-aLH2cqz3Pbz6lJT3JJtu_r4Dq6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_01,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0 clxscore=1011
 lowpriorityscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505070028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_041618_453467_CDABE262 
X-CRM114-Status: GOOD (  10.22  )
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

QCS615 pcie phy only use 5 clocks, which are aux, cfg_ahb, ref,
ref_gen, pipe. So move "qcom,qcs615-qmp-gen3x1-pcie-phy" compatible
from 6 clocks' list to 5 clocks' list.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c6c9296e4c0..a1ae8c7988c8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -145,6 +145,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcs615-qmp-gen3x1-pcie-phy
               - qcom,sar2130p-qmp-gen3x2-pcie-phy
               - qcom,sc8180x-qmp-pcie-phy
               - qcom,sdm845-qhp-pcie-phy
@@ -175,7 +176,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,qcs615-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
