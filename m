Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E61CD98F0
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jun 2026 21:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azhGECW6Nn2HZCpx/sE60/7IatjsW7EZrkjMQ8oBWjA=; b=qA+XxpFrEkuPMY
	LwWiOvGBA3AegZGFxCUrRFsyetADw/mgdA2DvkROeCWR42gPOHyP1cFxfD6P1+14iZWtSRN8xRvSw
	qB1sIS/iJR2mw/9lchS63XLOFGPxioNZ5x5zWPJq1kU9iwEuc2P9w2DljG7UMYPqRklqfSyLFq8ZG
	QbTuWVbV62oVS6yjq1RbV76v+t/ZkIVjPoEs0om7j+c9SqmdE9qCsVDH+/RuvicM3bVESL7B3nAw6
	PCST3UN0m8+ctYQ0ZLrASUCyyaLfBM0PqeBGD7JimOJwwbNOvjVw1Agw4z6gWyTfb9TjQWAu7Ei0Z
	jcrP6WNGnbRiTjzbwRSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waKhS-00000001osk-1OWH;
	Thu, 18 Jun 2026 21:55:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waKhQ-00000001orI-06Nm
	for linux-phy@lists.infradead.org;
	Thu, 18 Jun 2026 21:55:01 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ILswjk2969052
	for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 21:54:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CejRKYCepA3wHJyI7z3przBFZdBI82v5AnF6z7P2JuM=; b=Axafv3yFYhGTDBja
	caW9ynt+lQQASx4Rx6+qpShoXoHAt/Kc1REWzAuwJhRSObNUSAhbd63KRrpXspKy
	oO46YoMlZ2Gr+Z+B6Rz7NKncdnUJq3164ibHiP3Oak3KDhaO2nelP8Fpq76iT6Fy
	AimVXoLCiHQo+Dmb+B27EmYYBHiBzblMYOf4pB8gZ0iowpHu30Y3Z5nJoyhZtS6m
	4LxDbLSGv544heKHv+jNNcpRNOqmKYRSm09EL7Oeo9K3DWQ2SuqtG24XoUioSYSP
	5CEyqk9L+EIN2eF9b4vr6cYwUrlL4cS7zrujh4OdA3OUs9byL6w0VL+7u6MDEOpR
	yLHv2A==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4evp6s8u4b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 21:54:57 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-307fd7138b1so2360868eec.0
        for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 14:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781819697; x=1782424497; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CejRKYCepA3wHJyI7z3przBFZdBI82v5AnF6z7P2JuM=;
        b=Lj5kTw7ZmGF3pnwqNr/0ZwuNi6CBMCLP1tZ3gaMeTJMAkP4kZGCnUy5v7ZAuGHd/zg
         9lO3tjs/66dKJdCrLbVB5ehNFPUUXTEAo7o4N3uBWbdCcP/7G7slb2/iiFnlHprBX0TT
         rte64QNeHw1t9wUsE1/3DrQ3pQQOg3N0Gb0juLZmCHZIiybzgp+rH8LeJqso4aGbM0No
         SWvnrI0vQQdNApGrB3J9YGF2Bj3X3jkQxnb9/tVfQcGcgPBW3cmxFa/Rasm+GyQJxylV
         NB797XwUliydf5wKAzRWMCfTV4EPYEXjGM+Tl2e0C2rfUmPskAscGBBYx1Y+mKsxSb2i
         MqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781819697; x=1782424497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CejRKYCepA3wHJyI7z3przBFZdBI82v5AnF6z7P2JuM=;
        b=PhJkG+qKi1ZE7MW6ig3HW6jOXWTgds6VM7wRhgdN/hlw2tkRJDZnj+we536Bxn23gi
         QNdCZaD+VszriekYoqeWUhGJiAfxoEGh08waC/s672TyUkoB4dt3n2M2DuThQj3tcUG4
         xaBgfnOj+OXycj4jZ9UMfeWURk4fG9aBakXO0bXZmbi28yBCrIP5/WFmqzKV5FXntcB9
         tptvMd+uJqMjhpcipG5WggnMFZzISGq1xLEGYP3IlT3eImK6XKsXjwl3HW6puPrb07qm
         DMhDG5tv3F+v9WaTkXYCKwW4eq3ySCRvf4FZLJIFvvw8yxDSEQjjz1LnovRlCWolxtQR
         c0XA==
X-Forwarded-Encrypted: i=1; AFNElJ/jTKSrt79UKe2MmN4KKgANp4mQnRphuPk3yKhcGWmxex7k67p5CakKRIicS+kLGCY1pqZlrxXAvxU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJQ/dn95FB8DRqQaFUdEdMKbwbnAuiao54FYQYnnQkg8bhIMuY
	p0Az+8hjlIWS2Y/DMDqfZPi6l3Eevr+8ywafVLzvNsP1cdPRgXwTsWWe9wcxoGqBNvf8dz3Eus2
	ng/wK9FsX2rcXFb3x6InwEjYCuahXf8eYTun0TNy1MsGUvFKC3T+SGQJ1U+QhwpCON09q
