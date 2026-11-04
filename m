Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24CA606D831
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 09:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jetfqEF4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Szh/pzCY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kf7Opvlg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Vz2BaGBb5wtE/A2wlAroXJyXZ00UqVjEYOq5YevwgzM=; b=jetfqEF42KTroU58fyHh7a/l3y
	FOaQ4sXDgKCHFbg/hOOuS1Xq0i0h6iSzrxP++j4ArNwvdgQPrnAKQlnRC2NHg8SSNI+mBQAjk0PSV
	Yx8LtyrWs7h3+BRN07/oKovY5g/zUkgqvr2hS2O0CuL3To39A2QBBPRYF7BMuRHnVROSfjCxQqF53
	bmwv7W9ZXAyVK6tYRr4QHDRsKwZEvngK1DZlMbMaeyo4AbvaZtWzVfTWCKWyy7wCMqPCQF8fnYaI3
	lBrotCFBQ+YKzgaIJgZsJ3lTi/ffwF8KBNm2w/bLD8gb1ZFB1zlmIx4CP3MwxF310nb2JLmK1TGkE
	iG3drYZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWyc-00000004prt-1ULD;
	Wed, 04 Nov 2026 09:08:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWyZ-00000004pqK-28jG
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 09:08:12 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A48KoXP1229427
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 09:08:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dIHAyqbJuJM8xf+TtEAHAZ
	7qkX+1IxTcwMBz+ggyJ94=; b=Szh/pzCYqzI6TkPPX1DEi95U9EljTdBKKGbPKD
	SZwVsRTYslQaY5FRA3++Q/5jBvlXwq4HVUyPgXNdOyawhAJKMQX2D/fr9sCJ5bt4
	42UxcLLwHovmFRnVwotdSEQBAlV7i/W7Cic0VtNb8CDeQckMtI2MrMnjmYrL+FQS
	ByD/LFljdEgC1Y/tI9IqEDvm0sV9FQroxFPWkj+AeyoSYHVEyP7JmQmKMzcfVW4j
	w+3BNhiLhKRzcD/cWI7NXkNd+NSl5OVts31ajapLoVjccuvX2xQ97t8MmKvq7zEd
	52DytzliDoojXSimvM4Hd0tMhxR6mqOIwgv0srUJHALWQlZA==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqn8njywc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 09:08:08 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-85d502ea62cso624144a34.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 01:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793783288; x=1794388088; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=dIHAyqbJuJM8xf+TtEAHAZ7qkX+1IxTcwMBz+ggyJ94=;
        b=kf7OpvlgNqqU4nCHG0U9lbOx95dU1ux1ztNVphatur8lgVu7kWfXO7sGhcyJum9tsg
         5oHGM0zFoTfsrHCv78xcD9PHyUh7kifM0Unk20OGBVLKSXCV89shNdrZjfFgZvR8htSP
         k70fbwIaqg7d6jyHThGAnd6VDcxQTqDl2APQmG4W4g4UZBXGYXg5KFWSeMIVBq7XNnhE
         5i562tnrnYHGj5tWd8/JF6QoYx03zZ9+6jm7w2qOWwglR1YqDK+36QXQjdhvf4BkBAgE
         E8EwH7E//uBQ6CKv3bjuyw6JeIeDxhhUNdNzoi7NwPg3dlurKijXnFNecDaMlqIewC7I
         GrpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793783288; x=1794388088;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dIHAyqbJuJM8xf+TtEAHAZ7qkX+1IxTcwMBz+ggyJ94=;
        b=nhroWRT6Sc5+S4Pq/jml+Br3Kf5IOF+pie3GBIkKvYABtS2Qk1XCcMY2XMcWI+4O4j
         NztwQ4CFvXxfTcvLXx9o9nvydhxXdolx8loEDGckc0bzxCFg67bP2XfrccaSzKbi7oGr
         WZsAqnlcSIskOYoFHcODEmfcXavW7qW1kfejHkpMyOWwEUZgF2cfArGOYRcQoq9CmeSV
         PT+pJlkL/mZF1+RUZdoXDGlDgKY5wGCiyj/kibpFG0hDtHJOJfiH+nFvTjHHM8vKAizT
         iagCJhFtR//mNqpWVEdIobZFTHFjmXYKLdFYmi936QCy0eNx6FUHv0pKjkFa93uJKcbs
         n1kw==
