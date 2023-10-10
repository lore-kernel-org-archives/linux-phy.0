Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1CFDCD80CA
	for <linux-phy@archiver.kernel.org>; Tue, 10 Oct 2023 13:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9n8mrazHEQ+QEBaPk9rA/s1SSS6V+DPez+wqNE77NM=; b=l+Gh3AMhw3VZo5
	wniuu4rzoKLC943IKuuBZbg30SZS0xe8jp2IEfhE6gz3b/7gSDVoxioc6LOA7PTybSEi9OMQ674xp
	254hdShZ6f1pQHZ9OLGBTVa4EttywJ23PbFUJ/ffgLTlcaSyuI1zE1AjDQwn5lqyWszROprLwPc3G
	G4unZWevzAuhNl35i3OpYi2vzMUtswX4EccAOSc9r0TQo7FIoyMWPKwCrjkuvCBHsyMN/st5KFY8B
	hOBuir1MqZzgmtHZhTt+4vIXd9PlXfeey3VkurZdyu0zlfxpQhORQI2bgMCscb/wGGj9W/Oo6BiXF
	RlRsAtaDf3exycIIrTtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqCN2-00DPEU-1S;
	Tue, 10 Oct 2023 13:01:56 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqCMy-00DPCQ-2T;
	Tue, 10 Oct 2023 13:01:55 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39A88gwi001194;
	Tue, 10 Oct 2023 15:01:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=UsshDYP9Oqyxk+2EV7ru90DdWl28I8GlDHnWNqkU7MY=; b=TE
	edYziWEWSj3lCxmnFBsto/43XWyTMpKaBArYHTLdbdfGTcR9ry2D/vBqGxnrTxY5
	VUo8A2agpqhWuy21Ql2U168a4DfOOtX+QyD27gfHLxZt17yzcDPSrL0rJLmNbcKB
	K1KjMcRtDYXv1ZLrgX6weidGafFp+OPoNnK4DCnPoWdt6LaG2U9KBoFrY4VQSXEv
	xyDeXkXGRud+vu930gEYWmxLb+NmKYz+cp5UR5Jh64zJzM4udaEtZlGAoSDKgQAt
	gIeuqVlQmV7YGbITCz5vAniTpSOIZsPcXUuKFdXwpXCR4NVmOF4XIYogjcW6R0pC
	e3xS7jYJizcQLzH4U1Bg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tkhg623je-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 10 Oct 2023 15:01:18 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E16A4100058;
	Tue, 10 Oct 2023 15:01:14 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D6E45231518;
	Tue, 10 Oct 2023 15:01:14 +0200 (CEST)
Received: from localhost (10.201.20.32) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 10 Oct
 2023 15:01:14 +0200
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
        <peng.fan@oss.nxp.com>
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
Subject: [PATCH v6 08/11] arm64: dts: st: add RIFSC as an access controller for STM32MP25x boards
Date: Tue, 10 Oct 2023 14:57:16 +0200
Message-ID: <20231010125719.784627-9-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010125719.784627-1-gatien.chevallier@foss.st.com>
References: <20231010125719.784627-1-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-10_08,2023-10-10_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_060153_302629_65168D6D 
X-CRM114-Status: GOOD (  10.95  )
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

Changes in V6:
    	- Renamed access-controller to access-controllers
    	- Removal of access-control-provider property

Changes in V5:
    	- Renamed feature-domain* to access-control*

Changes in V2:
	- Fix rifsc node name
	- Move the "ranges" property under the
	  "feature-domains" one

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 5268a4321841..f82318351dcd 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -105,11 +105,12 @@ soc@0 {
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
@@ -117,6 +118,7 @@ usart2: serial@400e0000 {
 				reg = <0x400e0000 0x400>;
 				interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&ck_flexgen_08>;
+				access-controllers = <&rifsc 32>;
 				status = "disabled";
 			};
 		};
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
