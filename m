Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44277F36C47
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 07:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uu8xjrhYQUTU4nknp2IXzXyo91MYzLP6594VY9R6D70=; b=NmAZOCU8bhzh0t
	kpDVXoTWk0dcNA/0q7sc4Kf+eJAGmpFiSg6v3Ihk2d2I4Sn/PFKaaHC0+OsrIp7gjDyQIhQEEg8c4
	UUEPPDYItqeSkTJIpLvq/WcTJP671b5UrZTETSaSzJB5mHsUTdFgtkAOkubOVaDDWl1r22/4GP6kd
	E/9rcUlzIQrUr0VmuRN8iiIewFXTiWbhZWWoxQFTt+Lz4xVqiPdbRbeLOFPb+jGNjNnjmAAq2iZHQ
	IEWrugFkYzt7GoSfZ+2nu8VrDOrwHwBeigX5XsFgf+ejCr2mMkQ7WP9Gu03h08ZYeXtNrY8s+NL61
	lZgDaOZh52m4eY32GI5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjOE-00000006Z7Z-2fRk;
	Mon, 20 Apr 2026 07:49:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjOB-00000006Z7D-1xTv
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 07:49:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63K2kRTS898295
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 07:49:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=juMOu1sYmAvJBqqpvTr4V7omJWJEUlpkuYh
	aSUL9X8w=; b=fpsOZGFnaxKdl9+H4nGiabLAiwHA0q1O9f6Eo02FdUEr4O3FBBy
	fapJ2OVdkhasT14OgBEjLGW1+qKnlfXY0oaoRlhGfoAOIUDFZa0ggCwjpih6R3Vm
	qH8vb2GG+FDdzz3xOypUGs/nZ5YCWB9gspmx25Zzn3xCZ6sGzqKiSBMGSLVKamn8
	BrY89mXlDBRETBz6hzlh70PTDqupzVOZ3vjC/hyRqny4+7Jw7i3mcv1ev+IEjBQ4
	AwADV6eUWUfiTijb7yeATD7QrEPVgmhZkyAjNuy+paFJI25sHArdxrmtr8/79AuU
	+3ZNaVtV8F1Dsiq8yjXgc5m19oTv5cGkVsA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dm388mpmk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 07:49:50 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2dd1c74508cso5209643eec.0
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 00:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776671390; x=1777276190; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=juMOu1sYmAvJBqqpvTr4V7omJWJEUlpkuYhaSUL9X8w=;
        b=SUHeO4Uii53QDWdueawJQ1l+q3XvQyM4uVb8ke7BKFfw3DLfcLv5grwyV3KW2JvHKd
         7ANom2OaAVFITdYwWvC5O2kfstQYZlmFc2+oRIiu0Xk5lzUJS7RuZpSaMGADhFvWPZp/
         58Zwt6+2/yOmgIOJonEC6COD7GaR51S7P1noTuFqESMjRGE3aucrLVJ3LETO+svteVbP
         QEH1qtvFsO1j+/2SKhOcbw9lg9yiZDkzpvTfQugZL+OhF3EaSWiDuQICXLmxo/RxmNDN
         EnUx8MOSBvn3vS5WOOXioES/xIv5n9v32YOxNgCiVsvSg3EjkdsGZurPP3XSKCtuoJ70
         Pa8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776671390; x=1777276190;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=juMOu1sYmAvJBqqpvTr4V7omJWJEUlpkuYhaSUL9X8w=;
        b=ohYna7yXBzMnvf/XaIof8O29XiRNhyIHkNsCkiJBHefC6js1sVK7Yx05+Fe5m4wy7s
         Slay3JPFRlSMbv1YMBn1omwbhDTEzg6qHl65Fy2B16WyukAiKASIC9kGWr4usFkOCXzg
         1Dn7zDXl7Nd8Rxwm4qx3HK+DQBu0q7xoIVmG/EdUauo5W/ijLG0clCitg45PESF4I66b
         GMA0uX0zHUo6UUzLZPdRQfS1c5WhQC/DLv9sqnm3P2U48i4ZI66MJZlF1W/hmSDbCUVV
         1DD+2gMxrJGZBOfFYx5dnOVxLGonOZWO9xhuwgtN1c8MMVde2uCe0E5WU83JTdixx0jP
         wwpg==
