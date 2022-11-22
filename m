Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FC1C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 09:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DrKSLPj4R372lTtpNZeGijZ1aUBuAcpnJ8LtYMvS+iA=; b=g8JL8EzS0vNw7X
	/DwSgYfupYCOB8tLBCjeDXJUmBvWHX15fL5Vq6RmQ3YEuzCS1j5rxtfztQQzPu/e7hw6zJbLlwMt/
	AhNhjffzI7d+9LPaCdEZmS/yvV7yUOB1gLl0eoM/jwRjhiaDMQM5IsmONKw3xRw1I1jUmRqia4nwN
	BkbHRKfX3bkH2jd/bJXgQmeKAR836vJ75IVPUtghoRKScvZ8bP9Io5UMTGjQnU89AzVVyICa+LHvd
	0YfKMpDgfE08WocBIgB5ZTwLrNOI1b16PcDEZA7VJe8ui78RwyIHRnq1JezMShbm0WvzihucXfJ+2
	yX/MWbSd5ROAJmVUQtug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxPUf-006wPq-Po; Tue, 22 Nov 2022 09:23:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxPTz-006w1M-2Y; Tue, 22 Nov 2022 09:22:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9M8sX105746;
	Tue, 22 Nov 2022 03:22:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1669108928;
	bh=bvgBIOUk0/EXIcA1xkCEr5z+IOYPa3TOppIs6OQvmj8=;
	h=From:To:CC:Subject:Date;
	b=k5wNhQELOZ7Y060HoFERgy2TjTYKjrCVzEVi2T4R7GMoFDvDYdfMHqdb7XGPW1Xx6
	 TPkKO9A53BrwOcFyHvXXvfpkf5vt0DpFVGO24GB2fXQPaz8U5qB/0JK+zJ98Z2YWzK
	 f/fba7II1EtkTitlVfPF4YNZsJU5QqJpybTFwfkU=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AM9M8jm011568
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 22 Nov 2022 03:22:08 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 03:22:07 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 03:22:07 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AM9M4rm027623;
	Tue, 22 Nov 2022 03:22:06 -0600
From: Matt Ranostay <mranostay@ti.com>
To: <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Matt Ranostay <mranostay@ti.com>
Subject: [PATCH 0/2] phy: ti: phy-j721e-wiz: add j721s2 support
Date: Tue, 22 Nov 2022 01:22:01 -0800
Message-ID: <20221122092203.762308-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_012223_294031_E2734E93 
X-CRM114-Status: UNSURE (   5.55  )
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
