Return-Path: <SRS0=CLz0=IH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85271C433E0
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 08:26:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 098E065237
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 08:26:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 098E065237
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Bm+VJAR/uAXvm1Xi9PqL6EfjTUnAdSM3LzuUYV3MWAM=; b=VXrWOUiiFoZdb7MVW1Cm/sdMZF
	aIVP49XJbktB6jz4Y3ZFunFV0S0SAea2TsGfTBcQelpLd+ZoUi+bjHjo4zZupYf7Ewf1POn1cK1p5
	jYxkH0iF/FxQU1ZPD3YBzVVt+vCB0pEttxg/5JnRHsy2Y78PvLyuKNnzuvM/j94iJ54zBT/sQoFAP
	hXp/f67dNlsolRbe78LM0DR2WclyUY/R2WFVsSrisGcpua1sXD/AHkknQflm/BZ+GtlV3EKc7UibR
	XLJY7DPQRVcVTIpalL3FqKuBxuBB82/Z01LZS2Hp23zgE8+h5Mntb57Lx2f6dv0jIi2qnFCN5M2u0
	5bdiX2iA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJXhe-0041oR-Pa; Tue, 09 Mar 2021 08:26:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJXhZ-0041nI-HP; Tue, 09 Mar 2021 08:26:52 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 1298QjaI014685; Tue, 9 Mar 2021 09:26:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=selector1;
 bh=6useEKFTe+Bqa/XiaAvxpMZHpCqKWtSJwAWFIVF7tLg=;
 b=d4MsmYodNPFER5m32lmOBHOKdVKRFxt/vRlyik7Wxi6oOhIura9YjnnrbJV3ca6FwsDp
 jp83t4vcfh4EIBdtECWre3p9mGeqaKL6eHJNYb/O/ncBxY4LBtf+5EevUIPUhwZyRU0/
 RoyfFpZPU1Gyin+4BDeL8gqzv50YM9YUYka542Dz7hrrDlyICUTY8/iHqgUo/2TN6kpa
 7IFxMhnZyx+YbZx+v0DP7Npn5eqR1epRs8S5FskheVfwy0BuxNeat9ZEP8QR8y/3Wq4T
 GthSzOC2o2W3zVVRRdKJZUj8VN9KbkIYx6eu1SlVr6MHVtDmSx53iEajoiDJt+0IOm2c ew== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 373yreh0r0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 09 Mar 2021 09:26:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C0BD410002A;
 Tue,  9 Mar 2021 09:26:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AB1C9221794;
 Tue,  9 Mar 2021 09:26:38 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG2NODE3.st.com (10.75.127.6)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 9 Mar 2021 09:26:38
 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [RESEND PATCH v3 0/2] STM32 USBPHYC ck_usbo_48m clock provider
Date: Tue, 9 Mar 2021 09:26:31 +0100
Message-ID: <20210309082633.8213-1-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-09_06:2021-03-08,
 2021-03-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_082649_904155_464C7AE9 
X-CRM114-Status: GOOD (  11.81  )
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

STM32 USBPHYC provides clocks to STM32 RCC pour STM32 USB controllers.
Specifically, ck_usbo_48m is a possible clock parent for USB OTG clock,
during OTG Full-Speed operation.

This series registers the usbphyc as clock provider of this ck_usbo_48m clock.

---
Resent with linux-phy ML in cc
Changes in v3:
- remove #clock-cells from required properties
Changes in v2:
- fix COMMON_CLK dependency issue reported by kernel test robot
---
Amelie Delaunay (2):
  dt-bindings: phy: phy-stm32-usbphyc: add #clock-cells property
  phy: stm32: register usbphyc as clock provider of ck_usbo_48m clock

 .../bindings/phy/phy-stm32-usbphyc.yaml       |  5 ++
 drivers/phy/st/Kconfig                        |  1 +
 drivers/phy/st/phy-stm32-usbphyc.c            | 65 +++++++++++++++++++
 3 files changed, 71 insertions(+)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