X-Forwarded-Encrypted: i=1; AFNElJ8PAm07mmSrXI+eg+GQHoJfmM9qFHoBfOpvcqjvVPOEcSbHC+hfg2HfyyRLYiW/r0U+nRlPy/4/5Hk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPa5Xk78iksfZUv6MMMYCCTrhAGPjAB2r1t3zdldkkmI1byhhQ
	eESXgYrXhOz8qs3CDSIZgcT14Mu+dGLChDywjE9sNZwm5CYuKdJvTnRLCpZeNrBABspErfnkwcQ
	F98JPJwpkHJtwAZ+Kbi782avTnXIb+4TWSV8vNV6cQ2O7cehESao5hCocj1ezja8JbvAR
X-Gm-Gg: AeBDiev5C5fvddjAGmwnFixCf7Pp7V3GYRpKBYKtLCjJTZdkJ0ueLQCIPjM6w+URgMm
	1BPWMw0nxvy7R6rWsVNpPwrvLVm2bXLaHJUNCIc770CtH8wKhh7nL3lXBlMDIt7Y/yq6BgnnMWJ
	vUwd1E248bUwyE9hMYAVTiihe+2BWdyvzXE3aY5S3xqZ6PNL4MTt6DGiSYfBQTtdT+yt2SGYUiD
	7wAj0AYqpiYq05BGb2KwInMZDFrzx5M/gEd/iHZO3t6ijT9CriByVgWmg0h3AsLYZ3JOZ3RgCHd
	9Cnf3LoiZLiylRe2NdhnmD+WTxW4iodowzBrX0Z97a2+G4VJBnoXxJXIoDgY+1M9qWQw2OI68W+
	Rhpf2+Rlzhy+G5xYmhFdI4oLQdnWcbH1QfMFYKLn+sCWNkdYe3mAA9rSn1WR/9nqWgDqT0fN2bP
	7yu1BqAPC04G2HOm4q
X-Received: by 2002:a05:7300:d70d:b0:2d3:f3fc:bb6b with SMTP id 5a478bee46e88-2e4646cca96mr6994772eec.1.1776671389947;
        Mon, 20 Apr 2026 00:49:49 -0700 (PDT)
X-Received: by 2002:a05:7300:d70d:b0:2d3:f3fc:bb6b with SMTP id 5a478bee46e88-2e4646cca96mr6994753eec.1.1776671389362;
        Mon, 20 Apr 2026 00:49:49 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e53d8aed43sm13181768eec.26.2026.04.20.00.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 00:49:48 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Nord QMP UFS PHY
Date: Mon, 20 Apr 2026 15:49:41 +0800
Message-ID: <20260420074942.1250414-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=GthyPE1C c=1 sm=1 tr=0 ts=69e5da9e cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=i-cyXkeXePKO-ona4U0A:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: 6WSzzF4yR8ExffqC4nbCqnKztLfkkhJZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDA3NSBTYWx0ZWRfXwCdS2f6K3XOg
 tfLrZE0K3WDxogsBlr54pOmcpCg7S43SPkVpybgx5uAiQp35bVg9tqDjeanKng8z7QB3CkWfVNG
 BmEdzPU1gCfeMVsQjy9HPyji32ggRCC/LaD1yGr7xTLUdQTeD5AMn8jHA4BQ9PeIpII1nFG/x/D
 k50Q9igCEeDVHQvpqzK1SBs5U6AqrUd+fMmGEddZ1JddwbFou4MbPLbxmViXrSJ7dVWDOmjsGKM
 wMVqo+2eQ6SrhemHcIKz3OFUPWZXW7YEc5GwMlRBWrx7cVHyoclV1y1uqIQn0OxmYXqDiQ7VjUZ
 Z2Bi9JS3vgG2o7vqmJSzmyVTq/gHY+UyghItoyoJm5PgAUPvagoD86kT7H8R7LDUIBmSja0YAd4
 2i4rCuWQEFsy19LHyRIy3WPJKeIW/BKUXf3EZQ6x9/mlrPvbiLt45jRLULHWsIULkufL0oCjT6H
 jkOoVWR8XYQSsDT69Tg==
X-Proofpoint-ORIG-GUID: 6WSzzF4yR8ExffqC4nbCqnKztLfkkhJZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_01,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_004951_635493_C61B93D6 
X-CRM114-Status: UNSURE (   9.32  )
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

Add compatible for QMP UFS PHY on Qualcomm Nord SoC with a fallback
on qcom,sm8650-qmp-ufs-phy.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 9616c736b6d4..cc3457d6aa3b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -36,6 +36,10 @@ properties:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,nord-qmp-ufs-phy
+          - const: qcom,sm8650-qmp-ufs-phy
       - enum:
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
