Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF28C54E90
	for <linux-phy@archiver.kernel.org>; Sun, 25 May 2025 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=owjwIfCSTPJXpe/9dufJp3DQHJaetUix7mTqddLl0ko=; b=jiiEGPzddrw27+
	WvNT9r7RP8Lq/K0U4YmxxXm6Ec1OGjgWB3jCovoKEWGhpPY6H+Lc5x73o+ZpAm9dSiAOHhzYbYJDm
	4gV2nmvQyxM6kwTUA27iGBFCCTTc6d+FpbqkOZqM3ZbIEX08cnif+R/1RRMzp5ad68qksZnNswGeS
	et8GOMmxs5uW90yBIp9ndzFcu+nnxFq45fC1/vfvECmIE0RIjpZDz1CabqlGF4DDUd8yYUZ7VHdcQ
	5v1i5BUSUGoeREhcZ0T9sx05fXRde4bg36C8UJcss7ynavHiQyWRiH3K345DwPiLDg1aEeiHmLDqb
	Z1FUL+LpNzwRqOS0PfJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJ4MW-00000006bby-1zbK;
	Sun, 25 May 2025 05:57:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJ4MT-00000006bbH-2G4X
	for linux-phy@lists.infradead.org;
	Sun, 25 May 2025 05:57:31 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54P4j24E024767
	for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 05:57:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=llgi6kgFU2C/nK6AV/CCxl
	Fj3993bGoSBbWghxO+Y5k=; b=km1phmYVT70YeEwezZ8ZBkM/2ZJq6lwBA4Df8j
	fEAl0IQ911eCas95zuzq9ThAILcftaFQpGxmSkalB4ueFXe1z/k+tvCS+6MeJa47
	GdyMvlLA/OWZCcd1EU1Ovks73IU6ieQuIV8B2HLKDp4gHL30+wzuPNNCy9xsEEv6
	N+MDi89YFegm2P0b5QYJA8VcOQhVuXLQnZhSDNzIUxFCxdE7OsyvY5sOwhV+FVS2
	IM39qQG4nMLX9ZhQtztpe+k/RYSFr39SCLoptJ2W4VUPYlkyKzGIV7pTs+bhLkUQ
	vCPnbtNcF7fKtWPvKgDhB0MIsG/iFcKvNnjX05wfUfSChhVA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5499m1s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 May 2025 05:57:25 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-742c620e236so823799b3a.1
        for <linux-phy@lists.infradead.org>; Sat, 24 May 2025 22:57:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748152645; x=1748757445;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=llgi6kgFU2C/nK6AV/CCxlFj3993bGoSBbWghxO+Y5k=;
        b=ui1WVdeQCXy7+9kzOM6Mh8nfiJRT+4H4vgor7wMqol0mDxvsP51B4LMbb7k7087jQ2
         F9OaUp2gMjNme1m9L64qXmSEc/yCVob3XT1CHJVjNF7ed4JZbkrIZckLX87tlVWAhDFK
         FYSL2rwnYQQ2qwa8iQBogVR/5IbhYQR7TiQ/AquNOn5IbkMvfggdLxZL2ub88ue29OFd
         7kkzi/86GBz1mUpdKT7Sso/DHGWWv4Tf8GIe0xNSLUermL4o+rM2GXDPxLxprawFGkq5
         CKTDXmHPEkqEjkGbOnobT0DneMxr7y4X04HL+YXUEw5+bEbnAyH7PRKn4k3NKwBcbfIG
         pu2A==
X-Forwarded-Encrypted: i=1; AJvYcCWwg8rv5FVocjbnS9seHPAf9Zge/OKQzOhmwIbXdzqNWRVhYco6atfwyonAEc2YqjWYBZbBMMTA04s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCjuyUCW7DEiXFWaPGQqUN9l3PcfGeDzKQU31k51XZN7umEHgs
	ZHEOc71XWGefBgc4O3hLy5RTLuBnMH537ZuZYfg3mCwMHhp4swMvULYqdU+CPlw/QJu5jXHn5pH
	3Fpy9/8cfoWTDH/aSu8yEs61fRnvw71JutzDgNuVzuAD9gGGINa8CJlQEZu1gqurson8E
