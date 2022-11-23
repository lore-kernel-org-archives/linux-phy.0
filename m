Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 571A0C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 03:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ynbqBUSZ+M2Vb63wTlkwRGV7TNT4qPOCe0qxEuAz0+U=; b=Ylkn0bOygncRqH
	W1cXsprNIWa0ufyzwLW1F9KwWvmX7HtoVJMM/mmuOoAWGXLjnFKWhE3Qe7leu1QGir85dpP2n7W08
	wZFRkvSMyeGaOJqaiRNer7E6sT4kEPmgGgj5Zx4iChmdqae1+DVyIOH3B8M5Bgabw+V8X+cL/vbIL
	Zq4auBvQDfh02W+obJNGux6ysNZP+Sn4ieawNe8W0gKrYfGLNiMduWuCYgO35819Lq5+FI2NvtccK
	PBIIXk+BM4G86nt4YgzNCwHkHAUdrSndatGaNLdMasWIVsgUq9fuR5gG+yq+SEvRQO/M2xyDZJeAa
	lnnLiso3nPPtd4h5sU8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxgNb-00DSjL-Fu; Wed, 23 Nov 2022 03:24:55 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxgN9-00DScS-CJ; Wed, 23 Nov 2022 03:24:28 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OInb067615;
	Tue, 22 Nov 2022 21:24:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1669173858;
	bh=2jdGZzKcHM/J0ThdPNdM/F3L7qddr17TgBnGi+H6YA8=;
	h=From:To:CC:Subject:Date;
	b=yHCUgcYWMhrtHDxR7i4omzPcGePd2fAcLUa74S/Vbl7E1YVbL+hPhgyHiKVBXF9Aj
	 C/g066DNVPpo8ctvrnWCGu1tQddxhMXsFANZfJJtDZEdz3GuqvzWhg6uThlRWXwRsw
	 qqazxAQWkixn500Jw/ytE9SBJroHmhdsybiU2iO8=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AN3OI5N109710
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 22 Nov 2022 21:24:18 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 21:24:18 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 21:24:18 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AN3OEn6005835;
	Tue, 22 Nov 2022 21:24:16 -0600
From: Matt Ranostay <mranostay@ti.com>
To: <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 0/2] phy: ti: phy-j721e-wiz: add j721s2 support
Date: Tue, 22 Nov 2022 19:24:11 -0800
Message-ID: <20221123032413.1193961-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_192427_597180_9EDCF69F 
X-CRM114-Status: UNSURE (   6.13  )
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

Add support for j721s2 support for phy-j721e-wiz module.

Changes from v1:
* Re-order new compatible within yaml documentation

Matt Ranostay (2):
  dt-bindings: phy-j721e-wiz: add j721s2 compatible string
  phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module support

 .../bindings/phy/ti,phy-j721e-wiz.yaml           |  1 +
 drivers/phy/ti/phy-j721e-wiz.c                   | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

-- 
2.38.GIT


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
