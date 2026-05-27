Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38ABDCD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 15:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J0q1dNU+7w6wfL5Pr7UUbRNIDU/6/L8KiXF/OGrmmc4=; b=2kpTjPhbEHnb6U
	tsPQOKzBa26bhXoXxn5TzBBwqROXBptI2QtSA1XwoL3txk0acHUQ8meMtqY6pkLdpaPMWpLHbahHP
	zX9Di75Ok28mPCigdmyBS8R5lQpAr2vuUdtKx06/+W6OTxvIx8tqbWuIddNbdBtNF5OWLbm80RoVG
	WPw8K3mq2/77DulDx8l3nXfK699CLLwo5K33n00oHRj3IVDq/+c5whBHwfnHGr3oaT5uqZM8xcYBq
	X1MYoGyPP2QKNP3EuxMPDOdCj10/45JJjWgxc34DX6UYHDbvQ0GbWhRDxTv2ntMo7ofCFjmQ8x3df
	JvNhZ7OFd2ZYpdVTTDrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbL-00000004S6v-3KA5;
	Wed, 27 May 2026 15:55:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbJ-00000004S6W-2y4h
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 15:55:23 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64RAWUaA150161
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=nUctDAnyRjXY49YDtCeo3a
	wpQsBKh5fh4zGJjkt24Xo=; b=TuacGxhsxv7p5Y41SPaTxMf20/9LyPkoFsH+bI
	L3mfp3LoHjzAjmwTnaQ7MqHoJ+i1nD82pJuyPO/lHl/Do2fNST2qYO/3zbPE3AN2
	35KWkXOU5HJoy7ImbLgaWbfiLEqwiDXZ9DhZc5f7wFLb7aqq5Tt5RSuw931uj2sQ
	lrtCvwlHX5c8NKno1Bt1mZ/K/U2UGvTBcfJYAn/8EpHiwAFeKNVPt/Uy3YhYyuXn
	kd/BcbjF3hZGAz8iNXC3dUzq4yQysCCJEP5XKIfYWs5hApWvfslILA83TDyDIsdt
	aSL3x3YAcrLsQLPwYkbk1RliuCShtYxAKj39vY/txYfwJMag==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edxxvs87q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:21 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2babbeff9e4so130011815ad.0
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 08:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779897320; x=1780502120; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nUctDAnyRjXY49YDtCeo3awpQsBKh5fh4zGJjkt24Xo=;
        b=RhpM0urCDiN3/sIqsaLFRVLSJu+mcr/GupAgmSu/iH2cvvRuU6nIM5PzWiSLyDssUc
         va4xyB/0Ebn4ffMRo4Ig1oFXpgTm+F1maruKf88rczbmA3OH1TF40QKqeQ9Suew9efat
         0XIGc2h0Utib33SK4l8DySEcMO9XZd43hzMyhWhQgo3lgHup6MKQ1pg6WQGTquX9fS4n
         5AG4vFPZ40peg64tTOIccruiMbwVHzFm7vJbDzBZjl3cwsE5liOcFoJJaBwPb1K9e+ks
         vZTP8Oe5bEDCzeG+qSEMR05pn29pNQ4Ka6ZaQWaRqLN12z9ZDXieuNUS7ym2RZd+ME4q
         hYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779897320; x=1780502120;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nUctDAnyRjXY49YDtCeo3awpQsBKh5fh4zGJjkt24Xo=;
        b=MPohpn2iG0ovZEr1gfarPT1f8faY5XofK17TsSaWvDgS6BipGmh7DIDyKNijGc7tlA
         7ZOXjccfRzssOaCGOyObRiCDrfl4CyuGz/8KpehmIRkCQG9h03s0GxoYtDOYVfhbQfRO
         TtT+/AEgF7dKp6EbMD0WZvN+GCTLvOtFl+rKWtUtF/YEU0j3b5zRix3SdJEf7RIhLtn8
         ksT54HCq+i9PQrft8N3gITKXvzBCyuDpjcRGAdWG2kaMAF3L3woFdEvRhpEjFVpHH01m
         UTarXGCYc4Pw6AIKg5VnH+HP2vg62ObSR+vwnECrR/OdoTnU/yRfHw3+pPHyoOr8+51c
         Crxg==
