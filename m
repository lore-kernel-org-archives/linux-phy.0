Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC22EC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 20:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TRheII50Nmjjp1jY0Ld0rmT0dL6uQdgZb8F9UlSrr+s=; b=cWfOzkykTlWH3m
	kLuJ/buf2hQNJf2xrUkaRpsjM9uhAKTUW+xgJh33evN3uOU0Gb1sNTIs9Fy6hUMzJssNf1OKE7BDP
	1O3u5e6Go47ncs2kR6irEOctk0dcDrMlrPGFRC6K0u79KbcFaIrLUTFekAvynnYuezD4z8kss3Dik
	Zne+8kqDLqqpMdoFFyHs018uNN/7xSfdKJ0qcMiqlPJazMRxCsach0qLokeiUrjHflzPrYuNYkh9s
	Ivjpl1+eC/BK6+qC28iVgmmIjToivU4yKd8o9EeJUvghGXAWeb1iSxO5SQTI1CpPJXDbO0LQp+MRh
	F+V1eqMadQaAcH0VQ9ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTm-0000000Frn2-1UyE;
	Tue, 07 Jul 2026 20:33:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTj-0000000FrmJ-3SGa
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 20:33:17 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 667J5VK1509579
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 20:33:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9W8kXXmEwm1yikiuYV/Gds
	qOtO+zyMBhGu2oOaEsvuI=; b=ILFGH1CXb+c3n7EqREyxaG7ngb1be1xqSIQnYm
	ff0iL2qymkn2KNUG+q860YOIdOxaYGF3kQ5tKqBNajjy93ue/Bb1pG8pPEruLK0y
	aNeKosipVKMwwCuMVvGhpXzbXPR7yJWbp2uesSrEu+HixRcpl+CijDNZOv6KtDdB
	7WhgDYhFHpxTprQ8MRgStm8kobCHcnFbuv2oGLg0uPqyIOkqju8bQHpeD2fB6wzp
	QHvMvrTc7BNwD7zdz8JtKi4wwq1IvUO7ynk0y+lRo7uNAg7fUPyxnIng57ppV+mK
	Vg2VvOLne+Ira+MdyrVE9z4EzipFdxbVqgqtr6LEqDUc0rRQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8wep370e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 20:33:15 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-381250979d5so4630391a91.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 13:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783456394; x=1784061194; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=9W8kXXmEwm1yikiuYV/GdsqOtO+zyMBhGu2oOaEsvuI=;
        b=epVs5JNAIOa/6gPUMZwLiRFYi8jmrE8vKCZgxftr0DnthZbEaDwP3RjfKJdVhYuySQ
         Kw8RIpJa6j+uvEH0XJ4Bmd059UXV3UbcT2/1d3me4MUHuogTWG0RGgq6QR3p50Sl3FLw
         NwI52QS1E9HJ866SQmLZWn2RakrrgV3O7xVoekHr+PryhDLVAcxmulS5wa3+eeKFXT79
         tKIAv5cEjfk+gP1bjPg+xoUcmVv1jFZrHic48J1FRj21XJOa89JAuXFV8JlDcVcrNj8A
         ql97MgRyX1l096n9Bpv0rjiqAtmDWQEZcuLKHlUnWguwBH+vRF/XhQIErMFsA+TBKtBd
         cBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783456394; x=1784061194;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=9W8kXXmEwm1yikiuYV/GdsqOtO+zyMBhGu2oOaEsvuI=;
        b=Zh+qPlULSh1xW3Gd3KhPnRhg5h6L/z3npwczd9V1C88a4nNkyTNqzkr5iVz+7ggA6W
         nBnGBkgeDABgwO2SaCU+iA3B+Fw5UeygDY2n4yfF7G8Ek2jPZ9eNf/9BZ3QVNn5UoKzQ
         KDeUYBH8NqPV0o9+087arLCmeUTT0BtjV+NE+7lEfZsvmugaCGalzMVHsL59H9aNVjPt
         fuvR+UDt2oDbsAiQtO7dhfkL0Ns1HI7KUOTS3qv8lRLLrYNcpXLWOwGBFQeTD+am9mX1
         3da7QU18wK/vUdNPBdp9AMNNN0ajcReZs+G35p9TKJxeT7qPvgWNb31uzMjNqMWIo90N
         H8CQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp7IHsP32ZTV2+2E7uWfG+slkSI5vp4JKNpcJ60EluALGEyDaZ0eRFzKLW+Jd403Wh4tH/A4xVUvI0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRwwRhUR53EcMQfq3cFzhBp4DLb7KsONcLIMjkWoYPM2HEB1c+
	X+eb5O7rHzck+aTifzMgjdMLmpJRgnPXaGA6xHS5HQrqk30a+ZOLULKusLwjD/yCKA4F2pyoumB
	EhduSF5Hb5O1kboPOHk8A7nrhdvCR37pOBgDQ9am3sIeEPSeKYAYrKysCe3fwkORWEhog1lvSGQ
	C9
