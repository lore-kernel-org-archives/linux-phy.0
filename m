Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7721CEE6428
	for <linux-phy@archiver.kernel.org>; Wed, 31 Dec 2025 10:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sp9onvtkhSQnFYXq4mapG7MSPActuQxhP6hJg3ihUfk=; b=4QtYMz8HbMyC1l
	QfMNCjnzgamLnH5GaH9wEuUbsvhe44pCNYWFRX5SYaXtDH4Gb/S4AQebemEvdOHpdiHQLMuNHthd9
	IqN5zPP+PzBl6C3yKpok8TPI7DQGKXtZvWeic4dqugM/6mN6Ud0gdDdDM+XeYwDkaCbvSIs2DiB4/
	KHWSho0IVVzLj3NbRjrbTlVtJcL64Mkm7zFVme4ZtVEprsOVoR1tWgaJr/osxrd8FpMcZmbg3gcKw
	f9a/em4RfV8Zo6SB5vclixxIxeV6lUZCUfX7lf5cpBwRqMyHNwDYWV57Rv+HmTX7XbJrNcYCD59jG
	ZguoN1q8Zb4QSSjxWTtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatJo-00000005sgF-0lLT;
	Wed, 31 Dec 2025 10:20:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatJm-00000005sfr-0Rh4
	for linux-phy@lists.infradead.org;
	Wed, 31 Dec 2025 10:20:39 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV4pAcf1430889
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:20:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XEBcPcSM6wL
	bfxhU/wplJRdk9eCPONJKwsjXMmZ6BuQ=; b=M6Kpw0o8LU/d0DRvKCHV2VWmXQl
	3vI7S2w3Wh1nfSKvprafrsJVv21uU/xbi8dmPFuG7e4a59uEN82DwZW4smuhfntl
	vH0yzsCRPEq0WgVCjQznFasiE78mzduNrNMxVCNoT287JuIoDvv5UYHjVgmYI1HA
	2J4NuGTWVk8YB67/KWTWTt9/Jyo9kiy+VpyGNOJW9S9t35TqMhxKafU5yHH+AHdZ
	fUereK8DNMXbgC0P3j83He339Zr6ZKue1olI7chPrGUEHY9doVoiYvRgQSHnXuyT
	fjIVDBWOHFEUgB5sWi0vqOrfN6WNeg4DoBqUtvuDLZdpGiPPOWvd8dZoouw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcw5e0j7b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:20:37 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c5d6193daso21067583a91.1
        for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 02:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176437; x=1767781237; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XEBcPcSM6wLbfxhU/wplJRdk9eCPONJKwsjXMmZ6BuQ=;
        b=M5jrmiEFi8GDmk7WKKESmGqxOSMOtaSHAWGJo/WAJ3tPb8Db5v5ft/XXJj4yX1OPUm
         8A4Be2QPTgn423GqtkrsFG9719KcrZrm3QPyXF54rVP5h1/aboUT+nOKi2knxEELs2pi
         VBdHLPipclUEhz2/BSjOYCbIGfR0zFirbp2GwF1JKfoJuwy/XorJdzUCgSNlh3h7NQCG
         uipcm21m8x437wwQJUH7tQFWGkRUHFTo+XKNdlrkj4MOhjuxuzID/c7gWIihcttOxzWA
         sST7AIAV5bT6XrTzTbF8Cq2ZHxLij70Pwk/euntTWArN1v36KAtk4yozwSLms10iuSvQ
         /+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176437; x=1767781237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XEBcPcSM6wLbfxhU/wplJRdk9eCPONJKwsjXMmZ6BuQ=;
        b=NeP3KO/yhX3M1L+KZkijUJoiopBYEPIoSxUtFho/zz++yLyw3T6tDLs7ARGEii23YX
         eWSbyIhLZUQ6q4RnYOBzQGLWN4VaykEcbAD8Vc+rhXr9OA/DVXDPkg8T61iwzhUP3eBg
         w3ol7WBLb0v5RXpr/A72iviUdFC+7pfkg8ePJRbBErphFo/MYYBfXSzQw6gYRpKToDwG
         W7wkCf5lnPMgMtNcL9xLM6usi5hnwgI5V48rDGRBbwu7hg0zwaZs1VdAl3WQYMXA1y7R
         dRhh82LCcksPYUBMWxNZvsVbNvzpb/o8Dyw3qeA3OBlWCGwyK+4cDyNcE7suXCb15C5n
         RbDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqz29EcBA1T3BqRRDmjmlwTkAB4pPzjdZmq1p4ue8+Z2fDxhJ+0RveY39JR9B36yJ3fHunuqafNxA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZt0m7cwkgarZAY1efiDK0N7ebr1MUSpmsF26ZiVBUHAbv5gOr
	x2QYoS4V1HGWsO79ARTzacUQ6QRe844FO6KZxOSN7B58vsxSodpdTmmlHeiqArOgOImIXyEv4QR
	co9mzNzX7LreOUd51ErkfN/+0245qjPdjaRhPa/GLdVoPvk7AVkZdpFxgtglaLGbOpbaw
