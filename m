Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0249E9E305
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 13:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XsIQ7gGeKHtILvA/B2Yx7VDTLZlj3+O3ePSlh45TrmE=; b=huvk4FA5y4zHFs
	nX19TzbYleu6v3I5yWcbwSTOKy4YV+7QbqO71W3u6yYIEWdf5+xUEYHv/cpacTVfSHutAqHNQ+uj8
	E27htQgy7R+K3Ux3/uHqo1GVdHHjKQ7++JSgnFHrGgbXOSR7LUu+czQq+DnMgsWESTUApktKI3WiZ
	W7nObj5sf34RbZ8FmG2ON0K2+BQE/bapjZCq4RT3HSEBAgbIJZZ3+BOtb7cttKUZJur+JeHc/heuu
	cAe98W9Rks9YzJNNAsB67WQcG97fBeVexnavSrskzbSYeegCCqe0tFrzcd6rg2D4dcfuofntn8ba9
	Uo3wN5hqOGhDywATAE1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAI1-00000000geJ-0LPS;
	Wed, 11 Feb 2026 13:29:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqAHz-00000000gdZ-02Y3
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 13:29:56 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61BA7j9A4127432
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=YDSGphfqFZHevoU9vCq3tM3+41gKEg0Wz8i
	vxkG1eS0=; b=lDulmL+NGReNGymP19CwwilGoeXvz6NthGOGbaKie3/eqgTAxzU
	Srd+2bbBN7M8/G/dfJjilHaajSmTyb4diUJTaKIV29s5w7yEaeWawekCv1saE9A1
	y2sJTF+BKh4cWK5EmEAtLoe/5OceMYymi06tcYHU9s1lfElPY8x7AEbn+ubCnYbo
	jjyEPmNqWXAu1ArhatcXno6nRTiG1oC64MuSa8zWQCjChE60+NvJsi/i7GHImGOZ
	D/ulxXP3C6H2HlvyC9GjRT9BNrluV5MEkbtEDXrMfSwKh7R6k5rwDHKS/nLMaDbP
	6ynl/9YCEwvDeHBJJ1x3KoZ6Csgd1O2BHww==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8gvm1w7q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 13:29:53 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c6e1d074b26so291129a12.3
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 05:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770816592; x=1771421392; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YDSGphfqFZHevoU9vCq3tM3+41gKEg0Wz8ivxkG1eS0=;
        b=gn9iTzarSqnqxZ9UXSrQc9kX4EW1hqs4XxrFgDglZuHIgBbzLy8yxlrMSrMg9aKCLh
         RMNTO0CkT+PHoSy070Mi55BUb+nTuz5edVMVxXt0FF+3TTo6x0au0VPPXP4FVLD0g309
         lygntOQKlFa5H1c1kAgQM7l/C5Z67ApmD2zBBWT7FQR823oOzNQZpmiHnaEp61oM1UXw
         g+TOrxU6FWretx0vqmpGPbBNC/0StwNSHDfEn4byXlfKmKmwBMUGUkopeGQ/JBMkheu1
         1Gu6t9HiFLfNZaBJZPAgVpCtNfEAL8TQYlPs7omwUehyRDigwrGd9G+X+2gkDIA826n3
         H5+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816592; x=1771421392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDSGphfqFZHevoU9vCq3tM3+41gKEg0Wz8ivxkG1eS0=;
        b=MMGrOE+3/9g76PYHeVfpsRUlN5FV8gyfwHT7Jd30tQkc2ju6uYlOQ0Vssls3xelq1b
         sDE636UAozMVGuakKwlwuSqhUQXRv6PSot6zCoonz8oulxeubG/2MTXrQAtnyFWaqxlq
         FeQnxU50r4dBWVqBm4cyUpcjN7QMEWU+a5DkO8GCGEbz8QvPGVcKmov5s4vYifSiGtqC
         Aqzr/tl3fel8NY3KM+wr8LAjCbk3idnN7C88s0wdvDYNnjmPtbrnoqy9RQYO4WR+fXVZ
         WaNQGe58t7OyDErgFzE+rDBHgApBIfmPT/wM5puHnIa5FuTB4TSjdXVVaatgm5zVNxc+
         ZwEg==
X-Forwarded-Encrypted: i=1; AJvYcCUelTv76oqcJ+5rR5/32uwuus1tJZ0+kHwNZw0/2vd7L3nQe+xo3fa5/xhsMbHZLwcI8gveVRfGlmU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0A7mHPdVgKp1IqYAYxZs7cbleYpjIKj9sa2g3pp0WHNNzgLk7
	FTaNbqrB3yKCtx1M6P2+IfiuTUyOPx3eIWGcZPFlvk4VO6PG/RnSgspQTw8a8fHb/1Lwh/J6MVy
	h/dwkPMQwRR37NGsce1TH7RomyENvZPNM84qHbJmfoP2UWog0rkMOEzmYsYlTWgt41fwK
