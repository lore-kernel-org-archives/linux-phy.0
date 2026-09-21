Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A67ACC982F7
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 10:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lu0DP7G6zU5IJct1jSwQO/VRAgu982TIESChOK/E4aQ=; b=yqONdg3ZskLlNA
	5a5Gc5TX6fum6s7SV5sDEWsRpFXTuVDzKrzsglb/EVNqE6H1XJphSk5rH9AK8QLRBl0uSOkDQk7bj
	3LV+fReNKr2V2JZO5eF9M/T72OyB2oRo6G/RSBV+jV0ml2BF3eEOofieaDmz0/r/1PmdYjOFv6tz/
	9t2ID05jviru/EY6gMd+64NgPHwIHdaORaX3kHjj4rjkA2UaRVHrLm7ex5RgpbCr6kwqw/J/Nek02
	OxV2ldZL3dAS7y6p9Qx5APZ5KcdgvUPsp0EKfI+ESUe3cmTzAe/xUCe8WDaW3zfDsgZUznrKRy+r5
	kZ6RkT08wGlWEcix2SUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjb-00000001nMu-1W9y;
	Mon, 21 Sep 2026 10:58:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjX-00000001nGW-0QkX
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 10:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=JPpwA4CKVsWowfWLA8IiUgS5i1q1YmC4GCe/GawbpzM=; b=atrpXfeW1SEElNsxJcC30nbrNj
	H+CY15m0oAPoeNaR0lKpF7jhmwOK5owM7jYRbMqB29JKVcSrbGU/Cizn0Ao4sp2jHdWsXoUJ/zCZR
	ISxgAkImfNS1h5tMlPWeHpqGpayB93/c+czetFFYSkbDzbBxHNjDdohMUXZmNs5yqY0z1OW7gBvTI
	FEnjPvfVGd6n6TbafScCB5PqwDzXwacpTFY2aRiDwtVcKwG+YSDXrzuzh9EIGfbFFucXSn0Veinfp
	FyN33do8hpyFG6OPGcm1UoNCxk1q6D1GoFtnG8sPo2G5Kbj4JNsAkJid0oSuDmQkZgfuSSJUOTB6t
	p9/W3srg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8bjJ-0000000C9ah-35B1
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 10:58:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAeDOp934672
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=JPpwA4CKVsWowfWLA8IiUg
	S5i1q1YmC4GCe/GawbpzM=; b=UjUuvhP+afkcbhGiOqqkSP2ufcdIX/K7rSlX6Z
	RHMaHbTHjT0t1BOYcar9AL8gHNzAyckAHe9TihdEK6MIp+qQPHVuc6hvtiRDSoJF
	NmCp4ddDC1XqWAkBD8KFuoiPvl5xhYcXo9rfxd0vn0YOh/IWxVem16HkxzCCLYj9
	flJ8+XBjuShXkIbskmJqANZPld5p4ZK2x4zIi5JgWI3zWZLm3Y9XRMTAuuRGzs//
	I7M5SM4CreAj7OB4N+BXc2pMs6of3Gzvxc1qKUKiEzS95xO+oPsn6fb8nCdsxR9+
	FDw4SqhEo1/AxMlBpz0T7b/bWyhK6P8tws8rmqVsmX3PtfMw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtq8ba8nu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:31 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8696b921ac0so4459916b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 03:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789988311; x=1790593111; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=JPpwA4CKVsWowfWLA8IiUgS5i1q1YmC4GCe/GawbpzM=;
        b=Aw9R1ksyVYuOSTnJYgw+qaObtfjgFjWqW9O0eEDtfiVE9auNPSzCdM9yqyrVA/8S/f
         GdDCq/m+A/YjUUKPWn1E0Gs3pn5omYC2SY9IR+C/sVAZVnEG8FCmg/HroaialoDZb+1R
         vOHNa9C/Z9F67Epp208Z9t+ruwKxJDV5pe5hD0H2Gd6N9Mh/EdeaNBI/RGPEVOubjGX4
         /miRFQYWdU9B4thyjcRnvhL4y44HoqEwYoElEGDHFuCQPuSuhJO0OfppOHWTwVQ+MrbB
         QAkWRBOfRwRL/velVdcbx8k1KZ2aaC2HfhP8CgukduNsJvuDGgO/yU9Gse5BVAogLVm9
         QXNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789988311; x=1790593111;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=JPpwA4CKVsWowfWLA8IiUgS5i1q1YmC4GCe/GawbpzM=;
        b=kIaZ1aFYZOBoRxlNzbxKu4twjPNj8mI5FpkTGPxxDDzz1sWG492JFBZI5nx8iJCvsj
         mv3Q5vNkIb699+popOnjMgOi7BA5/Zl4yNhMB7P+9KSSRpW6PCGZ4SFML6ep/0cy0c2C
         hk05BokgiU9t2d3Dh2sIUBNvxmhRuCaFTDY4hIxi+QuAvCY1kKBPwkciFz/yv1hS/Nmc
         PPe/I1779ziaBJaRBnMRJIYNo0r6en0N+1yyQae+j/gKS4f4GvBUPJPoMs56jlXsHSJ6
         LyH4c2dnN2HW15HiVcufkVqhLTvu+f1ZiKxdXmk8uk+NydM0K1+owwfAigb50RFHCTJz
         jUPQ==
