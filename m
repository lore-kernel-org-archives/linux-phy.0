Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FBBCE9D63
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 15:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kkdcE9xCmpEPIxlXlZ0wGduR9jFwk3X08OBXz9qOMgE=; b=2BLDdyMds0fGQp
	/3nkfRRA/py/6ohDvm1/Yvk+bSgss6l4GbjZRvwy5WfVtPaNMCnbi6nLnSPUsAFRoZr3pAOteMFhT
	Snji2LlMjVnPwPo3cL//pMyiWhS/zeb0D5Y5yewrrixZJ5+A9OsuWqkByH3JkkKXTy11fk/o0saA5
	fqQtBCeIQ+g3Ayj1SDcv8htvk5Bj0LrJkM85bTS4NkAOkucsGXB3dFlqWn1APWKd/Z923gGF1sItY
	pcyfd7qvq2FnOjBCoIvOp9A4jig2qA+6MF+P+fAE/35exwIMM6e5zyyWJGizRWFnWQozc2WPAYdc8
	C+t7IqiJaYNEPJa8mZxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9CR-0000000DQ83-3ohI;
	Tue, 06 Jan 2026 15:42:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9CP-0000000DQ7h-17Tn
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 15:42:22 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606BCCeD2253758
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 15:42:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Xbc3kQ/3J35Ph1RdKmRXDEClfieoAFkWx/T
	fAmjKN4E=; b=TcxKdOiqsUD7KrTEBMt/IYJ/+v9A10iMXAbrTcewYmlccXvX2yq
	SKAqMbMka5/lLOjAcVaYlmGxqaDt9edbOFQPleylJ+o9CtgoZsFX1Jo+0MgyWAYk
	cJE2ZOnPAeBisStXD0KszAbZTao9ApkLjbd7GVFHyJ6m046NWAnxp3+LtLk1gQJQ
	2LiM20sOFCj3YwXrO/RkVm6YoMuf0NGClgOgdWCqnsfh3jU87G2l9v1lIXjtj69b
	Qg8RFr7r6CPeSzOKgZQ8S+JjUTRZ2sYMs0fNYI1cgfd7I/iujcueWL9m0XA8GCX7
	wkvFPJZz6TjJuNvyYys3gXA0RTjj43Afvdw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgu421wpb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 15:42:19 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f13989cd3so31087985ad.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 07:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714139; x=1768318939; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xbc3kQ/3J35Ph1RdKmRXDEClfieoAFkWx/TfAmjKN4E=;
        b=UkqwU/r5NyZwGkejORvRrtORaGGlg8GYdyzOW5cVHPXR8I3y76PTlHC5OWPmbgIQu8
         dMB1EzSdCxTygEJjNy+aO+yCMMcZycKCI4AZGC+7WV/+IQnfLW0zjd8bTsIPxVbTJjms
         /om91a5bFNwwlneTVWLsu2AHiZwWbw8vi07P76ZSBRVwO9O7CQCVI4zaedAPFNh1i62o
         ldgwhajPRYmUXW+Y7tvIixqMZQ5LR8aoQg297Ory0U7x7QHSuq9Z0heAgAMRiqMxXEzt
         LjnKsFWCiG4C1dBXIAeIS0uLTrU27YFWqPzTwuIIhAVyGgl5AYyA1nzyagNqaexxTEAd
         TjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714139; x=1768318939;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xbc3kQ/3J35Ph1RdKmRXDEClfieoAFkWx/TfAmjKN4E=;
        b=tSKDRCdc4Y9f8tgK3cE7uZuZ6SndpyEQArQ4NGUbSN6Xwp+nMFD9tiE/gD/p9xGIg9
         /c5a7xpBWjsN/ryxZLc4Jt+C89KwaGMr1Wjyo41Ftkd0EY7vnGA+G+kGVzbcIMPMnZf+
         87Jd9ZoGwvVjNwIFWj71gZasfZq4ucP9GSwzM4Ft/tgz8XCBVl40lYsZi9dXPQMYiAWd
         GqmPHvNVXbXi/YdrnygZ8uJvqk3927InfwJOHS3fm5wwJDQhPx7ybZ1YsZzcCArO14ER
         V68aMcI4lbvm79eYoBuxhpjYTiI1q8QQ3hCRbJAqUPDQkFgQDlX1e+lrw5ZOS8soK+Xl
         e/Uw==
X-Forwarded-Encrypted: i=1; AJvYcCWynwVTITObnxLfZEGavTmh7/X8wBiy70rP549MtYKCcLXhbF9kD0HzMQciMHbMifmCp8UGszkJmNQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzpORW070BHuq1CxcCS5f/RkNmI7LoJ3mfVHbNlPmFM6dnMpayr
	zyyWcD3FIi/BO7xgsDiUl5J8K+Qp4PW2wYP7TZp9blYwrukHjH1icjeXacnjXVyPcpPdWizcMLX
	4TJsVRNC5QGmCHybiqTnkF1v8mS6Dqr8vIDwJqv96FnL7uaGkIbvR7bG6C1Ik98lmjK16
