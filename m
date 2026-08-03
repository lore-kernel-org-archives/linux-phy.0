Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CA2AC55196
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zLV5Q/aJQ6r/90Qqusv1X+nv9PSvnv7NWWI6v5v0qnk=; b=r5LNt6oJXk5feD
	xAhvUGbfx3KeYS4We+FNw3VQMM/7M9pJ/KeNl9cco6Uw1pAbQMZzequ607lLvEgXHOsxaMHxcAJoQ
	zZtprxau8MeSGtBHNGj33lUdx1cqB7QOijxpTDTozCDyJS7gM5SIAyZL8/6layxG89EhqYII6edAR
	BavVo9sktWuf19P5GjyrcrHtDnKn7VXg7r7NubzB/kYn4RIp2yGoot0ABKyPlpDJxkRLGNYj/cwJa
	HuwWyd3tMo9knGpAqbJqWNRDBZsO6wqIjnTbeN883xCa37aJO4PTTNVCJPpo9yBYRcOcFzERRNVoD
	em+qmt+GLDVaZGX0MSfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyKq-00000000RBK-04mh;
	Mon, 03 Aug 2026 19:28:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyKo-00000000RAv-0V90
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:28:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673Gw9vd1529728
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 19:28:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=N3tFl8kBLYf1uAtp7p/G52
	iZLQ+hHS93kntf/l2tBFU=; b=EEfETHIitGq1Z2YOhAte/3UKJPoXSlwVJxDou5
	f9LctNIp0pabbaFaxyANYCCuTvocp9Vd+HEnGQnMmTFBIWgjABie9gSJdwaViXQS
	ce7v9pyWRnhtUEqEhOgixaGUvfGBdNcqi79yy2Y6K1BuAYAKZ2xUziOfRyy3bK22
	2hzt8NuY5DTw2RTVkXqdoyIDQS7+zbIQGykoRgMPLr8Tpq9aAKS+aKu4FT5nuvok
	zAp7kSsECitZ6vL/Wcw+pZYK9ILHR1bp0O0XwfbJg2vnOtKScUTxE1MvaF4QvATx
	BbaTJWLrXO+SGbC2eOPHnsX0oPUOELNHgpJH650KI8fMcGrQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftnrbbba4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 19:28:24 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cab3e9cd922so2484423a12.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 12:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785785304; x=1786390104; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=N3tFl8kBLYf1uAtp7p/G52iZLQ+hHS93kntf/l2tBFU=;
        b=ON+RoEWS2N9NXZpKBOf2piH/cp4jRY5/XjwbKuA+KSTdEKXP6h5zoCsd5FIwnFhkiq
         xd64vZOnEUQQtBK5U0jf2dBWUlS4/KecM9Ff+WzuyoBTa/hcuKCkkQEAmTj8yrF0SEEt
         LKhMxQxC5SjqyIJ9FDqVm9LP2TnkuEzCjCMFPWBeym16A8wZ6AEOd5BRpGBFmcFTg2so
         4d0tAgQlkQ7In+0hFb/9pnkwzA5/JsgRUvOn5PVeRswny5Awq50EYy0tJbhHGHpXH9a9
         VEoMLDVzFK8KezaIAKRlE8L737AE/+k3cYvVrvjwqhXpDEuxCKch8+ecLWgUhKm3hW46
         6aLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785785304; x=1786390104;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=N3tFl8kBLYf1uAtp7p/G52iZLQ+hHS93kntf/l2tBFU=;
        b=n/EBLkQzIPP2odyCL7W2DYetBO81Xr4PgzWS98HYG+mtVZqLCTtH4wEG+3Fx+kizQ3
         mdWeh4kZLOcrnAFZpcrKDk+WkRHa7lEqKaxTEd4mUEyeLYQryQFw6A6LspBY+OCHraGe
         7Bf+53G8mRQgdV4vF/TMO62Ljn/DroGpC6NSbr0TBIqZmM9bI4Qz+hOJxsbduOBbwTp2
         ml6+1T/1P49Fcai3zAEV4dG/fiW66RIheK2Mai8gq8OzaRKlBhlbhNFpCe5BMScSzWGC
         jHXqtOOPNk85xg8wVfGJe7iZ1Kr/81vVzRRctHSIGG6RGYfyvPdqEEbbDYJevMiqXTEg
         l6Uw==
