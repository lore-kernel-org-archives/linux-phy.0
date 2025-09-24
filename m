Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CACEACAC5B0
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1U0L8szAiEk/kKVmIqalNE8D+h/5JWrisydOwWnaGvs=; b=wSY75H73wjyHsA
	oU6aLo5x7ox9lFD6Ont27p+zmlGWOc93pxUSTESv2TFzzSG/lM43n3n+WzdbXUuUc1ZW+5KzxmZ0X
	zZ+fFHX0XhX7BKsNEy1wP0xuzrxwMLp3nc4wtxR3Nujj1U3GblA/TGjkrcP+9vqde1V+65xfxBnMQ
	CLV+iEwvQAXcGZA2uxieYvNV3R5UgZd/4qlU36WE6GMqiCTxYFuefgs76m4gO0f8ZTH19nPcq3Y3G
	vTl5fC7K6FMdlU6ceAqn6ZqScWlZN5mciuKJ33a4JQre0yg/8O+0N5h6MPp0BBg9oMQ4p1WlsRU2s
	YoUE5WHYYHFLdtDciwnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YvA-00000004grU-2VH4;
	Wed, 24 Sep 2025 23:29:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Yv6-00000004goO-3zIt
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:29:10 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCtHRN019915
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:29:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yoYprIzQpGEht+RtS27992YaizRl4nrFk0NKTW3GFWA=; b=GaSp1RQXuPs/Lo47
	6bjaqR8s8oESCs8ROTbo6wAzzzVWbzxoxET/0GlN9dIHC767HknaQBgeHIsstVTe
	my3uH2C7bTc60NlxnpA9AaDAwxDWXcnYYoRY2mUIlfXZBTldGLXruRKtF8JBzdu3
	nReElghga/YDVLdy+vu1TEI/mN8puiRQk9iiSzniQw0pV/0WivLcLSVmOieKycwV
	g6JR0BPiS7dby2qSK9Yrbkb5ZwYJBLP02RKPaghoqXjjlEWMRVQVOTRNT8jDsuKV
	x9ZoKSY488Q0ovObgwBNXdTSebIyUDvLnljn8IOkBK8Byfp54XFfEoSt1UHdGWPM
	pYNC1A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdy8h3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:29:08 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-26e4fcc744dso2316025ad.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756547; x=1759361347;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yoYprIzQpGEht+RtS27992YaizRl4nrFk0NKTW3GFWA=;
        b=LIBLmyL0uM4kUz4oBzFhuVmjsW9BWkPhqHc4rn5cZ/bT4v1oXgjUwTn84hqa0z74wF
         jmksLcrAbmHNVROR/IxUVx9AhiNsfeuwYDS14MlSn5FoTWYEe6zL1EEzRtWZgsEzQAXN
         h7O09e8i4YtIM6IdnxvpqO6f5EVchZaxzopc3vdbWiwTVE0vXhDdREmhkoic2BvCKqWW
         Slcr5byapzodrH1SnweygcjnUMUriwGsHgXfsMdn8evLerzKQcmNg+WVKCETWMAzdOy3
         //2AJ9TbibE63T23StnGLkoiBd0sPdFNAyXLJJ0lH4upefuvUGLX85d7Fo9YXExVXEu3
         vmWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUQfULbOmiS0hUncPkDgygq1juPFhPluNFguQekOVP2dzoFXvL4Jw9CB6lMprRc3MOqS2hvNky064=@lists.infradead.org
X-Gm-Message-State: AOJu0YxdV7wX/Wi6JVPtTIWBoH1l99y8z1zkKdjQX5SNfr7paNrcLbXN
	MSlYLrQqYBLWzeXQmFMh1hWMBbUmjcB0vtyHQzp1DBHz1RB4oRmKq78OXUYaT7sUpa8Gm1lo60J
	HMVhDqRsUY5mSYH4/XWYdlzuJIFhykziQToOWiDlfE2TJzsqV+ugwyhrOh3+hwNhYb/YynaP0LE
	ple+U=
