Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E47C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 12:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pBRtYzNldGxB03Nm4b0zROh73g2AalNA/Extxf89zg=; b=NdkZy9Ly+7pPrb
	b09pBEAeAKe1m+xTQvkT3opCn0+JmF3BjJOAcaWtxdADUS/k7CYKF2NO1psr4UOXQjkhmEzZ6+U7t
	H1h3AjX19gAHkvqX7Y4ToF5/DNYf8RuUD2o2AePdGHp35p7FA4PVc729Esb8tr+MQMA81fc7vqZsr
	syvWFxxdMUxpYPP9AL6TZ9eqemO3myWAM4rG0eWtTryZt80KlrjiuM0+LF/nKz1cw+9ImtaC8luKY
	DRVURA/CsrjFWm1VaM5sZW5PAhwrocK2qJ+i0ZCWovqKB0lHD/nEIcOln4lTdZep0WNpTWc8M6kXq
	Ivv8ilinllJr6GEzcO1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AsR-0000000BFcs-1LsJ;
	Thu, 17 Sep 2026 12:06:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AsO-0000000BFcW-3QeU
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 12:06:06 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H9ZZBf612901
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:06:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QcN9cxBCESt1J3bXNleQd1twegh5vS95kmmxkUSr+u4=; b=H6BB9sbnO7VOarVM
	JyvJu9HR4dFUelkONDeSyz2/0SuVydHLIcQVsBw+w+sLzN6FIXG3VyKisjbic1Iu
	0iWBFTmGzzV8SjLlNpx9++uEh+ghnTsHUCgMQVnluz1Sut3W/AWcc/ktTTRIFhc3
	PtP2H0XAzwkYk2j0FNjERAZERTa05BXTKgOycQLaAxOGsnrEUBGTImAXT297PbsR
	v1Niona2413WsyelIiMeKMDo1tKU74uikSsLqiACGKT3QeVmfL3BJ/EIHdbGZJSK
	Z6Guyf+tokmxrIHQozZVk9EvPp/r6E6JEQtE9ifd+F1uiigZ21HcDuchH3m3KqHH
	E/AJXw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grca0rywe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:06:03 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc4e496e5c3so648905a12.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789646763; x=1790251563; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QcN9cxBCESt1J3bXNleQd1twegh5vS95kmmxkUSr+u4=;
        b=ZYlLIsCKAbvHdffD24/sjl9hWg8YLVuoP7T68k5g1Rl6mrZ2/IfbBvapePyxyDWH3q
         sLbrbEUfCUg4pnCeZprHOnPgOa/HpaeAKFG9kwjQ5NMOE9eUAr/zS0vJEb2f0POdrRrA
         bNcJe09pUbYCmYq0JQHE5kHlZcAB8mlEyCCjLbllhT7L0oGyvwpsbZClz1sViDynqG6J
         BTRpWCG8F3mvbtseg2uq3Me+kVmFT2iln7VEmk9799onEedM2pjKArBay4r+5LkKjhHN
         QNLsVDDVvxct25zZ5QEubRXj4XIm+xS55u+/mopL3PAQ1tJRICFhuR2LavykIIHKaR6b
         gnEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789646763; x=1790251563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QcN9cxBCESt1J3bXNleQd1twegh5vS95kmmxkUSr+u4=;
        b=XrlhtncEHRdxkIv/0Z00qQiCG9ekp/70JmKbqtXJ4t6MbjYoWU99TADXyL6dP/0juq
         bJmPsz/lPjkC0IZLdra8/swhy2D81ME1mRk+tiyBoZim2sBF2sUX8ZMxw2Z+19N84cha
         KeubTWNRUv66FuhqAp+3ZdPG18JrxYqfjy+As2oDG1LK6WlU7oNBaKg4QT7ifWBxom3K
         yWaskFHD157plPfN/eibGL/xiNa/5SOuuyUNxehaJBh6bh2vjs9h/MhlX9zonBgRg7/8
         i/KyWCVg+icD/yu3bY2RrfdOCLMPu5iZLzLRdCr0pVCsqKe+wnaqi7dIf6hpK0AqDhVP
         GWjw==
X-Forwarded-Encrypted: i=1; AKwUvBx8h97UIY8Q7/tm0i1H5O16ak782RKG3mzW38tQvLt1xCQTzL/n+OpNVchySJGqu6NkvORIc56sElQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nplPWO2QmVGXsSxbtxvOhtNe1WeMtdhJScKw3Nd4yzUDBnKfc5
	6X6i2N31R8EGau2DMqNlX6sMUA1wvpDATjEo7O+xzl/xIn11HR+V7UvStPShnJlK5TW/Cm1NYeh
	tSKxx+HCrjVgJsZ+jf1TXigU39HLnrqSv2ZYmybkBHBXwiuVW2t/CIoSLJJ+rMK+N08XTBMos/0
	NS