X-Gm-Gg: AfdE7cnCF3fczXA4m6d07353QMbhkVpmZhQBWRIukwQtbV/fbk2Forx5/9ql4XLWhdh
	EEe0OA5nUqU675w/A/uBth2+2n9rfvOcKSiNm3a12hdrBAiZlSBSa1f0hjUYZPIqEZHehEzCsUq
	dC9asekHzMhQkrqO6fGxh6zuMujxHVv5XqjNV2FLvRDfxR6pSQztbuACq5l1Bdv355xWJV1or0b
	87rSr1iePZb0/pBnMwnAAN9js/pPAgCNhEu17CSuuShXZJW57Vf4f0G+j3TYF5zyv7kj8g5fDs4
	t7+eLAS4weeSOJ7+WtBAHEnUEKe44j5uz/iffu2/MPuCbpNG1TWSFxObmAAtrJ3o3SoCo5m3shh
	lHOYPYtDSi44+s9yqQX80WEZ/lLoFfIfG9OZNgdU+eLi7O19E
X-Received: by 2002:a05:7300:6422:b0:2be:1f58:32a3 with SMTP id 5a478bee46e88-30c0716e2d1mr1044223eec.29.1781819696875;
        Thu, 18 Jun 2026 14:54:56 -0700 (PDT)
X-Received: by 2002:a05:7300:6422:b0:2be:1f58:32a3 with SMTP id 5a478bee46e88-30c0716e2d1mr1044197eec.29.1781819696383;
        Thu, 18 Jun 2026 14:54:56 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c0670a1b4sm619430eec.8.2026.06.18.14.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 14:54:55 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 18 Jun 2026 21:54:36 +0000
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Hawi compatibles
MIME-Version: 1.0
Message-Id: <20260618-hawi-phy-pcie-v3-1-3fa42ca45ea4@oss.qualcomm.com>
References: <20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com>
In-Reply-To: <20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781819694; l=1854;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=6HzWQm13sZymkwJ60yMD4i13qBHluKrBXZyYiKMTzmE=;
 b=BkCn3VM7TaiqbuAWyYPsysTSOcH9CO0WFT1wQrmZ/o3knI1yRH+WUA+x18r+VvqNE9BO9rKFM
 76aBMuNCVf1DZMGxf8yNQPiSlJcZmDsAu7aRmbHivUdYxcj1lxqrehI
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-GUID: s3A5Q9bIvUCTzElLu65vjrPRiCJiotqV
X-Proofpoint-ORIG-GUID: s3A5Q9bIvUCTzElLu65vjrPRiCJiotqV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE4MDIwMCBTYWx0ZWRfX5qUiIGHMEICW
 N7RUGYijSeezjXcfow/XBcMQN2RPnCpay+MZsf14PZrBMK9gKm61Hp9S/+s1f5pNbCZL1OwZb5S
 b9yb5kP4EDS0PFss//XeTPzc8h29bYAmpL7KFquZL/WORR22Ko4I4N/QBXu0IgGYLz37H0kFymi
 7nA3zmgqPcwzVVuJDs6x1j4FFSV8GUi4G27gtA+I6bAIyXhJUOHFzflBrVec4ve37PErYngHvT1
 tt5UnQVv7uY04BZvvxSQWZ5nJjYvgv2nwLNY2TxsqWQn50zK7HFPhBtmK3yEKKshs55FRkTBjFg
 VYeUuUqnyxE2z0nm5cD3NqVhKFMndx01RuJnUN3tPByr3H0JrbsTHOYlOiG+u+Oaehid/9Wv7oY
 qh5s5eJrXVhW1ShRYzetpUlqFTjGAHZJob9AjkdnbMXrXyBSTDUjC/+wDCpn/zALAkk1p4IIjhI
 StZNA7Lpc3l9tdHKbrA==
X-Authority-Analysis: v=2.4 cv=H6LrBeYi c=1 sm=1 tr=0 ts=6a346931 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ZPVUbJor9CvCRQEu2k8A:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE4MDIwMCBTYWx0ZWRfX7CQ0zCD+GW3J
 ldzVXgfENGZaxnk+AlD0W9d693DGzh+rKXDPZ5Wadazt8mKZbSOLjzM9aQYVqQ7WDKBh40q6xil
 8HfDN6jDlLnoK/TDWLFbRRIjqU1KRx8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-18_04,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606180200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_145500_184663_E1199FE3 
X-CRM114-Status: UNSURE (   9.76  )
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
