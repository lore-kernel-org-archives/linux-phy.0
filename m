Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D4C9E8FDB1
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 06:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8qzFdTO2SGJHXQ4VeaYN3/LL6hHmBvBPWVaaUMNsd38=; b=vQgIxjlVkuFu+2
	U4kCbGMOp1qUkV1vhxG9eUnU3tkBrUx2XupY1ZK3QRI59pnClA6mBtWps/jJnB+8OZVKyVnx4Bnrv
	OXHhr/rKGKywXj7Kauy6W90kHmpzHPrZHcV0Ca6tBF9riH4ndB2jPGqTBGzdyWbOAnIlqvv8gcKI2
	ktWiq+2U7DjlEgajNwYHM+WSgbyXt2mmibjXJTkWRh5k0tTFKv5xY+dLoeN/jBA4qhAVR6fVYTKR0
	QIMlON1ie2ojf1hCTx7dOe0nXoJSgfq8MKK0b5c5BQ/NA+PRMaRknDr5hvj7H/MbVEusPrlp9LMEH
	YaOlz4SU9gu/x0D9iP+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6PS-00000003MyI-2f2h;
	Mon, 29 Dec 2025 06:07:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6PQ-00000003MxX-45NY
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 06:07:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSLdjdk3755663
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=sveg7Kz1nFapUpPK2hM14UlNm9fSEY/iz4N
	I+FoNRCE=; b=jUYBntF8aOw4klv08qQXkvDKALehx5oKSZ6ucnSqZZgRfBVST62
	akQKLhygbqFWG0SlYffuQWo/hWg1YilYCzzByMfuzipqyxuoSxvfq3MiGSVclnLL
	rmKdNr6nW2ZSJzD4Y2iUuUfWX4+Jn/B6wXhaOpmNU/c4260WfA+LdEh04v1+borH
	nnJPC1Hx8hA/nhQRk8NcUbch9VQHgoR5gZZBVr3g+znilFigTHjSzepMHsW1qCKy
	prFVC9GIa+SjFglDUVotlM9iEJMUyhMkcMRbD+ZOHnxgeQhasY9W8ajN7Rja8rFT
	7nJPMf9mTA1aeczx8DTvU0vvsS3MCHYwgQA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr3m6x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:11 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b9321b9312so18588840b3a.1
        for <linux-phy@lists.infradead.org>; Sun, 28 Dec 2025 22:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766988431; x=1767593231; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sveg7Kz1nFapUpPK2hM14UlNm9fSEY/iz4NI+FoNRCE=;
        b=AvTGOROPNl57pAsfC55/RFl+JOpKGEhkHBLA5Apd08ptgzjQ0hiqF3PKjap2KgsbaP
         dhE8Jdy1zH6f9EY4IQDl8QWq5yOephRFc4edz6PN4B6UZGQZ3ccNT+MJL4muQFsVTbDr
         hauBvZXH+O4oD72LX+5FwimFtPCdEBHKp9vdEXYpITIcbXrV+sOO/chDxa3bdpMR53lE
         phqbwVKdBSgGhcijkrlG5PM6dB8tOF6ngolLBuYqLhI463I8iZuaiisifBaVZ+dh+Cxk
         bLgESEVd8V2Z9AoU72aJ973aGwpUCMUholPMYxbRk0lSpLsnRbwuM7mCFI3GQIHsR7Xn
         D1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766988431; x=1767593231;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sveg7Kz1nFapUpPK2hM14UlNm9fSEY/iz4NI+FoNRCE=;
        b=WTXaaiT7Guano7GCZd5Q4+dazGKv7t7bKE6Nlp3PkIcmKNiNxmq4dGQKAZCVXXHfsq
         AwpJGWdycfD5pvk18TJ14lf0hD10DyfqhTvoleYCWHCgJAlo/l5kDJRu15PT63jDQ2Yn
         8RGT2BcJdWFXI4qjROB1QjgDFYs5Oyudj9acqB3OBUPPfoTc2W45kI8uTxQzvroacVOs
         /2cgVoUSQF+FyL4cs+9wfN6gYboOpXPCAwuyXDKm066S3SGysNsfw4ED6bWH8JBu+tkR
         DolU9cCo3cZ9F8gv4yX3EAeOnhzxLg3RvCV1sB+X9qPjCm78/37tu9nmlM9VVwEcJL7d
         H4XQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ9J8xiliAGZ0ZnghuXSIrnJr39iQP8v9MuWaqw8O2JjiQpXBANsJMNv65VzcWduG05mJsRBZoRjs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCpCBOgCRn/si3LyeIEGRvS4uKDv13OYPUYunSsJdsOHG40k4e
	Mzfeik7CqJMkG7EgRXbmIDoL0k2DF1zk0orlDBXWQycAT9pu2wgGEp9P3cLr9w0ulVR+1Ycms7/
	UZBHADkAh3v3Fx7VNR8Tl1QXZRtB2GPCW7tKZAOzwgc1y3XBp9bjHhGLs3SsaK66cgN0f