X-Forwarded-Encrypted: i=1; AHgh+Rp4e4a1q3UxsSsxnhpRJ9QfHToVNf2tti8vODvjv7SsVYIjWw6ojao7G6k5rTWMUuZBAwsaXgyjYdQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyT4K1iA6PlG+6RbobY1iBs781rLgv7sZbZdHcSxhb5C0kPoUZK
	1DmG1T2BwJkQ8eOkwDHV5qASuulZHRSCKqRcO6mSHHHl4Jbodfm5kp4H35D10gVme9WqbI12+D1
	ta2HiJ6uKprSYAOqNrOUbzf5UrAVml552FEAw1FGn1Z+960l713jVcot/Os6lgd06ja02
X-Gm-Gg: AR+sD11426sXRKqPjUoTGOvhHAYdOOsI5QhkQB5stCTXzSsGlCYv8hbjmyLXgT8T/hl
	AHCcFV27RpnmDZxhL7wSbLW/7M2WzzmqODpZ10VlDIVQJ0uycfy+TZLAF1LkZ0+zuxPxj4ItSRh
	rVBS70qQTXPVceWu5rcbIGb26hVWDivrSb3DCFon6Hk/jEvWvLErnW87+7rWAdDIj+CT19re4Xp
	88gjpLiQkaC6tI77VV/sirtUfE3B+zv0fRzZTKUYtbzoY3apQ8VdqM3UYZybV8oYq6ZbT6hloPq
	2ajdWuModcbdsLfW4xCN9C2J+skSZg9mGOJpnDCNXm/BDeDqhMqc6sDHGD5MDe5K2w5Gsfpd9jP
	2/H36gQC470+lAhaURzOoyXZewNSp0w==
X-Received: by 2002:a05:6a21:498:b0:3c4:3672:ba2 with SMTP id adf61e73a8af0-3c92a98d45bmr11342925637.71.1785785303683;
        Mon, 03 Aug 2026 12:28:23 -0700 (PDT)
X-Received: by 2002:a05:6a21:498:b0:3c4:3672:ba2 with SMTP id adf61e73a8af0-3c92a98d45bmr11342878637.71.1785785303153;
        Mon, 03 Aug 2026 12:28:23 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153dd4e5b0sm38622738eec.1.2026.08.03.12.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 12:28:22 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Subject: [PATCH v2 0/6] Fix regulator voting for the Qualcomm SGMII SerDes
 PHY
Date: Tue, 04 Aug 2026 00:57:56 +0530
Message-Id: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALzrcGoC/x3MWwqDMBBG4a3IPDcQoy3WrZQixvzGgXphxoog7
 t3g4/dwzkEKYSjV2UGCjZXnKcE9MuqGdoowHJLJWfeylS2ML43GkRnr0KQ2QBtB/P/adRZju/6
 NZxW8zx2lxSLoeb/3n+95XmFl44puAAAA
X-Change-ID: 20260803-b4-sgmiieth_serdes_regulator-0cf9e58dbb12
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785785297; l=4211;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=kcWOMlj/WAm/ZutVbNkBx+4jW+1Soq90wUY0HzJezuw=;
 b=avz68rJMCtL0b+QIapBwZbqEwAuODhVGmCfme0SBOB7pYtKXFDnmQlcE15wQ3sK8wemigAtOI
 nESIZTZM4mrD9rKCPoYPfueKFGzuVvoBV2yjmd0/KwJtTeZB+qz0UcM
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfXxJUWNESC1iW9
 6TSr3BXThvBtx7YFsghj07q3eHfA4oxTzYOCBgdzDSEo4iRU/1vY9OogMKj7rRVhM2+KgYJDMwf
 qFcSIjPC/dVpB1cvWnTWuW2F9U6MoJc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX095DJvgpsLr2
 J98N9iYjQsKRozAsboh+xNmkgMdUFIhaTxytXTiYKIBFalf3zXo/QFcF7GKjSZSjjPl6tG0sl/e
 HOvw1/47waVID7/riW0/eScR5+fwQL87Dl8wuk06PAsisNBsyemnoohnRyUFxNJy56gKzB0weM7
 y6gBgI0gveVbi40FbR9ZYb7o/SM4mc+rtjhijpoGaasAubUsEOFcImmSZc1O4DfAK6CVJRAR9jF
 JKblHT2ohah85PlvLLmp06Qzdedj7ZwmlYVnEMwjUt6Zv/yg8cq3Rt3/y1i3b6NM1mEU9y70WDr
 4zinK0qXdtW0oOfQijez4Y9bvWJYe2bYPnKr0Pxs9n3rt9IwdThvZoZYmj3A6eIzujwnblPScZU
 4Nhty8zZsGw6KFf2AqYux+9JKR/ThvPvN1XA1fDBfzCLRr02dzLG503Q2oriQ5ftdon0TN+6lzo
 orz5+6WYGsKQOlILbmA==
