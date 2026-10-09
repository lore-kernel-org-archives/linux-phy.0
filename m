Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F409CA6012
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPv81wi4PW8b6cWtLYTBqW2HXgEXjXuc5LD7U6G+/Xs=; b=PjmkRLvfInP4bD
	sfJeCgVxcQ95myTKKDWyUG8Zi/Fo9ZIHXuiBrQdHUmMdgHgf55vjJMwFKsrEVdqqM++mQVMbGB8zc
	48m6wT/eZHYqD2RgdRYSajj6YchZnUbqQn9KL1iOx+dUc6ularmx5KPTmZ82s5aLKwVhQhWxtz/HV
	Uv74AeGm/qiPoAkH7TPv1mKsdPXOvy8jkuQwkeuN753Uz5j3tyJDWKY6+gHnIdLi4b0s5d8WG2WRE
	+rv9RA9ahS4QS4fNqhOhudbUNKdsku1Oj/EftivG7dRuDXBNPpTX5yGzQguJiZDIRFRksgWPJvhtt
	RHv+rolRpft1aeu/9Ipg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7xy-000000064yJ-38cu;
	Fri, 09 Oct 2026 10:36:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7xx-000000064y7-22w4
	for linux-phy@bombadil.infradead.org;
	Fri, 09 Oct 2026 10:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=zoubIOEEzv1B19ts4zQ87qyfocZpDaFj8gRYk/9R1wE=; b=JJRq7mElVk4YK4wEkv1wFGybOy
	jlKT/JAjE+OX0WT/u74PGSMHxD2OKjqO5e6rj4/r7VhHw3a5pi8N1oo+RFztxOIYqZfNcDL7Q92qe
	EwZ9DdytZ9VT7GZdvtq+aYSXA5vtWZExWl38Zz+dcVS48xPUhpRJGRxUpWdBEfnSBpY3EINb0aMpA
	jwm68SmWqpAeQSGI+Ylfd+/6tOFSsFmeJKRY8GqfnfRLFt8RIQ+gFb8fQjjdof0SBIlPAYE1jC72B
	MuM6HQBK+UBuFFk/FHtru2Ad/F0yGiQz0cTciT9tX6PqGQMLAZGoZpuwHdEGoGtM6wYCa4izj353C
	y0PvallA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xF7xu-0000000B8KQ-1ixx
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:36:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KOkN3977815
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 10:36:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zoubIOEEzv1B19ts4zQ87qyfocZpDaFj8gRYk/9R1wE=; b=gImKhJCyBDjUFsTZ
	AnFL1vgRF0gmuT3DSjK9nqu9hvyWZZuCtBqd6ZaZyUN3AmoV0a6Fwuoc64kqXJmE
	C+ArL91s+euIJHbuZFAMIXCi9ujqDh6+igV41zeXxibkFdUCihzaendHhJEDYgNJ
	RKKDypu3i9Q+uAI07CxK7r6TajjioFVfDXDyxBJauNaFXkHdfneZblizyklRW5Dw
	woKlcT3a00E5c5lxgAgD5BEZeDHoiNs8s5sNaSphlbhEqWQCva5kYSvJCpC+yUVK
	LCK9tKwXpCXmbGJ8hOZR96YrRN0njQJMDXsdglUXKMf6CQDkOFQxndsGssZrlLXG
	MDatTw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6ev5bdms-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:36:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc42a07d04aso4276596a12.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 03:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791542194; x=1792146994; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zoubIOEEzv1B19ts4zQ87qyfocZpDaFj8gRYk/9R1wE=;
        b=gGDt5QS2tXFchgCKeL9Q3+mY2Ebsfeo0oiO8PFHcqR/+9gvvPmIlNcvMXQYpoBn7q9
         2ZjMXN/JUM2LIG+1Tbwlm6OWndmLx+V4YTrMnsS42i0Od8cZteuAEJ6to9eyN0T0UNoy
         nXRAFujYUCrUZbgDd/ZsikKP7T1669uCLwf93p/sOmeQ/l8etzNEghw2TERzDPhPBugR
         lFz/B7vgDIesw9GZiCsPEGTZw4CpTEZwX+b/8FBgcSxYtzCUsp2oBmzHnWBcFs+pNg9D
         RovZwzPmE54cO3lKI+yoaTO9sWVQwssHrD8ZnapQ90T6NG863x8vgBDlUs9FGanbv/Ps
         yWQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791542194; x=1792146994;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zoubIOEEzv1B19ts4zQ87qyfocZpDaFj8gRYk/9R1wE=;
        b=MaI+PlO2rDFHtThU8nKbWIqie+bbne2Qcn+EJ6I+o7NZhX9Z3IpqJ4Kh9mpc+9322n
         V0GgxgjVhYIaCDJynx/dnKU+BWMbGdVpX/jdKwTRfgtZNQiGSBksV3yrRscJ6cSw4rFN
         oQIgMuVJRPozdna8jdTcXcUxHpNX4zmmuIKptiqFRMouQc8aJv+AQ9c8r8nwB7Vo4sxU
         4WxN1mo264ii1y/9n5sMxfWFIgebQz0JOOwW81XocJ+J8pJk0P6bGfSjq2JHHy0sBcQx
         H00Cn+mpM4KbAQB31PsdTsYvdmvtxaWzv6aXXa2+9O6zQR1U2h5TtZ8PGXugYBSAdatG
         Q9aw==
