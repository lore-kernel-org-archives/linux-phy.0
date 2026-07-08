Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E239C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CcG18VCk3T2ta2lq24r3Fxt/wBW2wQz4tk3EAVQLghs=; b=WnTtwItjWqlxqK
	M2A1uUdCUdb4MI0KfXVAx3LDJGFtIyNjpbSyRwNhPcxrSF3IlnyVUUsxZ+9o1SQH1E0sh2VKF9BsY
	76UDcHHlgWHapkWn8rcjCJR7clpoWv31lDZPr8z9XarRn+ZIqglL7QM7JXEb3aGtOwtM+FkEi9wAO
	2SMlVj2YXePerwXnpZvnwrxnWJO7XPzEsaTkLs79TSBwwJ4o+CsVAP0mGkygOEJBtcjWFQyCat5Kn
	NHijC/NrRxnadMiQc5K8OGdEF2u8rbZAsGQ7sqbrnpbmTvM581iykGKTzhjv9Pet8rIRfKyPGhOgL
	lTN0s3+KOKlQIXnXmFFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRDt-0000000H6Au-36uc;
	Wed, 08 Jul 2026 12:17:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRDo-0000000H67k-2tOR
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:17:52 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3Qp62667378
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 12:17:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=q/Ar/kPupFf4wpR5UurFF2
	yKHdeIymF31jARad6asx8=; b=ey/Uu70qUeUksEJbhJ9mMCJc8BCsq7p2CZmqJu
	ospjy/nUGKuMya5eq+eMEVg+B/GuXO0f4Y/us8iJaMUV9KbbfBEUVOAalcHK9bC6
	o6zsv/1qNi4eteAwcaSbMswzqhV5WsXeuSkvnCg85wQFgGPbB+cIIv2W8NAJTXPz
	X9GDfc/mBgRR21kocufjfOxGToAG8ldn1NrdCaDg8ckEtr4Du5oSO+l1jzcKEWyJ
	HUud3iyv8upxDplm7/xYSl+KjZE4h6+rk6YVg1L/tS5nwep5X5h+AHz1D1dJVjdm
	YsoKz5wT4dS4OCCQgj+NzXBU6IgGU52IbkGzsN/+kYbCxzDA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f99hgu3c9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 12:17:46 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8482fd61e83so1064055b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 05:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783513066; x=1784117866; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=q/Ar/kPupFf4wpR5UurFF2yKHdeIymF31jARad6asx8=;
        b=Dzuj4u33BXRvWiOy+kZSZne4hPZ+Xr/iNnV0YyJjtRh97lpvhZUmbp+3JWUVJJV+Vw
         1KqvzZ8o2BfgJeRu4Ja5iGkz7HRkfmcelEOqgZeXnPOZ654Js/Nl/Lr9uwCfC4rpjMyC
         /3mqyJknBZQgqIdnYzFtQdm0ET2WsGZYkGUfCzL9YNZ3mh8n78R53N9ATFUlx60Q9loP
         Bd9VQT7HT6V1dvN3gn3TN+SGsub9xuWpECVRes5GEUMDwTIk+8Op24tGNKrIWaGxGJDl
         HC9CNzTauvascRv/110UWKucKJ1WsWu+QD+jbzGEz2oO3YKmo9+BQy2WV3/3SnCn5zY1
         ML4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783513066; x=1784117866;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=q/Ar/kPupFf4wpR5UurFF2yKHdeIymF31jARad6asx8=;
        b=p4PpI3koLEx3bMdbfpIjV0MFjh+TKcJmBxoMX27ZPgrZzHxEJ7SBCrSVPSWrNFHbbH
         Yhk2hOsbS4GxdcRzY5tHmP1c+4q1tjGqmoPeOUxjfTJbGP20GbgikIpeyTwMuTaZZrEe
         Ym0HLEb/0TJyCpA89xFC4EFq6glax9cPvIrwCGLwk6e3NXKgc9PuAg2f+KY9e88S+w51
         Loyx7bwknKeVXnFVwnUwOF3KTrj6nqHtfXJZBMNDBz+Urh9InQV9WvjXLEFmofvn4APX
         mSCZxVwBfpILH8QYNeSkSoNOpmxWgxcry23H8trhG4bDyu5unsM0s002MWQLajyWJ0ee
         0XrA==
