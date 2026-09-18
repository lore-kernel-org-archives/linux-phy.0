Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE4AC982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APs1rG2Zv/HLB2MKee6ZYHjRBeEM6SqYwrxNoWnZhug=; b=PD7KRymgUAdqAP
	YBVlSz4ijmtEJnnwcwunwszRBHvu1XioGuzjMPdtydtbyscG5gg4wdf/XVUolLT7d/PAi//Zw6yH1
	dtynegkavnqfUfOucMMzX3yyM+SEDZ75Kr9xF5vG9nVa+o1Btd30CgRFerFqefcRyT/m/Y5ozquG6
	FOatQlIrH7KkKowuDzJc3OYBiMyNHJZFq/qFrKW/30X+u34GxwnY0eSG58ldt2mf5l4DWCTErZ6xg
	dzliiiI6yb1pKF2LyDQpokmuvmD3cKe+Fkim/37eTvK+CqXcGD/k8PMML+A06HrPeMIps7QUkd936
	HfaI97uW1UOBbDioR10g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0c-0000000E74f-1Hou;
	Fri, 18 Sep 2026 10:39:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0Z-0000000E73x-4ApG
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:39:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68I9dR06860377
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:39:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kRRf0K4n/OMGCKpZc2soc2B/PhOw76TarQ44+SpuGLw=; b=TMLlfyv+jsFdDOoy
	8wE1dytKFlixgMMR21cP0McWiSJmYAqj6HSzXmIOCjSDnmGOYCUpTM1zxBP+xCYO
	bTGUuqtLWF4A3rQjfmMi3m3zVScqBtblf4mF6b4ip80zi2dujcagQV4IYuxxsV9m
	vgDF+mxyGpqU6kMbhYEAHIT7WzOah7C9erJAZGd8gsZ5ZL5+2NMrb2FzcQNa+v74
	7bwgEiKsrRYjRDdvhvA3+oF9NMtrbwDTNhmDuFlMPr3N2yraRdHtvHB+m5fVj+yt
	nGFQ29GJujAuOqoN9TtJS0xpt234NqId9lFl8GM/lZ60/bjjvF2J/DAmLhaTh4A/
	v7+iYQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gs2hv8a8e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:39:54 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cb835525b10so678822a12.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 03:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789727994; x=1790332794; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kRRf0K4n/OMGCKpZc2soc2B/PhOw76TarQ44+SpuGLw=;
        b=KeN+QTSrZmJtJHkgNy4K9PtWCxA4rzEexiGB0eDzYhp4wdOc+IpUj6JhUvYOG9XbQy
         Ff6C3pVz7CNA0DRIiv+nVof4+9kUpseMZdbcR//KW93huZAsAscmNiTfbSz7aml9alRC
         0nORMnVLSfNIRiEtpUS4729QPH9UHMew2UbAlL8+8JURwZ6yzLEvNoX+2wVaWCpEJadT
         nS1HfjuP+6uJyJCmnEWJQ8rtrsMrOZ9X4xqej+f+FdLMxW+NKAxq8LjNQveALOJ+XffZ
         ApvjwZ5NonndnUYCSGUDp8DJU6U/bOEhS/mx7klL2aNYXu1EZG5iUknKqcppRjb+rwbh
         szTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789727994; x=1790332794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kRRf0K4n/OMGCKpZc2soc2B/PhOw76TarQ44+SpuGLw=;
        b=VtgcV+x0cGZondzVWnFdD1Z303SKxyAricw+ZrqmolFVRdWs3KL3grBKSP2goIeSiK
         Wx8ESRaDH7zZ9PKOcdsj0fwOsC1AYyK6VCZXbWU0fnNSkH7wzlpA9BRP33w9B/FCACDy
         kqaCe/qzswvUTZPKZpaNIYRmitDqK8BjZrguMPyRUfQs/nfsk3r8JXRXUHpRgV6jguZh
         ekAHMK1A++bng3SFyuqIixPtGfcrBuOEK7VFhdHKFz4L3yPHFPgjD1vNDw6PaOEmTYqZ
         N8B+u/JLpL4TW6I7qhfh3fXIH8hwAfgi8YaNRZpPAuQtR+Ulcgr7Dl9a0V5hopZCXLO6
         Ns/A==
X-Forwarded-Encrypted: i=1; AKwUvBwnCdXngGM6trqhaHiqpAKzmSh/uqHg3Uv9zMUJ8Gwo/lJSBz1+eZMenSwe33v2KIHYhlBU3bKPEjk=@lists.infradead.org
X-Gm-Message-State: AFuF++msgvHPRPSCCaUs3W+aW9OP7qctLGtN/XSFbIgzSKEmpdl8sNGk
	WgP0cbi1OQCUxLFPINpZNood/CteMeiqzJbf69J/B6eJgvL9LjIgVjeP071qU7rDBEOj5cgqN8L
	l0WX8Nnzm3FAEgKes/DAN1RFdSeKIcH0d0naGmaz7UG+g0v6PQexQku0Z8Gb4249Fo0xs
