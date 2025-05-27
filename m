Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FE24C5B542
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9bGnxuWS9dIk7Fcae+uYKH0/sORLnZzNAmfDvUTuAfo=; b=RMRKqK8Dg6BVot
	GLXExia7zYpjSBdos7ypKctVrXAaTfAfav3Pk10+m885zwIj/d2tFuXvqzoRcYlh1U7aQ6FudlqvN
	vR6qNl39zQuj86yOpPLM4yZjOvXyCXCTzWm9Y7K/UHgYRgKvxLCB9TazU/9lF0jBPqH9RCASvJgEL
	eX+84qFY0ta242aLymWmrWX7OBuXgs1di7J4jzySxYdQLJCDtaCoS+a2fOf3SCwURoFinp+17PThN
	SyyZExbKGmW5CZalCzYOuruH0Li2h2DiTU8IB9zrr9bOSy2XzJD0SivL/n3/NEO5qv5MrYw4LHlKl
	qspeHiOhfgnutFavIXjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tm-0000000BYr6-2xav;
	Tue, 27 May 2025 21:04:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tk-0000000BYpf-290y
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:04:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RIIR8Y021217
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bUgdbJ9307iGvajrrAux74
	w044pWeNfiJuOUqJnpRyc=; b=DRbTNJar+C5jzTqjz0fhcFOQgRQwEmccbbrprc
	SyKZTwdfPF740nsBCno0MK+GANalIHP7oX4PNbRELPijnFfFv+Wdk6WePrrNXmTl
	5w76DtRXr4EdUmvyczsVPfY8ZFvbKPHvpbHwq+8J22LTLxIMxijWjsrDuomZZnb4
	GOnH2UE3IaCkVOu+aoGJWhjlggwLmgAdNOOTMo71faUHv4fRLuv7DRT1OQsRZkyU
	Nl6TugCKC7OD0yCwb6q7IyM1VQbU/xv7AmTAF6XU5iYiD0cAkIZIWPdse7GgpVlO
	PQdlXWBTNGSutKdW6UdgjwFUxQM/WDc9lxvjgGV/gQJG9woA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcvpwu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:54 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7398d70abbfso5466272b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379893; x=1748984693;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bUgdbJ9307iGvajrrAux74w044pWeNfiJuOUqJnpRyc=;
        b=gcI4Ew0YTc6vs4W3ihGP3axvrTou1UA5mdacWYJXQTsammjf6AdoMDRoap2JjiFKw4
         0YKZq7OTgdLYg83zwLGwAjQQEBaquJYyAir9dFBFDZAdLqccKRnIF2XblUtavPzsXV3J
         XA6gpXDqpoeIUWSxEnSM1263y+J2HmeVSQTdDs/HqRQTe86aiX+gAgme1J8ij2sTLE/Z
         FDca1B3+1C4IVkUBNBIX92gxUL/T7lDPi5cm+8BijoTZq27VUAOQtiAFxtkuDWelJNZd
         l2Y89tQkY/95tFzrNoLR0MI1og13XEzlu0sqEI1nt/U0/m5q+hIpX8AkTGDwoiVVgNUd
         U5IA==
X-Forwarded-Encrypted: i=1; AJvYcCWdK6ColRvw1t74HWlgnfWQAs6owvbilMWszqT/c2/G9ui/ods5DMvcgAnn9QWClM6XoeNkoCwAxNw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhR/8+jKTe0mU13o6JGHmDzMVkmHi1TaMH8T3+PpRh9etJB0n5
	UzLGXg8d8e68BvlZmH4Cb5EYVZ/MVG4SypTlUeT2J5bpW0Cn7yPuxoGFjzGn7evGeMUgFaBLVik
	bZjoP0pwkbsbsXN4y3UBxxkzyBVYSGNeJ9wyDlAalcJlT8Rxa2mTeNgbcMxU0ZewX04oV
