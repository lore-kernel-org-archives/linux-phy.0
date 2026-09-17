Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DA0C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 08:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MFcKmR/7nFtGHx6vGJlIaBYqMSGRpE+btaUROya92zA=; b=X9fY+dwO8aaqFo
	NXVYq3HbFBkldZchOmJQ+tLVA1Km25qoT02P7o/ABeS8JgpeFKhhyjm1OtMsWAkRoR4M5zPAuDvFD
	tymEaIQsvtAqhfJZ33bzx1G9e0Qi9TaBDDMmvvwlHxop8Cz7yUHUzB0e1lMxmSDgiqEO9PhKekndA
	NPwaWJJ+QZmWPfDihBn6oEv5jSrzFHhd22OYQka+c4kMRVKNt9TsUOSW9Reo0w1GJERWn5MfV6kbD
	kPGpYCf77IPnVtt2APCyxtu8pj5mAW7xRBlKlC04ndo6qmi3eJV7fIbJ7xmHOmUEAlDaaazHIsPxE
	5w9QNnTnAnFVVUrg0xHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x778e-0000000Aqhn-19Pl;
	Thu, 17 Sep 2026 08:06:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x778c-0000000Aqh3-1BxN
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 08:06:35 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H60sBa1031543;
	Thu, 17 Sep 2026 08:06:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mgyaIekK9JpKqTtbgFAM34v0fKjmoY4G4/4
	neLEAoRo=; b=DvtATqvSpEPfiQpWuyTQxntNpKK83RsLl8OnLhbRbuFzxnpVD35
	CgzJeusPZrFtIQTV9OBQn4mNUH2ZBJQWLDs38nJ7crPFz2oh/iCxN13VZPf7eV/f
	Q7RpKLpPST2r9Wx1WBgo7F57P7xDIXPbmuANpiTbHNrHmYDWT0xlX6dXH1tX3OA5
	UlfGtMo5N08/9rjzYhNCH3LlE+YPzOaEZMpM6K5Ni6fgA7Alwc5VqweyEFq47QEC
	cy3fgg7nYCJFd2/TBXdgKqzCXI8HMOyPgvai+JYSJ3ZBGXDBCBFFkVXnE3vjZ5qX
	c7tWm2WjUozo6tvCVVfWjgrWqOMLECZ3dng==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqy7hb6jc-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 17 Sep 2026 08:06:29 +0000 (GMT)
Received: from pps.filterd (apblrppmta01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.11/8.18.1.11) with ESMTP id 68H86Qfx1712615;
	Thu, 17 Sep 2026 08:06:26 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com ([10.213.101.157])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 68H86PKh1712602
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 17 Sep 2026 08:06:25 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2342877)
	id D287B648; Thu, 17 Sep 2026 13:36:24 +0530 (+0530)
From: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY compatible for Maili
Date: Thu, 17 Sep 2026 13:36:22 +0530
Message-Id: <20260917080622.824253-1-nitin.rawat@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Reinject: loops=2 maxloops=12
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDEwOSBTYWx0ZWRfX2SEO/Py5hus7
 OD8PqQn7jjFdXN/ny09QWpQEzpCZGAFTmep0CscX/gKCwCbH/48zYDB7Ob3ljA5zydqgpovTW9v
 1bRFvP4SNXmYnZII5293O1mCk2c01K9np0+Lo2R0U//6G26RRByNO+9p6DmvpOEFXbRuvF41DC3
 ibdW3EVm13JB6Po+ETykikzFitgIj4urcf54Y/72hpg5voJ/sSwQJc/SVwwYdwjV1E32RRSh57L
 VxFrkur4ZfKnIlGKQoyz14jnBfGqOoKGK2d+35wwtjicXaKqJhN8vo3r+G5m4m9VSruBO4yX1xv
 L+TOz9Nw51QjLDP8m2Mu/L9oY0GbxdxFZdDO84HW0BvcFtBtg07llnw2D4FpzZx5Whg6g+2MxjM
 dCt4yZnBYytUV8jWjXzr888+w/130CTz+atA4yq79gHdX9SA9xYmRUAniu3vNFDWx93UQ2Bu7wk
 9WkBwdkvU7cxshNWgNg==
X-Authority-Analysis: v=2.4 cv=L8aI0OT8 c=1 sm=1 tr=0 ts=6aab9f85 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=VdqzKS8jKosA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8 a=UH2bE8EBJgXlDjawRugA:9
X-Proofpoint-GUID: Jl19jelWa-OXCnfRLrHGcCF5NJfZgXOJ
X-Proofpoint-ORIG-GUID: Jl19jelWa-OXCnfRLrHGcCF5NJfZgXOJ
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDEwOSBTYWx0ZWRfX4KVBusxPfJGE
 lQIdht3yThQcZAwV/7bjbLX8IajC/VrnHDC2N62S5+BrKOgPe6zMwWehlfCrKelfaMtAfOSengt
 23ei5QiDe7zzFQU973vF8Eoqx9yBB9Q=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_01,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1011 suspectscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_010634_437144_0370B663 
X-CRM114-Status: UNSURE (   8.78  )
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

Document the QMP UFS PHY compatible for Qualcomm Maili to support
physical layer functionality for UFS found on the SoC. Use fallback to
indicate the compatibility of the QMP UFS PHY on the Maili with that on
the Hawi.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
---
Change from V2:
1. Addressed Mani's comment and dropped Jingyi's s-o-b tag.

Change from V1:
1. Fixed Signed-off-by chain order.
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 4efe40c0dc97..eb289c09906a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,maili-qmp-ufs-phy
+          - const: qcom,hawi-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs8300-qmp-ufs-phy
--
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
