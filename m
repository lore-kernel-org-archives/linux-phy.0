Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A02F3C5B552
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 06:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D8BubJ270EoYusFXeLqP1m13flcPwEWvgH2xSS44a7w=; b=zo4JDst2tC+ZEj
	G1GXAa/FUeLayB6Dg3hMm0ibhyAnitHcqdspfMX+I5g9/8hzq+95xz+oq5TGuJQ1+yxA3DGi1fs9W
	3pqMX2Y3TixL0KHbSYf6dG2FzxHrorRipEI/RtxXzC6AgjOiaUYmDusKtPSDX5T9CegQ4BcaaGypH
	XoM8vG7yO6X687VMMoHohFIlAY9hDtGca3VPBDoVlUnSxmWtyo7jYMOnjxYBoZAm7UfVVeKbk/Akp
	sG9dSZ74BMEaDLNnpFN8wrYf7qgvZ2+B304CFcgES3y5IffvTUw0DLLstrswnRbRBX3yF/AJEhNZV
	ShpzCJagkQCCtX5jorXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMhjN-0000000CgVQ-1eTe;
	Wed, 04 Jun 2025 06:36:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMhjK-0000000CgV2-39Qf
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 06:36:08 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5540HCOc016027
	for <linux-phy@lists.infradead.org>; Wed, 4 Jun 2025 06:36:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=nA1XVRfBS7e5BMoqc+7tse
	3XttDKcBTrmpygj5xAvdg=; b=PwDbAAdPSwJhBrL+HHTr9xuMI+VtMq4PRpDxXj
	hQamoktthsP4GJsBtiZ2uibnZO/lPhHeuU8x3U3Sux5NEcihHN9ny684nKt9dVT1
	tKS1ZxlDST7Ms+xVGPJwdstab6hbWjtmMSTjhOMux7Mx5Q+juo6nTVZP8CofJXYs
	9jJz5sXYMt4vDnW9njyTQsDQN09IZk89ogo+TdhwPPetEv2IbdvClV86jOrcz5v0
	MhsueavRiHZ6j8/0YDTvVTyMEMhRpYm6MENrUu+MaUYyCqmHiUnbycogLhZp4KTY
	neiYuONMsTwWhiokBn68isdG2gsHYdrEUFJ+zNCc/sjPrmRw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 472be80sfd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 06:36:06 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-30a39fa0765so9237768a91.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 23:36:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749018965; x=1749623765;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nA1XVRfBS7e5BMoqc+7tse3XttDKcBTrmpygj5xAvdg=;
        b=MoOpaXlbaxwBTIuMa7Wj8DsrsYN+/wjnrbxfpo6aQdhut+pJIJ0Ogyd460/SAXugr+
         cvYmRnuDv+zyHtsyNFNM6MVqMBBXmUK2QFlWjWil/az16zLFky0Zsz0UTZBidoWCNI4b
         T04a5AjgShnh2bP+gLXUopkRr9+rNtNL7QgWH0BRxxqce0xG56Au2GStLSO5p8+vFA79
         mYyhjKHDMgEvOa6Pi/dZDL8RFRY8AQVyahtIvI37a1vyk5QI34KnNBkK1fvBouqz+R1r
         v3U/mq1Fy0QJvC1UJ4Y9z/1rSOJHeDZs/oQ8XvU6Ri2ynMHAwV/7RupSOk5cSnTTFy2D
         WsvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDGeHohHg0UpxoJnKv2QKIzjE11zqqwOlnqoxO68RlBTLxNr2ER+cm4C2EBHS8S96bYNmbcQYtiQ0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxPiyzvudQdG2BI2i5ihs9dDL39qbllgZaol+0IET4a/PG12OO
	7djvrO4IusLN6sg+xrAE1XtYKUu+CecbIcqfZfwyukG2v+3zk03lZw9mbZDj0tv2DcjeSsm3/Fd
	BVgyUZZcMwoXotfuImMsnfutEfeZUz++LOQjcVjSKTPPOvSm5w5VaDSmr9QrZXnlArTPS
X-Gm-Gg: ASbGnctI7jBhTrJw7Mscn/estLadIarugsSir8sTVzBw6oF/j/913KVfdWnjTWa1xSM
	xb2z71o/A/4LPwbXyi7c9VizDZNHKyNqPEuxWLtNRjujcZq5hDUoVs3MAw45/Nbhkvob9mx9/Nr
	CEA/AgDTnEW2jOy0TT2DbnGwByBNk9mMD+TLdZTIr+iEu32V7EtW5+Ua4vaWVIQ2eLp4zFNvALX
	oBOoNrbtKnZOoRx01OQEfrdih4Pyi+/8RsXg/CHJ4a3RGLGfPX4pz4snMOM2+0nQTqbZJhWj6O9
	QVvWwKzzC5nnTzgG6TCHWasRYC6fGvAhw2aO