X-Gm-Gg: AY/fxX6Lv81A3bKnGM+jsYnP5pDQVWIjlLdjkKtI+89z3IVCj4PMrNPkSKqwABFJOmD
	/EinDW8A1/N3jB9Ppqr04krkfAdsgldjB9j8Hc7DTvVeTTr67BHnsAaSggOPcFK7r4tXdhHsD61
	fRDnqA5TCCNzork2cMgIJyd4HXq4YihEaoEfwiQ9M5fA3/AfpJ5juR8AZbgGH+9u09uWWl7+rwq
	SZlL4RC70iFwhfwwLx2TEjoRadMJrxpRoDEDCDl2YZ4sNXR77Q+FiNoLbBQzqE35lbQdibNVEkf
	aJk2EKbKptKguF51OrGRUcGjtkeVRywRnI6XRyrqdNob52R8H9meCcrwxhw7n0N46+qvKF/NU8V
	y1tMO0NTpIr1I5+KwGJyQeu+0EMfktZ5CipNl2bOkCCjt7Amvx1FD
X-Received: by 2002:a05:6a00:4f8b:b0:7ff:c51d:7e0 with SMTP id d2e1a72fcca58-7ffc51d0917mr28101056b3a.3.1766988430528;
        Sun, 28 Dec 2025 22:07:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiR6c1hYnyTq/21Gn61ST9siCjyEGbeaNeJXv4ebdm6O1biqX/yA30qxEpWML0XJqb02hwGg==
X-Received: by 2002:a05:6a00:4f8b:b0:7ff:c51d:7e0 with SMTP id d2e1a72fcca58-7ffc51d0917mr28101026b3a.3.1766988430008;
        Sun, 28 Dec 2025 22:07:10 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm27917763b3a.67.2025.12.28.22.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 22:07:06 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V1 0/4] Add UFS support for Hamoa SoC
Date: Mon, 29 Dec 2025 11:36:38 +0530
Message-Id: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA1NCBTYWx0ZWRfX1bfvz58m/Tpx
 PHZqTWx2Fkp4YRFCmH9BNg/yN60xBtCdgfQeyfYk3W75VA2xV1fchcedBzcXJwICFEXUdthfPJ3
 Jk5A/kdMiTEdwvYSfNzOtrRmmNdjpCa+350p8BYGrpcT867sXheJQgqiSTuIxnm6Mud3Kxgz0mG
 CZv6QIYajuYeQ3sd5QK4YI5vQBe4wTNjpvwDoO+Ms5vfmkue3ixl4rUnWvbdAn+Yw30rFgLNUnK
 /rJendv6H5ixScgMxoHrSmXL494Eu+ZN613zSVxI2HWPkKuArVLQoZZ/DWE4JZ+P057mzxx/SRN
 BoM3FfgeNt2M/ekS7eaL68Xa8bin18RXx01XPl1QqIAOQq6two1dkm7NJbjC+RLp7oO/KehbbfR
 xHQQFCgm4Hy4BSYexFkCKFxOR0AFL0NKAq96Qsh7PMnw8Bu7Un9eq1tJbdJpUQS84CtxG9r+bAT
 BFNFET96Px3KCGsXAOQ==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=69521a8f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=MLyGsh9vszGhAdf804IA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: M6mril2QRJVWLR7NyFeJ0ABPvMEyzToq
X-Proofpoint-ORIG-GUID: M6mril2QRJVWLR7NyFeJ0ABPvMEyzToq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1011 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_220713_040837_60B62CEB 
X-CRM114-Status: UNSURE (   9.59  )
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

Add UFSPHY, UFSHC compatible binding names and UFS devicetree
enablement changes for Qualcomm Hamoa SoC.

Pradeep P V K (4):
  scsi: ufs: phy: dt-bindings: Add QMP UFS PHY compatible for Hamoa
  scsi: ufs: qcom: dt-bindings: Add UFSHC compatible for Hamoa
  arm64: dts: qcom: hamoa: Add UFS nodes for hamoa SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |   6 +-
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 119 +++++++++++++++++-
 4 files changed, 145 insertions(+), 2 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