X-Forwarded-Encrypted: i=1; AKwUvBzbbmMpTFlxaKFiYSonGsusoMIoi8K8+OflSunkCGdeDrkKWVA/nmMAT7aD8/aKuUk5CKz/WNgL95s=@lists.infradead.org
X-Gm-Message-State: AFuF++n3qWiYBc58gkRY/VH3VgIxKPTZJy2yNR6OcIJ3PrHoCXGFTZKv
	0xXj6TscFDqXLnSV5abSwKwQcQbghAzjxNJr8h1eXQ/mzPSMTPAMZvUCoORuDurL8T7g4rLPNTS
	KTEEb82kFJtEW20Le4zMzKWCugKmOa0PNN5lRJ8L3rq8bdoRF8MBuBJeUdIqH5EBqYyA9
X-Gm-Gg: AYBFou2BS7VXMZfIV6mhKBmk4U7OHB1q99xznoGSt3eXzOsCBgRup+R4gD1rwGkFaTX
	dE74sTttXkx5GUCzuEQl2/zxrF31guyo6vrXpwbm0wXwxzqBhdpPRT2F1hb4GjKOmTfzhGaaEWo
	cvQl1hfrWWWQXobCyvdQr3cSHrXt+IkbDkiVbtCC0dmVFu290xc24rFi235H2gZYRCZjE9AhLgH
	L7g1ZFCnYyO8i3KylSfSKBaZCTJVTTHDRn1ICtHKzuAlmoaZc8W1MquFrtXmTsG1dWBq3FRpv+y
	wWFDW3K1SS0Rol1YUAGxgWTpSCGr21Pqz4nx3lsUOD+g4IFSeDGP94jjwtbmw0dRdUmyKriqUwl
	AnMQyyey87RGEEPmGbKN8QF6kOroqjGGSMQ==
X-Received: by 2002:a05:6a21:e8b:b0:3d3:ae40:51e3 with SMTP id adf61e73a8af0-3dd8c53b507mr14688673637.23.1789988310693;
        Mon, 21 Sep 2026 03:58:30 -0700 (PDT)
X-Received: by 2002:a05:6a21:e8b:b0:3d3:ae40:51e3 with SMTP id adf61e73a8af0-3dd8c53b507mr14688644637.23.1789988310229;
        Mon, 21 Sep 2026 03:58:30 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c331d55cfsm23544128eec.30.2026.09.21.03.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 03:58:29 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 0/6] PCI: qcom-ep: Add PCIe Endpoint support for Monaco
Date: Mon, 21 Sep 2026 16:28:11 +0530
Message-Id: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMMNsWoC/yXM0QpAMBSA4VfRubbaJOFVJM1xxlE2bUjJuxsuv
 /r7LwjkmQLUyQWeDg7sbIRKE8BJ25EED9GQyayQlSrF4qxG19EqTK9yo80gCRFiv3oyfH6vpv0
 d9n4m3N4B3PcDBnaa920AAAA=