X-Gm-Gg: AY/fxX53amNpcmOZ5PW/6JOXTvwWBQrnlH/kDP6JzJ7SVOwrlK50vjgslNrimmD3QnM
	TQAaxE2uwwCU+0i++zCfP3+MofxVCAl0GdWWaM6pIh14vnmdo/shEWiCsrWNr3u1Qk1BtGjXghy
	3S5jO8uxF4hu2b/e2jhhQ32jyfajEKYKEdzMyvEeS0FcBxjtYLgiXsMHEXT4pRdnBPbDGDrTCVE
	nc9lLtWd6ewcdaNsrOD5XrNw6CO1sdlSq/4d0gEDBO5SPyY8JpiCjjs+ra+JHjQ+1N6jpmkI6P9
	IA0o6foikuMm2UjgXrFlTx6t4cI91IYE7kcsVU5f2QT/wLdpIcp5uLE7cywESKuSuPrOfXmGEul
	FKBQ0udbqGgWlXrWeNxBWyHB5EZ1Vb1YXK57Jz6zpOzuPsay8A3ui
X-Received: by 2002:a17:90b:4d06:b0:340:ec6f:5adb with SMTP id 98e67ed59e1d1-34e9211e593mr28730557a91.3.1767176436729;
        Wed, 31 Dec 2025 02:20:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEjlJBqSWAvJiTfFnf3s3JSnAtH+WdrtcyGfKYTo9ybrSfp6uxtjPPOtWE6yRH94zddL3hRw==
X-Received: by 2002:a17:90b:4d06:b0:340:ec6f:5adb with SMTP id 98e67ed59e1d1-34e9211e593mr28730523a91.3.1767176435623;
        Wed, 31 Dec 2025 02:20:35 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:20:33 -0800 (PST)
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
Subject: [PATCH V2 1/4] dt-bindings: phy: Add QMP UFS PHY compatible for x1e80100
Date: Wed, 31 Dec 2025 15:49:48 +0530
Message-Id: <20251231101951.1026163-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfXzIH1Owi3LpDS
 0cZIUVyD27qh/THYU3Sk4z6yi0Gxy/PrTPME2szCJZrGo1NOOuv1bsfpHuBBHOFdWl7PfcIXx5h
 SH/NOW5ZYh5GNEasxDyamf422K0xPGhGVHG4a771ech2gB4fHVLum6GhF3G3qr4mO4aUGwYUtJb
 imvF70yxU2c2cUaApZXukn5XKdIFeIGSwsnfxOZ1GRdYIwdVhnwAdBBNZ6kFTgeddQXJVDiHWuX
 H5mh7ASnIeSHvUXWdpI7mYlxXhL9ieYQXy/PPuw0ppFZemWEchHKqc/gFwLUKQavRzgCbC1HbUt
 kq7rCwl0BBBMTDK8QLp3WEd0/r7dz3cWmSbHeS798McflHKGIZBXnUslZBKhbbGrlUvw+trb9EI
 iHa7OvUusJRPlgZQsKtsIxoKKezdr8yQ5UjbmvQ7PMAJdBGmOkXeVYagh9hyIiTYMUrzPkNhosS
 Qu+jVaIl4tQ1xFu9FQA==
X-Proofpoint-GUID: KcZDHsjHm2MA3F9751HcTx8DWZxDwiJT
X-Proofpoint-ORIG-GUID: KcZDHsjHm2MA3F9751HcTx8DWZxDwiJT
X-Authority-Analysis: v=2.4 cv=Mdxhep/f c=1 sm=1 tr=0 ts=6954f8f5 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EoSPSCKz7Q0euKVW9XEA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_022038_148000_5B2A0709 
X-CRM114-Status: GOOD (  10.06  )
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

Add the QMP UFS PHY compatible string for Qualcomm x1e80100 SoC to
support its physical layer functionality for UFS. Use SM8550 as a
fallback since x1e80100 UFS PHY shares the same tech node, allowing
reuse of existing UFS PHY support.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..552dd663b7c9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -28,6 +28,10 @@ properties:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,x1e80100-qmp-ufs-phy
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
