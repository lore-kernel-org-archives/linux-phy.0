Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A61EC624D6
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5laQbCL4hKrgn/KYtOYe68Xnr8IH+YAOdNwNP8L1/Nw=; b=yboTIIKlhjnfFh
	ylmQtWlMQZCOjVz/Hc98aKs5pIeGS5GY9iWjN6vpiasEVUSaDTi3O4/JKbA2Bc9CMaV1yQQuqHEDC
	mGf9Wy5h/Nyk+kCaPgAqYLLAPaijEKWFT8H0xR5zZA85hJvdOJRbIbXmWRMqg8Kp9i6wEX8y+h/00
	XpxhDRUOKZi5cvLzpJ7dn+s87QoULK20W1+URvgQni+YIf4/f94+mIIQ7dXaDBIr5cusrvoe6s6Zv
	0+djCtrwA+Snub3Emty/UtmhG4U24a0LzlaxdexRd2K+Cbv5KScELxqabgY9ZLt6DdIg5OqpImzc+
	eXua5koCAoq1CZ8Xzn4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKX-00000004CH7-2qNQ;
	Sat, 05 Sep 2026 15:29:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKV-00000004CGJ-0CvJ
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 15:29:20 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 685EgXTB2540037
	for <linux-phy@lists.infradead.org>; Sat, 5 Sep 2026 15:29:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=1J5mbzKQXdFCMf3jwBjnv/
	NJRWMI84WrAPPqfVmtmcw=; b=LxP5jvUx2lKO/eOcO1/amnatFkIbZ6u9R5XRuV
	zabkJz515FblvKsvfODp8AHwH6L21GuSYhnl7dHBbRDMFEH82hiFs2/0poDhObl9
	22ODcFy1Pmeua3qym7an/qDSEJ3uKzSWkKFu6k8hYCB8qCLhpMphQo41ItIgfKqK
	0PDXMdn3XI7/zRh0W2pvMTUjdgh//gcnoNp/VF8nKJ44BFT7OtHHuQ9hYLICHyzO
	RHz0+kRVSVXfVA9ehghnsv+kuUgEhy1TxZlFLK9BHS+4lKFjiMjHNZeyNdNkkBHx
	4XdJhiiKLdIyNAmLkvJVfjHBa1qhcOJpqIBkPWLBkAgsgzZA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggadhhg9r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 15:29:16 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-84eee2147ffso2189048b3a.0
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 08:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788622155; x=1789226955; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=1J5mbzKQXdFCMf3jwBjnv/NJRWMI84WrAPPqfVmtmcw=;
        b=Tzp42x5zHxCwEKoy0hKEXqcbXZH/vjWE15JCmGm8PAnvlYvbA6JmvF+2UuA2vVRler
         w7PoPlgBQiUOWYdCmnxWt0/GHe/wc+5NiLSoirFnEpOMvfq8kUlFlQw1X8h4TPiW2dp2
         P5TEtIQOWZWD9bv04P+0PJCooAkveX4VEeznSsVudnXJ1dHuYvtYYwEOV9U6BV5b5UCX
         1rsbXdTJEjf8GWo+tjDer7BT0QlaPL3RCfw98x/MbMGkBLXPiI0GM0fqLvRdNpLRO+cO
         0Ln6+jkMFe+lfQogf+ZhRTVCG5hQPPgMMp8VgEt20EGnfh/5TjQiLzqvMCuFLaBVOhC/
         1vTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788622155; x=1789226955;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=1J5mbzKQXdFCMf3jwBjnv/NJRWMI84WrAPPqfVmtmcw=;
        b=JZMBz46jBJJ4Na7WjbFkBYb17VKe97a23IUm+XsVL1a0sZihPLuL2JiXkP9B5cSogN
         SywmYjXPEAoXo0ofjQBFVL21uBZ1XpE2/qxvDlyMCCrlkPmw6AM1GF5TvofJ7/0AJwJc
         malPVtu1nT32lPwnZuppYSr5jRkwJLZpYAv80iwYHZwk9SFbUgQu+PJNfrLoPJrXdf8H
         KwM34xSFGLfVrxufdnAxm8WF7zz5BZZxmQzrh4esqIkqfwSJ7fGLDQh6zNNB+yx39Aoo
         6RBj8MrgkFcxHt85J4e2FQIeEMNaVcBNNwusQAkgV+ZSh6dFu2n1kUiickTKEOxaVzW3
         wqXw==