X-Gm-Gg: ASbGncvZottObnFQokvH//hlFOM9imXFwGLz5eEffySm5DqAbLV+KNV42xk4k/EzK3N
	CB9pdR28fKVNaXFWgjO9S6GPAn9X59NHBRIT1O06wMSySVExWN4f11vv4YihSyKoc7g4bpFRepT
	UptIV2yVJ6l0/CpHJihp42psWdgIfOAQBQ2gv5zyO7WnAx67d/Z0RzrNpvknpLTp5mmKfxigoIj
	9ne84ya/lv6IyXxqgc8DQ04+h1AgcynW1P0h9rgX+Fl+nYi99CRPsYfDcHEzW8w4vi1lcOcIjqq
	0o8E+8a/8CUPxROZs62X0/JDKyr9x56NMlfOCRy3M4SbFr7MvFw4GS+IiNn7r4HINE4=
X-Received: by 2002:a05:6a00:17a9:b0:746:2ce5:a491 with SMTP id d2e1a72fcca58-7462ce5a712mr3645280b3a.10.1748379893429;
        Tue, 27 May 2025 14:04:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdKiWLumEIDy3APCQkLZekdpH+dDZdoDM6L3VDfmiSlLCJgjPEV4ELcOqOm5byIoxyev5IRw==
X-Received: by 2002:a05:6a00:17a9:b0:746:2ce5:a491 with SMTP id d2e1a72fcca58-7462ce5a712mr3645231b3a.10.1748379892966;
        Tue, 27 May 2025 14:04:52 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:04:52 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Subject: [PATCH v6 00/10] phy: qcom: Introduce USB support for SM8750
Date: Tue, 27 May 2025 14:04:36 -0700
Message-Id: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOQoNmgC/23NwW7DIBAE0F+JONfRsgYMOeU/qigisG6QarsB2
 0oV+d+L04MjheOMNG8eLFEMlNhh92CR5pDC0OegPnbMXW3/RVXwOTMEFByxrlKnGwnnKV3OnU0
 jxarFxpJvWuUFsLz7idSG+9P8PP3nSLcp0+NWXkMah/j7/J352q4XEjgvXcy8ggqMbYl7hxLFM
 Xsu9G7vho6t3oybUYMoGZgNq4y2SEoTqHejfjGwaNTZ4DWBUd5p3fp3Q2yGAFMyRDYUOYXcGX0
 hdRxS2t8m+52NboPkC4S8BMkMoXSNIQ/cAxagZVn+AI3etQ7jAQAA
X-Change-ID: 20241223-sm8750_usb_master-f27aed7f6d40
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=4181;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=4Otq5/SJ7I4zFyhmnnZUzoYm2viVKcjqEocffO3PcQc=;
 b=N5YNjaqcDY7JTLuV4mDpZMezmd80Zbmdr5qoIeetMTUmjJ5V3glufVSP0s5Jx+8BXdoJCWBiM
 7rWoHD82fw5BVmhNiRwkJKfYYRBkOPyMbFSvArSZh+pZ8BhQMUVpisy
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: 3MHnWH18tE0qLNQqLucl6A2-2g8LlK1n
X-Proofpoint-GUID: 3MHnWH18tE0qLNQqLucl6A2-2g8LlK1n
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=683628f6 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=dNz1S4BQCA6GZfmXsroA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3NyBTYWx0ZWRfX56360FU2Ednx
 8jrRaaAdu+IElj1oHeu3MNOMhl8wTQb7kK7Y5lbFMIVbjUMwexi0DJJXSzFL2qCP6aUy4GOiUKJ
 +WxE+XxdkqFkF4/hBi+PFwXKrwVlXzwDfeu9aWSmBfGzoRqku+V7pHPcIUe0p2i6lqA0uMBrF7l
 44s1a/LUdE/h/WkqsDO0rVVsTBw74rYRAGyrvrYZQ/sztH9zyuhyqBir5RwJmC79b7fQRwze17/
 eeYX60wzl4UE5HkzVUyvcvEAgkQ0mGJbb28Kk9Yjf+3R5ssctzMJEMWbOGudVDdZHloCYJxyxlL
 cXkWX8HqzUXRUBckpWi5GVcwCulijVAdmbX7r1zqdn+6WpWdJyp6MOJNHbnxpjAJ8wr8ZK4rbQh
 r2VcfUjJTZTDILO25RWsUpcLi8GbYAcNN/GwAITvvzaaQXgyU9LmvZCSJivNowzfvjyYYLym
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140456_676166_2E0EB575 
X-CRM114-Status: GOOD (  19.98  )
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