X-Gm-Gg: AfdE7cmnqRN1jFWmpkQ3K/okYwaFhkqqlNSgA03ZsIe1lICH4FhGax/RTTq0tPdkxMj
	UXbowozU2PH2WMn7pQOveWFvvrs9dvQSP6xN5knv6H/oXG5RectGsicRobLY48f0LqLQXvqQTWn
	8aLRfX/N4lXrtLd/V+G3wUYlww8cs/1Af+dtBFtZxlZIk3gHzeyJXyhk7UObb3eTcQPL/ETPyqu
	wZXxPUPYdYce+Hj3Skv/Rxod3DQ5npTwtKAk6hnKXn6rcYCgW3dMDdTUnakhVblklz1qVG4zVSD
	VSp7hgjbMFO8UaT4bm1t+272x/dFfOxoDeWJ9DKGtG4+PINvscGZkfV5cy1LqwV8vfeIZeSno+R
	keuE57kAklrQJD8Fu+cajzOzZcdg21wWzCNyWqR1+6+l5AvQS
X-Received: by 2002:a17:90b:562b:b0:387:e0db:bc2c with SMTP id 98e67ed59e1d1-387e0fa6abfmr4419235a91.34.1783456394262;
        Tue, 07 Jul 2026 13:33:14 -0700 (PDT)
X-Received: by 2002:a17:90b:562b:b0:387:e0db:bc2c with SMTP id 98e67ed59e1d1-387e0fa6abfmr4419214a91.34.1783456393688;
        Tue, 07 Jul 2026 13:33:13 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174839f89sm11975804eec.10.2026.07.07.13.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 13:33:13 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Subject: [PATCH v4 0/4] phy: qcom: qmp-pcie: Add PCIe PHY support for Hawi
Date: Tue, 07 Jul 2026 20:32:45 +0000
Message-Id: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAG1iTWoC/3XOTQ7CIBAF4KsY1mKAobV15T2MC6BTi9FSS0WN6
 d0FjdH4s5nkJW++mSvx2Fv0ZDG5kh6D9da1McjphJhGtRuktoqZCCZylrGcNupkaddcaGcsUlF
 ACaAl54Ak7nQ91vZ891brR/ZHvUUzJCQ1GusH11/uBwNPvaddfNiBU0YFzHVRSsigNkvn/exwV
 Dvj9vtZHCSdCOKF5Ex+IiIiGktWVJDlrNJ/EHhD+NcnEBGolRRGyQyV/IGM43gDIKHOlE0BAAA
 =
