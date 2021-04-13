Return-Path: <SRS0=GU22=JK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A7B3C433ED
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 14:32:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3113613AE
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 14:32:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3113613AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sYaZdiJo8PH0EFj28HMYZqgFJVBNqs5YJqX5TP7YJ4k=; b=htTJYrv+Ttzt0m/NMkyrHvnpsQ
	xgjZG3UfooIZRdGfd0dg16CzDM84pV+QJIvWs6h+V7CqPCNxIgHjLVXhaAuBc225aXBdM7A2KXARF
	wu5Mfw+I8jR1xkh5mVwr/YxXdoXa0TeXnn/XOeodibjU34yuWSaiNFzje/v8r179SbZ232CVy4N/D
	/I+SO2nQN7r95ismdFMk13s/DZXmtu2hhhMZO3tiz6Ab6nscZLVk725ESeX1ULMVVdySY4WYgpYYs
	1d+IsTtMzK50CtTHcu+I1Dqt3T+fpyU9su3/jamaxE9r9U7KS/YunDfWvKrtqBhXsb/58Jz6wFhOO
	TZDG0p3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWK5i-009WBX-SD; Tue, 13 Apr 2021 14:32:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWK5f-009WAO-Sz; Tue, 13 Apr 2021 14:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=bavnRqI5ucsHk4llNawSfeoyU7Pikb9myCdrZ4Z3/yk=; b=NPM28TuzupYcVMAZbW+qDadK04
 eBcxQgBmjW06NRDssidzZrXyummFPm13np26xoRefj7lu/E4FEcq7ABI0c2N7n4noXlze9A6McrFE
 uA8UBFVAeH6AKyYpv5gusCMRVax/aG6/CE0uvMvTM7+mzdxx1WtZZHv6upbNgfUZx6MXHWjdOqR4q
 kV+rRzT/ONh7aqT2utbq5/mV2Iptdr+zYOMnkuQsFT+Qqup7YoyGEVGdKKgAC9HMflJ4eZr00ExNM
 2YJpS4obaqFWDOfi63feAYCY6jORq1Z/Hex2FdT6joK0I7hBux8Zh1DnFbtfbD08oAsdmTXYTy1MR
 JJ/kw/Sg==;
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWK5c-0076bz-HR; Tue, 13 Apr 2021 14:32:30 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 13DEWMhv010104; Tue, 13 Apr 2021 16:32:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=selector1;
 bh=bavnRqI5ucsHk4llNawSfeoyU7Pikb9myCdrZ4Z3/yk=;
 b=TPRfkXKj9nW5uYcESsVD8yTup6G7tzaqJ1lJx1bh0s5Uma3V4PMYyh9qu6PinXubCHWn
 oMKyaDnuVAYcpmsxlmxXz5pLxkxikafapx25l1M3LWWyev/Bn1YkryQgOhcqN2FvPB0l
 q9jM8coK+h9q9HF0eU6IW+n/XdmalwdjYxPnkkwZZMp6jfu1c/rxB0tRSlDQY0UQpHhc
 nww4r4DubsuGy/Vb7ZAVpyuSiu8K1AYMqU0P/LK2Zqrl8esEIMZUhBOdMYMNFQMoigvF
 4jfMOAYhrApjwA5PQet+p3SkqF8QApIlab6BQJ1a2He3knm0LfSgCuY1o/P4x5cM90VB ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 37vrp5e7eh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 13 Apr 2021 16:32:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 60A4C100034;
 Tue, 13 Apr 2021 16:32:15 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node3.st.com [10.75.127.6])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4C40D246F3E;
 Tue, 13 Apr 2021 16:32:15 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG2NODE3.st.com (10.75.127.6)
 with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 13 Apr 2021 16:32:14
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH v2 0/2] STM32 USBPHYC vbus-supply property support
Date: Tue, 13 Apr 2021 16:31:39 +0200
Message-ID: <20210413143141.12919-1-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE3.st.com
 (10.75.127.6)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-04-13_08:2021-04-13,
 2021-04-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_073228_895745_96CA6D39 
X-CRM114-Status: GOOD (  10.96  )
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
