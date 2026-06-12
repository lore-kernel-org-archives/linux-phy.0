Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3990BCD4F2C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 07:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sGuhK6pfB3N2SUX3v8SJw4++8UhdXzBiI7/ygi7JKMU=; b=LUNpy8fELXBjyC
	kPvQnV3UkgQOZJrl8d8S8LxJyxp3tGm82f2sIe09BMU1kY9X1hnzK1FkC4v47m/auKH4ncJiDRcjE
	cGDGqPqAZTdTnxrwl9rvMiqOmgLyarhDrVB2CFdtjP8irIiQ558dssTbJ2EyU6bAUABd9KahnUCKT
	7u/Wsi2H+bHpws3P3lmyiRA+2T4eB+2ymZWuK2RjzRB9/dOGF7H9Fiqkkyd4yUAuBksUWVwJuuXn2
	mJwSMXa+sRcOIxiAjzOTDHNXVMnlwVq32A7YD7W7J6nHbcLqNWpV9ZHLZIii9AkAcG1q59Pwa14o7
	S8ApclKak8Hn98ZRtAwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwfd-0000000AV56-3Xgo;
	Fri, 12 Jun 2026 07:51:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwfb-0000000AV4i-42TG
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 07:51:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3Bl9D2450943
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=E5Dk7W1on9zc2CAG5PUvEN
	WzEFC8IfjL74+2bjLgydQ=; b=MW8nM3w4XwDaBy6gG4t9Uvfkji6aVM9DvSWDBH
	2ThSK6S8dZzF1XSG9zVlV/WfPUhimjpBPCWi5KcI6ftClD7vQreh9DoWVY0YFm1a
	d5WEr8THezabn85ILEOpu5UzWj82Rv7VfuRVRGuGbQlR/pRlAM3vZWQTuWQlQfT0
	JEzaQlEOyJXxkouOA36CtI4m7eM8TL8EQPWXw9L61MzYpxeWiMNIcQnbrVruvjFD
	kqpmXf6g5OXE6XgplnvyaoTx01x7bRGQp7AX7ZMlEI86Vj3QE5xTjAm2yCfoyCO/
	kBgRKqWxKtGrVGC6VXpJr55NtxEZGamAZCDfIDsWlNkuHFjQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1xcjd66-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:51:14 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-36d98b54cf2so637607a91.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781250674; x=1781855474; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E5Dk7W1on9zc2CAG5PUvENWzEFC8IfjL74+2bjLgydQ=;
        b=BRWNI+nVxcfUeiavdHgmVKkDnLNWFhe1trGGorkaedLZ160Gk4XMG2U0ruyjjzA2Q+
         nisIykRYPDq70RlhGevy4sEzyWLHa2VCqDDPi//HvCxmj9vD2gQ32uQeSDAFMDm8Vymg
         AOQFZn9NJjDEjv9tMG/iMELn0ZzJpB5dlRgUGWso/OsVRb2xzVCIWEuh+bNYgXtxVZba
         vPWyWGQMzhVvP3APF7IxJMG7g+oftx1+jRrO44WK7lO/a18w3D00MCIITtYt4b5O863T
         lx9qEy8IqZj0eS4tGjP22p+2oUJqevTmawdCJbYGoM/txD0hBDP0xVIx2Jyqe3NUsboD
         TMxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781250674; x=1781855474;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5Dk7W1on9zc2CAG5PUvENWzEFC8IfjL74+2bjLgydQ=;
        b=RJWBSPFUKoUAKjqTrA4u3cs8BEgwuwZmtGhwyKd6XemkHTAOYzhBG5V0SDhlfOOJUM
         O9MSSk/5X85vcPqnKY6sP6UwkBoqRiEBAOu7csXsTMknAI6gkeCM/QUSHDviPDKf1nHS
         HkM7Jl+ej7NWZa8gDTUQF3LR2aCIn8XPhdRNwjH/rdiBU/fMS8QRtdsLtL3gg2HiizOg
         rl0LrB7jcToJfK4TGfBflfgSFcx6AU6+fHBtAxduuyMptSm88hAZ4u8UdGMAzT0eBgYA
         XM5JE2rkuOurOVlxGNrGqeO6k3Cb0xtQOqKwW2u2yuVSvk7qP0UEwuTCiG8r0pglD/Ud
         VxUQ==
X-Forwarded-Encrypted: i=1; AFNElJ/xaO+nSfIf0oKyiwVlbAo064lxnhKVqQYIeok33iy8xKAVPr3D3cK8fhyorrh5NPlHlb8z3MnA9ag=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPDnThMzLqJjDumly2o5w36pflpeHuZ1ycs3kor4mPWsCjkSdT
	Jo/O7eqe40QhGfM0NDTVLC58cBOLdj6HX9vXGzBNI7hk4OErThRdjqVaa2s+kJlvutYhr7QAecR
	/qytY9zMi3bnD6fxRkY7hx6HoOOvFwwnlyxyPtrWgY7stjIhXGSf6Ovf/Ze+qxVSw6Qxh