X-Gm-Gg: AY/fxX6g1mnoLybTYLn7GYJk1nshkweRxAIqoLSiADE1R6Sz1GSNxoQW35SJa3gH2L0
	RuLjKf5jUjLoA0a0OWxdwsdFq+zZk+IMp0lUg3nJCTuNthhruTmjSBpeDjvk7XwYJM21hYTRSz0
	aFpoDUNZmyoiv/bkDL5hpDO+EhFiT/Ge3Oz0eOqWrhpcOzOBuTy8VXQ3qc2QS7VXKD6NX0p23li
	mmYsjCkozRAX+Yzz0S1fqF2fH6mpHvg62OnR/v1SSmd/vnnmTcipYHLUVFMrdaTI5BLUPrgHQRN
	gkqCZrul2QkWGoyIRm9hAXIndT+KGAQbTSTrK6aWJVqbvOEzQ/kpdro+vxN9t9mNi08H47FEMjh
	aBc736RuYLDBtClyrge3MOyWPsYuOCFIa35iBV915RQmqw+KS8Ra0
X-Received: by 2002:a17:902:d488:b0:295:96bc:8699 with SMTP id d9443c01a7336-2a3e2d8eb8emr34279225ad.20.1767714138917;
        Tue, 06 Jan 2026 07:42:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFr0lGVIZnh5mEJ0lsPTYQ6WJK/ZNFzz+RbfUFoD1NKhkA3sF5ohpJ8ppkYMwJ7WS3VNv9vpw==
X-Received: by 2002:a17:902:d488:b0:295:96bc:8699 with SMTP id d9443c01a7336-2a3e2d8eb8emr34278945ad.20.1767714138370;
        Tue, 06 Jan 2026 07:42:18 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:17 -0800 (PST)
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
Subject: [PATCH V4 0/4] Add UFS support for x1e80100 SoC
Date: Tue,  6 Jan 2026 21:12:03 +0530
Message-Id: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=dYuNHHXe c=1 sm=1 tr=0 ts=695d2d5b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=l61i-3TWFFmDW3nFSd4A:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: qQUB4Jg7W0BBKF5tnAwk8rMZYDkpiKB9
X-Proofpoint-ORIG-GUID: qQUB4Jg7W0BBKF5tnAwk8rMZYDkpiKB9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfXxyrHU4Ob4DwO
 xwZ8fy2/PehkcKqs/NOIe7Bqt6y3/IKLl8k3fnzCZg9/QN1wms295UuJKBrDoSkLdAy/QUGV/hf
 rkHw2fM0yr3wPuSVdl0CezG0zJ8ShTgd4zhqV/nAXiXQsUc2cDDIpWcmzzdIpoxfPJq23+8Zen8
 cuS/D+cRmv04YuJJJGro/GBamOwKIOkKmVil3KB9xbD5+3s6l6Tl9s4wHPaOdmu/odOYgK1YTNd
 6C5A2TTBK0b5JZzVpyE4Mg6h+gtBTBoeR/DnKKzCpEwJrrDK64jEmS79Wpb4peQeuepsifJajrr
 QxWiCfjfsav4/KWrXsTe47TGtYAgwlFyl/EPAciOIJpcDqbj6MBjkeOoOON6p4Zy8CFsqa7OZ7S
 yEu7WycgVO083zimcbG9+oWr2ZBsPujv+xRwZNmaK8t0Y9s+Z5yUksdW+uGian5jXz1LvJuAh5r
 4oN8TAkJ52fmQL4oxZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_074221_424872_94FB874A 
X-CRM114-Status: GOOD (  13.41  )
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
enablement changes for Qualcomm x1e80100 SoC.

Changes in V4:
- Update ufs@ with ufshc@ in SoC dtsi [Mani]
- Retain complete change history in cover letter [Dmitry]
- Remove "jedec,ufs-2.0" compatible from ufshc dt-bindings
  and SoC dtsi files [Krzysztof, Mani]
- Remove RB-by tag from Krzysztof and AB-by tag from Mani on
  UFSHC dt-binding file as it has changes and needs re-review.
- Add RB-by for QMP UFS PHY dt-binding [Krzysztof]
- Add RB-by for SoC dtsi [Konrad, Abel, Taniya, Mani]
- Add RB-by for board dts [Konrad]
- Link to V3:
  https://lore.kernel.org/all/0689ae93-0684-4bf8-9bce-f9f32e56fe06@oss.qualcomm.com
 
Changes in V3:
- Update all dt-bindings commit messages with concise and informative
  statements [Krzysztof]
- keep the QMP UFS PHY order by last compatible in numerical ascending
  order [Krzysztof]
- Remove qcom,x1e80100-ufshc from select: enum: list of
  qcom,sc7180-ufshc.yaml file [Krzysztof]
- Update subject prefix for all dt-bindings [Krzysztof]
- Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
- Add RB-by for board dts [Konrad]
- Link to V2:
  https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com

Changes in V2:
- Update all dt-bindings commit messages to explain fallback
  to SM8550 [Krzysztof]
- Pad register addresses to 8-digit hex format [Konrad]
- Place one compatible string per line [Konrad]
- Replace chip codenames with numeric identifiers throughout [Konrad]
- Fix dt_binding_check error in UFSHC dt-bindings [Rob]

- This series is rebased on GCC bindings and driver changes:
  https://lore.kernel.org/lkml/20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com/

- This series address issues and gaps noticed on:
  https://lore.kernel.org/linux-devicetree/20250814005904.39173-2-harrison.vanderbyl@gmail.com/
  https://lore.kernel.org/linux-devicetree/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/

- Link to V1:
  https://lore.kernel.org/linux-phy/20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com/

---
Pradeep P V K (4):
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY
    compatible
  dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
  arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  37 +++---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
 4 files changed, 164 insertions(+), 18 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