X-Gm-Gg: ASbGncsqo9B8mX24JioBj+cCvkVA3LAcnRzq7N2TEIn8xMjZXsB+G+AwRdvJz3OH78v
	egFZbrcJ8TzSJWqf10MNhlcfbRwBjGK74y70XkSij0omZB3eEyD9hemaq3CzkibGLM00VRvmVqv
	nh8yfweW2DQMF05A9FLuQkCPQB+NwsxS9swta1/VmFEZUW6XWBPV5GzX2OO9nJze4J4/Tt4hezc
	omZZs9Ypg4LY+o4lw04oOCZguihuuRX522moSj5WFjS14fnlx4UXNP9xt7GGyO8j5TbXTvGp0O+
	z0BRxGGuJfLaq4ibKoOjAT5UEh1PzOpfT8Tj
X-Received: by 2002:a05:6a00:ad1:b0:742:aecc:c46d with SMTP id d2e1a72fcca58-745fdf78750mr7117958b3a.5.1748152644664;
        Sat, 24 May 2025 22:57:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLpSjErEYIbtiJZOXi1g6uxrsq6h4bNZeZUpAlLUHKaxEaEEcB8ZeiBab9LJX1FXEhTl3WkA==
X-Received: by 2002:a05:6a00:ad1:b0:742:aecc:c46d with SMTP id d2e1a72fcca58-745fdf78750mr7117934b3a.5.1748152644258;
        Sat, 24 May 2025 22:57:24 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9829a4dsm15594030b3a.107.2025.05.24.22.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 22:57:23 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v3 0/2] Update PCIe PHY settings for QCS8300 and SA8775P
Date: Sun, 25 May 2025 11:27:16 +0530
Message-Id: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADyxMmgC/03MSwrDIBSF4a2EO65Fr4Y+Rt1HCSWoqXdQTTSRh
 uDeawOFDv8D59sg2Ug2wbXZINpMiYKvIQ8NaNf7p2VkagNybHkrJFtG08/2MbqVoTZnroxBxQX
 UwxjtQO8du3e1HaU5xHW3M37XH6P+mYyMM6MGKS6IQp3UbVpIk9dHHV7QlVI+D3G0h6YAAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748152639; l=1250;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=M4yYzWy8gleVqtRXThXiboA/Q16IGeGQsaMz5AQCano=;
 b=EDONMZuY/6Dx2rOmU6s3wk8xSJLxpZ87KUnGMeNXgdFtMy8OvoVeIrdnCV/Ge1reaL6sgbNmv
 4bqv3uQfE9ODnrKdrQpkJvcutEAvb+GimzUyKSU2hsmLfP+adlcJP6e
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-GUID: XUjFm5MKLxDNRGe_ZQwIbqQW9vXm7vBL
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=6832b145 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=vWfPPh_LAE0cc4QMUwIA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDA1MyBTYWx0ZWRfX1c42Vy56xboY
 2LnOtWr4Z1ukGIJCdT8LrcTbPdUS71xwFniFHk6V4M7yguGuvfsQ4BXJ0hQns+r6MfrWxXLIbaW
 UW7O9T2LOBoyASucMfZgcKNzdASFDR8vgq2Lbq5XLEw3/ZC1obhyKFOBDP3WjudGJDGzuwNsa+Z
 OvTCesxzdP+vACjkEWVJjxS06+V79QtmPXy6Pu91mKJcpV/OdUqzmOsAnZ2wEiEJTMs7n/lyzym
 maNL2BnPnJ9Cysy8XWJcBg0dHlG06yeVN/S0Tn80WTVoVMSSgMLBUGIzykNIzwbcm4njRnzVyGM
 UakjSUwn6MZV2GwgeHg42n2svgNAdrqgjWpZ1D30Nn/BY2xQ6OKPXJ9hf3o0/FfZhs8LCcfTZl2
 ApwlizKXW8UZCAUFkAKiUgDfkE7Fmmuqb3X9dj+rjvn8W7TYW9+Hwis2rgPCE9PHCzJjuO4l
X-Proofpoint-ORIG-GUID: XUjFm5MKLxDNRGe_ZQwIbqQW9vXm7vBL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_02,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=625 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250524_225729_711483_0736DE9C 
X-CRM114-Status: GOOD (  10.23  )
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