X-Gm-Gg: AZuq6aL8qWDEluBxTxX+Iwbq7v9MynHSJEfjtTX2Q3ck98dFX6/p3hgv4p1HR2jpRID
	igWYKqJ7uQSnSVdxgiVFBDwlS6+KxzzVzsf7WN/is3Czy3YQyO0Xtmb/6hBUIrHXIhadj45xiT5
	fDUp0WXRr+uLaJhePRott6xfdQs/wGmbWO9rNsgKFb4k6KTxqIWLHc3X0HmP9hmEYho5KatmaLv
	7m1MlcsgT8hsUEdm0vFA7hEJYE5ngW0MpFejGe0Ac3BtyAo7mv91HsY6nGScJ3ZMxCcIB1hqh+B
	vIz81v2zsGcAKod9waZGQOekwOQ4Zu8CqvUNGvqfaUJjPSaYdjuC0mFUApnDScEZKhBKa6ankzz
	07OdoVN4ZVj1jk10HvrOQdIOhITjuK9OVXk0Upvk1LMatz1hvpPwYgOcRnPxVsJ2u
X-Received: by 2002:a05:6a20:2453:b0:38d:ef23:12d1 with SMTP id adf61e73a8af0-3942e6c6040mr2508639637.74.1770816592410;
        Wed, 11 Feb 2026 05:29:52 -0800 (PST)
X-Received: by 2002:a05:6a20:2453:b0:38d:ef23:12d1 with SMTP id adf61e73a8af0-3942e6c6040mr2508608637.74.1770816591817;
        Wed, 11 Feb 2026 05:29:51 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e84bc1asm2143655b3a.58.2026.02.11.05.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 05:29:51 -0800 (PST)
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
Subject: [PATCH V5 0/3] Add UFS support for x1e80100 SoC
Date: Wed, 11 Feb 2026 18:59:23 +0530
Message-Id: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=ctiWUl4i c=1 sm=1 tr=0 ts=698c8451 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=w1dworix_CjMrjKQpqQA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDEwNCBTYWx0ZWRfX278NpCNFjKkm
 A+6ZimvwzgkAPWtAUNN5OWEk3GorBTvT0R7dLp+IfyCPZDpNzSsTS5p39+KIu8mW3KCbnDjUuow
 gIup/xVUGyBXP2/argf+n2YhM9yScqHKcV7AGaagcq5b5BKRd7oYmXw+BrmKLnTlSV3gbMP0aj5
 ogOQ81eDkd0Vq3yq0f55n/2fjVUeNfI3H0LAVvSQFsLmzhwwnXgAXFYpVIyNOx7PXJDOave6wBW
 Hc1cQNAr407yMICXxPf7RKQYOWsrxwjm2pfUgW1zAoqVsnjMEZyLnHmMM00OGXvw8b4pWINKWJY
 6yQbb3gfQZi1cQ5rZ+AAcEMaaJkgZu8EcGjm4ro6UmyuR5EG6NJLeB+7mjDZ5wvUcEOYwl8hW3n
 c4Ujipbllw+qd0RZETXdlLE/ogLpZth+2e8Vegzxu8/3Ty5tbv1m35OAchqvL4cngtSMwzr+HP1
 zuhJiZ09GQ1+ZO2B9vA==
X-Proofpoint-GUID: PI2EajOe_Wkz175zpYvwVpeJkZPcYxuM
X-Proofpoint-ORIG-GUID: PI2EajOe_Wkz175zpYvwVpeJkZPcYxuM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-11_01,2026-02-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_052955_053941_47B69936 
X-CRM114-Status: GOOD (  12.23  )
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

Changes in V5:
- Rebased on linux-next (next-20260210) to resolve merge conflicts.
- Add RB-by for UFSHC dt-binding [Krzysztof]
- Add AB-by for UFSHC dt-binding [Mani]
- Add RB-by for SoC dtsi [Konrad, Abel, Taniya, Mani]
- Add RB-by for board dts [Konrad, Mani]
- Link to V4:
  https://lore.kernel.org/all/20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com

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
Pradeep P V K (3):
  dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
  arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  36 +++---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 122 +++++++++++++++++-
 3 files changed, 158 insertions(+), 18 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