X-Gm-Gg: AYBFou3MBYumyfU3AixnRdYNhTeUWPzeAJhP4L575nA6q73m20Wk2XUnbITuDfQ13mc
	ObMqgELlWFUMM1SIeJtQxLhsQE6uiDIVk38A3IiE9pnFlDVlrN6rqm9Fj0FlTxSulgOaco9Jyr+
	bnZwc2yeYzNFet1gfRPFQ/AHGAxneoxnFmh7ac0qKPuBVFrDGOkAoFc8zxiw3O0Gm6G7I/UD1SR
	K8KafE/+k36q3sIF9cybRj+Ylv1BKhGiyP5tm8CSZB3zNu9ItPa6Ow0kir11x5zpiKACb1u2D+C
	FeU1T8w9C3VcDQkXW7+9FxKZAFJ7d3IZfOniu5ok/7uzm9YL6KAehCrtXdCyB6MYSZme7jY6+Mm
	bb8ashC6w54AtB3C9JjWlGTIsNPiVEA==
X-Received: by 2002:a17:90b:1648:b0:39d:e43c:5a0d with SMTP id 98e67ed59e1d1-39e1e2f9e12mr14454818a91.8.1789646762714;
        Thu, 17 Sep 2026 05:06:02 -0700 (PDT)
X-Received: by 2002:a17:90b:1648:b0:39d:e43c:5a0d with SMTP id 98e67ed59e1d1-39e1e2f9e12mr14454734a91.8.1789646762209;
        Thu, 17 Sep 2026 05:06:02 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e35d9869csm5007612a91.4.2026.09.17.05.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 05:06:01 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 17:35:41 +0530
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
MIME-Version: 1.0
Message-Id: <20260917-glymur_camss-v3-1-1d0e2d47ad2e@oss.qualcomm.com>
References: <20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com>
In-Reply-To: <20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789646750; l=1015;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=bicoCk8fBJXyVQOPXIB8KDJTBtOMQ5lAhdZI61Ev1rg=;
 b=Vp6CS+/Epro3msMsrHzNjpbJRpl0Dzqcy3rIa8rXwAaoIaTSovFc022WtbnFpqPXNDumH/kpK
 xVrA6iJTmv0DOaolFx4T1drOvYXTwLp4Ztaa5UbPhdFP+CvTy96jJTV
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-ORIG-GUID: wRJvjBdVdbafd3s93AhzvZfVjz_-x1bL
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfX2VwmfufvsMCN
 WBLj4XI0vg9Y0N7pqbS6OWyfq2CxKsRFqvQLDIHRKAhHDU5xrrR30D9W47CJiZi2f14sNF4+Woz
 MCa4cJi0W9d37fEGygG6ZeC6jsDfbZA=
X-Proofpoint-GUID: wRJvjBdVdbafd3s93AhzvZfVjz_-x1bL
X-Authority-Analysis: v=2.4 cv=dOQzC+Zb c=1 sm=1 tr=0 ts=6aabd7ab cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=TrU-ok46ffbKF8Cuv98A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfX8jXtACcSZLjj
 Y3sOcDTpCUbnS6tmXPf82a2lSITdy3+fMNSnuGjbamqX0XHspswMTDygdngmcNel99XLd1bpyFB
 +toEY28s1iZjRrWR2FZZRjnoMecNMCfJJ9YTfXSkrO5hrpgBCX4I5d98XGagAe5tCaeQ1MxPyRV
 qdxYiAGnDXsRpFX65BOHfgEt4fa+PHMBqvSbOoeDUIkY1Zql1zwIIHe6fX4B8VtU9PTBGZf7ZuW
 4zoIlkU+c3i8RwRSU4Q+oXE9DFJOpVy2G5w+UQp6DVLbqORjHZqlvGfh6Mnl02jN2n+A4E8UrJd
 fFwYWWORK80PDZ9KnLMiZJx6yn+MpvMK4aSlKj7G24IJqWtRqWCS75KkSrh1lxmKEdAsTd+iNrJ
 RW7R0f14a4ol3zcMdy7FCf2rEc9kmWk/TNIQZLIBM2xJaJ9zyQSt7kelfYFHIZlXryB8fVpjM7N
 n3aK7oe+oPPslmUaMUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_050604_976522_B1255AB4 
X-CRM114-Status: GOOD (  11.57  )
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

Glymur integrates the same CSI2 PHY IP as X1E80100. Add
qcom,glymur-csi2-phy falling back to qcom,x1e80100-csi2-phy.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index dc64af97da6c659628729a758316353798aa98db..1f1e2a4993b2aff9a1519640bc4e04ca98fa4baa 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -16,7 +16,11 @@ description:
 
 properties:
   compatible:
-    const: qcom,x1e80100-csi2-phy
+    oneOf:
+      - const: qcom,x1e80100-csi2-phy
+      - items:
+          - const: qcom,glymur-csi2-phy
+          - const: qcom,x1e80100-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