X-Forwarded-Encrypted: i=1; AFNElJ+K+cZtPnnWWoU6Y1MfyyXAIexrsL2Btsvbdxm2wQ1pofH98/S90WS5UaMO/he8vVOEBbfRG0G6xEk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcXqiu/ahi1Mq/2Kmbd+YeltxZ2QLe6TRwyq7OrNeVJZ2qkqXe
	1/zby6K9kK8vmmMfQur1DTpplyJaGpS8l86yALshWBoOol+4TO3Awsl7A4F0zc/ae7V/VVRiKTQ
	GQDDRAfxxyWL8MoyYi7Mh5TkUTt9d/505qQ3fLrdouIXJVlI4iZ456nYLEc5sRu5IYoN9
X-Gm-Gg: Acq92OGBN/mjX+VVMwJ0A8AUA8S+NsySZyNCpj6fZ4kKtqBYI5CzPuHJu+Ucqs3pCgY
	ixlYQyzYdew2yOudZS/GRI4ibgeBAmky3Wfo99YJ99aeyz/GrL3nhUC3n5euzweIUTvhdmPNA3w
	Ah9CcmdU3gSqcqfIMUVJX/LE0BKp+eRWyugDWux0ePqa1VNcqBknA8rx4cOzQlB0rZ8T/P0WZ1r
	KuJomy6+QD2qcdyMLrjXxKmuN3lyXLtpyxjXNLOtAXyKgeD22H+dzoVbOl5+mxgdoMamxU0S3Ai
	sbk7fz76/DNd7D4XfJ7yiPQqRMWuIgEufsVn2LSqubsbq0vbr4Qwo0wjdbVkQe1yYTmtGngpwu6
	XKyscwwWitt/zAR0R5jnhNLY3OneQFaiVjvZWe/8KNFFmpHA=
X-Received: by 2002:a17:903:1a84:b0:2b2:4fc1:f653 with SMTP id d9443c01a7336-2beb07930c8mr198997895ad.3.1779897320272;
        Wed, 27 May 2026 08:55:20 -0700 (PDT)
X-Received: by 2002:a17:903:1a84:b0:2b2:4fc1:f653 with SMTP id d9443c01a7336-2beb07930c8mr198997565ad.3.1779897319768;
        Wed, 27 May 2026 08:55:19 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beff36894dsm1264135ad.37.2026.05.27.08.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 08:55:19 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: [PATCH v4 0/5] arm64: dts: qcom: Add initial device tree support
 for Shikra
Date: Wed, 27 May 2026 21:23:50 +0530
Message-Id: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJMTF2oC/42T2W5aMRCGXwWd6xp5X7jKe1QV8jIDVs4Cx0BTR
 bx7fdijhqQ3lmz5+/zb43lvCowZSrOYvTcjHHLJQ18n8sesiWvfr4DkVOcNp1xTxRgp6/w6epJ
 2JBmVnJFKaqmbun8zAua3k+vnr/N8hO2+KnfnxbtxMTv5JHdX3yb3cTe2BJNhPmiISePiIJvHH
 BdKcHqhljlGEhhGQKkY52lxEJ8R0zk+peWms0zR5Qirfet3w1iIF0agEhCkrcexr+Bx023S8hI
 XlbFGBI7exC8Ovexe1ZgVr2NsXwvh1ElIiCgCXRz4p7C43bHzuQ3D29L3pwzL89ZqSWAQLDgt8
 VmEm4WUrtuTkPuU+xUxARCkgojcP7v1Hc0ddDfUmxBc4sh04k9QRW+/pMRHElGhD4nif5C7WMY
 bWp+KaetAUme+R3+nYXVDhah1ShG9Zfg9usXNONwjR65rhVl9YeqfFEpRfoXbdvqN1ye2ggcuA
 Y28nttBKf4jaxllSsq5EVowQxjphj6X9Tyu970f/ctQyny7920cum5eh0kTfAEyLeTdYhYZxMC
 FQy+k0oo7LzhXSiiH0digHdRqWWmaqSHXudRP/+fU6zXS1JGXtuYPbX1ghBLDtBRWCJoS/TfFJ
 KvP8SBwjwJeBZGy4CgGKZx6IhAPAv4hgagCSxETWF+LJz8RHI/HvxdTMOG8BAAA