Add support for the PHYs and controllers used for USB on SM8750 SoCs.

---
Changes in v6:
- Change readl_relaxed/writel_relaxed calls to just readl/writel in the readback function
- Updated languange in the defconfig commit to specify SM8750 as a Qualcomm SoC
- Link to v5: https://lore.kernel.org/r/20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com

Changes in v5:
- Removed refclk_src from the QMP PHY driver as that is no longer used.
- The decision to move the TCSR clkref property from controller --> phy
node was made in v4, and the refclk_src was a lingering change that was
meant to be removed.  CXO is the parent clock for TCSR clkref, so CXO
clk will be voted for as well.
- Relocate the SM8750 compatible within the qcom,dwc3 bindings.  This is
to take into account the change in clock list.
- Link to v4: https://lore.kernel.org/r/20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com

Changes in v4:
- Made some fixups to the M31 eUSB2 driver
- Moved TCSR refclk_en to the QMP PHY DT node
- Link to v3: https://lore.kernel.org/r/20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com

Changes in v3:
- Split platform DTs into separate commits.
- Fixed up M31 eUSB2 PHY driver with feedback received.
- Reordered DT properties based on feedback.
- Rewrote commit message for enabling EUSB driver.
- Link to v2: https://lore.kernel.org/r/20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com

Changes in v2:
- Added new QMP PHY register definitions for v8 based QMP phys.
- Made changes to clean up some code in the M31 eUSB2 PHY driver based
on feedback received.
- Added bulk regulator operations in M31 eUSB2 PHY, to ensure that
both the vdd and vdda12 regulators are properly voted for.
- Removed external references to other dt bindings in M31 example for
the DT bindings change.
- Split DT patches between SoC and plaform changes, as well as the
PHY subsystem Kconfig changes when introducing the M31 eUSB2 PHY.
- Added orientation switch and port definitions in the DT changes.EDITME: describe what is new in this series revision.
- Link to v1: https://lore.kernel.org/r/20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com

---
Melody Olvera (2):
      dt-bindings: usb: qcom,dwc3: Correct the SM8750 compatible
      arm64: defconfig: Add M31 eUSB2 PHY config

Wesley Cheng (8):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add SM8750 to QMP PHY
      dt-bindings: phy: Add the M31 based eUSB2 PHY bindings
      phy: qcom: qmp-combo: Add new PHY sequences for SM8750
      phy: qcom: Update description for QCOM based eUSB2 repeater
      phy: qcom: Add M31 based eUSB2 PHY driver
      arm64: dts: qcom: sm8750: Add USB support to SM8750 SoCs
      arm64: dts: qcom: sm8750: Add USB support for SM8750 MTP platform
      arm64: dts: qcom: sm8750: Add USB support for SM8750 QRD platform

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |  79 +++++
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |   2 +-
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts            |  24 ++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts            |  24 ++
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 164 +++++++++++
 arch/arm64/configs/defconfig                       |   1 +
 drivers/phy/qualcomm/Kconfig                       |  16 +-
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c          | 325 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 221 ++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v8.h     |  38 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8.h         |  32 ++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  64 ++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v8.h    |  68 +++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
 16 files changed, 1062 insertions(+), 4 deletions(-)
---
base-commit: fefff2755f2aa4125dce2a1edfe7e545c7c621f2
change-id: 20241223-sm8750_usb_master-f27aed7f6d40

Best regards,
-- 
Melody Olvera <melody.olvera@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