X-Forwarded-Encrypted: i=1; AHgh+Rqbl7C5QTKdYhx39osRGEcQnHLkTpBDCyyzTzPNhWTsscLymOtuWz7fNYx/jINe1A0SpyBfxZqVLKc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmPgsCPuQ0BR+GCSjbqV9C9fzCRa/2x0B7ZU+7cNVlhl7RdX+x
	7OXdqpCcSPp6nG2X/oRrXDGf61u2Yw4eeUUo9AoAf16oDHVvha9z4wfvTvyrhOHBWcSQUUxKWZu
	ENo9wyGY4+UdfLYKZ2JouSbtej8+VgNTk2XYx2Ml0o+/dyTssCeTkSSDicGaBdcs7yaT/
X-Gm-Gg: AfdE7clbxGUVGgItMpe6Nqx0uFIjYACjXLjmSdGGwn/Tcs0u1k2lmZ3a7frNJrTpejU
	41FyQNAfp/DdiqZ5LWgakcDRkrWIzL/fmk/PEvfMObruQgwJ2Cw6oa5B6cOqXiMym9vvqpXz+QE
	DuluyU/pxapLbO+YmnuoqL1qIjPU24zi1M7sK1AOuqHlSJ7E0vLmZ4b/4KZj30gx3vViD3YfS70
	X68KQCZd44c5xznLFg0R25aW5Qn7VG5zyzcqaXCU5ywY6bdGhfvteo/HSiAYqHesnmSixVsjbpm
	UTR9i5hjWJygrVySX9FYHXzmQxG/JeqocGJNE1G/V51tBz8j/OVX0Yyn5xquaJ3zLWjbyZE1w1O
	JKV8iJYCPOMiOokRlGqNzZOhEhw==
X-Received: by 2002:a05:6a00:b4d:b0:848:2f73:9002 with SMTP id d2e1a72fcca58-848436957e8mr2546895b3a.75.1783513065808;
        Wed, 08 Jul 2026 05:17:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:b4d:b0:848:2f73:9002 with SMTP id d2e1a72fcca58-848436957e8mr2546850b3a.75.1783513065294;
        Wed, 08 Jul 2026 05:17:45 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-848337d12ccsm2367474b3a.48.2026.07.08.05.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 05:17:44 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: [PATCH v7 0/5] arm64: dts: qcom: Add initial device tree support
 for Shikra
