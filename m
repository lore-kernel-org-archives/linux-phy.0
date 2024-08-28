Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9000C5AE5A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 14:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3UPZGI2SQoBZYJ0rm7A4vrnD2NvpR2+pR5UIO5dorrE=; b=TzoA/Q4k2BbsSj
	cDL2TELH7MQR2IU1hXPS07yLx5UMtilMhgVg+PNtYeBkAD+dLkrn4LMh//f3Wib+pDpccKCQBDtIA
	L9aM5p3biUr3M0vZwWOnOhC5lp82fYhTHCn3xlqCcTZAHLl49UFHa06WvoGQ0vvfwPJaEyvPs7XDW
	/IKux0KWNNYUs2z6rNULfF2OaJugPMq9aM0mSGRTCszyDJViz3NphNxAtni4ADqcV7xRINAQ9+j+j
	UCI0vHL15Ub/54vRPOh/BZQOh3VCgzEEvuDn8eDJx3AvYja0Bwp4D6NTXEbdb03KDQVCHiEfck24M
	2j3XTYQJWFujxF81lXcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJnW-0000000Flk4-1jl4;
	Wed, 28 Aug 2024 14:37:22 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJnT-0000000Fliy-0RtM;
	Wed, 28 Aug 2024 14:37:21 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47SDcHJW022995;
	Wed, 28 Aug 2024 16:37:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=selector1; bh=PQt+rFDvJ2p7ysrJ52Hqzp
	olK6zn6vXicKJGfAoCcvE=; b=P+RAvk3A9n029uL7gERYrujW11w3q/SK9uzTKq
	KNRa0au0Iks/YUePgE12oywnkWS4tHca0SfsVZoFxLLmdMvGX49SYLNOn3rs8wid
	w9mprFfUSsVVt8EUYxAFMJ2ae4MABZdu15hgW243T7e1iV87f8Vau1zwANfbie7H
	SLDbSdTBgKs3vNcK/0S2krX5h7Ou/3CBUmRxNQ2nXNd6j/H+zz69QkJzZA4sr1Fi
	vL88OmeW02MRWsSetk5dzhWpVUxs23lFnA+W3l/pMU7oS4O8gjzQJs3wFoPMUGFH
	gfr6N9TA6GCsNfJ0MLva2Ag7mCIZvYGthSxwj+B+MErTd6Sw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41a4y00b3s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 16:37:05 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7773B4002D;
	Wed, 28 Aug 2024 16:37:01 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 784AD26F238;
	Wed, 28 Aug 2024 16:36:12 +0200 (CEST)
Received: from localhost (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 28 Aug
 2024 16:36:12 +0200
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
Subject: [PATCH v4 0/5] Add STM32MP25 USB3/PCIE COMBOPHY driver 
Date: Wed, 28 Aug 2024 16:34:47 +0200
Message-ID: <20240828143452.1407532-1-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.129.178.212]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_05,2024-08-27_01,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_073719_502395_72DEF6BD 
X-CRM114-Status: GOOD (  10.69  )
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

Address comments from Rob and Krzysztof

Changes in v4:
   - "#phy-cells": Drop type item description since it is specified
     by user node phandle.
   - Rename stm32-combophy.yaml to match compatible
   - Drop wakeup-source from bindings (should be generic)
   - Alphabetically reorder required: list.
   - Drop "Reviewed-by" since those previous changes

Changes in v3:
   - Reorder MAINTAINERS patch

Changes in v2:
   - Reorder entries
   - Rename clock_names and reset_names bindings
   - Rename and clarify rx-equalizer binding 

Christian Bruel (5):
  dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
  phy: stm32: Add support for STM32MP25 COMBOPHY.
  MAINTAINERS: add entry for ST STM32MP25 COMBOPHY driver
  arm64: dts: st: Add combophy node on stm32mp251
  arm64: dts: st: Enable COMBOPHY on the stm32mp257f-ev1 board

 .../bindings/phy/st,stm32mp25-combophy.yaml   | 128 ++++
 MAINTAINERS                                   |   6 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi        |  17 +
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts    |  14 +
 drivers/phy/st/Kconfig                        |  11 +
 drivers/phy/st/Makefile                       |   1 +
 drivers/phy/st/phy-stm32-combophy.c           | 607 ++++++++++++++++++
 7 files changed, 784 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
 create mode 100644 drivers/phy/st/phy-stm32-combophy.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
