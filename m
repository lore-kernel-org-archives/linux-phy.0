Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDAA5CA5FF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TgaeA9oevn14oUJiEib52gIGIe6QGqaQndkmDbvdd70=; b=nesoOm//4PGFKe
	hks0MqTB8dcobZsWt2FbkXBAvbg/X0NhvaFu7SaxP5rjqnNIQ16/LnqNGF6JMojelJzitRzkxJPQF
	NUdfffmw7lXgzF6SKaq8vO4jm/gYjDOLRwHR38z3PBxaelnXsI/SXFJBfE37jTk/g0j76vZyXh4lu
	ShyFdkBgz0rGwsAh3UQQe9bflHiZzEjSFO/VcjGMftdEhmsm40QEAZAaaccruptq//wY00RuiIuRa
	IJtdHtxcxYFf/m3F0H0wP36cqWVvoiLD2Vn2bN6s+J1+zrPdtLUvA10FAqdX/wL1zFu6+r6Aj6Jjn
	xNAczXTDwj18GfUfJpNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELA7-00000001mLX-2D85;
	Wed, 07 Oct 2026 06:29:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELA4-00000001mL9-3lOw
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:29:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974lPDE3929718
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:29:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bNj3YXbFi99+G0rbyhLVAh
	/fUq5/lgEJO3L7wMbr0g4=; b=g4ncJMTWdkdAK6nZ9qXiq0WkPNbyLGy1GBjcV2
	Zz4jEmdsWQtNF1/3phWlnjyQbqLBelkmX2JbB3hIPqs0njXE2F/3UEaErmA5TVSv
	6JPTEUeA+q282FKEwXsyF9ivc95ttX1qUIStsu4DjPEvAxsAgUMdiVvHKwwmeZDm
	YBk/R9TwZiLKBIo0WNKrAiGjh5DxcJ45OrCvO1E+oVvvGhwOPuP+MQlkdENYxPZI
	EPWNeaZ3wB4JKLXuniJMQ7xNtsbcOa/6oHCa4S0XLwR1awnI43F8CRjxb+9G3WKG
	WIcLc23OyOMzkYe38TqbOuYk1TmSU4Gs9rGwv8jjwEwjWTCQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5fc588sa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:29:54 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3965ba1ba3eso4512940a91.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791354594; x=1791959394; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=bNj3YXbFi99+G0rbyhLVAh/fUq5/lgEJO3L7wMbr0g4=;
        b=ZVzpKmnITww2mZddPLaPkpse68JvJNsw8GOzGo8heZPq51JCCh4NShUwDFf9dGdB0j
         WIcagKTtEEuJd3ymT489C7xxdPDqE6J27aoj5riFVaIhrn7MOidR0C6viTLlANhyHNjk
         N24K6wkCPNV7nvkec6PBQszICXqJjX4hGrSwtlU76I98pbSLPsTIVekDglLVBg3zMxmf
         bL9oZhwEJT7eAsRB/sF6+NEaSZr4HGb73/n2mCnRlh9dVUzd0jamTVyH9Ti+kWPXFL0v
         kMMBGGjJLEfxihvI67oJ+kd6p/3GO+3MVs5cCti7q3F2TlSSKruP5kIa8cusQ8VKUD0P
         7TSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791354594; x=1791959394;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=bNj3YXbFi99+G0rbyhLVAh/fUq5/lgEJO3L7wMbr0g4=;
        b=HvNuSMx9/ojedkjmuE2k7tPH4hVOc38g4c9TPe2oH1iwjjtlNnUgxg3NVe+e0r+wAC
         d+IpkEMHIJnndEeOQuN2hkhi5MUQK5LOCjvtFlxFl982TnjlsV7p2qsRFfA2l3bqIklX
         bTJ9jjZAYBtJMcNzuBg8liUEn7ekZtHAMJYTEeHqhgP+CwWm31JOqZH8ksdELdcROsOa
         pAwUjS5EK+pmHnCijYslYqXqZ55Xo+eYuH6kLa8SGskZuPECtwPgPvitpl0S/mlVzqUj
         1Szv4lkM9AoJsex8PWazL223kzFdKvPpYljc+BJqlDvT/X/xHyTOro8ttRaDYROqSR1N
         jV+A==