X-Change-ID: 20260511-shikra-dt-d75d97454646
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779897312; l=5598;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=7wuGwmXx2KoNcvbJnBXxehxytnVyMizpVloVEOeaw4U=;
 b=2muxhnu8WuwSFGzqOBf277fIzOja0GjY8PY8bOtZCS8dkovZl28zZ4lqYM+QKGRINF1Ap8WOu
 ANpKx6CZSgSCKyDrCUMKr96jg9x2FEtLHdGgdzuM1I+8IrK5wzDLciH
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: fQPNw7m7IMRknHGD3QxYtVIFXSyZ6UF_
X-Authority-Analysis: v=2.4 cv=bJAm5v+Z c=1 sm=1 tr=0 ts=6a1713e9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=j-BhbVR-bgdRnPYsS8kA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDE1OSBTYWx0ZWRfXyotxP+T5TRST
 a8RchETu7U71QSd8tD0ASSEyqNxVrIcpeduo/jgmYdhpGtrBY26uJgqA+0pQhJ18wF70SUeaffL
 BH4+2G8va2iI2j4IviCtuwK+E/lI1WJXD2WkmZX1+/CSL2/3/bfcgzsTm/4KC5yBiluYJ2LdpQv
 BkqMVEYXMIm3SHCV7R65Z27Vyc20Gk0AFIUBhT8o8QGUIaBs58XsaJxX8t31s98XsLZpAy0ggSn
 AfjLUQkvRBBSda9Q2YAIRQ3jGQmkw6yvCPPi50jvtOgID5B3R/OBmBwZSXIiwwZ1Gjh4t6GgmOe
 jNQf59UWSGmYmezK8HqM23xWLI30UC51pOzFtCVbcELM5DKN+PwYx4ADncobVkoL4B+K4/QWics
 IwxLCEmPutkcKL06XTybLSNOWGoPq0PWj+2zT04EYrWFYlLX/3pTCtnwsRvKqPsypRKsscSnG6Q
 QHbNSTqEfbAK1GaZpsQ==
X-Proofpoint-GUID: fQPNw7m7IMRknHGD3QxYtVIFXSyZ6UF_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_085521_761792_AA1043F8 
X-CRM114-Status: GOOD (  11.89  )
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

Add initial device tree support for the Qualcomm Shikra SoC.
Shikra ships in a SoM form factor; this series covers the CQ2390M,
CQ2390S and IQ2390S SoM variants and their EVK boards.
The series adds:
- dt-bindings for the Shikra SoC, CQ2390M/CQ2390S/IQ2390S EVK boards
- SoC base DTSI
- CQ2390M SoM DTSI with PM4125 and PM8005 PMIC regulator definitions
- IQ2390S SoM DTSI with PM8150 PMIC regulator definitions
- EVK DTS files enabling UART and eMMC on the carrier board

Note: USB support is intentionally dropped from this series. It will be
sent separately once the USB driver changes for Shikra are concluded.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

---
Changes in v4:
- Updated commit message for 1/5 and 3/5 (Krzysztof, Konrad)
- Incorporated Konrad's comment
- Collected Reviewed-By tags
- Link to v3: https://lore.kernel.org/r/20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com

Changes in v3:
- Drop USB nodes from this series; will be sent separately pending
  conclusion of USB driver changes for Shikra
- Fix memory base (0xa0000000 -> 0x80000000) (sashiko-bot)
- Fix power-domain macro: QCM2290_VDDCX -> RPMPD_VDDCX for sdhc (sashiko-bot)
- Fix INTC GIC_PPI number from 8 to GIC_PPI 9 (sashiko-bot)
- Rename SoM variant CQ7790M to CQ2390M (Konrad)
- Add PMIC DTSI includes to CQ2390M and IQ2390S SoM
- Link to v2: https://lore.kernel.org/r/20260519-shikra-dt-v2-0-c01b90fb4395@oss.qualcomm.com

Changes in v2:
- Update SoM/EVK combination bindings (Krzysztof)
- Add per-CPU-type PMU nodes with PPI partitions for the heterogeneous
  cluster (Cortex-A55 + Cortex-A78C) (Konrad)
- Use full product names CQ2390M/CQ2390S in commit messages (Krzysztof)
- Update RPM interconnect tags and power-domain to RPMPD for sdhc (sashiko-bot)
- Update to use MPM for ss_phy_irq instead of direct GIC for usb (sashiko-bot)
- Add IQ2390S SoM (PM8150 PMIC) and IQS EVK board support
- Link to v1: https://lore.kernel.org/r/20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com

