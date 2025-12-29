Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 678E1D3B7E5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ETFpCRhHFOakiX8fTCD2ySAQLgIsHOTWhHY3kLUFD4=; b=UFn5iG6G19wV8O
	bbFP5/URPFkf5+QG6buDaoZcqAR341zII/XLzivOUZMGlDf0HgQNAD02qDgNMyvq1NANJCke+NV00
	8WhM9yuHWredIwlVl53ecRKKZnpn+YODXCjOoKQmzeQDDexXUNhvPTktxVkbHt/vEMvTkOQUjMeXQ
	LWzmt57/Eu6R5Cg2thvugFo3U8bwwsb4dboUG8Nk1kiKV+Z1G42cKXJMEFwT96mk8PZdqVNcHTaQm
	8CALb6TKN6+/CtgL3XV3gvE7Orh//KiDzQSl1lMQoAByZxZRnS3qQgKf6JEib5/zWTCjpcpYfGG2s
	iAddpMRlrRDf8CxPlpXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6PZ-00000003MzV-3gLH;
	Mon, 29 Dec 2025 06:07:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6PX-00000003Myv-2KaB
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 06:07:20 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNpdKY3825984
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zTbjgk+NOs3
	Iov4G6gd+2hf2/oFZUgG+sIHDNi2qqkA=; b=QARk2Jud6WXpGHJj9SRGkA8d/cA
	Iz/L43WUW2LOBZSYB0J2BJEntf7kCJTjtScJK0tnP8ZvXcQDsgEyNu/2swBmTvP+
	6lSOD6ly2+4sAikoSSiyDF6KfPmKCsdeNfy6n+DHeaERhM8fEsqX+sfo/KXR89sN
	lFba19itaweXgfqJYYlVSqI/DlUz+SRhBa/v3lTxrlkBie28pTrwpfYCwVrSTJsR
	Pny22lVnMWaTBJBJww3jQt0ARYRiApErxDf64gnW5lUpOTGeSGSqkwrUs/nenDgx
	tX/j96jKlKtcz101VPzxh8qnICTsi5VKX8rtkFviD1YxntNnwIfVRA5Z0Pg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6sg3hhy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:18 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7d5564057d0so20881751b3a.0
        for <linux-phy@lists.infradead.org>; Sun, 28 Dec 2025 22:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766988437; x=1767593237; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zTbjgk+NOs3Iov4G6gd+2hf2/oFZUgG+sIHDNi2qqkA=;
        b=Xlrierdl97iId6y6UG1ZT9L41qbablza0uJtj6wcjkA0nCmeXEiJ2NO6bB9XtTSkez
         oDXV7Mso66hvs/3FoBGRg3Mx4owbo1EvVklLeV/VqQKEfKwxa3SbdWJKAdejVq/2uvdO
         Z3PPdrADHdrt8O4/o8IBo2uve/7uHxuVDPxuq3Wf5GPNa9FF5XI+XlV/bX/mSHlnjLrT
         5iSGGSNglS6W768KkHnlnJJMXRQoNioOBwMiL8pmXCNOx7zuBMVEd9vr2bTo92lfaeub
         r+0jK54EPM/MsJaaru5Lor4zF9yeOfescrjnbSPS12acAFQpOKoMzEdqtOBwdbDvMd2I
         jAJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766988437; x=1767593237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zTbjgk+NOs3Iov4G6gd+2hf2/oFZUgG+sIHDNi2qqkA=;
        b=ogtuy79Fd/Yoi8L/JXbvNERbVRskWdfMeZTdmX7EmZ555ISWMu6bXG9ckKNVpMUD0f
         VDyx6oTv7B/rC9QCA990qTFfu40DI0ZPsgZvnX6i8muCF7ZeDwzrktChTOYYHp09RHUA
         yUdt1G1f5GC7hmnRHkgv6027ApQ214TDUCSNYr8jjqhN1BBKjtLCZDJwz4kOpq+UMznH
         IL44NfyjnWEHq21bV7zAeLdfVX0bI33xgd5oGFzYSoaRqNxcNfm561gWWdntX6GvaWF0
         JBn3MN+cXRLBAUbOidYnYsXZhLpNkAOLlZ1v8ivLOs32T25KmlJxJOpPLcSMSoW+UgOo
         ecgw==
