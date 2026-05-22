Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5423CD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 18:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c3jUHWIh6HNTs0kjyq6XzdnHNkFnbPSeCu0Rr3dD0L8=; b=lKpLroeWF0l/6F
	OjUiM3tniwKjEPeDKEXmAbgmrgEomgCcJd3juFLghK7Ok83mtBFE2uxLZ9McHsaXIo6Qb5iO5fZJL
	5xkxGL9EcQUW1y3AcItWHRF4E383phkZ2xcHgYiLVxuzxZimc9VeIs5izIcb5k60NcerVgySX4OHv
	g/PPDMJnWFdFzWz/xIU1mJOnifDFs8qTKZLpvacvXHKoh1zHAf3bT6XM7NWGwye1otGStZcEIk6Tu
	YmJvWqHJfwklBdffGvKKkJv/TScE4JbAe0WlyNHxPt4GzCanyee8VDXGg+OubkoxXvETgKRvjRI1f
	Fv5v79DxjaMhRccRjBNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUCn-0000000BdQu-2dru;
	Fri, 22 May 2026 18:02:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUCj-0000000BdQ5-0e5l
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 18:02:39 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MGalqT1733014
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:02:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=tGUY0HP0Ge6gesCUfbkPJg
	Ka31LyRObnpgZ08bQ4lPo=; b=lf2+x8vntcDy9evL/Ce/64SRG375PNTOhd3PBL
	TQ3NqlpVVvOleniUi+TnoRP8rGcqrgFktgN8Qgu1RnrPZHPttmkfh46//9ur/wOh
	9UF4C4FXoP+b10U72T3mwwwcj07W176ovTfCUH+Zg6kOg1oUoL3/WUbNm61m1iiZ
	9/WA/Ph6A8D0VNPbkwjk/3Z99tc5bDCmK3g2EMoE3s9Vk0g7kWtXn77vBwDl6fm3
	iNry96w4sMtLOGgRP6TM7VABdHyfAaOlWiyDHEgE4ko+iArkRcyM6kuL9b1CJIAt
	6ZpRG61yu0x9To1t9YBPe7xW2qwd0PxFmvxelIFkX6CgGooQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eattq8bc5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 18:02:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2bd6aeb3637so184369665ad.2
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 11:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779472955; x=1780077755; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tGUY0HP0Ge6gesCUfbkPJgKa31LyRObnpgZ08bQ4lPo=;
        b=Sg7XxfGOzEs9qr5Jb53nfQYuEO0XvgxmjN4jJcZv4GRNWDD+6mNpwc+DMG+GuX9+ey
         6HW332AufkCcHYzzmLymEhM+yATeFDtiCTAQVQjTt1WLZIeMhVwaMuDFqa3655c9yJNs
         AHpe47koC/iacPS4OjSEz1b//4t14o3Vlyg+snJFYYi1z4w47hw0qSv/pXN6oUyw4mMB
         zUIddLMP0Qhh/JZXTG0T7+ijobSS/m2y9A+VfTix1cFgqOA3CBJNraUTNplG4J6m9cvZ
         cLvqHKs+GQYf9XczYjXYDNbk7oT63s55wTeqBTTXiQ9VtrsDsosXF05S2CvS244VaMgt
         svZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779472955; x=1780077755;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tGUY0HP0Ge6gesCUfbkPJgKa31LyRObnpgZ08bQ4lPo=;
        b=qfcDQ/tpdSBqCgl35EooH04ljfwdTuGRj3kVHGH1Jg3s5dTRKLlM+Voib+e49voAlZ
         x5L9fFymN77fKiju92q5Ox6KF6fbJ0CKP8QC8OGd2dStBaYB2kofYrnOY/BZ/UvwSe/e
         EY7Crim9Aorfg/5GpxEsxjhj035GJEuPqjeSZFFjQfUIY6gY85Ti9ZX6lW09t1vIRikX
         5+TEpDRsEl+zbj07Bl2uSpoc7D4/BMWSZnhXqVlDdG3xO7T0R2ekApASxhPLcZSXEb6e
         mNHAphIA7v71BR2gi0CDiG60bmXHQlM3VCrRxq9mMpaM2R1InokPARlDNV4eS44511mM
         l7qA==
X-Forwarded-Encrypted: i=1; AFNElJ/btA2k/xWhSOQyNCL3uBL4xOS9VtVBePI8XqkI/w1wPQvJh5bXM6zYztObUy9+0gEsXqSQPCEMiGw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywu1NwNIXrpB+vjSN8Kpiu0mTtIY6HFaF9zBdOl5Aef4PT2d0Yw
	E7COFwHB5OkksRUDtmMtmZ8rSu7O7v9pncGZOO9NVPUMO+06VX/ly4CyqvVECWN2dX0crDS8x99
	zODPhE7kDQM+JuMetac/tCqG/DnL7KPSvwOBwfJOGxOJREnwE6gVkaNzAp5pFVsd/PmKu
X-Gm-Gg: Acq92OGOZkHcqnlbQxmB7ivSy6VmLTLnpvQSiDCE2rML6B9hds0Bq3YABKWmECSyHzw
	YsdGEuDLRFEK+dFS0VYAF0yfa5lnz3B2GGZeICE4eNs8XUOQ5O8PZfyHOgEJbeljkv/wVMuVCu5
	ANLZlusWPrshwTUI+RYzJwKEtUwY/qldyB5a+vyvdGA25m73kCcoc+HOvVg2rQ3JTqhcAhP9IqD
	XfndyW6iyDs/QPDY+BoRceqsPySm3czECWnCOTdngQgxfa7wuSf3bbX6Cx9A3TwwJ7BnwAlSIwD
	/KRoZzPzwNPhJGq+pubOPgWCyeI9FJ8Gw7OlURMhLZFeLRTm/IHvSwoyEYiqPf6jDiMOeOl4uRD
	CNxa3xPe6M1W1UYFPRkT3hkQ7hi+UQMV8eHfA