X-Gm-Gg: AYBFou1OjSRMro6s4vsbxbxkK7AtBypszS63iJRECt/PrVZ7JVV3VpRgS+549CpI29E
	3VzJOdZ+JjF9p0ZLqfJ9p+dx07QLvzUUHX7Vrtlj05/l2mFGaO+ZpugjvtYU42UeKu3ZXjeRMah
	U3H6ns7hN2dxtDKw9JGCCzPDX1narDWDF2VWlKGTcK+ys82LKs3CFbP4KeQ0qroEPSSrNN4o4L1
	D9J7is1IS1CN6TVaiytsnXrATh6rQEKVqgwT18lP4PwDQb2SM6bzX/lcbIkfwlB7dhbHcRBNGxP
	pSHBtwG2nWZ+pciLfFmgeyJIPIhS6RsAMoKCU9jC87EuyCssdNAnyrA/eUx6L1x/D+GuMrqPOnc
	en5e91WszDvP1/zwtQ+ZrKekwLg==
X-Received: by 2002:a05:6300:6698:b0:3cc:9620:5816 with SMTP id adf61e73a8af0-3dd8c3fdecemr4853634637.8.1789727993698;
        Fri, 18 Sep 2026 03:39:53 -0700 (PDT)
X-Received: by 2002:a05:6300:6698:b0:3cc:9620:5816 with SMTP id adf61e73a8af0-3dd8c3fdecemr4853595637.8.1789727993282;
        Fri, 18 Sep 2026 03:39:53 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c286d98e7sm4020702eec.9.2026.09.18.03.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 03:39:52 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 18 Sep 2026 16:09:08 +0530
Subject: [PATCH v2 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS
 controller
MIME-Version: 1.0
Message-Id: <20260918-glymur_ufs_qcb_enablement-v2-2-16619f7e36a6@oss.qualcomm.com>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789727970; l=1348;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=nVeQof90N9/+rn0tz6Y5h6juwjIaGy0PYkqqWpXw4xY=;
 b=tIxVVF2E2+L4AZMiprhTKBp6wnn6lCxQZHvLvhV2ny1iCX6mz1OPVf1giFMtRNw6dceFzwoYT
 06bYt+zMfa0DYxgYH+yjJtZWb71cJEcKQXXWfFaxI+rfBvfemyYhCef
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfXyMrR8STPmi2s
 nGS85k4irf4dXqdOUu8zD/XXcSZ2a7zeevKyJNGNe9QDQ5w6YcOxKXs+A0DN5QLY93QgHbHOUNV
 6cdOZbrrLiOrgVppaxO72l5WW11iuHY=
X-Authority-Analysis: v=2.4 cv=IOWXmQvG c=1 sm=1 tr=0 ts=6aad14fa cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Fvqz0uoX0QqgC4h9zMkA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX7/krr3p62PBJ
 lpruK++/E4FPoTV61rCqIoY3+9ICSBi6Dr6BJkNGkAUqEavmwvHBTo0KoG31yfdkb4wmo7cZYaM
 5yyRyjxHOKlY+OgU10+dRRAwowyuKn2GwlgFfbaF5fYy+1+mD7LU2YI1/4GEs+24nSqsnxQ7TmB
 AbJM6oXr1Xh6H8iW0zBibgJU4dJ1pOeOGaB9n2iBVoa4IcSRgHx5o3T637YYBg1/I/15UwaOAdh
 PG9YwQ0kdiCeOKDQE07HX5FDXp3kF88KE3uVsEE7jsU9hWNlMwUDFdSiCYS5KQTOoKtTPqYYsDG
 CokI6uQUThA0nJZpAVvDAjvjxHbTyOHf9ZY4VfeAf+iJgzPCposboqv6tPKnnGqhsJNo7yKKxpt
 SL+ODeB3BixFnyZ4VZWBcHiIGM3OqJ5OTqKeOt1khDqFhcuxYmt1zmvxzmlAA5Z5/tm/+5Kf5s2
 YCYa8DHzEwKU4g+N97w==
X-Proofpoint-ORIG-GUID: 0duZQEkvd_7riIR-9o4zHNx0AI9spKZv
X-Proofpoint-GUID: 0duZQEkvd_7riIR-9o4zHNx0AI9spKZv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_033956_203736_25807224 
X-CRM114-Status: GOOD (  10.39  )
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

Document UFS Host Controller on Glymur SoC. Glymur UFSHC has a
multi-queue command (MCQ) register range in addition to the standard
one. So, both reg entries are required.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
index d03295806657..f132b1a9ebc2 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
@@ -16,6 +16,7 @@ select:
       contains:
         enum:
           - qcom,eliza-ufshc
+          - qcom,glymur-ufshc
           - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,maili-ufshc
@@ -30,6 +31,7 @@ properties:
     items:
       - enum:
           - qcom,eliza-ufshc
+          - qcom,glymur-ufshc
           - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,maili-ufshc
@@ -80,6 +82,7 @@ allOf:
           contains:
             enum:
               - qcom,eliza-ufshc
+              - qcom,glymur-ufshc
               - qcom,maili-ufshc
               - qcom,nord-ufshc
     then:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