X-Gm-Gg: Acq92OE7GiBRiW05O0IL3cgxsojCx3vApH3CQ9B8wG9XfFTje9uBPinrsaoUBA8pljN
	3EQAzSAWE6mMtEYoJEKR27vzccnIclXnwbXbcyCAgljPfMFQjz49JLpI7fcwELQQRb32wfBzg48
	c8YOI2XeFuFZcfHSe0qcWmPDHVvhX5QbvHmubMOtqPmBBk3PXWqd46/axX+sjiOPAZxrBHxRzyI
	f2MrAhRXpAzikxAVnhLBUSaLZ76e3xBY3d6l9l6WNTV+EU8E0w5MsVpeBJniH5oRfaAbgbEFN7Z
	4ns2dsYecebFWwprNmqm+yfDDrzti1xi9Xz2domZTVvCGwIHhbM6HXiRbx+y+P5q6h8d+zp7sfe
	d7UrOQqmATwsleBKze7Hg+k/SWwxV2Jv6akJWSDzLppfjRc/UUVlpg1cDvvpDRERG0HThNnpaMc
	FDiZ5gcVelY5BU0NrYtSrKo5DbuJUmh/2s6QdJ
X-Received: by 2002:a05:6a21:329b:b0:3b4:b6d7:a992 with SMTP id adf61e73a8af0-3b783b4f2a1mr2382077637.8.1781250673766;
        Fri, 12 Jun 2026 00:51:13 -0700 (PDT)
X-Received: by 2002:a05:6a21:329b:b0:3b4:b6d7:a992 with SMTP id adf61e73a8af0-3b783b4f2a1mr2382044637.8.1781250673382;
        Fri, 12 Jun 2026 00:51:13 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8661b5ab99sm1307544a12.6.2026.06.12.00.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:51:12 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Google-Original-From: Kathiravan Thirumoorthy <kathirav@qti.qualcomm.com>
Subject: [PATCH v2 0/2] Add support for the QMP PCIe PHYs in Qualcomm
 IPQ9650
Date: Fri, 12 Jun 2026 13:21:00 +0530
Message-Id: <20260612-ipq9650_pcie_phy-v2-0-b938cc2fc267@qti.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGS6K2oC/yXMQQ6CMBBA0auQWdukHdOiXsUQAtMBxkWtLRgI4
 e5WXb7F/ztkTsIZbtUOid+S5RkK8FQBTV0YWYkvBtTotEWjJL6uzuo2knAbp0057Ws/nNFeDEH
 JYuJB1t/y3vydl/7BNH8/cBwfr5xw63QAAAA=
X-Change-ID: 20260521-ipq9650_pcie_phy-60d7df32581c
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfXxW7Y/BaKaBEO
 9TsXNvKk7bT+hjp0yU9RXcg85V9gn0d5/+x987gOQTfDsH+HajcniYLoWrDLQ/qbDOoudJ+4jfj
 2s1aJpEIu+SpPSMmghZ3ikHGqpoyLDFXmploIn/LC0V2CEIaQhxbjjIrhd13s6eYpJd4P30Nzwg
 hqlbiXlpgKCZQnp1MkzZVFa3FSLIR9GicYcEtY1TI/jAlXgHZaPx15k401yPBtm3u0Ccter6sKo
 ATszqkSIknAgy+s7A3pDtMHcVgRyDsvLQWvIAdsrINDbNOJQ+uJDDqYpi3nVdDeXGnV5uizHrZw
 TOkj/rYDXQ4RIaLjjs1t5+YNbSkmaALFlWtwOdbCdlW9FahAUJd9cgkXQc0HMUYo6nyDMP2U47p
 QYg1dW8b4DyZgts62SyQJK62djNy3jWy9THKl4STrz1ZECkbUT12590YUQO5yPmHQ/KM/+vVGva
 MW2ePWifBLDa8xAvauA==
X-Proofpoint-GUID: zZwWZA2EhWoOYcWfY3ajx-TCazd_cqQH
X-Proofpoint-ORIG-GUID: zZwWZA2EhWoOYcWfY3ajx-TCazd_cqQH
X-Authority-Analysis: v=2.4 cv=NZPWEWD4 c=1 sm=1 tr=0 ts=6a2bba72 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=cqutcY1mnIGKQfsvmZEA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfX+g5yLtRk04Vu
 tZSupDexd8lln1QVjr+g0iuP+YZW3vQDIxrwgxl4QqbXiacBaKRBD7OaBF9qoz3yGfB0vzwHaaM
 6RE4ZBjcmgt1vEQF1+3hyxEAvuu+/TA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_005116_124304_DC814BCE 
X-CRM114-Status: GOOD (  11.03  )
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

Qualcomm's IPQ9650 SoC has 3 Gen3 dual lane and 2 Gen3 single lane
controllers with the QMP PHYs. Unlike the PHYs in the other IPQ SoC,
refgen supply is needed to bringup the PHYs. Both single and dual lane
shares the same HW init sequence. So reuse the tables.

Document the compatible along with refgen supply and add the phy driver
support for it.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v2:
- rebase on phy-next
- pick up R-b tag
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com/

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
Kathiravan Thirumoorthy (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: document IPQ9650 QMP PCIe PHYs
      phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |  19 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 220 +++++++++++++++++++++
 2 files changed, 239 insertions(+)
---
base-commit: 2ace2e949979b82f82f12dd76d7c5a6145246ca3
change-id: 20260521-ipq9650_pcie_phy-60d7df32581c

Best regards,
--  
Kathiravan Thirumoorthy <kathirav@qti.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