X-Forwarded-Encrypted: i=1; AKwUvBxQ8VrZoNDRfFUz/vYJWlrAznwb6QS+rl6cgkv5sOmlMgnEiUdADwl/juuvcAuC7Cq4sCff8YRW9Ik=@lists.infradead.org
X-Gm-Message-State: APuU4Z9QZSI5CPtUr5QWvFp8DOrMM49YAPfK1obMUpHZ/Cb9lcD4+w9C
	jpHZIaSPY8WiLdnA6n3VJtC2koFbK4k2KDBDwHHABdxtWz6qASto5CXDuQtGpqdBXRLLdZwk46D
	1uD1lpY0Cktb8ZndZBwgVQBFfmECpxoXdcn7t7F0BPi2PSoivklhwAeF8R3O0mTUafY2B
X-Gm-Gg: AYBFou1QUCf4gezyl7m5vaBQyKQVhZ/kvjOIkj8tBuMqqCBql/G9xzEh8l/HCAMlCC5
	zdiCuiZQZA4PNV+hjtZm5uGcRzTOj6+Ok131niwdSkxDaylQGGRp5QiXI/MbhPPCI7cmIO4DKJA
	I0VG9G5ThvZWmCEu65VpyA8fU/amWH51WMCLQJPiy6wfPeQ3OZY3bYaOpw2q+RrCVxI3GOntvEk
	RB225DAb6g7GLqt0cwQcm5pV2Roli5P+pJr7jA9b5L5/Hwi/Qp02E25ZUwgPQs1xnmE0nlZbsYt
	THH0nWfo06+MZv6zcCqxRS03nNfksxfBvnK4jd5oL4Fs+7vxIXjqQE885Rovq1cehQP+CsIqduf
	6vj8ehJWNNi3Zjh6GEhmOCIvtrjazOjbeu4OhNuGNvZ4wqgeC2wWLGabalPktaQEtyjBLs8gRJT
	IiBLxssNW75WzGs0Nj5cQ=
X-Received: by 2002:a05:6830:6512:b0:857:52f3:a5fa with SMTP id 46e09a7af769-85d361162aamr12702413a34.2.1793783288087;
        Wed, 04 Nov 2026 01:08:08 -0800 (PST)
X-Received: by 2002:a05:6830:6512:b0:857:52f3:a5fa with SMTP id 46e09a7af769-85d361162aamr12702403a34.2.1793783287669;
        Wed, 04 Nov 2026 01:08:07 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85ef3d768c8sm1519846a34.8.2026.11.04.01.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 01:08:07 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v4 0/3] phy: qcom: qmp-pcie: Add vdda-refgen supply support
 for Glymur
Date: Wed, 04 Nov 2026 01:07:59 -0800
Message-Id: <20261104-phyrefgen_1104-v4-0-ba508fc6ab40@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO/16moC/yXMyw5AMBCF4VeRWWui1bi9iogog7EoaREi3t1g+
 eXk/Bd4dIQeiuAChzt5mi1DhwG0Y2MHFNSxQUUqkTKKxTKeDvsBbc3UQhrdKMxNmssM+LTwSMc
 XLKvffjMTtutbgft+AFq/88ByAAAA
