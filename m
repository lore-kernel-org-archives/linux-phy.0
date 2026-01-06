Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F83CE9D66
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 15:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3hQpn+r7xC/MVwv4I0d6+IunDo6Y9z++cA14YUs+0s=; b=0ou/Ml5OLQBveA
	GtR42d/L2LEiol2PDqFSF4117VRdrMUrlSjc2hvbmM92gtehiinwVlaI2Ia+47yxwwjmWWg3uO5+0
	kdvjEUX8b1Jy0WOOTac4LmTY0086O2FrrBdoOjf5ipYTIIEZzDt8Y/1lIqpnmsJ1NzcKzGwPknin2
	M+6NqYATvfyianUcW18EbsXoi1uHgGZ8nFUrv+45Jueee5X0m3zKSumBgeos7o9s4u50zurKoNFRN
	wqGTjOi2BFMD8KWSSBI1HZLi0cAqLKBKCA4o78Ch6DgScwcnIqnVwcssOJ2g2RC0u15VHYGWr8VDQ
	TXJmPcLVpO2TDvETertA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9CU-0000000DQ9I-2Xrw;
	Tue, 06 Jan 2026 15:42:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9CT-0000000DQ8O-0pPt
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 15:42:26 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606ATBkF2430014
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 15:42:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YESivx2vId7
	pgvI677Lj8GeC8AWBep4KbqgfD3sAVdE=; b=MLDfCaesEqrocpF/1zem1nSU+w3
	I84gJq2GbTFDOdCuerlVlxGrQulwQdQraGxMayP0VRYqTursSIOIOoDDzzdAr37i
	p/mDj+xklYiS97QjLXO29ColTScvsTLkHwoVxmV4EAQGkW0qGICFQwFDL7BXdnrQ
	sFRZr6vzo20INwVASPLwSFHAQOSgrWix7AMiEYJplz/4Gq+g65YbcdnNuZCkBe1M
	LB652m+nM4MGVHeoD26HOjpn4FBEU7YWB4VCEhUUyOWBGN7obInDEauEcsJLnHdb
	24RVmIit6jvlzxjHAzaOabz4LEnAU79a9VIHh6rrwrj4YQ48GQdVAZ2McRw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr73ac31-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 15:42:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f8e6a5de4so13546915ad.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 07:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714144; x=1768318944; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YESivx2vId7pgvI677Lj8GeC8AWBep4KbqgfD3sAVdE=;
        b=OVLgcsVZnZXCH4vaBv69c2iL0jZW3qJ4Q0VP7Q/QHNqi0y0ukLxve9xLv4xs77fR4s
         VAzrkxj9DS/EGd8yPfDBfJn8NILodGUbEGwO6buKIAOuPlvpMiY5x4Fh/JFFXi6hUPOY
         0l19yjftKXfolXw6yeEGl4V9dO9w8n0MS0dgdP1bFV2ArURCurR/pvRQH/lWxu9eWSi+
         ReppJAtZJMOA1i5ky/SKbwHMsbNUb7Ag19/QuaozY5s4AFIr7iTTl/qlV7ZU0f2pMfB1
         B2E7DvfE6vh6k9BdBLdYytH1+kXBToQXRw1A0Vtmt6YS+VpDWjMB0lzc9BlXbt3k9LAR
         P9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714144; x=1768318944;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YESivx2vId7pgvI677Lj8GeC8AWBep4KbqgfD3sAVdE=;
        b=nsxQ/QRsDtFkmPSpMEdaDlIbWpyaMM7jwcUUwbpteVcSezx3gpSZl2BbjNlSr1iXCF
         Lv4zsrrfpikz4snWdBLP/lkBCa3FuVpHmo4cuoeswaIsAKz7iMShg1BPeM+dFMrMBohY
         CY+7A0F9v4KNs83FJl3UFwwbLECr+xl+8q906B7gOu6Yn0jeaVoAO+mhNiX32dZ6V5CE
         MhO/ysrIw4FuLrAi/0eaPs/GJ4c2YWADzAk7p6Hwr3Lh3FggArSmdt8nxlw3k2iTaZml
         DxQFpX3TX7tCY0WbS5hJUonJvs93bqPEsqnIRy7gH26a82T8TsTm/3aqMfkQYX3tB8o2
         RxQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKW3MLFJF0kMgDjBvoLaECmTARF4BZqduT8+P1jo4pN/NQ+wpCAgInborEyib0RiTIDwQBLZcy/jQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFF6faqisQERZS2JlYI5R7+asP/6FXNssUCBkdfAcmQNFyMWw5
	vk988vdvB8o5/nn6IQVcj5+WkOBLu5VUS4WzX340g8kJETY5wZxQHqiVBfE8eC91dJJT94jcIGC
	Ipglj6agNzIYMr3Hf8LH0TCTeHbJ2LypT6pJTEdxYlp1WHn991TcW0ikLNJzi/8PZZ6dt
