Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8732CD6E57
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azhGECW6Nn2HZCpx/sE60/7IatjsW7EZrkjMQ8oBWjA=; b=aeOhQ9TYos/S0w
	5KPLmihMRk6wGlOiaV0X3Hu5J/RT3c+2SumA15SU7Me+T0RKLfZeGsmzAYcNcBAhCT/qfKJkKp9y3
	XCt4luYrVQ8WqHe3NKbychVZzhg/Y6BJVLEYUNSZLRkPNdqkf23kRG0ey8q0sG3aifm7s8qNCK2GL
	41hfCsmSooyX1L4UuxJYz+BjszMjt679JTcBbm9eHe4QLU4juQ8RwAqDyZdiqd/5w/et89BTZ/xc3
	t59NFYh9S+YuYYtRMEIgQS3nswNhjys4M0H6J3jjZMmEQSxxXs1bU1ZdN2qp3I4GSRdeHG2pthNZ6
	PKzI3Rwd9NydTr9VWIrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxe-0000000G02e-1qAQ;
	Thu, 04 Jun 2026 01:33:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxb-0000000G01N-2Gll
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653Led0Z3240511
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CejRKYCepA3wHJyI7z3przBFZdBI82v5AnF6z7P2JuM=; b=jlHZX6APGVIZkiZ2
	byW6d4aSVzXS7wZdn/u0ag/wZUdaqSJ2X/alNRw90aAYMu1DkuJdX0T9sdLf5HGN
	jHNgN7UfJUqwlRfAZwd/YojTt6YzbbZgTZ6uZDM6qQiW9hiYVAk2BtngzkofmE6x
	igbqq7mmuSXU2akJalRl+EDdrkBttTPQOQNvsTqv8vuehXLK/eGwQIx8MeYVH43+
	YsKtuuTtcjHF8F/KA+aqc3GwNZ6Xc95jaLpFtfA7863ZBgmfoeEpfROPMKmTGHd2
	UQp3nbCc11j9Yx9E8y9Qg7fX/pZMM46SGEL9yZCWjaoa8C1ObktXnVzFuqtcVJ5C
	eqxWpg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejvd08mde-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:26 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-304b8d0ee63so159621eec.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536806; x=1781141606; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CejRKYCepA3wHJyI7z3przBFZdBI82v5AnF6z7P2JuM=;
        b=KjqLf+RgbQ9rcg4cRzTpa/umGpZxb1GkaP9v8j5qTvpECS20rbPjNmyRbgvtymhi4K
         ks9qeeLRf1y1Iaii+BADAxMN7kw5E1jwtvk5NFu7yOQO2kwpb2jQszIGC4fk5uuf6UMq
         QF5J1AT6eOrT9zwJAWVuwO+0/eHbVGXaQw3FEru6At5nMs6g/9ogfUbtwAkwy83K5D6m
         qmJ8NCi562PjXF9t4V1jvgonuiDK5gh3mDV2aUrU8A5aegWA2/d/W7Fs+SOMbBoyByqV
         kwDTbG8cwFCkuNSls18wm7dokKqtmjQedulIsu8TZcqP82oQgkqkCqC8bx90uzsJrRmm
         srBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536806; x=1781141606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CejRKYCepA3wHJyI7z3przBFZdBI82v5AnF6z7P2JuM=;
        b=cLikDa18lBdwwo8DyqMFy9k8PlXF3fl0l5egZ/OWvuU3C7HHvC2HMlO3ZetJIfnuR0
         Hfj1Ok5a48pgvEiGMs48CkV1H8WIM5Ri7JVX7Iy6Uy7Wy2cDp0T6psodof5jjwzkK3Vm
         jraQXzw4GeOPKja4+7h2dyqTq/MEKCPY5AnJnuaV+2835qaNKZVBHOTL2a10XdHoJdrq
         HZZoipyithd9naI+AY4P595uMN5cj9Sac1K0SrrtLt5cUDC4dZlhGHmkKNReY/lnyLwS
         7czLwtLr1OoOnVVDUVOxVbjUYPz+aElskGJCwQyJcgX51ekLWoMTabQcsPnlJyYz9xKg
         8NEQ==
X-Forwarded-Encrypted: i=1; AFNElJ+Ra3WmRXwuYNPyN5Isf8+8YPsK9dCfwvswkQEjhsiI5ias6ovvVvjQ0JCwtf2eQN5bEsT+6qlz3Wk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+2dg9NhTXziRT/F2IaQc1j4xufuOujNk6PFIYjcb+NMxWhXWn
	3iodBT6CPEPLhYXqIwl1btzudmWSS+mLN56z4EY2waVCUXS+mnp+FHL7DqjkxvegZpQBM4pNSiF
	viOZRjVXHQAHh93W9aWDjunozQ6T42OhOtGBo/gY3GYWfRq7q8PmDpy8pg7LFQtayTdZ4IqmlFB
	+O
