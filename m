Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E35C79F9F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 14:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtAkLx5I4/47WGsTwluH56XErLJhjdnbtF1TM5vdjYY=; b=m15zdxH974yECu
	1OJDEKQ+gAZnYrbygUfdlrBeWPxV/P+pYiqOVhlEzyLrTMn3PlR2xJHMB7Cpn/x+VyDtgxfWk8uxO
	a3KdHEb5GPPXOksMW61wwkYe4rvHZojLwdPlYeOzR0ZTO+Y7UOLMWPqGG8uwFUYrtbzKW9810pQv6
	TF8bFupKUhUq9Fb3/gCmNNSsOzECpXenfgLQiYztw8BzahfL4PcXpqPLUKpa4w5RLNDZLsG+b6YbL
	1PjT8heKRov9amSDrRmaRUauKvxtSq0NcmeF4CULKwqVjAmkgB9YyUj7ikgbqNV72VMlOss7wZkkU
	Z4KQ39yYRUf4XID8DZ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrV-0000000BZD3-099K;
	Mon, 05 Jan 2026 14:47:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrT-0000000BZCW-0gXQ
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 14:47:12 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058LrNg3738169
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 14:47:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JL9j8lRAbIP
	3UrbUnDDXBBLQaw+rdcjrIyfR5u1zqHA=; b=Qf+inBUR0kFomEu0Bkh0Ab4lDyB
	y1LMAEysQYWehe1ZdZbPSULtPU6EUp1JkyO43JHYjePhF2ozRKtUwezxCosRy/EO
	I6G0/1RflZeuIzImTgwKNUoeAwAHVOW0KinhoZR9U1fCyVWh8uDj0ZrrmRJ4iD7R
	kFLE0ZsqWrSf9uM/kh1jofH7y2M470MpKzSKjyQmtjU0jVvCqoSlfldHNeftsGRZ
	ESvTzor8v9F46pXwfCknhK0IEpET4DwS/0g1QujUfS7PgawFuVQJlmwRQqnnZ9ly
	rf89T/9Lm//ZJ9C7/1pxoW7ks3aDtuHQqRVOHciXIWInZuGfsx9OUHklgBg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bet2qvyv0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 14:47:10 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c37b8dc4fso37357a91.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 06:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624430; x=1768229230; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JL9j8lRAbIP3UrbUnDDXBBLQaw+rdcjrIyfR5u1zqHA=;
        b=Tb7pNRlc+ArlaOx6G+zQwsR3DgN8P5hjJU5Y6r5ZPPlFOmMucgMTf8sf/lthSn8QJt
         HpKyiJ0O1LMqvWk/Gwx1ajk4p9SyLtf0LrdkgCdPvxL1R9o03i3qQ2+x9JDOE0NK5/s7
         G5/UmzSgLmhZVv501zH+g4jUqpDSQS2u9oaYNNiWJHdbAUwPOIgxwJCZssfcp6TOMfmh
         0+6dq9fYGo2bIjYWZIyDpzXPnZ7pU4T+YTVxQXbe2SQqvMxUXkABnLmkW0MB/U0pJDyb
         w2F5Au6zd5k6m+b1a9TkirYCPmxmSqzhdqQEjubHfS1bGuRWecpxtt2m6N0ehAHfSMBX
         BLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624430; x=1768229230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JL9j8lRAbIP3UrbUnDDXBBLQaw+rdcjrIyfR5u1zqHA=;
        b=KFdnBlNA39VAr2sp+rzYQBrjooIoVwKr9/p2u2JMwHlNcve7iJm5tDuJ4WUqGLNcbu
         QQC29aA3Bp9pZPjLdyMvCTWJNUiYvfdA1X/ByrBWqWaQoG9Kc4lq+lJAyk3V8Y/mGKRw
         RwPUXxlfRQuwMCbLsW3kalNPkXgCFlPS6KSc5ti9nuFnI8JezI7fZai/oG0UXOuFcnFs
         kvXDGy7zH77VPZbUDJ5G7Fbsa3/gbZlDLT1HQ9n8DtoWEw5aZcfFxBTRYnvMObXjkQiO
         VhlomM1xJGuxX3CmJw0ycQeL2IS9Y6cctKEgHQQcv/SXffjK/GwFoomaBsVsuCSLGuU8
         udUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFGqTFhIm7NPfwGKG/CcLGEubN2F9ngR7dUTuVWVv/ajbB/09o1D6uIAr5pC8AeBWmPuBprtipwHw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwiJXa5TN/GMd6GIV33LcM1Wt+CGPtZNepcKYCY5si8N3LHCUvw
	ewk7nhkvy2RY4FgFdpsnKUTV+s/IrUMv0bM7VfnH7rKubdiL4SfOAKOTHlsJYkSCkkzwKqdkKr6
	10lq+ZAHc1Rsl9WIzJ520FofaV0cCxIOuFwAgQvZu3USc67iY/Z+XrM0I4fes10U4PRYx
