Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC75EE4992
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 10:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v45RtMXNnQa2CtCj2a8VVjujt14ri71vnMxPvoOYHMk=; b=o/nFBxNP7jnsa7
	OLxnfl3zfK6LflxNbewJp7vCTAZagIUd34Wl/EyruM8ZQNjbTfEkjz2qni1Ci0uUk2LtWQmzJEow6
	yPcGlZvi07GW6GnhjFLhKI9JRB5Rvd3lSUlP1mfdTzOZ8DL1dIr2Rm7Dad4enPp+dXKTV3cCYXON6
	Ih63pU+rmWXDrvTins0Rnm9ZWgYO8kYx+l0hoA5Ay8ODhWMA1k3+ynO/WYGiTciAocsZL1dDkef3a
	vGC+eWb305kxTbkLAOUWDepoycbg2G3qmTIh/k1jujJ9gsUtdOpo7YTshVIIlUATKZFkhwSfwNUd4
	KBu39iI1mXLBc/KeS+iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKy9-00000009BCJ-1sqj;
	Wed, 11 Sep 2024 10:53:05 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soKwG-00000009AVc-3zNW;
	Wed, 11 Sep 2024 10:51:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48BAoH9q027746;
	Wed, 11 Sep 2024 12:51:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	HC41gKbNTPTheLxQatK65Adbh2JRdRstc3B3EX+giRg=; b=hcvYmMTCoT6Y/wgR
	SA2BCqplm/TRjScoo7xmGDB8mkg03BA7LcdCLSWixqTn3XCm30ojDhdFuLY1cDQZ
	BSfmoFMec2aoqtzQ8UGG6n5LNeec2IJxGyFklcadmmE6SQEtiZNKM5tKfDSv3WsO
	hZ0EDnsQsNfu11VofbhskFl/8ao+uEZV6QktsGhlmkG/qEX+lXBGfg0zTNrg7ikl
	Qdq/duFahps5JrjJRXkRETiZUE0DebH7vPM7VJzmGEbCRWJs8XjK/Ww9wjfOKZsQ
	C/BA1gfRGhNG8N0HVyCZP9SRHVQz21u4115G7LHJ1yh8L8J0VOlKJs+bFit3+BJ+
	5aQP7w==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41gyaux9n1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 12:51:01 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id DA63140073;
	Wed, 11 Sep 2024 12:49:44 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 381092542B9;
	Wed, 11 Sep 2024 12:47:03 +0200 (CEST)
Received: from localhost (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 11 Sep
 2024 12:47:02 +0200
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
Subject: [PATCH v8 3/5] MAINTAINERS: add entry for ST STM32MP25 COMBOPHY driver
Date: Wed, 11 Sep 2024 12:46:44 +0200
Message-ID: <20240911104646.2980821-4-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240911104646.2980821-1-christian.bruel@foss.st.com>
References: <20240911104646.2980821-1-christian.bruel@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.178.212]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_035109_386810_E1FE0357 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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

Add myself as STM32MP25 COMBOPHY maintainer

Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a70b7c9c3533..73fd76dab699 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21908,6 +21908,12 @@ F:	drivers/*/stm32-*timer*
 F:	drivers/pwm/pwm-stm32*
 F:	include/linux/*/stm32-*tim*
 
+STM32MP25 USB3/PCIE COMBOPHY DRIVER
+M:	Christian Bruel <christian.bruel@foss.st.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
+F:	drivers/phy/st/phy-stm32-combophy.c
+
 STMMAC ETHERNET DRIVER
 M:	Alexandre Torgue <alexandre.torgue@foss.st.com>
 M:	Jose Abreu <joabreu@synopsys.com>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