---
Komal Bajaj (5):
      dt-bindings: arm: qcom: Document Shikra and its EVK boards
      arm64: dts: qcom: Introduce Shikra SoC base dtsi
      arm64: dts: qcom: Add Shikra CQ2390M SoM platform
      arm64: dts: qcom: Add Shikra IQ2390S SoM platform
      arm64: dts: qcom: Add Shikra EVK boards

 Documentation/devicetree/bindings/arm/qcom.yaml |  18 +
 arch/arm64/boot/dts/qcom/Makefile               |   3 +
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts     |  40 ++
 arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi    | 156 +++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts     |  40 ++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi        |  15 +
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts     |  40 ++
 arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi    | 170 +++++
 arch/arm64/boot/dts/qcom/shikra.dtsi            | 842 ++++++++++++++++++++++++
 9 files changed, 1324 insertions(+)
---
base-commit: c1ecb239fa3456529a32255359fc78b69eb9d847
change-id: 20260511-shikra-dt-d75d97454646
prerequisite-change-id: 20260429-shikra-pinctrl-fd71ab6ecd6f:v4
prerequisite-patch-id: d84e0b4c2788ab6cfcefc9806e7a6011eef8f91d
prerequisite-patch-id: c92359b721d8c28f4a62887052d0fbb2cb64480a
prerequisite-change-id: 20260320-shikra_icc-b1fcef45122d:v3
prerequisite-patch-id: d36ec191324b7992a56c463a15ff09bacd8d7ba1
prerequisite-patch-id: c6edf2e05d1409667c9674b765dbd0917401a903
prerequisite-change-id: 20260429-add_pm8150_regulators-a373f53eb48f:v1
prerequisite-patch-id: b312905695c635bf1e3deab87b718c92adf07f54
prerequisite-patch-id: 390dee07914f18c7df08c57b3c59c25d1588b62f
prerequisite-change-id: 20260429-add_rpmpd_shikra-f57873b2fa7c:v3
prerequisite-patch-id: 2aab0b42cafb535b31c5154002c12f381a52be9a
prerequisite-patch-id: 599ed97f57ef0783f69d4c22384e91e66a2888f6
prerequisite-change-id: 20260429-shikra-gcc-rpmcc-clks-2094edfff3b0:v2
prerequisite-patch-id: 5a0fbdd458785da2d0e850c851a05046672ecadf
prerequisite-patch-id: 1f98e515a52bbeb25e2a960a804afe16c6a472a1
prerequisite-patch-id: a64476b2ba6e0f2a55928baf72ec32672ee0123c
prerequisite-patch-id: d0c8651205232862b40f942929e1efdaa3084eb3
prerequisite-change-id: 20260430-shikra_mailbox_and_rpm_changes-2de7fe8e964f:v3
prerequisite-patch-id: e80ea7940b9817449cec21afa6e9e443e007166f
prerequisite-patch-id: 2526e0507d3b5c065eafd75a657d7f903af8488f
prerequisite-patch-id: c3b7e18cd60d1f779b88ace2fae1227d3d37d83e
prerequisite-change-id: 20260430-shikra-smmu-binding-7befe45ecf2a:v1
prerequisite-patch-id: 657d2fa91247aa0c222b595c41328087f04f01a2
prerequisite-change-id: 20260430-shikra-imem-binding-a7bb9d2f16d2:v1
prerequisite-patch-id: 80d8ab865b7b0663c5b2878b45b55e2e4fde9c19
prerequisite-change-id: 20260501-shikra-scm-binding-a7ff5fabd0f2:v1
prerequisite-patch-id: 8e645e1c6ad6182de4813a726c293654324de1df
prerequisite-change-id: 20260501-shikra-tcsr-binding-fff1689e4097:v1
prerequisite-patch-id: f6781d2cf0829ccb32f1400623c95739972f2ee2
prerequisite-change-id: 20260501-shikra-wdog-binding-33873dcfa81f:v1
prerequisite-patch-id: de5184831054bcb48889fca16b2f4b5e95da9935
prerequisite-change-id: 20260501-shikra-qfprom-binding-c262fa19640a:v2
prerequisite-patch-id: f284f0dc01674ea0a78c8cf40ada72a7a1636463
prerequisite-change-id: 20260502-shikra-llcc-binding-7832b24ef74f:v1
prerequisite-patch-id: b9e53d2b5b494d4a957a691340fb2563f3dd681c
prerequisite-message-id: 20260508101544.736317-1-monish.chunara@oss.qualcomm.com
prerequisite-patch-id: 2a9d88175f19bfdb9495a704681ff0093da5566c

Best regards,
-- 
Komal Bajaj <komal.bajaj@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
