Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5057C5AE5A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 14:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPC4IQeUCCPFGbPZoYmwZFhzfk71GHttslL+9lrbbpM=; b=RUx2qg0Jx+0FPO
	aWeZe3u85oQ3mAIk0I3sGDlmzIWOyLVFGRexk9n2TOJJ8h8o4kcOxgc6ERLIa9bD98zVvQghCGouT
	t5Fjg4RsyuFdQATzLtuRAOJxT1S2fL4huTTKvcWZvrcK1jsSMo3Dclri6WZqw1GHLxOtoYPyo2YI8
	sqZUco3eKKr7P3GJM2SA9lsLfvCb3fI2VMKg6SiWwnsw3FZcLPcwz7qQ+FBuIhqgAi+UR/7NLfxD9
	gR3X/s8Hc4jS4/BSQbenDhDGdbYpit7Jp6XdeJxmNnUJQMHJNPQjpFh0+RE/3NFnJBGJCFfWZlQLI
	OXwzOnIhPx1VW+NMp0dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJpD-0000000FmHV-2HAb;
	Wed, 28 Aug 2024 14:39:07 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjJnX-0000000FlkC-2SVf;
	Wed, 28 Aug 2024 14:37:25 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47SDcCfo022823;
	Wed, 28 Aug 2024 16:37:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	ck4s9sjzRdFKY2yhhiCmjDcHrYqvSsSnJL3gyw79cpI=; b=d6Ck69EJgH4Hi8VP
	oFGQKmRMaYpJ7jhMcHd2BpspEApjVTSi/x1J9WlPcQE0Ii8+QVDBJ3hZycdtMDNS
	ChrdUyaINUyfOqam7Jzn0MZq+cR1+MaxJCBBfNp3YWE2WaJ2cdVy+zqNMHRzsDAF
	AObsUk/sk3gfH+ghntKqDSFHK9dw+xBNUXZ3i2R+GVmZhiJi2nMXIGuUOHMA964Y
	1zkbfNZI57VjsI0/KLwOt7GkzWZCKaWDpLgh2qP756gao/Vo8kOvnIwP4UY7zHhY
	5ueFFGhfP26d7UOT37MAjYjKZpVO5wGUFTZ3khvnGY2sjsoXsFyL9CdftjmFxk2m
	hExK1g==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41a4y00b4n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 16:37:16 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 9F3864002D;
	Wed, 28 Aug 2024 16:37:12 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EAA9B26F247;
	Wed, 28 Aug 2024 16:36:25 +0200 (CEST)
Received: from localhost (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 28 Aug
 2024 16:36:25 +0200
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
Subject: [PATCH v4 3/5] MAINTAINERS: add entry for ST STM32MP25 COMBOPHY driver
Date: Wed, 28 Aug 2024 16:34:50 +0200
Message-ID: <20240828143452.1407532-4-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240828143452.1407532-1-christian.bruel@foss.st.com>
References: <20240828143452.1407532-1-christian.bruel@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.178.212]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_05,2024-08-27_01,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_073724_067631_412AAA8A 
X-CRM114-Status: UNSURE (   8.18  )
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
index f328373463b0..4dc304ba6f90 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21910,6 +21910,12 @@ F:	arch/m68k/kernel/*sun3*
 F:	arch/m68k/sun3*/
 F:	drivers/net/ethernet/i825xx/sun3*
 
+STMICROELECTRONICS STMP32MP25 USB3/PCIE COMBOPHY DRIVER
+M:	Christian Bruel <christian.bruel@foss.st.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/st,stm32mp25-combophy.yaml
+F:	drivers/phy/st/phy-stm32-combophy.c
+
 SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
 L:	linux-input@vger.kernel.org
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