X-Gm-Gg: ASbGnct2uKbjwka9eumM5mTuFJA8YBg8o7rJNQeZnQJtGvcq9BnH4McbO1FPoTcKvAz
	pjHvhc+fi/jTu2S/AU9is3o2U+aXRnl7gd+PU6FP8mGwNcP1xXglqEy0HG5cVQQdkzfxdJqLcjT
	YwFgkHPgSdxVchnJJGcE6MdzCmJMv6FMK63mOFAixOYAtgFj55m0CuFiYSKcKBDfDqGsSEa73u/
	MdzOvGcGWcmoWUQiU1VIDZgS7/zPXJ2q2hEXgq1ps0CDQVygNAfxkwplgfLPwBPu5YQwxAb3aOv
	QL0ezeT6ZkSofTXIkZaecPDIFh8DBqGplGtrn+B01Y3WLyM0gMDEkAmKBspup6p2Niy5qX8zMla
	IF9Z0O6bA5ao7Iig=
X-Received: by 2002:a17:902:e749:b0:27d:6cdc:99e4 with SMTP id d9443c01a7336-27ed49e6cacmr15277885ad.21.1758756547568;
        Wed, 24 Sep 2025 16:29:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgt7aoTizG+JzBBCRszUgmA8ZQFFFV6kXdzPC21oHMm1YuShUXyP6D9IxHyhwdW2zXjSqSjQ==
X-Received: by 2002:a17:902:e749:b0:27d:6cdc:99e4 with SMTP id d9443c01a7336-27ed49e6cacmr15277545ad.21.1758756547098;
        Wed, 24 Sep 2025 16:29:07 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm4292825ad.30.2025.09.24.16.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:29:06 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:29:01 -0700
Subject: [PATCH 2/2] dt-bindings: phy: Add QMP UFS PHY compatible for
 Kaanapali
MIME-Version: 1.0
Message-Id: <20250924-knp-ufs-v1-2-42e0955a1f7c@oss.qualcomm.com>
References: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
In-Reply-To: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756543; l=1139;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=1ixz4E1H2pIiXzLXyMSyDlIXCkqJA/x/F+DP+KNf3Q0=;
 b=e4+RfHwGDQQ69QoAGJgmiuXeCPI6N/wpSRjaFCHERX+3Y9Wd6oeSiZH9OuG6nj1rSJ9ctggJX
 nFb12dXQbf5A+22joIbSiJNqgjR/D9hN/PK5aZ9Cp+UdhKJ5qHcQo4N
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: PJaVxzClsz7MTC4pZaiZMfr797neaU50
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d47ec4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CSN1HuAOl2xf59Ui8-YA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: PJaVxzClsz7MTC4pZaiZMfr797neaU50
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX9Hiw1CA4LyLQ
 HU/OVnDOzFd+hu6RxykrBk9jOGg/Unr71TikNbHqw9hA/K01q7zk0nEvq0HjXo4ERD2KfoUVyP4
 mt3Mo9kZIScQBxMvYqUuaiWDbcWdF2CO17TCKSqnpH/JDjLQcUwywSkPMr66BFORNJzApO4JkIt
 68Pi/tNEyhZq0RSxRmCMnv2t5FDbOSoEqSjw64OmafCs2q1qBWYBUchWqllRN7LtSUhIyyXf4h5
 /BOwnFUqMheEnFwGAKWhiQn2Yfly/EXZiMbzJElpUWnwtTr+fBz+LGMjEOJTO+JuCeSr0IA76ad
 29mu2cmgKSRDekWXGEbkFJWmhb/nUkC2abufaMnuFgC+Vj7jsVL0MZXcsQFC2wmQuFhrCXaXLhT
 T2vyMWq8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1011 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_162908_997110_13CB5CEE 
X-CRM114-Status: GOOD (  12.79  )
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

Document the QMP UFS PHY compatible for Qualcomm Kaanapali to support
physical layer functionality for UFS found on the SoC. Use fallback to
indicate the compatibility of the QMP UFS PHY on the Kaanapali with that
on the SM8750.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a58370a6a5d3..fba7b2549dde 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -24,6 +24,10 @@ properties:
           - enum:
               - qcom,qcs8300-qmp-ufs-phy
           - const: qcom,sa8775p-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,kaanapali-qmp-ufs-phy
+          - const: qcom,sm8750-qmp-ufs-phy
       - enum:
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
