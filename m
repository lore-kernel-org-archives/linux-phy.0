Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4658DC32789
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 06:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4LCFGRvGoJW9o7oCqYNDh3VW+HQv/5fnsxSqHeuw7b0=; b=3Qtol5Z7nSQn5N
	XcMw9GVIwDGUGWGET2K+L5PWrjYlSOmeB27bJrkezvF4NkAIfi2AELxrtelkLYRbUPeZIlaetNUCL
	nqn+02WXpuq2lojDsPOJ7fjOwDbANxJlwXj0zbbWmor9wg9SnYiJeLhb6wcnm9AYSoqxrARLrvVBi
	mhe9xxXswM0jZVUD4hemo8N0l1LEwCGtn+GMS4Ftm9cx9mFgzAz393HkKueWczXd1XPIwLPHtGIvZ
	vUnULrApaEJjV+AwPormiAG9/Xc9lCUNENwDihxnl4bEVftdfy8JUk5XtAJLnBtzyhvTvUcclyumD
	qu1QwyayhUn0BQEYwzsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ1My-005iFw-TS; Mon, 22 Aug 2022 06:57:09 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ1Mu-005i51-Tv
	for linux-phy@lists.infradead.org; Mon, 22 Aug 2022 06:57:06 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 27M6ucFe114754;
	Mon, 22 Aug 2022 01:56:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1661151398;
	bh=I7jdU1zmmDs7myrWAvkwS8cEQtFHjbMlJ153YZHskLQ=;
	h=From:To:CC:Subject:Date;
	b=WrIliB40qK/oYcq3qw7E4QHBURMgehpQlDVDOKaj56+ttKOqqJMHvsboHiEGizU63
	 wXSIb54hxfCgPhWXQaZ8t/Czbefv7+Xqs1fEqkE9VKjh8xaKR8xPy+UqTnZz8TScOP
	 R60NUwqq7HK3mEjCbvur6vlx5QWn4cnoS1CFJV+U=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 27M6uc0r030460
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 22 Aug 2022 01:56:38 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 22
 Aug 2022 01:56:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 22 Aug 2022 01:56:37 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 27M6uX36084154;
	Mon, 22 Aug 2022 01:56:34 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v3 0/2] Add support for QSGMII mode
Date: Mon, 22 Aug 2022 12:26:29 +0530
Message-ID: <20220822065631.27933-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_235705_085737_82507BD0 
X-CRM114-Status: UNSURE (   7.34  )
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

Add compatible for J7200 CPSW5G.

Add support for QSGMII mode in phy-gmii-sel driver for CPSW5G in J7200.

Change log:

v2 -> v3:
1. Add $ref to "phy@[0-9a-f]+$" pattern property in
   Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml.
2. Restrict the optional ti,qsgmii-main-ports property to
   ti,j7200-cpsw5g-phy-gmii-sel property by adding an else statement and
   disallowing it for other compatibles.
3. Move the "items" constraint for the ti,qsgmii-main-ports property to
   the place the property is defined.

v1->v2:
1. Rename ti,enet-ctrl-qsgmii as ti,qsgmii-main-ports.
2. Change ti,qsgmii-main-ports property from bitmask to integer.
3.Update commit message with property name as ti,qsgmii-main-ports.

v2: https://lore.kernel.org/r/20220816055848.111482-1-s-vadapalli@ti.com/
v1: https://lore.kernel.org/r/20220531111221.22963-1-s-vadapalli@ti.com/

Siddharth Vadapalli (2):
  dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J7200
  phy: ti: gmii-sel: Add support for CPSW5G GMII SEL in J7200

 .../mfd/ti,j721e-system-controller.yaml       |  6 +++
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 30 +++++++++++++-
 drivers/phy/ti/phy-gmii-sel.c                 | 40 +++++++++++++++++--
 3 files changed, 72 insertions(+), 4 deletions(-)

--
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
