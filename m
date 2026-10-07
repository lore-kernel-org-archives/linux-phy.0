Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18927CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPv81wi4PW8b6cWtLYTBqW2HXgEXjXuc5LD7U6G+/Xs=; b=XedBo36u/x4m2c
	B3F8lhScqSAF7aMYST3tn2MU0TWim0xoe3WFCcSj2kIKO1oHyBhYdWIT0ZstebReZ2DFDibBAKMHV
	fCcu1FpG7TOvK+A+BB/rpw0Y/uj2oyZDTRavRKoPWhWLydiRLEJl7UUWWQlQrw+Pdgkn6jlAXYqo4
	DSZwwynGwkWJQRcr9lMi4Ht+hblZr0OjSMsDyTssTYrGTq6wOkpreVkX0Nk8l5r2dxNBeRSkQ2YH4
	0abuB4y00Hd5za8VmMh+z+KAiapLQXh6ZidnplUDOq0kcp13H5ViptwPRSQvTtCzgylosiNvaWEHd
	ZmpZYgyCz0yvw4FfRpZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAM-00000001mPG-35gI;
	Wed, 07 Oct 2026 06:30:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAK-00000001mOo-0Lir
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:30:13 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974U5Br2916028
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:30:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zoubIOEEzv1B19ts4zQ87qyfocZpDaFj8gRYk/9R1wE=; b=TIet/CONig7AtF/B
	2v7PGAl0tECSvmiuV/+ovSoz3rdEARorNEBFitEDjTckJzpIl3dvDw7V+De3Tgzc
	4BRqFxvEQvh01VuzIElGWfpqeij4KyYIjLo3VOh9d0IrHrrymYj6hNyzzz0HyeCD
	SrJEXyCyTC/CA4tKv8v+hLyCUiXG/XsHeAXHzVk5t9F0zX7O1PwtBtlTKTylAU3E
	ki9u270KwHPHffXGpjY6Ka4/wJwgU4U5On0nbUT3cYFwML7OHto0dBXDkfC/Oka0
	S9ygVopEYPn5NZZbJwhKAJDY0O+FIRaHtrIM3BKVayikQz3sfm8/Z/CUjTnVLbxB
	A1FjIw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h54622tvh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:30:11 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc7d2ff0087so2624116a12.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791354611; x=1791959411; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zoubIOEEzv1B19ts4zQ87qyfocZpDaFj8gRYk/9R1wE=;
        b=c8f39Aoxkfe5YerOkMppc9tDtKqSOFpmSn/P3ACYCvyXQ/YQK29tr5s1Dk+gVXWtTz
         WFaHQdgMNVx6KbaBIf3C01fOmLFFqkvfNEHfWKfFb0/CLTxZF/Z0loUqLNm6i/THBQiR
         9T2nt/GjMIdF1g8uxje/mBugRDQo3aX29tK28PSYk3KYJTM9UdQsCMCCZ+mk89ezENNw
         X9MUzQKdgec0DS8G5XmDjXTIgkq4YR25ER7tMgyBB7jmp9oS83LLuf/SdBof5EwoC4T3
         NdYnf4DDW5I/qyVfTP0HWnrAe03oBMkaMjPz+hWzlz+OvgEed4r7XO2n50Di3b8FnZMl
         ayqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791354611; x=1791959411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zoubIOEEzv1B19ts4zQ87qyfocZpDaFj8gRYk/9R1wE=;
        b=i3kC+hofBvqNH59cDrREcofXIlXX2/dcjcXCIC6jaAJ+5WENTy+t3NrGFWLNWMTP6A
         aVpfuRx1HIyabNSnDCng3ktvPdxFOf5aQNkA646v30Sz08IXCrZEQo9Lig3O9IwrTXuw
         yqDTQTmOv35p+jhNq234zybQq1O5cABqPTIPz7w81KvcuMr1wBbPlhfVwLjD2EKiJ8g/
         CGC7Mo2dWfGkdtLM0tYdxYk31jYC/TeUdPuG/n5E+6NA/dnKemPW2FYmxUY+nKn/MMqA
         mL9K/oN6k3mSKWevt1O2hWbajExXW/tQkWuVl5Dg5W9k11BtimQUjCRN5sRxUOGro4CE
         6onA==
X-Forwarded-Encrypted: i=1; AKwUvBzhArDAwiX4nZRO51xeTGIoPMPIZ3CGLKC35K/r9HWE2YQ6Ynqz/EkoY10UAJkoDzmsXj8TWKzDkDk=@lists.infradead.org
X-Gm-Message-State: AFq9FYIxXf97dU6F/PQVGRbU1Hh+ZyO5zsWoMVTjQOoi28rBlQoB6pLj
	lwGM8Rwr8pFCV+MEjvMuGtDWKLjRU4f3H3iCqAL/dlhASJrVApCWJBVHsyfuU9M+ZRV033dae1L
	eRCNr+0TvUBT/rrajH3kUlDgiPam9U/PE7uq4fhE66BQ6cbRZQLbegnB0yTu3dV9Xr2+i
