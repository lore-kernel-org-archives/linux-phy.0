Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAD4DCAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1OzTSOwNYC+dL90Gk098uJy2hSOwYnCb8ZW92NjiEM=; b=e/ukWrPLsHAT6w
	CvpkQ+urDJ4OErRxFZd1sxSFG4eL+kLzjRUOWQE+bagBWvMHNhL2p42fkwKJROC9mo+JxlyZwh+mV
	r9u0ppAc9VBRy4xVW4wXEFbpEcW10JZ/Q+nT3W8AwV1o3JBZod5cNh22q9+AGZYKvbTC7ojMdWZ1E
	qkJEVE+upQyWgZqIBTcfMdrKxo/vAhn7aA8EMhjfc8NAjw9GB1CE8JKgqjq3RhhDZsiN5BvqmnhBR
	9nsthYxQnNL54g6624iZA4KmnXdb619ciz82eErEh0fXw3cOQZtOLRWRbHXJFxNkprEtJU6SR5F2o
	u+AvSp0c+qaHRB2WbL3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xI-000000096wi-1uzJ;
	Wed, 01 Oct 2025 22:05:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xF-000000096u7-3fqq
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:47 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcRPr006173
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=m8PBNmo3eyDlXQAQxCYjNuc89IY
	dD4Y7iU5etjHZ6eSWWUsyRRMfSqwJ58XwUkvnPFiGNVJGUGDzrXs184yad/JR7Rh
	CCBPHSqnjTiTooIOt0Usk85xKZH+tvR7Hb2UUSfSOJ6TZdAaxUuYUY9nZDJlCgxi
	a9AfzDqMcvO0NC4ItA5eXfqFefjN0OJIM3vzMwxETCpp2A+Bfk9beXEH4tCZNTyU
	Yuxbp/pXm5OMGWsbOnRkOGesog96sX24Ae7fTExvLMcqYtOgbAW+OHKLLrtfy0vd
	KdURq7l2Mcu2pm5whproNNbPEXelBSLXr9UJ8vjPJRvIwRyCOdueAvLaGuw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851p0pq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:45 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-336b646768eso445637a91.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356344; x=1759961144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=diAfmJII6RDS4JuTyKPdBojV1Csu2w4cIK5cOmyupTBLK7obv1M4fTawQOvNZCZjK2
         tHfCjUrTDhz4+xAwmlkiNQJIoe6gFGRfOZMEgBCbsrnUuR41B+MybeuAYQQrMELI/u+w
         ILLjM4OHsbm8ba04ePrhrU+FMLbjDyyrW0MrQ+3V1vFRhnK2DP/DkAarbz3Jpoati0pJ
         a88vdFhuKQqi6C9rcvghe8laCdiLFn/mgafV5fjtB3osD15Db42mDMpwNZslZn4WsGup
         RTT7QVHw1e1xKzl/8LqWss47X3wVoFi5JrC6PxgyYPn/ziFnnoBN3HIP6Xs7+VSFmX2n
         NkVg==
X-Forwarded-Encrypted: i=1; AJvYcCVfgekwpKgLAFeMUYh1Z61CcrlDjZeA44NYgzKqiaR2HFUysKR2lmdF4dLQ2PTNdABC2/WuBXAi2cw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxryZ2cWEIrCsqdBvZWvP7D+MeJtAFyFq7L/1YC+ZVFnm9XWqxM
	ZMDam7X8Kw5emyk3NuLAffyXWIdHWvlamJcXt51nQhAyh6dnowJOtivf/8M4/UJ3f7ELJGtTBXX
	vuQ5mjcyg0IY/2qKeXQ2q7L6A56O/R9bdluXwHHruwyPm+FjkAEfZHCy7Fw/5vleM+GMn
X-Gm-Gg: ASbGncukq5eJx0wQcPGBsEcnIemWo5Rve/TnotZ/Q0Vgrinfw/dXOwifmPY9xk2HFSc
	RrNbGr3Qf5RRyHw8SCrGxeZ4bnI9F384dt9ryOxypnblVWjE20GbROGEabnRJA10TOzAIeNMgq5
	vZG2IG4zaFXKUf5BfQRPZc/S7F6ZZ+aoVcPQrbEbiKiRaS36XHE5OueeVw4Oy8b7aBU6MRI89+y
	R7t5RRLfIHvjVgbuIdJcMWfH7t24k4LmOMW5RSNIYpOq/Y+9EmXwQ86urh61mMADDBwOd3/Vvyx
	76xud/yPV/QiwHyrP/onBhULbAxSIUljUGBgjuS+wuJgb0tvZWMbazojqYHOs1cctF4niYAxLTR
	Pd0wtqlFvlVPcRQUz0esiLw==
X-Received: by 2002:a17:90b:4a87:b0:32e:d600:4fdb with SMTP id 98e67ed59e1d1-339a6f37ce0mr5612390a91.18.1759356344597;
        Wed, 01 Oct 2025 15:05:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwA03IVPTcB3jPZNykUMsai4acp6hXfEk2fjuAdlgpyO2JlX4KBGXUh1TStolV8ltoQm2vOA==
X-Received: by 2002:a17:90b:4a87:b0:32e:d600:4fdb with SMTP id 98e67ed59e1d1-339a6f37ce0mr5612350a91.18.1759356344166;
        Wed, 01 Oct 2025 15:05:44 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:43 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Wed,  1 Oct 2025 15:05:29 -0700
Message-Id: <20251001220534.3166401-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dda5b9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfXxXBeF4PKZHz+
 n142vFQWEf2NMdUhvnKvJetq1Ycjt7Jsofdb5BwCnp1VZVxRG8NXv81cY+/AUBO+nhhM2rOHoUQ
 saF5pZwjE0lnUS+61F8nm5QfevSgg7p2tliZF93gN+I0uOZapiYMC/CLrF0Ho+zeRK440JYH6pT
 5P8FZq187j4IaaIXZAaLeOzS9cNpD3/BALnG9+5ZvoORCv9eDPvU2Lmtx634i1VixYs3HNS2mmK
 tlOdcS+HR+9cDXlxTby37OX0CXBCrb5McECsgIdpwdc2QdauhjM1UAwGxK7Tw+haJ5LnVcdtW79
 DbG7jYmtiaZYrn4PJic+q8wwBWGvFCBrq4BIn7E0gn8hy60RUUjAJF5UKeVHAJCbVH8MTAc4slx
 LoOg38kOahMavTsYGhQlga0LBMkppA==
X-Proofpoint-ORIG-GUID: N1GVUq0iRFoKdQcNorDS9sHFvk8QDlP6
X-Proofpoint-GUID: N1GVUq0iRFoKdQcNorDS9sHFvk8QDlP6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150545_936862_59D6773F 
X-CRM114-Status: GOOD (  11.21  )
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

Add the compatible string for identifying a SMB2370 USB repeater device.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