X-Forwarded-Encrypted: i=1; AKwUvBwaDJg9QFgJw26TxeWzb04HQI7gWGx60f4Sh1DyGEc0geLRltTzsN1HOmXEKl3iR99d/iP4HmqdwuI=@lists.infradead.org
X-Gm-Message-State: AFq9FYI8M3uCtb5QYTVYYrD147ujWtE6e7GeGfM7xoyIyaBHKmLRGQJh
	gAt7szFP6aq+pH8ua16rDNWGmpqkrFPVgOA2MSj+mfw7uuC7xRn2nkxpelU4jzn5X9n1rcMWGuG
	iVRqgBvOSbdmxOjGSTmz46M9cYQlnyry08wDkAb/gY8JqU8oO0Y2TQPaHI7D/j7yUe7Dt
X-Gm-Gg: AYBFou2RehPpiAcE0jz7Ba4nRScIa6mJ6hlAdPVt5t4ikbOAYoIWiGmjQ6Kttu6SKna
	R08ouFDx1PjQBoiLeMRrpR8sH1eoaCZXbK+6Yk0mWq0LwO/vCLufsjiSWTdIYXCBOrc+Qc6kzvS
	Mt1sZgG0Ls8H+zbS4w8rXXZn3cWRhiWc/oTT1XJh6aUMETx+kiA1kzkpZLNpF39aMvWrdCf+lAd
	oOmccqKr/aKbC0BOnWUXZV+F/0YU79CQmtCK1UcJOpeUkkw2sfOlhkf1On0ml3g7e1EAEr1ezyb
	kklmzJFHWsENqb1j7QUaSpbV7TgeRistTkDcPnepccyjXWdYkaecQZ8JvBOmxdh0KbQGDek7qts
	P935bnquOZQC6X7FYiP3t4uuo
X-Received: by 2002:a17:90b:4a45:b0:3ab:2caf:c098 with SMTP id 98e67ed59e1d1-3ab3a32f5a5mr1404466a91.7.1791542194181;
        Fri, 09 Oct 2026 03:36:34 -0700 (PDT)
X-Received: by 2002:a17:90b:4a45:b0:3ab:2caf:c098 with SMTP id 98e67ed59e1d1-3ab3a32f5a5mr1404437a91.7.1791542193697;
        Fri, 09 Oct 2026 03:36:33 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab371c32cesm2827285a91.16.2026.10.09.03.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2026 03:36:32 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 16:05:54 +0530
Subject: [PATCH v4 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS
 controller
MIME-Version: 1.0
Message-Id: <20261009-glymur_ufs_qcb_enablement-v4-2-9a6ce83195b7@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791542167; l=1442;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=r5vfQeN+w2+rs5PzLPqAbbwdW38watpgr2ZY3QnCi1M=;
 b=fV4n40BYRpXRXe8RJVJkcWQ67GcGioRzd3CG/J8XZOMeDI96lgqJatsRvp3/LEec99e8phJTf
 xuRV1Xb9NTmC1gUk+7Mrjud2rp7Nnlj6hkUkAak405x2y20oK6iMmHm
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfX1suJX3r3LSnM
 OQi3O8BR+4Vw84XtfHHkCmdYFISoSPzd98j75peHeiC1LZevU1aLzjeuJIa9PS1QioXXXGE0ZmC
 aSu+m9S9bwlbxwZ6rhuCIHkRuSK8FgM=
X-Authority-Analysis: v=2.4 cv=MMT1C8Zl c=1 sm=1 tr=0 ts=6ac8c3b2 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M7MUb3q_Ox69Zn6kGXoA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: d_j9OkwAVVoytu-kciPmtqp72Hc8yg-g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfXxVLWvDTkt7XL
 tA8Ob+wEnzFuU645CejBXdV5XCdKO6sgzHucPFGyZkumcd3xYZMD0zKbqfc6SrtYmP6VJ9th4NC
 9/xgiUI4LkLnUj5D+N9MoWN3QvssP85S7gXC0A2C5sylsbwli+djxjh7tXv2H8XdkVHPlxk+jaF
 KccD8/Ibprjb8Yuv6JNPJ9MDq63g0fPbd+vgpz1hVTi1bOJNjXqV20/rY1ZUFr8xDEQ6EaORRQj
 amvLJxReCjQxmz26djr3ngwwgXLcY6zaDkfWotQllWKAng1kgAlWtSkZnf3aIKVDUsAy+ZfAI/N
 n+veNFOxz75Ip8Z2Xp09WOryDY/nYTwc8Z+RK0ZUhTYSAHu0tS/QO5Rbs9/z0T0ECF3vhWIFH1H
 lRi8YlaINLcJp0X6b97+Au7M8PBHnXmnCNGYQKuIKzaP1z8w+KCtd/3MQaJZgl553CvSbqrfRd5
 IYribpaCQFflC6bfIzg==
X-Proofpoint-ORIG-GUID: d_j9OkwAVVoytu-kciPmtqp72Hc8yg-g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_113638_981580_7C5C2289 
X-CRM114-Status: GOOD (  12.12  )
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