X-Forwarded-Encrypted: i=1; AKwUvBzcbVupO1wva+SFXTWCvRxjzkBFkAkTFgkfaP/3laQrgDirdHxdUq/ucFecPejlA3xPTpqe0eLa1LU=@lists.infradead.org
X-Gm-Message-State: AFq9FYLnL96Cf6wZftsfUuQXCkQxtrSpDqMz5Yrk6F+1aVlwBJKajGwU
	81HL7MXEv5ooEK3k9ALmFANUbJteZPe4aAnYbIqha4ZZw8Tg3rzy5RMfyK7jRswr8BxsuUeZ8Dy
	vyDJBsn7RclGV1pIKDarFFg1jL3O/sWkx5xtaFsaOgdvw1zH74OYVEyMWtDjumSrJRCft
X-Gm-Gg: AYBFou3XziMzy0GT45OAj/d2LsYdUcMFzzEakl4dqtOgU63ywON1NVRmex7pJYhud4u
	O6BxiswJ9eFyW2ZVKfrPTNYfiPgOw/xg59v8qnuXJE7CegTcvmjOSo+3JDPQVh/CWVKWTMc4n72
	hgHIKkUGkFzB8wZyqcWglJoDe2yoNSa8RVeEq+ABuy14/oz5vKjOcfCdLZD8fSjzVvbjBCgM8kU
	FIMYwuVWyB+utFr+JGtnX9wdEf0yAnXiAs0AbZBgMZmVSuMJ+z3y9xxkJY1LT09T+a6fupucjfn
	0ffvxzbAmaBbkrj+i3LwZyjOgANeSrTu0Xo+wkvfYmJ3LMVVDoDqVsg/dWWPFXF428O9p1VsNJ6
	LlgXWDMJziE6EsXrOYKoFSNcHcQ==
X-Received: by 2002:a17:90b:4c4e:b0:3a8:181a:2bfc with SMTP id 98e67ed59e1d1-3a8a0a909d4mr1015421a91.14.1791354594274;
        Tue, 06 Oct 2026 23:29:54 -0700 (PDT)
X-Received: by 2002:a17:90b:4c4e:b0:3a8:181a:2bfc with SMTP id 98e67ed59e1d1-3a8a0a909d4mr1015409a91.14.1791354593862;
        Tue, 06 Oct 2026 23:29:53 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a89ab81bb0sm2972690a91.5.2026.10.06.23.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 23:29:53 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH v3 0/5] Add UFS support for Glymur Qualcomm SoC
Date: Wed, 07 Oct 2026 11:59:33 +0530
Message-Id: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAM3mxWoC/42NUQuCMBRG/4rsuYmbOltP/Y8ImeuqA525uZGI/
 71pD/UQ0cuF88E9Z0EWjAKLTtGCDHhl1aADpIcIyVboBrC6BUY0oSzhhOCmm3tnSlfbcpRVCVp
 UHfSgJ0xymomMFzlNKhT+7wZq9djdl+uLDYwuJKb32Co7DWbe+55s6z8pT3CCK17LHCgA5+I8W
 BuPTnRy6Ps4HLTJPf0UHn8JaRASxgivC0iZYF+E67o+AR+S4PwvAQAA