X-Change-ID: 20260918-monaco_ep-fb14fafd0ecc
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789988304; l=2427;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=peVqRNezccL7XCLjXAEvt4zPOCLA8KyAaMpzFXvC9Bk=;
 b=2j+QB7Yy6u1A0kRk0gX0z2/49ykQ8g6PYURbir7tJ/F3c9vl0NRtyLJuDHkaNoZAjuUV7kxfh
 fdg+mSGQVK8A5uVGyHf48EsrBVwPdUfECFD6Tcn9Giqwxde1MM3LjN+
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX/juJW0Jinjrt
 hoaY4yuP5unhjqiZ8uF3Ae0l+iD6wq6l54FrwOT0ND8JgBLaAU3Dnt8ZBwT/XEVGJ1ASkgVMS9q
 RL/JHvsN7fci6he2EXll/scBQQQAbz77hT3jhqSODCgV9sy8VgaDMnwzECLsm5pDJFwzLCjZ905
 3JGA2iw2ovdANcL6qUPfifgYk/Kgo0U2oG3NLn2+a0GUPY1AQOff5k7V/5X5/OZ0ThrI2yhHFf6
 eHmPO3hSM4SISbAodj3aTovLM3m6xIqou+yh9yShPAIwuHHkzH5vAagJHjTp0KNxXVGEJelUi7s
 KHl3AVRXCi0rZcobEE1E5NUZx91422n6vVlxl/yexUukPh76/JFgiDNnS7XoLTx0cAZDs2k8w9s
 U83g8nvL9dYnzS7o9JjQIDj8RMKz8pIIGKA7YMOl5JafSOsKLYEfbFStpQd5cmqComBFiZB8g9q
 8R9a6fpZxaOYiQKLtsg==
X-Proofpoint-GUID: BZJ0Qhp8e_mLjcAZPNRI6uvGBwjR02Qt
X-Authority-Analysis: v=2.4 cv=T/8Z3PKQ c=1 sm=1 tr=0 ts=6ab10dd7 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=Fm6EAR0vVewXWd2bb8wA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: BZJ0Qhp8e_mLjcAZPNRI6uvGBwjR02Qt
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX2J6KnMtT6Ouj
 OMbp0t9Qsnpm2n1p6060gTQPhT0BmgsLLbaxKdJvZXfZy3yMGTLolpDKoKH9fMQdz66CL0u/YAx
 2Ip85AmvSfCPfFe/PMuj4BovDp/IAbI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_115847_402682_88FD8D6C 
X-CRM114-Status: GOOD (  12.00  )
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

This series adds PCIe Endpoint mode support for the Monaco (QCS8300)
SoC, which has two PCIe controllers capable of operating as Endpoints.

- Patch 1 documents the dedicated 16 GT/s x4 QMP PCIe PHY compatible
  for QCS8300, correcting an earlier gap where this PHY variant had no
  QCS8300-specific compatible of its own.
- Patch 2 documents the QCS8300 compatible for the PCIe Endpoint
  controller binding, with SA8775P as its fallback.
- Patch 3 adds the corresponding Endpoint PHY register configuration
  to the QMP PCIe PHY driver, reusing the existing SA8775P programming
  for the 16 GT/s x2 PHY and adding a new configuration for the 16
  GT/s x4 PHY.
- Patch 4 fixes clock-enable ordering in the qcom-ep controller driver:
  some platforms require the interconnect bandwidth vote to be set
  before enabling clocks, otherwise certain clocks can get stuck off.
- Patch 5 fixes the existing pcie1_phy node's compatible string to
  list the new QCS8300-specific compatible first, ahead of the
  SA8775P fallback, matching the order used elsewhere in this series.
- Patch 6 adds the Endpoint device tree nodes for both Monaco PCIe
  controllers, covering register regions, clocks, interrupts,
  interconnects, IOMMU mappings, resets, power domains, and PHY
  connections.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Krishna Chaitanya Chundru (6):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add qcs8300 16 GT/s PHY
      dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
      phy: qcom: qmp-pcie: Add endpoint PHY configuration for QCS8300
      PCI: qcom-ep: Set initial interconnect bandwidth before enabling clocks
      arm64: qcom: monaco: Fix pcie1_phy compatible to list qcs8300 first
      arm64: qcom: monaco: Add PCIe Endpoint nodes

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      |   5 +
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  87 ++++++------
 arch/arm64/boot/dts/qcom/monaco.dtsi               | 147 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |  34 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 105 +++++++++++++++
 5 files changed, 319 insertions(+), 59 deletions(-)
---
base-commit: feaece109e78a40818d20528ffaa95d2f22227a9
change-id: 20260918-monaco_ep-fb14fafd0ecc

Best regards,
--  
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
