Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B228AC54734
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 12:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mSglcOz+JmsB3RdM/t2p/o/kDDSFTkpYzbmoQmhzuUE=; b=cUTBBdAg2DCnUF
	G9c9/vU7tWexxhdl0Nh3/j6jeBQknb5+hp3h/9OHfKjp69zrgJwuQXS8dKxHoLfxyY7yTv6caNLDZ
	VpNI7+j39L//mUQycz136bJjE1L8fnaY3HwzU8LrgaNI9Xx0QaYyDYqKQuKJwgU1npfRcUO8B4nSZ
	i1iVDR9kBQfJGqDSpuBHr4XrbkTGc+5p6XDtej6CuVUeJWqH0DXKmYSMsOc6YJfxRYSOXZ3Sc6TD1
	1iUnUvZX0s/GZTQW1pRczEqB7Xf1Vl5tlqmXB2XfQIn5edcZv9V9IAigOepCTj4W/Mp1bNFTZYxzL
	Njh9LBeVAnzq0h9tbISA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sivP1-0000000BFyg-0zTr;
	Tue, 27 Aug 2024 12:34:27 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sivHG-0000000BDF2-0LvU;
	Tue, 27 Aug 2024 12:26:27 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47RAZcVc018614;
	Tue, 27 Aug 2024 14:26:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=selector1; bh=MTkvu1DrSeJOWwBLrkpClM
	7Ev2RqstQuHoTEgAEyciM=; b=oISbGJP+2iVPBDbHoCB/YD4k0+TUU2BrnsypM5
	Pz1qj1l9X1LmtU7jaBTReWVKfzjmEh6uNs1Au3aJwJiB7J2CO3q4ok3hl83M48ZW
	0VVidMmRhGIMO+3wDGsbK/umvjuZOCcOZBCLY3s+vqRB7u7aBcU5YDX9Ed6pO3W6
	AErcN0M32uDa39r+DLB4+AN0v8BXRwJ2pWeEKMvRhF01zhyCVtVGa3zjdMe0ePEb
	VCptViheJFi5B/nRwcjXS1Fg4bUE11rUk54FTROj4MpBy/jj8IMxaY8YLMk8avU3
	Lg5x2VjhU34b0RudKst8+NLXRwVpdoAd2wF3Eh6EGcgngcnQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41796km64c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 14:26:14 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7B29440045;
	Tue, 27 Aug 2024 14:26:10 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3573526333B;
	Tue, 27 Aug 2024 14:25:22 +0200 (CEST)
Received: from localhost (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Tue, 27 Aug
 2024 14:25:22 +0200
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
Subject: [PATCH v3 0/5] Add STM32MP25 USB3/PCIE COMBOPHY driver 
Date: Tue, 27 Aug 2024 14:24:54 +0200
Message-ID: <20240827122459.1102889-1-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.129.178.212]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_06,2024-08-27_01,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_052626_606134_70EC8E1B 
X-CRM114-Status: GOOD (  11.77  )
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

This patch series adds USB3/PCIE COMBOPHY driver for the STM32MP25 SoC from
STMicrolectronics, respective yaml schema and enable for the stm32mp257f-ev1
device into which it is used for PCIe.

Changes in v3:
Address comments from Rob and Krzysztof:
   - Reorder MAINTAINERS patch
   - Drop wakeup-source from bindings (should be generic)

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

 .../bindings/phy/st,stm32-combophy.yaml       | 144 +++++
 MAINTAINERS                                   |   6 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi        |  17 +
 arch/arm64/boot/dts/st/stm32mp257f-ev1.dts    |  14 +
 drivers/phy/st/Kconfig                        |  11 +
 drivers/phy/st/Makefile                       |   1 +
 drivers/phy/st/phy-stm32-combophy.c           | 607 ++++++++++++++++++
 7 files changed, 800 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
 create mode 100644 drivers/phy/st/phy-stm32-combophy.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