X-Received: by 2002:a17:90a:da87:b0:311:e8cc:4253 with SMTP id 98e67ed59e1d1-3130ccf5106mr2374560a91.2.1749018965192;
        Tue, 03 Jun 2025 23:36:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQEAfHrLHrtYb6LlLcMTBfH7t+WF1iQ8aSfV2f5M0nadfCyr8QFPZtK5Iq3ccs9ZdWu/Y/NQ==
X-Received: by 2002:a17:90a:da87:b0:311:e8cc:4253 with SMTP id 98e67ed59e1d1-3130ccf5106mr2374515a91.2.1749018964663;
        Tue, 03 Jun 2025 23:36:04 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2c298esm8286693a91.15.2025.06.03.23.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 23:36:03 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v4 0/2] Update PCIe PHY settings for QCS8300 and SA8775P
Date: Wed, 04 Jun 2025 12:05:56 +0530
Message-Id: <20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEzpP2gC/1XM0QqCMBTG8VeRXbfYzs6oddV7RIRtM89FapuOR
 Hz3phDo5ffB/zex6AP5yC7FxIJPFKlt8sBDwWxdNi/PyeXNQIAWWio+dK7s/aOrRw7WnQU6Byg
 ky0EXfEXfFbvd864p9m0YVzvB8v4Z3DIJuOAOKyUNgMQTXj8DWWrs0bZvtkBJbWLQu1jlWD+V1
 NYpY4zax/M8/wC/tlZ44wAAAA==
X-Change-ID: 20250513-update_phy-2cd804dd2401
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749018959; l=1413;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=sRbqQszFVTleAx2yTcV3Ny9IPMLYZEYMYcFeLar8vQI=;
 b=GCWQwRukQIyWsZ+hGbyaUbjRLBtewyIZCGZdL0bwpMgMd4OnZhqmhZU2spYQsrRYSPxMKvtii
 2AT3SI4Zx58Dh/IcYAGhadvcxCZlxEMqThxxpTBkh41+Lpg6ShjDwpa
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Authority-Analysis: v=2.4 cv=bNYWIO+Z c=1 sm=1 tr=0 ts=683fe956 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=vWfPPh_LAE0cc4QMUwIA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: mxbYs4PtNlP5Ay5TDUI5Ktba5ZUGagk7
X-Proofpoint-ORIG-GUID: mxbYs4PtNlP5Ay5TDUI5Ktba5ZUGagk7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA1NCBTYWx0ZWRfXztTeZG6/5/Xv
 yctficXWFeM+U0kZp9cOvwn/2zT3v5Zi2p1IVVi6bY21i7/w+npcguvyT20QbIzOJ1RZsBkM+ov
 3wY4tsy+OnyhBecvtFXThQiUczbl9lbq34LwvTqCaQuNcJac7ruEAZbLdCeIziOV6BrZLKBQ9ne
 XLvT6ZEoNHaw/8arAj+uIYWtNDHufE3O6JIBYLeg80R5em3iwdYAO82e2YQugzdSejhPGSykD68
 rrouphPxoPOd8ZS7S+CRiaN9AGJs7HOPFr6MLzJn+XwE34D/AEyJb3pL+pED+Px8WYl9ZBuY9R7
 Gg1hp3o3eaw6Y8dzmugAHIEGy1zbpptvZM1vhB40g937CF9y67K2vTq0ElkwtPvMJdFXnFhcWck
 2PLBd4awZlMAV+xbOdBA4nCIUBkZ3KxXzB4YPzut3bCaNpayqp+TAfR0JrgJUz8EmDXfqV8C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 suspectscore=0 mlxscore=0 impostorscore=0 spamscore=0 clxscore=1015
 mlxlogscore=593 adultscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_233606_802896_E571E213 
X-CRM114-Status: GOOD (  12.17  )
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

This Series is to update PCIe PHY settings as per latest
hardware programming guide and remove max link speed dt 
property for SA8775P PCIe EP.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
V3 -> V4:
- update commit message in patch 2 as per review comment.
- Link to v3: https://lore.kernel.org/r/20250525-update_phy-v3-0-5b315cd39993@quicinc.com

V2 -> V3:
- update subject in patch 1 as per review comment
Link to v2: https://lore.kernel.org/r/20250514-update_phy-v2-0-d4f319221474@quicinc.com

v1 -> v2:
- Update commit message as per the review comments.
- Remove max-link-speed DT property.

---
Mrinmay Sarkar (2):
      phy: qcom: qmp-pcie: Update PHY settings for QCS8300 & SA8775P
      arm64: dts: qcom: sa8775p: Remove max link speed property for PCIe EP

 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  2 -
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 6 files changed, 66 insertions(+), 43 deletions(-)
---
base-commit: edef457004774e598fc4c1b7d1d4f0bcd9d0bb30
change-id: 20250513-update_phy-2cd804dd2401

Best regards,
-- 
Mrinmay Sarkar <quic_msarkar@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
