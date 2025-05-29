Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23080C5AE59
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 03:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTVi1vreg89BcwSUiB1OwwmfHe/Jp46mtMzJt2qB5sc=; b=M7c4sMiecj1+6e
	kTi/b8/6yA+pQeQhx5qp4+6J9BUkWHPlMd3SWoqm3JePA06fp7Q4MPl8B1+xiq60hfCaHjlMJy3Q0
	Wx1VzOXz2qbwM6eGnfwtLUKbowFGpPXB3HJubddu0nEj5uIKndKzH6b8AYCRokWLcwIrA//QCAueA
	9Wu7NkGkZ1e7pIQ/l1oCd/GzIGu5P7Y4CeFG5jWa3oOvFHaBaPnBIllVD3HSgT24F7gzdqHNTWqDw
	KjjtYnpvXvQW37bytOHg7Y+3Rz8oZ3zagQk3MM3yTZey/NVvrhB/f9Uuxu81YtrYLc92dkNOrocSK
	V15/X79ukqgYg4JjoMdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULi-0000000ErNx-3eE8;
	Thu, 29 May 2025 03:54:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULf-0000000ErLv-28m1
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 03:54:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54T2Caaj029201;
	Thu, 29 May 2025 03:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=r3HR1NIB0g+
	iyfJRx14G/Yce278aBOpNghyFxwuxQFM=; b=eGIsrYTBZasvFU1JH1Ix5zhZmA1
	DCBYSY6WiM8hvN3DljF/dVuHmlB8YNCnLGxwYpCJCp4bbufoOllLz/lJPn0i2K/X
	9mRDYOBNkP2PirGp+mxKihtANfpIfuX9kZwNqnqZBQu580kN6jvpnbdHlQnHCG5v
	bl7Rj0+3V0X2QOIfFwNh3WXuF5NGg/aTh7P/m2sAoDuaAnQ/cxjN92r0fn7h9mQE
	ZyD8Ea/f1gtXp8OGwuK4QW3K0bNXzKaXvqo400TOl+KjvXHgAaUVIYaqqQ7+Wb5h
	y6FDIoLzrPWmnrTpQ8Nxf/gQLHlewHJF63BLpPdfh8lghGTJPfvmJQI3zbg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w992pf4x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:22 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54T3sKfH011607;
	Thu, 29 May 2025 03:54:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46u76mdp20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54T3sKMC011593;
	Thu, 29 May 2025 03:54:20 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 54T3sJ1D011588
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 620DD3158; Thu, 29 May 2025 11:54:18 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v1 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for sa8775p
Date: Thu, 29 May 2025 11:54:13 +0800
Message-Id: <20250529035416.4159963-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDAzNCBTYWx0ZWRfX20Sdaahm8LJv
 9ybCbnjMDYmIeS8xEBPZZLTmFGl+Hpkewyy6HsQkbr32kWbQycfHEoxG7vKZNDRsqGzOIeYpCCq
 Lq4hakFWGbWlWd3Y9+lRk3VKfcYFvvEnFvGLKnr+l5kHJDcWkvxNFamQNYgVLLC2M7vbHB4LrlR
 QFxd2qFdL6Ajot/imvzDICDVJk1KsXcW/uA99tZ3U43lvVJgM9ZrwcH9QNLcgY1S1/e9vCwK9ZK
 tduJQpGU4ae30kNzakZQolNg7O6FSEBmDL7wD3PFc3fd+1m64UFl0WC6ff7Bjq/NTom0hOx4n0g
 34YVAJX5Z9B2eq8EU9Fkb+WtvkJcM6mOzi78WgdsWxWlxBPqqnC4vJVjrpK4S7HJ3l5f1xGZc5N
 v8rs51J0qnnD4iRCZLMaL3TQvVkqk3D3/poU/a9DZ93I/ao4NiVaFttat4WueQbqv8ZJFigx
X-Authority-Analysis: v=2.4 cv=Fes3xI+6 c=1 sm=1 tr=0 ts=6837da6f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=tAWiX01tdBucjzfsbJgA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: FQ7ZcrREHm9Sm0FVF45HfYwbEMAoKYmp
X-Proofpoint-ORIG-GUID: FQ7ZcrREHm9Sm0FVF45HfYwbEMAoKYmp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_01,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=967 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505290034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_205431_558134_797B48B7 
X-CRM114-Status: GOOD (  10.87  )
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

The gcc_aux_clk is required by the PCIe controller but not by the PCIe
PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
gcc_phy_aux_clk.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c6c9296e4c0..17fd6547d3b4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -176,6 +176,8 @@ allOf:
           contains:
             enum:
               - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,sa8775p-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -197,8 +199,6 @@ allOf:
           contains:
             enum:
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
-              - qcom,sa8775p-qmp-gen4x2-pcie-phy
-              - qcom,sa8775p-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
