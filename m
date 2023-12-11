Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADB7C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9WbwM+xAiEw8A8QCUjAb7pIX6HEkM93gufEvKcFy80=; b=eA08pVg9aXy5g+
	PFQ8/YEoslT18B7k7zslvvA7LUtDcvWkP2TTd83sgbKaLpn0U7dM5kwClNkMubfQ0s6nkLTOhugh6
	qa+r5eLP3CdvcKNaUV+31HEMVbZmv3vOO3z4BBTs6GQhzWk3XS54nIlJITCC32J9jQs/sN660/PnG
	F8WRCjo8sfN5MK9q6QQ4VMgyNiKylev8m+a441dC15eUaWvzLhw2ZyFLAMPtIKjbtXNNPo2JFZek3
	u5Hfv99KcqZx+VXfkp9ca/LXY782MNbSiBM7jR6mX8RvnepyHup33hgTW/1zA1mEUAduXnTEZQ3sH
	LSRaCcb2lydo57oKBwdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCl6j-006y9h-24;
	Mon, 11 Dec 2023 18:34:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCl6f-006y4Z-1Y;
	Mon, 11 Dec 2023 18:34:19 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BBCMkO6024881;
	Mon, 11 Dec 2023 19:33:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=viyDBjVo72vsP5NUvv+TZI8GT1P1/llSx6Yo9OIRrQo=; b=Ag
	5NlJyS6s/ixfFfrcig2Ck9/x7gG25cmnY5N/2js4wf+UrnI6Qo2H84hT8Nl4N6wN
	UFDBO/VNgewdXtmgmQhh76nI65GgicJDrGrPMUJZ8lE0suVyHh2WWfWrccmM0R2F
	vbRX53Svg4+Lgim8qvdXvOuY+JYwjycmvzmJS9+a9tSN1+k/ILtc8x0YAvH32BaX
	PLvLDyHDpmhNGDLPMvjpYZGNvgN+c31w4fyUUziMO/p+7fCeok7BPExQNdcqZzzM
	qIuSSy/+CP29cPtXlk8SrwpwuMUCHA/2izVJVwqVNEDfyW4IvOM6UJR3Yy0h93pj
	C35LFDUgrzqFQYu9vjMQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uvg0gqvec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Dec 2023 19:33:57 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A6EF110005C;
	Mon, 11 Dec 2023 19:33:54 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 97080257AA8;
	Mon, 11 Dec 2023 19:33:54 +0100 (CET)
Received: from localhost (10.252.9.5) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 11 Dec
 2023 19:33:54 +0100
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <alexandre.torgue@foss.st.com>,
        <vkoul@kernel.org>, <jic23@kernel.org>, <olivier.moysan@foss.st.com>,
        <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <andi.shyti@kernel.org>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <hugues.fruchet@foss.st.com>, <lee@kernel.org>,
        <will@kernel.org>, <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <lars@metafoo.de>, <rcsekar@samsung.com>,
        <wg@grandegger.com>, <mkl@pengutronix.de>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Gatien Chevallier
	<gatien.chevallier@foss.st.com>
Subject: [PATCH v7 08/13] arm64: dts: st: add RIFSC as an access controller for STM32MP25x boards
Date: Mon, 11 Dec 2023 19:30:39 +0100
Message-ID: <20231211183044.808204-9-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211183044.808204-1-gatien.chevallier@foss.st.com>
References: <20231211183044.808204-1-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.252.9.5]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-11_08,2023-12-07_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_103417_809607_4FE8ACB6 
X-CRM114-Status: GOOD (  10.60  )
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

RIFSC is a firewall controller. Change its compatible so that it matches
the documentation and reference RIFSC as an access-control-provider.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Changes in V7:
    	- Added access-controllers property to sdmmc1

Changes in V6:
    	- Renamed access-controller to access-controllers
    	- Removal of access-control-provider property

Changes in V5:
    	- Renamed feature-domain* to access-control*

Changes in V2:
	- Fix rifsc node name
	- Move the "ranges" property under the
	  "feature-domains" one

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 124403f5f1f4..b36539f8ec69 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -111,11 +111,12 @@ soc@0 {
 		interrupt-parent = <&intc>;
 		ranges = <0x0 0x0 0x0 0x80000000>;
 
-		rifsc: rifsc-bus@42080000 {
-			compatible = "simple-bus";
+		rifsc: bus@42080000 {
+			compatible = "st,stm32mp25-rifsc";
 			reg = <0x42080000 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+			#access-controller-cells = <1>;
 			ranges;
 
 			usart2: serial@400e0000 {
@@ -123,6 +124,7 @@ usart2: serial@400e0000 {
 				reg = <0x400e0000 0x400>;
 				interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&ck_flexgen_08>;
+				access-controllers = <&rifsc 32>;
 				status = "disabled";
 			};
 
@@ -136,6 +138,7 @@ sdmmc1: mmc@48220000 {
 				cap-sd-highspeed;
 				cap-mmc-highspeed;
 				max-frequency = <120000000>;
+				access-controllers = <&rifsc 76>;
 				status = "disabled";
 			};
 		};
-- 
2.25.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