Date: Wed, 08 Jul 2026 17:47:29 +0530
Message-Id: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANo/TmoC/43SzW4CIRAH8Fcxey5m+IY99T2aHoABJe1qu6ybN
 sZ3L2qtmGjSC8ls+P92GNh3JY45lq5f7Lsxzrnk7aYW+mnRhbXbrCLJWOuOAVMgKSVlnd9GR3A
 iqCVaLaRQQnV1/8cYU/46WS+v53qMn7tKTuePV7FfnDzB7MVbhUDGj6Gu4f2tEAZWREwpcQ/9L
 Lu2nUuYwyWchzgQnzeYNyvitPcWWaIKWT/Te1EJf+cooU2mJJPzCOkfySmU8S9aO6XK2CjA6t+
 odyWSsB2GPPULGTQPaBMYagMNQkSueeTovFeGU+MpRuoo646DW+cybcfv051U6zi53/GzZvwzJ
 UA0VYIbzgERnrelLD937v3402VdTtjMWsC2AKtAAOotJC+4lQ8A3gDspgNeAQMpYTSOYxAPANE
 CugVEBbwMjiYHnlv2AJBXQN08wVlWgAKPyJQzktkHgGqBmyOoCiivgpcGvdD6DnA4HH4AlmpJ6
 ycDAAA=
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
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783513057; l=4467;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=2OTR4Uda6T9rFzecFPmo1D1H7dwe+VKFBl6L59G2A0A=;
 b=yYGvcWSnNDplQkDlmcBbZ0ZZTR5IN2C/Fuq11M5+K33m7els5MeYYAA4bVn4wV+oou1kLid7X
 I7MuL/OH4nUAUG4IZdDbjQ0m+LAgAibvRQwbNjZjDyBowj43dR6s9fd
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: rIlgzy09n8rYl-5XfljGTTDkaZZ-0TvA
X-Authority-Analysis: v=2.4 cv=CviPtH4D c=1 sm=1 tr=0 ts=6a4e3fea cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=thxruFBVZ7uuMI2BP_UA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: rIlgzy09n8rYl-5XfljGTTDkaZZ-0TvA
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfX2H5M1924eVjE
 WQlbCCkhD+GvRNYBv8Jwg1NG5Vm5LozSt9r8P9p2sYg4RYv87hQBw1mNLeA4bDkL49o/Zud0RFt
 SSEFoS9VZiUcmcn4pP3hrjgH6YdYNhM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfX7CRtGZ5pmckb
 JGs49+GDgKBJEZfrv1pXHIbpSCeq7SwBeX7t0W0F9iBr+AGflF47ywu/ve75iibzTb3PZMiB9+R
 6og0OuaMmNz8sM7PR9fkurRn305h0unSNXiEOuo8PnTOdGr/cfJRUOqMWTsm24G49Bx8XBAYWZ1
 McICoNWs8OgVR7wfofsA2zPtGcAd0/954thXdLl2kr4QKWirxTHzi0IIkbMCgMsKM+3K//NpHS/
 9YXa1VwDjYdkjDF4Bbznmx5KqRB3z1CrOh8cvvoi7EN7hpuDU1EGLgIVh34DDhrb2gP1K5muZc1
 VDtiZIdi0h8J27A4sKhfGn+f+wDGsWx7JM96ou85QsZss+l2JktHdisMTtiS3YqsWebbuwdjU4P
 xtkvsIjVFW/t2XifCQNaEgReflVfdectssHMbXJYy0JxxZwPpmP5sX120bG2qAz9Tn/S71pp4xs
 fGCEDG0tyQsUo2OamAA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_051748_857226_EC708BB2 
X-CRM114-Status: GOOD (  13.09  )
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
Changes in v7:
- Rebased on top of linux-next
- Collect Reviewed-by tags from Konrad
- Link to v6: https://lore.kernel.org/r/20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com

Changes in v6:
- Collect Reviewed-by tags (Krzysztof, Dmitry)
- Fix ranges value and interconnects alignment in sdhc node in shikra.dtsi (Dmitry)
- Link to v5: https://lore.kernel.org/r/20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com

Changes in v5:
- Add qcom,rpmcc-qcm2290 fallback compatible to rpmcc node in shikra.dtsi
- Link to v4: https://lore.kernel.org/r/20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com

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
base-commit: 5c73cd9f0819c1c44e373e3dabb68318b1de1a12
change-id: 20260511-shikra-dt-d75d97454646
prerequisite-change-id: 20260429-shikra-gcc-rpmcc-clks-2094edfff3b0:v5
prerequisite-patch-id: 59bb0a7828e41f546f734f127d81da83c0adcda9
prerequisite-patch-id: 197da6bcb15cadc47869dba88c8020987b25c335
prerequisite-patch-id: 8ec9c1eb03f052ae232ed54117abed38672c23f6
prerequisite-patch-id: 350db4f4bcdfc0fad9ed57cd5b1723f85ad44f5d
prerequisite-change-id: 20260430-shikra-imem-binding-a7bb9d2f16d2:v1
prerequisite-patch-id: 80d8ab865b7b0663c5b2878b45b55e2e4fde9c19
prerequisite-change-id: 20260501-shikra-scm-binding-a7ff5fabd0f2:v1
prerequisite-patch-id: 8e645e1c6ad6182de4813a726c293654324de1df
prerequisite-change-id: 20260501-shikra-tcsr-binding-fff1689e4097:v1
prerequisite-patch-id: f6781d2cf0829ccb32f1400623c95739972f2ee2

Best regards,
-- 
Komal Bajaj <komal.bajaj@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