X-Gm-Gg: AY/fxX5E+SulpAvOUS77+HOMIgB2s50U9RZ9a5fmqaRcTSUzidR/0bqak0ukb/hSWt0
	Reok7xOYBrCqZvSn48l0M7QULPAGWLA5fRmVWk+adHO9q5AoYBKkfTqFXc7FRhPi1Mm69oNVbC2
	11kOCF0cz6LnPGSQQNBofkrNlKm2BFKm5AoW6n4Gb5DJFnNOhsQmcTMSFUos5UrS01u375CSzk4
	ORKgisthNH+deBkz9CwSUFSTCsTPwV0DkqCzu6YQaQMN8ElMuuK6Hin0/o5dsbfE4F6pMcybWPm
	Ys9ByXvpH8ST9NTH56+WoTP4q+8WMFdGDpNNPJc+6DlZJuzm4lDhnOULhY6PxpBvdAm0MWS1ole
	wJfXOp+TLCWQ9R9zwZFUXB5o4kcK1cC3TZg4f2SUTdkO4Cmf6lTb/
X-Received: by 2002:a17:902:db07:b0:2a3:1b33:ae30 with SMTP id d9443c01a7336-2a3e2d2f36emr21943455ad.51.1767714143926;
        Tue, 06 Jan 2026 07:42:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGay4nVOi1x4DbIYZyz8vZ1XzEs0+0iXhI5PWvt/W510lDGQiyOk1gcoRq7cSfvhWP9CNq/Dw==
X-Received: by 2002:a17:902:db07:b0:2a3:1b33:ae30 with SMTP id d9443c01a7336-2a3e2d2f36emr21943305ad.51.1767714143388;
        Tue, 06 Jan 2026 07:42:23 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:23 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V4 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY compatible
Date: Tue,  6 Jan 2026 21:12:04 +0530
Message-Id: <20260106154207.1871487-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695d2d60 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Csm91wPUG_1LpuPihvAA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: BWT2l8h55Vo1asH0AhRv1850E266PuyJ
X-Proofpoint-GUID: BWT2l8h55Vo1asH0AhRv1850E266PuyJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfX/LsmQKaT2kYR
 IIYrYqa3QixJKNm/uw8x7UfXoevZ3FoQ0qJ9e79Nlu8V8H+hwE8mleW9oJnzgQao4CSZM0Un4Nn
 uy0SGbPWVGM0/4W0vcB3ZZ2o7ntnfSdgiF2c0vW/H985hd5QRyHTA9xFETesBlnqlkw82JsEi3U
 VslOPInqqagHZBvjycv+A2d+Df+pvdTtwF6rpj05LAnKPt1Bt/8me1BHFLG3OxoMwd83y2wGDq/
 7qEcNWojx3JrGlS7XxOK0UVVLYl04uKHJx573mtbkhl1wVwJJdra148LnofiWLkzRbwguhu0Iip
 05tlaOwpdUuIaijcL+JN53RSAyw5vlNxf+gitXsePaluGyu6cdtIz9TsAxyi/JOk6gwekPO/nd+
 3JssfzBAt5IwAWz8sXN2VGL+67K9nyqqA6nJMfox65DPBH19zNfILnARWpGYSNjsWfOTc+NwaB7
 RIlhYnzeW/VB0P+5t7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_074225_238073_139B8AF3 
X-CRM114-Status: GOOD (  10.89  )
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

Document QMP UFS PHY compatible for x1e80100 SoC. Use SM8550 as a
fallback since x1e80100 is fully compatible with it.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..166e3787db58 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -20,6 +20,10 @@ properties:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
           - const: qcom,sm6115-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,x1e80100-qmp-ufs-phy
+          - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs8300-qmp-ufs-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