X-Gm-Gg: Acq92OG79k0Hao0PxrGt4blHxH0CPf2iCWIveHulcEAVHa3Qo0KYmlzk9t2LB4SU2Gp
	EZMHTLNyj6NRiIZC3+gzXThNWbgjg4QjvecBF9rdyufcXeYdRYODKyXtR54YuTWV8kO1vJrcUK7
	FttsnC3VK+k9i9vbxADwWD2zeAwPV0HyGu7rLijDThGfDxSELZMDb2ZKeVr90waKLqERQEQtImK
	ZZ1KA1OLZqhco1OppCyRsAb+Mu8gEHODk/GQsIaXSh/pBYwnycRnEx5MEiy377/EsJW7lXl9YxM
	XZqPtNQ0fzL+KsPWVeV6q+28Tbe6P2TK7ESUPHV5RHJ9sdl8diYBwxD7c1Qw9TGQ/tBF1wV2ee/
	e731Mz8xnlyoWGGYhGSpv0s7sZk3pJ230xKkMueLc3iEw5Q/i9PTls6D6aOjsspeaxUFyLA==
X-Received: by 2002:a05:701b:4250:20b0:136:9ebf:3be7 with SMTP id a92af1059eb24-137f6bf3f03mr1707927c88.26.1780536805571;
        Wed, 03 Jun 2026 18:33:25 -0700 (PDT)
X-Received: by 2002:a05:701b:4250:20b0:136:9ebf:3be7 with SMTP id a92af1059eb24-137f6bf3f03mr1707913c88.26.1780536805012;
        Wed, 03 Jun 2026 18:33:25 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:23 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:32:55 +0000
Subject: [PATCH v2 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Hawi compatibles
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-1-be908d3560db@oss.qualcomm.com>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
In-Reply-To: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=1854;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=6HzWQm13sZymkwJ60yMD4i13qBHluKrBXZyYiKMTzmE=;
 b=fJcfCbPxirPTf5QaSo6sHsbagcLFq37fKcd+C/Qbvt8EKyrKbKkj6cfd0/OabdC9BYJV7LPV8
 nnKwSZPqT40BcKp6qh8aZwqCqaIrYmgVnSPvhyJn/Lwty5iL8wjB6Cl
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-GUID: i-5JhGCUsDBnG1oOAuCFlwCUJFIjb5iW
X-Authority-Analysis: v=2.4 cv=M8h97Sws c=1 sm=1 tr=0 ts=6a20d5e6 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ZPVUbJor9CvCRQEu2k8A:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: i-5JhGCUsDBnG1oOAuCFlwCUJFIjb5iW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfXwt0tqCA77afM
 ET1/hG380lX/ahHhDPuH+w9YhosulJvzccEKbmULWTk41X6vYHyrzuMGaXT5dCDIw4qgV+pVNDJ
 c+YcpyCSwyzR7islO63nfmykVZIoJKwG6TXciEzQVgPJoeyZ4R6iCt8ZY86Mp+WyYtfKFjyy3nO
 LkvN7cRLOkSFy/Kwlahuu3Bn3Io+oHNWyb3roy5k3q40sJ/MAjN+yiGDVRGwz8xkKZMRmDsJvb+
 juGI4S4+gub/d0Grf5NMKukdTfykexvUuuJJVSELNjRxPHIX7osLFvEtpYWh9srLAs66+YjISsX
 5ceu5eLi+A6U/7ptp3qlKU6bSEEJNC8BofRrw56pdWAotsYhFdHE0gfqlBQZbecxsm4nuaNUvz0
 hUz5m5hCrOY6V0HSkHSG1AuR2T9ppHgXl06MsHvo+oXPkElrjoONhZAy+rhLyxSiHzPWUsAJQOb
 e8USwoXPQ9E0Hi2dR8Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183327_709208_D5C8EC2F 
X-CRM114-Status: GOOD (  10.08  )
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

Document the compatibles for the Gen3 x2 and Gen4 x1 QMP PCIe PHYs found
on the Hawi platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec..9e9e34a63bef 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,8 @@ properties:
     enum:
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
+      - qcom,hawi-qmp-gen3x2-pcie-phy
+      - qcom,hawi-qmp-gen4x1-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -183,6 +185,8 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,hawi-qmp-gen3x2-pcie-phy
+              - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -208,6 +212,8 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,hawi-qmp-gen3x2-pcie-phy
+              - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