X-Gm-Message-State: AFuF++llnR4FzDyUV5rsq06DJ9toe2IvORvXK8G10fyys7jPM36NCw1s
	YPJ9DkZch9kH1FIeAI4hM3FFvKcwxtnHTUg2p8G4q1eO+MUQjNMAk4nOTGYLVgOv0wo22b9mofw
	05gzoEL1q5ak0sD8Iq2MbWsGJUrZHIHssHv5elhi4a1dW7ISCx0j9vPMz8sloVELjC7g5
X-Gm-Gg: AYBFou0/UhRc7prhyjhOGapuhTLxWTC6uhjRaQR+8+f1pQfyWx7akzzx1nVcfAg8uOi
	W+6O6ilHToP0DPlzsoA3PpL9YJhY5pL6PVtxuHJbF/DiypVYpnPepjlCNcBqUo91Z/1c8lIpEZi
	03Xo/aVVsiXk9tvtJDz6OzE6XbJE6DXrwi03Jjh8r8MS69ctZcF0341Qxvfk1Tl4eNy63ltg3Fp
	mlzNlvpU5q5ZstnrCclIxHQU/2SLrWSuhL6P9SuSo9oc8v1nMnPt3L6s0GtBokbETTFq2usGSx4
	7c+ywvkS+HS5kklBdv6s/nK/iRu4GAa5WsUf43hl6uyUv2pn9Es9itxBuQOtS6EzBsXuhDTkn6n
	hOrMSq2rQQZlpsw6WIvCGc2GmAEo0dE3SMogAlG4MIxqKF7jilwBPOj1TTlc1WamlGR9GWA==
X-Received: by 2002:a05:6a21:7117:b0:3d8:5a37:549c with SMTP id adf61e73a8af0-3da39eb8acbmr22462821637.7.1788622155339;
        Sat, 05 Sep 2026 08:29:15 -0700 (PDT)
X-Received: by 2002:a05:6a21:7117:b0:3d8:5a37:549c with SMTP id adf61e73a8af0-3da39eb8acbmr22462764637.7.1788622154950;
        Sat, 05 Sep 2026 08:29:14 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm23592635eec.16.2026.09.05.08.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:29:14 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 0/5] Modify interrupt handling for eUSB2 Phy targets
Date: Sat, 05 Sep 2026 20:59:04 +0530
Message-Id: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEE1nGoC/yXMMQ7CMAxA0atUnrEUTCGBq1QMJDVghlDZSYVU9
 e4NML7h/wWMVdjg0i2gPIvJOzf4XQfpecsPRhmbgRyd3NkdkatFQsmFVetUcPZIlMIY9ocQfQ8
 tnJTv8vlNh+vfVuOLU/meYF038Eu/vXYAAAA=
X-Change-ID: 20260905-eusb2-interrupt-v7-22c8d8138b74
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788622149; l=3296;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=S6XBJpEz5Dek815jzmE0b9XkrXDLKdAJjoolsM8gc9o=;
 b=8BWq9KCEu1Xr+PEyUZ9vWUy23HYTgxcbm+CJXK14EYPeucN7Aj/6bD/42c4UKRxSERI8X1aKh
 6/B3WjwWnZHC7BRkzspkFzGOdKecsDCXY2lhE7zTbAzc7CGtCZrYW83
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: xOI62g_N42pAZXR_wVW0zbAuVGHnzcKn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX3uSnwicZsTlC
 dL4xNoEmLCQD3HmOdmoBE0x6qykMaha+RKfr0lXH7bQVnvGwERjVkPvrs5m77zUtM41SNGv7+aW
 D8iKu0z4RhHTtF0faZWu1N/ojzfYBgRXENPgneJETM1mlTdiNB8kGa6LTZpr0a/SojGNhX4t9zE
 kKfbkUOSMZFR86YLNIGG3Uy9gmd/jzheBS/O1j+jhFzsiG7Od6zpKPNMnwjllxyb1mywomL6h6E
 xOcY+YprcxT56Bvh96R9EGw4dQSu8yklWG4N2YBU10/E6jasp72oPbpMc0zRpxdVUokNFZQgLP7
 WkL6u+paJW/T2sDPgjBTGarPtn4VOrsbD9e9DRFrvgjBsKiRSZ2WWu0FgH3BJwr485QtSv2A2bh
 xmpHhTrBXft5D1s7Di/mkp7GL/3gK2v4PEFNTlmselOqUtx1mYTJoxO/KbFTBfAArG/7CRagjGf
 jTw9Nj1VGawlUeWMO8Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX8+DnkWqm2u2X
 3dFHdX3qeS5mbNJHx19h8jAKSuYnLBZubDeozzBtFWAZFYJ0j1loqfcPQTexQCPMfxUQGI/HEx6
 hfn1tZUMKs43/qA/87hQPW2TaZZ7WMQ=
