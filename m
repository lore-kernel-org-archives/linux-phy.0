Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECD59CFD31C
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K1Ninb4roCbQ8Oz+XRV6jvzLcVtlQNv8Fo4+R92zTIk=; b=fe49IgruEhCUKz
	s8233DX6Xwo2eBMb+TaLD8AE2/e+L1wjgO1OZF3lHE5FaCSeYJBrGG4ndN2lMqk5VjxyyxFmuXc1k
	mrGc6zXJh/bUkyt3CULRjH18At2faUrYHfBYVXoinQdKUb0LdzftaXcCK7idD+3w/xbtLVOwg+9HJ
	kZk41z6+H9/cYVa5zRD8EWUMI8asE33jc+sp0hx+H+/ZA5BKfSpSV9xDlEyvOQXShjqkDl08SeIxW
	yd+5MGcTGcSTaH4Ef9q6JwBZ3Fg/fnL770nO0NSzpZdNS1v75EqlH9VkgT5gM1NGPb4Jee7y96//D
	kIAmj+Zpxtxl0L/XJ05Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpk-0000000BLEe-31mR;
	Mon, 24 Nov 2025 09:26:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpe-0000000BLCA-2fau
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:26:07 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7vQuL2411517
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:25:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=GGkbpCdUpu5rIxgk+rlTy5
	TL4Vx3yHm2kdYqOkYYbMU=; b=e3urMDeSwnPrrYHNLCco6jndcLcjBTyrVcsR5B
	9AMnRSQRCJf7GLz5imOMtUYQ06S06Yb+qFmfRKgmpu9BWA/5Yh77uivSuab7DmVe
	P+EchGSAq/tXIRtju8TI/l7vYD9YRQ40fYC4/4wG1J6qoBp+lcmwUwmhPkrZ/jad
	DNFPyIdZAy5NVEqWg1RbTKt2kUYoP/20xqWzzANB19ov5FbWvd0yaTHbnUXOAeSg
	j2iAx3A6nTJWzN7YUsfmZhnV7fraIrCSra9b7qezZByEAr7Zn0CWtHMRiQUopOme
	2ZVOZ9xxxvNwEY58jmPYmy/aaRQGKzZCUpI58Oz8/+OK26Mg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6cdvd17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:25:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297e5a18652so46275295ad.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976355; x=1764581155; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GGkbpCdUpu5rIxgk+rlTy5TL4Vx3yHm2kdYqOkYYbMU=;
        b=f8r1HPBcewYMEBBxXPNg5fA/d7yo08IlwOp03lGyZgXrDct9fzJ2aOr6VgCU5iA7ev
         HwbbECCuSHP00I3dStRDRkAg3VeYaro8NIW5AhgXr3sBl7i00GmC4qetKSugPLM1n7IK
         nt57dHAad9vZf2vN4N/ybwV6jvd6od1XANMt9/95C/T6OIwj/oODah/PloBdRA7Mbqn9
         P+C2iI7wkbh/CvMaJ7RFeMMEgV55RcAqYAiL+RzVX8zqEclhVj4DZ4PlAeEmKHZTST2J
         /I/MW9Q0bUISnsqN96IkMQTOjxT6bkzHT4C2BIbdC+Alx1YAMKA3VJGMeKrurCxVwSql
         KBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976355; x=1764581155;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GGkbpCdUpu5rIxgk+rlTy5TL4Vx3yHm2kdYqOkYYbMU=;
        b=RDzLpGX6YEM8GPzVvZ3wsfyxb5FYMkfmsdN6YQdko182NJ7hpJpy1fOfh2VqjjqCy2
         wKvN8r+DfxihwCTELse56g7dOA26iRM6TB/iQwvbGo21PmlP4WXQqZtgx9msVwkgUxYM
         WNVPIbwuWduK7exODqkiE6C/IT2wxbwHtvC25iwikVfyIrD1/jHB3Dpc+CphMuDpvKfi
         3ylW/BpuVhViRT+7Wgk/MEOLQlCP5i2NE7JZ5/OHIVlSEpYNiFrW8aPyihos0YhoRZPM
         TumGI6v4ewIwTlDapl9R/6B67JQ6xeNYdP9JZu/Auxi2sW0zLdx56voXggRYOyoLZBhK
         CnWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs/OqGyMlJZ6POJxLJ33veshX9rGUskx0qyG4MF1gOI+WH5hH7tVeODTkDaS/frVmx3eswFosS32I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7Zzifb7SobHbyjyygqzO4wl4mMJcE2Q4JjAjYpraw4xDI8UhO
	TXYQbp91FPoZ/6Z/VUQ2HZSn4XmO5JCrZWFRtEYZrNc7QxLugiPyspJnRL9BhaO8rj094tVaaeI
	KVGmQkn1k6cODxnBcKej2B6lQVsVjXcR2haWrNdyEvXAWmARkTY9O+KzWSyfqGYmkqjfibnsJIt
	95
X-Gm-Gg: ASbGncu/dGF8Gazu14NtwlZ1vjB/KO0bZzYY42aT1XFQ/HJGEZGoCKZeJRCBnnVD0x1
	4dQ2z0bWiYIhM1tjrgMj6eFKDzPZWw96RDZNF8OOWyx1unpd5aY8B6eqgakEdPLUfV4jODhvzPe
	RopqMjHIoaNb5phBhoRPtqGWisQiiX+E9KHzZZ1WXvMHW8KhWFsnWDj0Db7G96HqkPcm7s7qa1C
	+uYdSYndrHxWJWnVusa/eurgix1JpzDrep9nKmVyQemwJMemozxFyhfO4UMWmj90U2jgdwHZyEW
	qIhk9kBLpz2piZA6RrlYqIIgqNlvFQuEkdYH1gVn7Z1latS7T22Kkn12brN+1bSA9ARPcvyadPS
	9clRrZIzlywMjh7gRQcecR4o8GeHg1myJE/mc/p0=