X-Change-ID: 20260911-glymur_ufs_qcb_enablement-1524a497520b
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
        "Martin K. Petersen" <mkp@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791354585; l=1813;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=dHA97+2+0JYIuKPe3in2smGgFvYwusOm38SwSWOCOKs=;
 b=WAELjHwK1UTXE8rQO/ltsrny8yaRhLMj3rTn+kifBQ/U8fK7nPalJp3iQT03sglkoHfIzv1H0
 uTsfiZN9vDNBaeF3Auc2ySPiLYgznJ2RtxE17ViuALtys4AYnehLviZ
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX+NePaiYidc0e
 //NDjU5Q3yO3PP6I9q2d7Pdy6UsaHmd+wau6ei5NpxOuYnhcnqHzfpRwnKf7FyXBbMgQJABfqn9
 xPATV7Zftq+rr9nW87JbMx0DBhIh1Pk=
X-Proofpoint-GUID: ulIlcXUs2HkHD85Ma8I6mQ-oQZyhWKSU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX/ouDRiHlU4gY
 Nxt3i1uTYQU+3b3NfnTC19PYzDJrA6/S5RuUEfBJDDIQCeV+J+xLkbrsm311xyQ9b/B+oKMtOrP
 6fpgqkK7hyivobSghS22alg5X9rqHfPQ0KykOaioaZ/RgV12HF3V9chNkzjFH1Sl6u99e8adzLy
 N3TW4fRwxFe8nFagXGkW6/FBAaRVXgYMcejnhBQlBXBGdMWL0irMtnkxq+1Z+pxEEgPRDbIsyu3
 DZei0lGCoQZlEgPMb1/TCzctGAbEbAOZR1tIpCfgYa6USOsx2ch0bDj57qJ/7ZeVMJtpVUxwxv1
 T03r/sxX5WbBYaRoEK0YYqH9E6q/ZvVoDfZKRptQb7vGPxXkMjDraVpI2mLkoemk2X4Yq/u6rY7
 Tl79hf63ebQAqOjsZGZMNV+gmYdC/6L011pj0/C6QQFN3Zu20MiQH18SdTeR0rWGriu8b19L97L
 rA9fZ6yCTbeuL7eG/pQ==
X-Proofpoint-ORIG-GUID: ulIlcXUs2HkHD85Ma8I6mQ-oQZyhWKSU
X-Authority-Analysis: v=2.4 cv=a6+lZkSF c=1 sm=1 tr=0 ts=6ac5e6e3 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bCOaQtj3lm0yH_HaZWYA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610070025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_232956_949992_6BDC1DC9 
X-CRM114-Status: GOOD (  12.97  )
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

This series adds the DT bindings, device tree support for the UFS PHY
and UFS Host Controller, along with the required PHY driver updates to
enable UFS support on the Glymur Qualcomm platform.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
Changes in v3:
- Rebased on top of latest linux-next(tag: next-20261006).
- Retained all RB-by and AB-by tags as is.
- Link to v2: https://lore.kernel.org/r/20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com

Changes in v2:
- Added 201.5MHz OPP svs l1 entry [Konrad]
- Addressed minor cosmetic edits [Konrad]
- Sorted references label alphabetically [Konrad]
- Add RB-by for SoC dtsi & board dts [Abel]
- Add RB-by for phy driver changes [Abel]
- Add AB-by for phy driver changes [Konrad]
- Link to v1: https://lore.kernel.org/r/20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com

---
Pradeep P V K (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Glymur QMP UFS PHY
      scsi: ufs: qcom: dt-bindings: Document Glymur UFS controller
      arm64: dts: qcom: glymur: Add UFS nodes
      arm64: dts: qcom: glymur-qcb: Enable UFS
      phy: qcom-qmp-ufs: Add Glymur support

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   2 +
 .../devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml |   3 +
 arch/arm64/boot/dts/qcom/glymur-qcb.dts            |  18 +++
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 125 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  99 ++++++++++++++++
 5 files changed, 244 insertions(+), 3 deletions(-)
---
base-commit: eea3fef32a9cf36abcb5975a5a594e4135a6b026
change-id: 20260911-glymur_ufs_qcb_enablement-1524a497520b

Best regards,
-- 
Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