X-Authority-Analysis: v=2.4 cv=OceoyBTY c=1 sm=1 tr=0 ts=6a9c354c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7T7YwCvgW8qH-pAI4vUA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: xOI62g_N42pAZXR_wVW0zbAuVGHnzcKn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-05_05,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609050170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_082919_222692_58916017 
X-CRM114-Status: GOOD (  14.91  )
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

eUSB2 targets handle wakeup interrupts differently depending on device
speed when operating in host mode.

According to the eUSB2 specification, remote wakeup signaling in host
mode is detected via different data-line assertions based on the
connected device speed.

When a low-speed device is connected, the host repeater drives eD+ to
logic '1' upon detecting a K-state on the USB lines during remote wakeup
(eUSB2 specification, Section 5.5.14).

When a full-speed or high-speed device is connected, the host repeater
drives eD- to logic '1' upon detecting a K-state on the USB line during
remote wakeup (eUSB2 specification, Sections 5.5.15 and 5.5.18).

Since the eUSB2 PHY's "DP" and "DM" interrupt lines monitor the eD+ and
eD- line states, configure the wakeup interrupts accordingly

Add support for a new phy "type" attribute to be set by eusb2 phy drivers
and be read by consumers (in this case usb controller) and act accordingly

Changes pushed on top of usb-testing branch. And v7 is only compile tested.

Changes in v7:
- Removed NULL check for phy pointer.

Link to v6:
https://lore.kernel.org/all/20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com/

Changes in v6:
- Update commit messages to reflect why new EUSB2 phy type is added
- Update phy reading via index rather than by name
- Remove redundant header files in phy driver changes

Link to v5:
https://lore.kernel.org/all/20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com/

Changes in v5:
- Add support for phy "type" attribute and set it from m31 and snps eusb2
phy probes.
- Removed adding a new binding property

Link to v4:
https://lore.kernel.org/all/20260709-eusb2-interrupt-handling-v5-v4-0-d4f993925608@oss.qualcomm.com/

Changes in v4:
- Moved to using binding approach as suggested by Thinh

Link to v3:
https://lore.kernel.org/all/20260511094422.3561509-1-krishna.kurapati@oss.qualcomm.com/

Changes in v3:
- Removed multiple glymur-dwc3-mp pdata entries
- Replaced use of ternary operators with if-else

Link to v2:
https://lore.kernel.org/all/20260505194242.1947891-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Updated commit message
- added supported eUSB2 targets

Link to v1:
https://lore.kernel.org/all/20260502095616.666938-1-krishna.kurapati@oss.qualcomm.com/

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Krishna Kurapati (5):
      dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
      include: linux: phy: Add phy attribute "type" and associated helpers
      phy: snps-eusb2: Set phy type to EUSB2
      phy: qcom: m31-eusb2: Set phy type to EUSB2
      usb: dwc3: qcom: Modify interrupt handling for eUSB2 Phy targets

 drivers/phy/phy-snps-eusb2.c              |  2 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c |  2 +
 drivers/usb/dwc3/dwc3-qcom.c              | 63 +++++++++++++++++++++++--------
 include/dt-bindings/phy/phy.h             |  1 +
 include/linux/phy/phy.h                   | 27 +++++++++++++
 5 files changed, 80 insertions(+), 15 deletions(-)
---
base-commit: edc1518454f6439e50a9220e9a3ba09044ea8d8b
change-id: 20260905-eusb2-interrupt-v7-22c8d8138b74

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