X-Gm-Gg: AYBFou3qQDdtk1MkMf5xFaW6Ro2kjo+t29in/NpElVKTrYw0Jf7HOAIJ9E8H8MBctut
	e5JAaorCd1tSQylZoGL6QLCEmKVwV1feRiGAupMSR5q7g90QeG1Ef9RS8GCXiTMpGeMOCCMQJ/m
	LIyEj5hXgErMdM9TkBxyzZkuN8fS7emhonDmh6jNY648JwPno16Q/yK/Z6oqGKQoFq1HJ3qNQxe
	Ea5eMNPPMX7jQ7FHyRneOM4JeicgO52GNlCyjj3F8ESAth+DeJda+EsXHAGzkfk/7c8p9jWM7e2
	V9nNT/nwcNOIPMRTPxnLA0+j/0L3uuxShXXli6NFg7bQDcKJCfhfzeG8fiWRDavA1F/oEbDXxzr
	/VJ7XGDJVNTvQWs6l/UbSg+pd5g==
X-Received: by 2002:a17:90a:1581:b0:3a8:c0cd:57f9 with SMTP id 98e67ed59e1d1-3a8c0dcd11bmr41628a91.25.1791354610768;
        Tue, 06 Oct 2026 23:30:10 -0700 (PDT)
X-Received: by 2002:a17:90a:1581:b0:3a8:c0cd:57f9 with SMTP id 98e67ed59e1d1-3a8c0dcd11bmr41595a91.25.1791354610125;
        Tue, 06 Oct 2026 23:30:10 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a89ab81bb0sm2972690a91.5.2026.10.06.23.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 23:30:09 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Wed, 07 Oct 2026 11:59:35 +0530
Subject: [PATCH v3 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS
 controller
MIME-Version: 1.0
Message-Id: <20261007-glymur_ufs_qcb_enablement-v3-2-84cf4f861415@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
In-Reply-To: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        "Martin K. Petersen" <mkp@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791354585; l=1442;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=r5vfQeN+w2+rs5PzLPqAbbwdW38watpgr2ZY3QnCi1M=;
 b=LWAPfyUHD/4HNyS4Ef0pdT8IssM4Wdd2mxGj3c1zmeM2ln+uM6ccnhwYAbiH+jzUPDZxRz4J4
 assC3IcQZiNB8/ufVjAWX6ahPTHC586lyxSXcUS/fd7k3rL5zptEc2j
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-GUID: rz7555F54Cj7NGvN7WMYcHU9Oj4yB6DJ
X-Authority-Analysis: v=2.4 cv=ZZiIpcVA c=1 sm=1 tr=0 ts=6ac5e6f3 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M7MUb3q_Ox69Zn6kGXoA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX2ybFYc0v4Lkk
 1a6HqlV7uRPqCnuq4CiOUysusKti/8QVLFSZpffk2aTY8Ty2jplBrETTb4UbxNU25qdrehAdqse
 EFG2kY8kLIPvtKXOqrLZ5c1hv1TumFQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX8VklMGL/nOop
 oSCXSE8HrEPpNMh9nDZKGeIIvSePXD31DarU3saHKhUiTeBKkPKW3uORCsDgu2gx9RJYHN/nhkI
 M4k/AcFtnj48Sdyo0qmfGSsWLeHO82hFLWgGAp5iPfwwsHVoYJUOcVcZ2mP1wxetfJisqCerJZC
 dbj9VsRR02Fsj0ZI2LPiV+bpe1qEa8Q++jmOWwwUNmwxk0zpeA/MjoxxEH3GhGlhsDcU1hs2NZB
 JYEwZCMAvZM2024eiWY+qj1+P0FtBtFasOuHzErHanbxo1abqoQ/8dw7bnAyJHcNE7v8lXUg1Cg
 pgLw6NeSnjWd8YzyK8sMRg/NzYYI7RP77y0N4gAJngRCG1HREp28untw6daZND/mtPioiUimhvv
 nu0AM154CgQayoN1TkbKqSnM8gQW1k7k58mN9HkUDSikCO9YuIVWXK3QnQcfHusM4hnOC++uAYJ
 0aYwMWWdOtKgrjVdTlA==
X-Proofpoint-ORIG-GUID: rz7555F54Cj7NGvN7WMYcHU9Oj4yB6DJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610070025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_233012_140183_82D5F3E6 
X-CRM114-Status: GOOD (  10.51  )
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

Acked-by: Martin K. Petersen <mkp@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
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
