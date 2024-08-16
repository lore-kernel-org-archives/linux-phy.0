Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28FE4C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 13:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zm2K1uSG/XGB3G9NWC+wIjX5ufkt5rhl+N20If/4eus=; b=R/BLTQFoPuq0sp
	dLxeI0ZT7ekZtSv8qhQciGFpXbPqHjhb7Vf4aqKYutM13J2v442RYBNI9hEDRFXX2Nt7ZuxYVBhuM
	EsiOgnNNo/DYtQuUXhjRYkPOCklczh9/B3/Sny6LqbA2mJWUqyyuh7+i2S7A3LHKbEf4WmF8xjL2i
	WOlhZVU7UvDlNBKy7pglPu7lnt/ZFFWZr0pv5NzTdF5VQ7CWyAEeWAQiuIyCqShNWJ36b7yBex+EA
	XVtj6HslsQSZnkfdVRjCgpS2AoWlz9lFavyqb9Onx8qZuHSl38U4DS2GzV0Q7Fg3FV9yGqD9r0Mra
	5ra3D+VCEc8+Qx34IFhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sewuj-0000000D1UQ-3dv5;
	Fri, 16 Aug 2024 13:22:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sewuS-0000000D1OI-1BYn;
	Fri, 16 Aug 2024 13:22:30 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47GB3eOb007662;
	Fri, 16 Aug 2024 15:22:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=selector1; bh=N+RTuMITKav8svMSG7///5
	muEWq1usuZqZIJk8FR7FU=; b=2qP+8X4hjNsGxJRU+OWVK0d8UVu2eovFjrpX+Z
	H/QIvOD6SFEq/bWnF2oRd3dhXMv03ufJIB9ccAZdxqT7BoodEdJSdqQgvY9wadZZ
	m/G7d+hxJ/s7GHcEi5ILNt+63N3Hg+Gm0ovK3pa2PyzGTZJqraff6iDXwnlmZ81l
	D7ieS9LA6RNK93g7NFePZaDTBBfwzCZOuEj5FTHYcCnJSogpWBYOP3IqS0M5eRKH
	8NsMD+NvbIW8EXYBGYpluzog+Hp2DhAEvPCe5SxhU290DUzFA/+lg5ZN3vyTkmdu
	iD75bpTPwOPK2Jh7WNjzm1Nm/Yr1ky+kFSU+72ky0Zdga2Aw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 4121pns97n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Aug 2024 15:22:11 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 542E940045;
	Fri, 16 Aug 2024 15:22:06 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C175A25C5AD;
	Fri, 16 Aug 2024 15:21:15 +0200 (CEST)
Received: from localhost (10.129.178.198) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 16 Aug
 2024 15:21:15 +0200
From: Christian Bruel <christian.bruel@foss.st.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>,
        Christian Bruel <christian.bruel@foss.st.com>
Subject: [PATCH v2 0/5] Add STM32MP25 USB3/PCIE COMBOPHY driver 
Date: Fri, 16 Aug 2024 15:20:52 +0200
Message-ID: <20240816132058.920870-1-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.129.178.198]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-16_05,2024-08-16_01,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_062228_725591_22F43A44 
X-CRM114-Status: GOOD (  11.90  )
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

Thanks Rob for your comments, addressed in v2.

This patch series adds USB3/PCIE COMBOPHY driver for the STM32MP25 SoC from
STMicrolectronics, respective yaml schema and enable for the stm32mp257f-ev1
device into which it is used for PCIe.

Changes in v2:
   - Reorder entries
   - Rename clock_names and reset_names bindings
   - Rename and clarify rx-equalizer binding 

Christian Bruel (5):
  MAINTAINERS: add entry for ST STM32MP25 COMBOPHY driver
  dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
  phy: stm32: Add support for STM32MP25 COMBOPHY.
  arm64: dts: st: Add combophy node on stm32mp251
  arm64: dts: st: Enable COMBOPHY on the stm32mp257f-ev1 board

 .../bindings/phy/st,stm32-combophy.yaml       | 145 +++++
 MAINTAINERS                                   |   6 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi        |  17 +
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts    |  14 +
 drivers/phy/st/Kconfig                        |  11 +
 drivers/phy/st/Makefile                       |   1 +
 drivers/phy/st/phy-stm32-combophy.c           | 607 ++++++++++++++++++
 7 files changed, 801 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
 create mode 100644 drivers/phy/st/phy-stm32-combophy.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