X-Change-ID: 20260506-hawi-phy-pcie-283933b4113e
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783456392; l=3439;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=gVizImy89dLlQHCSXj3sY3Aa7FEYtyCZy0xM9oJaFxY=;
 b=CWzG8LfkPqz35P743PAxAul0qjSWPYaaSUO2nGonYTWvGqz2FvPIhY2fUtcdJWhhlW2eTAhZZ
 qgEuJ2MHPPeCbgD6LgJP/TWoHSFKkOjcWIUYQ0Zh3V6yEc5ZArerHuB
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-GUID: vOuPGzDkIPbEURsu3vncFwybEy554umR
X-Proofpoint-ORIG-GUID: vOuPGzDkIPbEURsu3vncFwybEy554umR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfX8UBTDbUyBLjI
 uHl2Jw8hcmwevY1Dq7SVXFom7ZfaOcuSUaUW4uQ93raOP8RqYYaVWAUSSRIikXsALJ/5URZPiVA
 gszFZ7fVx12KwoWtCawKWNBLj+LwNJhfj9Zxx6rQt+je7VrBJVcJKDdbgtHzJqVH/l3jMVReq63
 3WIAGeATCzSJiDOtfmUwq4OU7tSsKdgN2+DjW15Q5R6JF8wESYDxG3lSJSPcBt1Roor84+9Xa1W
 TR+HTMSVZgt+OyJO5K4J3UDAd/RKdJZuZWUkqAlAQY2viSK4xkUhGRAsSEmewB3EseeG5rX3Zus
 G7eLCs7eACdjFUkbufJvm9XKC13w8kgxRbgRmGAMHUlwXdqq+b5rvJ09lS2NxZ/ECJM5m2Ou0eU
 7YKa+9zce+ghhgEpBsQOgp0niSmy9lPn6wQbmfaHR/UnseFY4pvdqZVOc3XHxwBN9g2GL1PlQZd
 xviiXiuAWYEz5qN+sgA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfXyBxfLTWrZ4e9
 ssHW8crJ1VyKXdT3dk87/dClvXQUqmwxAWQBBMOmE3Lz4GpcUq8CFxySTf49fz8r8Cbhf23KFcQ
 +xWiTnqAOhzU4w55oOizvN6qsG5xvL8=
X-Authority-Analysis: v=2.4 cv=atSCzyZV c=1 sm=1 tr=0 ts=6a4d628b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8
 a=JfrnYn6hAAAA:8 a=NdRViCHAqdO61CPby4IA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_05,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_133315_877679_E30221C5 
X-CRM114-Status: GOOD (  13.77  )
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

This series adds QMP PCIe PHY support for the Qualcomm Hawi SoC. The Hawi
platform features two PCIe PHY configurations: Gen3 x2 and Gen4 x1.

The Gen3 x2 PHY uses v10 register definitions, while the Gen4 x1 PHY uses
v10.60 register definitions.

The series adds:
- device tree bindings
- v10 register offset headers
- v10.60 register offset headers
- driver support with PHY initialization tables for both configurations

Overlap:
The series has overlap with "phy: qcom: Introduce USB support for Hawi"
by Ronak Raheja (see link [1]). Both patch series introduce a subset of
v10 registers (this series for PCIe and Ronak's for USB). I have
coordinated with Ronak regarding the overlap, and we can update the
series to resolve any overlap based on the order of merging.

Link: https://lore.kernel.org/all/20260508213234.4643-1-ronak.raheja@oss.qualcomm.com/ [1]

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
Changes in v4:
- Rebased onto v7.2-rc2
- Link to v3: https://patch.msgid.link/20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com

Changes in v3:
- Squashed v10 register offsets into a single change
- Squashed v10.60 register offsets into a single change
- Removed USB mentions from header comments; offsets are PCIe-specific
- Reused the tx offset for the v10.60 combined txrx module instead of
  introducing a separate txrx offset
- Link to v2: https://patch.msgid.link/20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com

Changes in v2:
- Rebased onto v7.1-rc6
- Patch 1: no change (Reviewed-by carried forward)
- Patch 9: rename QPHY_PCIE_V10_60_PCS_PCS_TX_RX_CONFIG to
  QPHY_PCIE_V10_60_PCS_TX_RX_CONFIG to be consistent with the
  naming convention used in previous pcs-pcie headers
- Patch 10: update usage of renamed macro
- Link to v1: https://patch.msgid.link/20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Matthew Leung (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
      phy: qcom-qmp: Add v10 register offsets
      phy: qcom-qmp: Add v10.60 register offsets
      phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 375 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   |  18 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        |  22 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    |  49 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   |  47 +++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  10 +
 11 files changed, 740 insertions(+)
---
base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
change-id: 20260506-hawi-phy-pcie-283933b4113e

Best regards,
--  
Matthew Leung <matthew.leung@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