X-Gm-Gg: AY/fxX7ru4hH7Dqmeyx5OR8hjXjHQ4Kw34qn45chV0OWwt3crPZuzTVvnGIGKvJiWox
	OF2jSRRYBS2rbsiSp5Cehdovy4GE4DnlOdwzA1SeFtzeWoI+yNX10uSHdL/NmaKsxbcOOYCXdbg
	QjzkdXyY5kNr78BurqSgOEpnrdGP6iA1f3RMVRITkYGycse9KfxuQZrhpTVsCTs8hhzWkE4+1Vf
	jK5VsfA2o5ylPgkNUTk0t4t2vqIaeuc50s7w5PJL/zELJBdkH8auu2SHdgoNQHMgZcqQrUP/w3a
	oLRuP1ctXgwELygZ50QjrgZNJC8IBF45yZyc8gE26F9Y/5/8bj8P6vONQIjHoa1e36jb87EIs9h
	tYxpdovcrFKz1+NVuUESYElYKNdTXlO25iXtFLPkMN4bCNm/ztTGh
X-Received: by 2002:a17:90b:1346:b0:34a:8c77:d386 with SMTP id 98e67ed59e1d1-34e92139a88mr40066109a91.9.1767624430163;
        Mon, 05 Jan 2026 06:47:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYO4fyY/NKZqP522dc4OZGpMKPzWFprBwP1/RIUeyvYF9tNegohUl3Ei5e98Hahvi876HNPw==
X-Received: by 2002:a17:90b:1346:b0:34a:8c77:d386 with SMTP id 98e67ed59e1d1-34e92139a88mr40066079a91.9.1767624429411;
        Mon, 05 Jan 2026 06:47:09 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:47:08 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V3 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
Date: Mon,  5 Jan 2026 20:16:41 +0530
Message-Id: <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: rZLQzU0ndZTJK9VvZbdstaq2U7uyggSG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfX7G+kIt9lhi0j
 ajwPqw30e9PbnBH1x+sXO1jZdWXZ19cOZjCsQi5U+qAew907k3K2XnsGVt+1MPldZc66SKy63r0
 a1pWeiua6aML2ybqOv6hCYinM3lGAZw8C19apd7uO9BN4d+vxXUWKC1WXLuTqNTvNg1Gbf6wXQH
 uQ3modhkfme7oncgTNZL8GSZhkZG8WRdKtiHv2tgRXPQksIGcYpOlAR+HDmxS6Ry0btNMHnDMj2
 gOKAXOr80SrlUS3DwLu44n4XtSIx/2VaxQ1n2fHJx+FOun5VuWcdVoAllwx/RmQHG8okkyM4aUy
 VAoffdkLZ5fMVh+zbcrodOnVSLORxFWCoFmo/R0j31KeVpR3q6lujhg4/nqZpbSPEygcH2B33lK
 T5JrKa7FBCkspzTrL4vHRMGA9hIKXdI3dWjyLYRYuRBKdWgy4V5Rq2rS2xPolo4BvKWiVBGWGfM
 nuYdu1Kfd2DJlluNQOQ==
X-Authority-Analysis: v=2.4 cv=RKK+3oi+ c=1 sm=1 tr=0 ts=695bceee cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=YpgvqVHoR88ruzM84CIA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: rZLQzU0ndZTJK9VvZbdstaq2U7uyggSG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_064711_205840_11D07E50 
X-CRM114-Status: GOOD (  10.07  )
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

Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
SM8550 as a fallback since x1e80100 is fully compatible with it.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 37 +++++++++++--------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..c1085d178421 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -31,21 +31,28 @@ select:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,msm8998-ufshc
-          - qcom,qcs8300-ufshc
-          - qcom,sa8775p-ufshc
-          - qcom,sc7180-ufshc
-          - qcom,sc7280-ufshc
-          - qcom,sc8180x-ufshc
-          - qcom,sc8280xp-ufshc
-          - qcom,sm8250-ufshc
-          - qcom,sm8350-ufshc
-          - qcom,sm8450-ufshc
-          - qcom,sm8550-ufshc
-      - const: qcom,ufshc
-      - const: jedec,ufs-2.0
+    oneOf:
+      - items:
+          - enum:
+              - qcom,x1e80100-ufshc
+          - const: qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
+      - items:
+          - enum:
+              - qcom,msm8998-ufshc
+              - qcom,qcs8300-ufshc
+              - qcom,sa8775p-ufshc
+              - qcom,sc7180-ufshc
+              - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
+              - qcom,sc8280xp-ufshc
+              - qcom,sm8250-ufshc
+              - qcom,sm8350-ufshc
+              - qcom,sm8450-ufshc
+              - qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