X-Received: by 2002:a17:902:e884:b0:2bc:f38f:15ad with SMTP id d9443c01a7336-2beb0770e7fmr50876005ad.38.1779472955026;
        Fri, 22 May 2026 11:02:35 -0700 (PDT)
X-Received: by 2002:a17:902:e884:b0:2bc:f38f:15ad with SMTP id d9443c01a7336-2beb0770e7fmr50875355ad.38.1779472954504;
        Fri, 22 May 2026 11:02:34 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb58ff106sm21193645ad.74.2026.05.22.11.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 11:02:34 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: [PATCH v3 0/5] arm64: dts: qcom: Add initial device tree support
 for Shikra
Date: Fri, 22 May 2026 23:32:23 +0530
Message-Id: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADCaEGoC/42T2Y7bMAxFfyXwcxVol+Wn/kdRGNqYCOMtkpNOM
 ci/V85eNJnpiwAKPJdXpPhR5ZBiyFWz+qhSOMQcx6EE7NuqclszbAKKvsQVxVRiQQjK2/iWDPI
 z8kp4rbjgksuq5E8pQHw/af34eY5T2O2L5Hy+vCs2q5Mep/qqN8XBzalD4BUxVgbnJTQHXj36u
 FCM4gvVRueQJeACcEEo9c2BPSOWOsb7duprInCbwmbfmXlMGRmmGAgWLK9LOfIZnKZ+8u3FLgh
 VK2YpGOU+KXrJ3hSbBS+n694yoljz4AGAWdwc6FOY3d7Ym9jZ8b01w8lDe04tKj4oCHXQksMrC
 zcVlPt+j2wcfBw2SNkAgYvggJpXr76jsQ/9DTXKWu0pEOnpC1Tg2y/J7pEEEGCsx/Af5OxyuqG
 lVUTWOnCs1dfoLz9ubihjZU7egakJfI3uYErj3bKjskyYlA5j82JQAtMr3HXLb7y2uGbUUh5A8
 WvdPuRs/mZrgongfK2YZEQhgvpxiHm7dtv9YJL5Pua83u1N58a+X5djkbEmB7RcxLlZORKcpUy
 DYVxIQbVhlArBhAanait1KNOquaqWhdzGXD7979OuF0vLRl7Wmj6s9YEgjBSRnNWMYe/xvy4Ws
 dKOBwH9KECLgMPEagyWMy2eCByPxz86Ob5TewQAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779472947; l=5405;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=pZroIWpiG8XOhgJ3fd81k0YYBbfDqwIwoXH9oA7369Q=;
 b=dZqMZph64I0imrk1L8NswLOuSu1ctRh3jIwbo7XrRlyNvgdaaPDicrmXefqIh2nkU7W4Isxho
 If0+5GMTwzQDVXNZDnHoLBjaHQdrTJ+22rNu9/8qdJZaljT3MVYDaM0
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE4MCBTYWx0ZWRfX6s0B04nF3Fd9
 WPOv34Z+iBsGjwiK+k2tn4lj6B6J6K/VUKMQ1d5vdZ8stDJDR3ou58Cn+U5ziHSwb/a5mQ3FzLd
 VYlFS+wi0mbhdRqX1WeGRzfDkZDfvPndJ95ORI2ALFWSsOafdKK1O20n6n5nIiT1t1cxIf8hCOt
 pAxr1kXSg1O2tTRmQb6t67AlUFzHcxYEpPzko/FiuSKhYJB5alrUXbTUkjPWjPnlrktE8yOHd5Y
 zKGHYyFQIJjF1oTy8jfLdf6wFJYMTueQo8TBOBeL+KQIKBo25GwcK5vUWM0wUnGoj0x/8SiUU+3
 7vOqcWYc37YM54A7Z0jJEPZTUUiKRKaLhjeBc91LT/oQwpJtn+iGWT457Me3h7RS41Ifj1a5xJa
 Y7S4YeYZ1dxlRx4l8N3WklsbDp6fgE0ASVqMBID/MfEjktX+n4YD347XFTWVWaFWizvJOi929+X
 Mi3TtGoTtRHYFK29Pvg==
X-Proofpoint-GUID: Av0MegyIVsyNAbe5BG09QZtMBoojwHe7
X-Proofpoint-ORIG-GUID: Av0MegyIVsyNAbe5BG09QZtMBoojwHe7
X-Authority-Analysis: v=2.4 cv=S/zpBosP c=1 sm=1 tr=0 ts=6a109a3c cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SooAoo4rPY5SEZaVHzgA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605220180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_110237_451405_5056D71B 
X-CRM114-Status: GOOD (  11.24  )
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
Changes in v3:
- Drop USB nodes from this series; will be sent separately pending
  conclusion of USB driver changes for Shikra
- Fix CPU3 reg address (0x300 -> 0x10000) and memory base (0xa0000000 -> 0x80000000) (sashiko-bot)
- Fix power-domain macro: QCM2290_VDDCX -> RPMPD_VDDCX for sdhc (sashiko-bot)
- Fix MPM interrupt number for ss_phy_irq (8 -> 9) (sashiko-bot)
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
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi        |  14 +
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts     |  40 ++
 arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi    | 170 +++++
 arch/arm64/boot/dts/qcom/shikra.dtsi            | 842 ++++++++++++++++++++++++
 9 files changed, 1323 insertions(+)
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
