Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 078D5CAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPl6GoxQFJhm3tGa9F9iCLxrDD5mu3eQ14s6JXstMVI=; b=Ave7MPrE3Meb5K
	MP5/R88ifYzBZAhZWGNpmKJZk1PJgAtfOky3kaHnSjvZMTwO66vxO/jcOzplfDFBpmNp8rqBJ8wya
	o4bzyaIufF+NAtZUkcedUMVBqUN2B4w1Md96ezN0P7in0Jxv34R2lzdx5tVrT0LHVquUQIjc5QXNh
	AW/CowHgt3UO/BKOv+g0jo39bgfwGvKn/ppd4wC6HtksHZ78KbxR+yGbDBNoLmHl9wUTs8yk5sHIK
	rVS2Ek9m/ozyF2Uw1gJdulKJNd4AvgyOHu0T6VolzBR8HM6HXaTMx3wvuwICWmoJbgQJSy8ieFNPh
	dtEx1Cd71zKSAEVg/UwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z12-00000004jms-3CB1;
	Wed, 24 Sep 2025 23:35:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z10-00000004jl2-2Cjw
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:35:15 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD4Zh1017453
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qsRs8ls5zJtoYnaDklfCGZl0u7nCPvApwl5lvQLG0Yw=; b=ZF5Jd/xX/VX0t8CS
	2PWhZuR/oVUw3EI2nBhXUvDrxzJaDI61R6w5++96N0pk8hpuy/lT+HHB2WAa1cKx
	ScXsbitD5SsGqcHNfKnd7/Hpr/ydo3GUcOLWoZQTHhQTefJcjxzxffDs0fEgHxBO
	4rmDbOJd6jEnsLRf3r9ZXn674S2sUQqeNYB2efXT818iEj29/sFG+fil20dD7skL
	8C9HTnFsoLWhybuM3PVSlIdkTvqdgYKyyoY5PEmySTS37oyBL8O7Gp74MVHqVnMc
	V9WlBQ+QRfro1du33zmH0yi4dDfUuwu5DjNNYOEAqEXB1DfqZ4vyAs8lDuW/H0Sd
	n68w7w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjycm9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:13 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55443b4114so221154a12.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756912; x=1759361712;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qsRs8ls5zJtoYnaDklfCGZl0u7nCPvApwl5lvQLG0Yw=;
        b=Hm1nG2evjs8JdJQP/zKJvGI6ViSyvIml+omRfvjN144H50XxoFq453DmmT8bbruuW0
         ZZlfpu46r0lMYQKvtjiTebXU99WVd07uGtR63LAn30h82tbm+TKedbUFSij9LR592pVS
         lJByZK/+N5O0I+47NDZLBvtF8xMOsPEpk0ZPyK/HL4iNKrgFthjJ7y59oyp5rrB5uXKn
         m0eX7plLnR39YLzSRH3HwuaMCruV+qnBZe2OWtZSMcZqg7EIcAzwJMbBSihK5XoAN5ul
         FN/g+iO2ezDoWgwsKixRfJrsQI/P08lUhmnVIwsiXL3eX+PwQ1cd/UHwGgFCwvQKGz9G
         jCuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPiEwNl5qjrfRRspQn5k/5+MPv2zFSX7k2Jm1xx5nIdQfofI+2g5FbGaXA0LnPKHH/alE0pP10rpo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxU1LGchiI8Rq6XcgO7N7oL9SPQbDewjvM+fU8s7x1ynd6aYWXA
	kuKMmKIgnRCPcsPBcfAczUkrSrS+Aqqo38DZ5SlSfDaKo71ndeEmALpGVKQ2P50R3it2zC5rl+p
	HyXzqjpyJuUKujIVQbF28UrLgC7nh9CsptKmVKPJg6+tgHeK7KcAsRybnMeHELiXK9RdC