X-Change-ID: 20261103-phyrefgen_1104-1b4a2e9b7918
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793783286; l=2118;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=k51MqTDW41CB3iyARbpzUvcgecZ+3Ncq5B/uspwZ0zg=;
 b=/Uf3U/8snPQDj1QVx/LHnLiITObnl/oE/Kcv9acMok7n79ZjF6k7AQ6qY2vodmPIUFkyp73JS
 3EVNn1M93wxD89fGAl1W86kDs8dxMACqJRG2THI13Z3M+L5OhNRgs9r
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfXyG92d4xi2t4k
 MIuHE88sn6Wsvn5e9OIr6VrPeT9YvYFLmUO9/gdyuG5PLWNHu3CS5AV4h3EazwJ3XruLL4K89Rt
 tPOGG+EHTJ/Gkj+0GyIr9CvANCor/B8OUEEZbPqfAHEaX2tsRIiV0TxWen6WHPdesy6UHZ13d3o
 Xk7j/98dgxqk1G3vDbDXf6KRVIr7MfsC5s8hbNK1aLTYqCOZiqvp+DCZkQ2rM8Xa6HZlITtDsBp
 jG67MdTds6yzG/M3M08fX+0l07VPUEvB1XSklNR0jXFuAWKyMoPLJaEBsuOedjDtYesfHqALR3H
 QAOc9mvSI0MUtIOJzlVe37j8WHZ1ygpyO5QDYL8NnGK0Uq1bOh3+Nm+uuL/DvECs3Fp8zHOAS3K
 nuHjd9JFP3nwVhFDvUHRHwE0w1L3px8Hy/onYdinv9urr8ZX+T8aiOtma79qSNOrAP8V4hD55gu
 aa7xO6FV/Dn50gcpQXg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfXxukG9zXRD8iB
 nEs0+mdI0jB6qd9xIC5vm+lBWopKBbp0gPPckziAF8F7nj1eGjizQEW3qVwaNj7uFfhrmT43JXv
 7BAVxkjzCs6nNVSLqVYJwGI0M8p/CK4=
X-Proofpoint-GUID: cBLSPHZ6SQt56RSvHnfh1XaWEdFlC5ib
X-Proofpoint-ORIG-GUID: cBLSPHZ6SQt56RSvHnfh1XaWEdFlC5ib
X-Authority-Analysis: v=2.4 cv=As17T+9P c=1 sm=1 tr=0 ts=6aeaf5f8 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=zVOB84EVDXTtx2zVcRUA:9 a=QEXdDO2ut3YA:10
 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_02,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_010811_583639_09F71583 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The PCIe QMP PHYs on Glymur require both refgen for stable reference
voltage and qref for stable reference clock. The refgen requires two power
supplies: vdda-refgen0p9 and vdda-refgen1p2.

This series creates a Glymur-specific supply list including the refgen
supplies and updates both Gen5x4 and Gen4x2 configurations to use it.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Changes in v4:
- Add reviewed-by tags.
- Link to v3: https://lore.kernel.org/all/20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com/

Changes in v3:
- Add vdda-refgen-* porperty in all glymur and mahua board.dts.
- Reword commit msg.
- Link to v2: https://lore.kernel.org/all/20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com/

Changes in v2:
- Add dts patch in this series.
- Reword commit msg of dtbinding patch.
- Link to v1: https://lore.kernel.org/all/20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com/

---
Qiang Yu (3):
      dt-bindings: phy: sc8280xp-qmp-pcie: Add vdda-refgen supply for Glymur
      phy: qcom: qmp-pcie: Add vdda-refgen supplies for Glymur
      arm64: dts: qcom: Add refgen supplies for PCIe PHY on Glymur and Mahua boards

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 16 ++++++++++++++++
 .../boot/dts/qcom/glymur-asus-zenbook-a14-ux3407na.dts   |  2 ++
 .../boot/dts/qcom/glymur-asus-zenbook-a16-ux3607oa.dts   |  4 ++++
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi                 |  6 ++++++
 arch/arm64/boot/dts/qcom/glymur-hp-elitebook-x-g2q.dts   |  4 ++++
 arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts   |  6 ++++++
 arch/arm64/boot/dts/qcom/glymur-qcb.dts                  |  6 ++++++
 arch/arm64/boot/dts/qcom/mahua-crd.dts                   |  2 ++
 .../dts/qcom/mahua-lenovo-thinkpad-t14s-gen7-lcd.dts     |  6 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c                 | 12 ++++++++----
 10 files changed, 60 insertions(+), 4 deletions(-)
---
base-commit: d6bcfc94eb4da6e089c5473970cd96727292fd97
change-id: 20261103-phyrefgen_1104-1b4a2e9b7918

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