X-Authority-Analysis: v=2.4 cv=RNSD2Yi+ c=1 sm=1 tr=0 ts=6a70ebd8 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=t6hOiKbQElhDP0ySfcYA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: Nf6zT2FH72Wq2gdVIsI2LS6rSaTOD_Yn
X-Proofpoint-ORIG-GUID: Nf6zT2FH72Wq2gdVIsI2LS6rSaTOD_Yn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_04,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_122826_282689_C957567A 
X-CRM114-Status: GOOD (  19.47  )
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

This is a long overdue v2 of the original patch series which tried to
address a SerDes power-up failure observed on the QCS8300 Ride board
using the phy-qcom-sgmii-eth driver. After going through a rabbit hole
of hardware schematics and power data, I now have a fuller picture of
this IP.

The Qualcomm SGMII SerDes PHY (used in Lemans and Monaco SoCs) is
powered by two voltage rails. The schematics call them vdda-0p9 and
vdda-1p2, so that's what we follow in the series. Additionally, the
0.9V regulator draws a peak current of 46 mA and the 1.2V regulator
draws a peak current of 15 mA.

If both rails are not enabled, we see the original issue where the
SerDes calibration times out:

  qcom-dwmac-sgmii-phy 8909000.phy: QSERDES_COM_C_READY_STATUS timed-out
  qcom-ethqos 23040000.ethernet eth0: __stmmac_open: Serdes powerup failed

Currently, the DT nodes across affected boards incorrectly describe
only a single regulator via the generic 'phy-supply' property (and in
some cases point to the wrong rail entirely). Moreover, the driver does
not set the proper current loads and just relies on an enable vote.

This series corrects this by:

  1. Fixing the DT binding to describe both named supplies.
  2. Fixing all affected board DTS to use the correct vdda-0p9-supply
     and vdda-1p2-supply properties.
  3. Adding bulk regulator support to the PHY driver so it enables both
     supplies and sets the proper current loads.

The patches are sequenced to maintain bisectability. With the driver
change, the PHY framework will continue to vote for the regulator
described by 'phy-supply'. The DT changes which follow then remove
'phy-supply' in favour of 'vdda-0p9' and 'vdda-1p2'.

Testing:
This series was tested on the following Lemans and Monaco based boards.
  1. Lemans IQ-9075 EVK with the IFP+ Mezzanine attach (dual GMAC +
 QCOM SGMII SerDes + QCA8081 PHY)
  2. Lemans QCS9100 Ride (dual GMAC + QCOM SGMII SerDes + AQR115C PHY)
  3. Monaco IQ-8275 EVK (single GMAC + QCOM SGMII SerDes + QCA8081 PHY)
  4. Monaco QCS8300 Ride (dual GMAC + QCOM SGMII SerDes + AQR115C PHY)
To conclusively test the new regulator voting, I tested builds with all
the other consumers of the regulators disabled from the DTS to ensure
that the phy-qcom-sgmii-eth driver held the only vote.

Changes since v1:
  - Fixed the DT bindings to describe the actual SerDes PHY hardware,
    which actually has two supplies rather than only one - Krzysztof.
  - Use regulator_bulk_* APIs to properly set the current loads of the
    two supplies - Konrad.
  - Fixed Lemans board DTS files that incorrectly voted for vreg_l5a;
    the correct rails per the power diagram are vreg_l4a (0.9V) and
    vreg_l1c (1.2V).
  - Link to v1: https://lore.kernel.org/linux-arm-msm/20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com/T/#m0b93e06a0d6a09c4c1b65c500b475958ed5e288d.

Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

---
Mohd Ayaan Anwar (6):
      dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add named voltage rails and deprecate phy-supply
      phy: qcom: sgmii-eth: vote for both voltage rails with correct current loads
      arm64: dts: qcom: lemans-evk: fix SerDes PHY regulator supplies
      arm64: dts: qcom: lemans-ride-common: fix SerDes PHY regulator supplies
      arm64: dts: qcom: monaco-evk: fix SerDes PHY regulator supplies
      arm64: dts: qcom: qcs8300-ride: fix SerDes PHY regulator supplies

 .../bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml | 11 +++++++
 .../boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso    |  3 +-
 arch/arm64/boot/dts/qcom/lemans-evk.dts            |  3 +-
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi   |  8 +++--
 arch/arm64/boot/dts/qcom/monaco-evk.dts            |  3 +-
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts          |  4 ++-
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          | 37 +++++++++++++++++++---
 7 files changed, 59 insertions(+), 10 deletions(-)
---
base-commit: 415606a7be939835db9b0d6b711887586646346d
change-id: 20260803-b4-sgmiieth_serdes_regulator-0cf9e58dbb12

Best regards,
-- 
Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