X-Forwarded-Encrypted: i=1; AJvYcCUtP338+N2Hx2Z5m2zAcNnlpXEuo1brSEoEFxK+i9Wng0L+5Jp07G8UVdfJwOAYU0ssBMxhPVD2ca8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxltCXm7gwRroHrIhFiY+tP7Aqh7JUtKssdig4oT2pnW62qCObs
	CHhJdf2vY1nnBFFOkqOW50T6MM/ru4ypS0BSimblP0AWU3fdtXK/WA3p2b0rwfS7MDuECHoUcQv
	pJ7IGcqitlnkT4fiD4EdwZ0f7VFNxxcdzANJaZ1Si+psQyTe9BUKXhLjUsSIPhaEJBhbh
X-Gm-Gg: AY/fxX7f4M05kC6z36fNnbU5GGOsFQf1GD0NGNkG/Rheeoiw65VTEUcD1aiZaxiPPPK
	ml3dEncUJW2q8dI+vsol/F2sNcPIc/qA5TknKxwnpyCDj+wwbC9u4q3ZQiA/TSj+VNS16te82QG
	S/xM/JA1llFPMNpqNhDwgTxJtlq5s8VkSf41HlVaYRVmnbRw4R7mbSSu1OZkeFEhEr8Yp6KHfCl
	3FL46Wd77RYI4N0+I/SYJcAynzjyJu445w3TQj/XxoWdQERLhbakc0JIiwqaE47J97yAw9dgXwD
	MoJfwDUk+AqWRBbbwOTeChFZ+7GrTyxz+lw0sfXP81i7aBGwAhpnbKXMf5Ga9HDRwQBrqH/gIAY
	n/Qq68NyMsAsd9/L3tmGINSDhBTgzYQAkT3d/pK/47NsYp5NU3JNy
X-Received: by 2002:a05:6a00:e15:b0:7f7:4dc8:55e with SMTP id d2e1a72fcca58-7ff646f9556mr26819265b3a.7.1766988437370;
        Sun, 28 Dec 2025 22:07:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb5Y4sFr51IIwczO5+Lk8y814x/vUUUITjRTxac/NwTklarS9mW2K1VPjPW7044XMMmmWvPA==
X-Received: by 2002:a05:6a00:e15:b0:7f7:4dc8:55e with SMTP id d2e1a72fcca58-7ff646f9556mr26819238b3a.7.1766988436899;
        Sun, 28 Dec 2025 22:07:16 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm27917763b3a.67.2025.12.28.22.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 22:07:15 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V1 1/4] scsi: ufs: phy: dt-bindings: Add QMP UFS PHY compatible for Hamoa
Date: Mon, 29 Dec 2025 11:36:39 +0530
Message-Id: <20251229060642.2807165-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: prNEJGYXWATUW7LwdxLeDORJkbiunml9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA1NCBTYWx0ZWRfXyFL9bRLU6tg5
 wZGj0J7NVJQESs7tJ3y7ZEkxcs2qCUBenDfnHUCwFWCk0umdRFYs2dW8srp1RwRyen3owMEhDPQ
 RJcvGOF/a7ZhuLLBkhdSlDHt/U+O6NsgjM9T8JX2W4lfFgmlFLnxbBJzq/fBkCukCeR5L6Zg2f0
 qlgMzrkrjx7jFrsilusVX8joiR5c6qPTTssZ4dnzxrVg6/L1iQKO1AicJ8dnIEb+/Bb9O+k5tZj
 BltKAdWcNKNFjYB38ipKNwXIRdXUApeHR2RuzHHxpQIOWgUaWFOca+Bi5tzllPAIMGDp0dUKNql
 8M0wWuTjk9s5PN9x4+/tLhKvXVRXq8Cm76rld/KswZ10Ry5rbKvy4dQna/3nUtvevLQ7mp8ur+L
 /AXscWfTv9IuW4wlS//sC9fltHUg2vXN5Mz1ndnbfi0LsoJISDagviusuHBYZ7LleX1Tobisi8j
 lnZ7MxgLAEEhM3e63xg==
X-Proofpoint-ORIG-GUID: prNEJGYXWATUW7LwdxLeDORJkbiunml9
X-Authority-Analysis: v=2.4 cv=Y+L1cxeN c=1 sm=1 tr=0 ts=69521a96 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QmIOYfwlR66hjO0Y-QEA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1011 phishscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_220719_715906_3ADB1D4C 
X-CRM114-Status: GOOD (  10.15  )
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

Document the QMP UFS PHY compatible for Qualcomm Hamoa to support
physical layer functionality for UFS found on the SoC. Use fallback to
indicate the compatibility of the QMP UFS PHY on the Hamoa with that
on the SM8550.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..b501f76d8c53 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -28,6 +28,10 @@ properties:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,hamoa-qmp-ufs-phy
+          - const: qcom,sm8550-qmp-ufs-phy
       - enum:
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