X-Received: by 2002:a17:903:1a06:b0:297:db6a:a82f with SMTP id d9443c01a7336-29b6c5088ccmr133368085ad.24.1763976355254;
        Mon, 24 Nov 2025 01:25:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFrJrf3FlSDWzx0QjNnW+yGQKfRH94449PpVh7Ybt2aT0dzg7QCeH1s9XXGDqan4thpmpBtpA==
X-Received: by 2002:a17:903:1a06:b0:297:db6a:a82f with SMTP id d9443c01a7336-29b6c5088ccmr133367805ad.24.1763976354736;
        Mon, 24 Nov 2025 01:25:54 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:25:54 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Subject: [PATCH 0/6] Additional regulator support for the Qualcomm SGMII
 SerDes PHY
Date: Mon, 24 Nov 2025 14:55:16 +0530
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAH0kJGkC/x3MSQqAQAwAwa9Izg6Y4AJ+RURc4hhwI1ERxL87e
 OxD9QPGKmxQRg8oX2KyrSEwjqCf2tWzkyE0UEIZIqXO/CLCx9QEOLA1yv6c22NTl1Ax9nmHGWE
 Owe/Ko9z/u6rf9wObmecfawAAAA==
X-Change-ID: 20251124-sgmiieth_serdes_regulator-027fc6b15216
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=2187;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=oRRfUKdL+GmbC9P6NIsS1/W+cYLgkE8khqt3B0OtrCQ=;
 b=LY2dCeXA0T+ip1EL+9qn+4Jg8LpL5jU3mJK9bqBvk0LpWn6tZP1ql0WNS5GFxHNG3Gw9zOQ38
 ZtoU2cyZxK2DGnhZpojw80bw6Up3eU4rx0eAgH7Ir2/Y6u3xH7VYZBh
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Authority-Analysis: v=2.4 cv=bsdBxUai c=1 sm=1 tr=0 ts=692424a4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kig__V_yA1QLnvhfcNIA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: t0qi6_xTTh-CH3lV8e8VUmWt8Z76INp_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfX/vWO1QbUnoaT
 AS/1uePb1N9l4ZIBt8efW9B/W+ipgCExDA5mRDACJal/Pn9GrIiErO7sAQvjf/qOoqo7tXLZvUY
 ngoEZfhUL/5LGMiywevXsWJagiGKEPkjDKmb1/m2PpyPDZm1E3cpNOgSm4LRJJdNXZ0GLs4M5vC
 ss8PhoNvVotQQfscJDp4IcUm8NUZvBSvSrwThM7pp6aqT2sscjaHGfSXCLIwX2Pj7l3veOLm2yG
 aPeWuf7N7RppyhEA93Hc5iJ4ytWK/iALubpTI05nLJ2x1fyA0y+T2FpaNruthxnSUFcnaNkM3Cl
 2Z49NYJQtia3uubSl/S5motQonW2HK/pLWNdbq8zNK8X830mz94viJ2dHaiKQJXcjCFbBWr2nPc
 UomhfWb1c09+EHw1b/Jg93xBYhtEtg==
X-Proofpoint-GUID: t0qi6_xTTh-CH3lV8e8VUmWt8Z76INp_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1011 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_012602_819068_F9D311DA 
X-CRM114-Status: GOOD (  14.26  )
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

This patch series addresses a SerDes power-up failure observed on the
QCS8300 Ride board using the phy-qcom-sgmii-eth driver. The issue occurs
because the SerDes PHY requires both L5A and L4A regulators to be
enabled during initialization. If either one of them is disabled, the
status register does not reset, and the Ethernet interface fails to come
up due to a timeout:

[   77.105651] qcom-dwmac-sgmii-phy 8909000.phy: QSERDES_COM_C_READY_STATUS timed-out
[   77.113447] qcom-ethqos 23040000.ethernet eth0: __stmmac_open: Serdes powerup failed

Presumably, the issue is not seen on all users of this PHY because both
regulators are often shared with other peripherals. However, the power
rail schematics for boards using this SerDes PHY show that it is
supplied by both L5A (1.2V) and L4A (0.9V) regulators.

This series has been tested on the QCS8300 Ride board, and the reported
issue was resolved. All Monaco and Lemans derivative boards require this
new configuration as they use the same SerDes PHY.

Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
Mohd Ayaan Anwar (6):
      dt-bindings: phy: describe additional regulator for Qualcomm SGMII PHY
      arm64: dts: qcom: lemans-evk: add additional SerDes PHY regulator
      arm64: dts: qcom: lemans-ride-common: add additional SerDes PHY regulators
      arm64: dts: qcom: monaco-evk: fix the SerDes PHY regulators
      arm64: dts: qcom: qcs8300-ride: add additional SerDes PHY regulator
      phy: qcom: sgmii-eth: add second regulator support

 .../bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml |  4 ++++
 arch/arm64/boot/dts/qcom/lemans-evk.dts            |  1 +
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi   |  4 ++++
 arch/arm64/boot/dts/qcom/monaco-evk.dts            |  3 ++-
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts          |  2 ++
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          | 24 +++++++++++++++++++++-
 6 files changed, 36 insertions(+), 2 deletions(-)
---
base-commit: 0f2995693867bfb26197b117cd55624ddc57582f
change-id: 20251124-sgmiieth_serdes_regulator-027fc6b15216

Best regards,
-- 
Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