X-Gm-Gg: ASbGncsvEOjhsQxnDg4aEH73U6niW3I77F/PzDY2vN1pp1i3Gw/AGCeyRMa9cmWgDD9
	aovsC4mcqy5meEXJQ/g+ZIW9lOalAOvvGJZXLTOBTASHaQDPkJoJHMSui/ynXTycwTMf8qtmJyJ
	kiRHFsU9vnShwvlUuX5a/mT6c/Ifovhr5K6rkMYP0yEfZCo+18sJFsmhXl+FXd1cK8lw3kJMobv
	uQspbL80LRI7fRM+LHJQb0JIUlMzwtqKXM/c54mLOJgpxzrynW9LYTOOMni6B2FryhSv5GfwmwO
	T6Q07kHytBUfOHUv3+Hwy9eSqAaNFTSZCJ2bLp5gINHmlI1Ht2AIJBxlRApzFbCkQAiJ7cEMJJl
	IbVtSaA/LYyPQHrg=
X-Received: by 2002:a05:6a20:549d:b0:2df:37cb:6b6e with SMTP id adf61e73a8af0-2e7c131dc55mr1576802637.21.1758756912066;
        Wed, 24 Sep 2025 16:35:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGpAEuz61cvT2XhW4ukIQOiLZa0lY4y1zPa4PxH5HTxcEkQBKtmoEjAu6kkyiQl93f/pSVRg==
X-Received: by 2002:a05:6a20:549d:b0:2df:37cb:6b6e with SMTP id adf61e73a8af0-2e7c131dc55mr1576776637.21.1758756911641;
        Wed, 24 Sep 2025 16:35:11 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:11 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:56 -0700
Subject: [PATCH 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Kaanapali
 compatible
MIME-Version: 1.0
Message-Id: <20250924-knp-usb-v1-3-48bf9fbcc546@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=1499;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=dp2q1UnWq2Lp4eoHzNa7ZpgQgVJ3NSAs/37jv9/dDmU=;
 b=ZSbenoW+opMmdOZe+iejbQ9oTpdwsntbX+yvALQI42r6ic0SoOqHbqvzWDNjnLh57Jf+Ltcp0
 S9QFXqsfwFzDnFaokXqdCkDODuQH0rbhL0P7RXaNQxN/BdSnF4F9IlA
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: h08VyOIzOOXaVSn30dwDumCHt5BilJE8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX1wgfFScpGR+a
 av5rVbWyUoSflvCPjzY+SNWcnVtF6UWuO9r7jcGU+IxCQzWH+X2Ls6O20jCUNSj86OeGJQqge/l
 dzT7UdJ8A184fhuS9ijRaKJh78YeJcYmv3pkTGjnvEXZfMJRunMXaUEtVGbr0HDuGnVudWIRZMT
 lciijCyYioFlQ3K+pRxgcLjf5BuXVHNFBQht2NFbpMqhvAeht3b5hDJ9UzLhrMv/t43/MAEVpWy
 rpJpTBtmAy8yCJbqXY6paA2jzR+XcOfoLJyQCujOv0vsE9HLLbfq14dCS3eBpCJ0AUbyYVbMjEK
 36RCSyJRr8d8dByI6+BrVyCdW4oi9EUFNevwauPo8i5AynicMqiRA5jcC6JQjPtslrE7WMt3Zra
 ZaN9HqS+
X-Proofpoint-GUID: h08VyOIzOOXaVSn30dwDumCHt5BilJE8
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d48032 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=c8SvkZ6Bq0hLoSk93noA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163514_574034_FB7D3DCB 
X-CRM114-Status: GOOD (  12.23  )
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Kaanapali uses a single-node USB controller architecture with the Synopsys
DWC3 controller. Add this to the compatibles list to utilize the DWC3 QCOM
and DWC3 core framework.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..88124149142d 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
           - qcom,ipq9574-dwc3
+          - qcom,kaanapali-dwc3
           - qcom,milos-dwc3
           - qcom,msm8953-dwc3
           - qcom,msm8994-dwc3
@@ -199,6 +200,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq9574-dwc3
+              - qcom,kaanapali-dwc3
               - qcom,msm8953-dwc3
               - qcom,msm8996-dwc3
               - qcom,msm8998-dwc3
@@ -476,6 +478,7 @@ allOf:
             enum:
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
+              - qcom,kaanapali-dwc3
               - qcom,msm8994-dwc3
               - qcom,qcs615-dwc3
               - qcom,qcs8300-dwc3

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
