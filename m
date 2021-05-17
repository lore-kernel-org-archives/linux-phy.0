Return-Path: <SRS0=G5Ry=KM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570DBC433B4
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 12:10:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C01D61263
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 12:10:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C01D61263
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sYaZdiJo8PH0EFj28HMYZqgFJVBNqs5YJqX5TP7YJ4k=; b=lMG9hfIf9e+cDeQLU3I74KXrx1
	0txQLkScpQ37HWnLczvZ/BY9FZr+CLMb0WnOEUBLV7FIV3VnqRaxf0yqXL4K1t/yOPAgbUbSwNSWg
	REUzEbO50QQ7lyH/3oWWs7eak1VWF25EuBEBpWm8Isfgx1LiQdZpgGW8tvxe73iTo2WMop8w9EaAU
	xDm1G2bLgV1e1Y6OZhcZeD1iyZXlRx+u2/k8GXfsUBuEAAwgjFmCWKODYF4yqHOhRx2o5Q1CMkwMG
	2JY227ga85vl/1ftdwzJj27fzUMoE8GN/hz6v8oaTwVB+soy7siv3iApJ2UkR2y/ZOVn0KoGZGtSS
	3kV3VVvw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lic4X-00EqLF-A8; Mon, 17 May 2021 12:10:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lic32-00Eq8o-PV; Mon, 17 May 2021 12:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=bavnRqI5ucsHk4llNawSfeoyU7Pikb9myCdrZ4Z3/yk=; b=Gyj6biXQ7iqMv3DfZJc4r5VoWQ
 C39UhyPq6bYdyRpipqnDrECbGA7fd5Icap2GKrmzXPDTWuI/wKyz5RIeF8TzpGK4PWMoNDJuxZw3z
 MKeNW/xQUtrLtAAv6IXBmQjQ5oi8c/RIco1Fi6+ThNmjRkYumljQozzHxHwfrvFOOvkMdEWW9mQx9
 B7Jl328mqI8MIf2RdfJhCT1TaNXxZjxsF7ntNcpWJhynjwRc0euL4KbdbML2iFyQ7uuj6O+PDu7x3
 N2+n9srbiOuxwZbluKtc9BX7cl85K5/yW+7csi/pQKxptFUV1c6cSq7mtNEY8Q3A6XVkrrSx4eMNL
 2lVMAEDA==;
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lic2z-00Dk6d-Ha; Mon, 17 May 2021 12:08:35 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 14HC6oQ1010202; Mon, 17 May 2021 14:08:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=selector1;
 bh=bavnRqI5ucsHk4llNawSfeoyU7Pikb9myCdrZ4Z3/yk=;
 b=VMttQHmqLNPUAXUcp8GfM0viUsm2Z02Gp5aoXvDlmVR+e5Mn4s5nLrwo4UO8m1EPfskI
 hidvTEtd505cIVivkEAxIiCPwKeav4fNkKBpkTx5QWxokarMEEVVczOca5Xjk7TPZDke
 Ubv9jlkYYIeqr4aLutoFiNVCrtKx3q68QIB7hu/zQkW5h8O7Zv1RsLFRIj7TS5DYfsBW
 /VWDeV2lxUH0B9i+aWT2cht/hOf21LVyqPcJ7uT6uT76/g5rJujiOutGUtAu07/PH5O8
 mTzkZ4lhv0i9T2fxdp25Rjrasw/HzX115vs+PAl15+pwMPlUnID5GU3a2pIMfalDXhbU 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 38kmb2sf3m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 17 May 2021 14:08:25 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C9440100034;
 Mon, 17 May 2021 14:08:24 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B670122D636;
 Mon, 17 May 2021 14:08:24 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG2NODE3.st.com (10.75.127.6)
 with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 17 May 2021 14:08:23
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [RESEND PATCH v2 0/2] STM32 USBPHYC vbus-supply property support
Date: Mon, 17 May 2021 14:08:19 +0200
Message-ID: <20210517120821.26466-1-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-05-17_04:2021-05-17,
 2021-05-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_050833_921369_2AEAF269 
X-CRM114-Status: GOOD (  10.34  )
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

STM32 USBPHYC provides two USB High-Speed ports which are used by controllers
with Host capabilities. That's why vbus-supply has to be supported on each
phy node.

---
Changes in v2:
- use connector node vbus-supply property as suggested by Rob
---
Amelie Delaunay (2):
  dt-bindings: phy: add vbus-supply optional property to
    phy-stm32-usbphyc
  phy: stm32: manage optional vbus regulator on phy_power_on/off

 .../bindings/phy/phy-stm32-usbphyc.yaml       | 11 +++++++
 drivers/phy/st/phy-stm32-usbphyc.c            | 31 +++++++++++++++++++
 2 files changed, 42 insertions(+)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
