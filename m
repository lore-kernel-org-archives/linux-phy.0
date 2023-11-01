Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A902C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  1 Nov 2023 05:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=luYRBXPdPlVQEkfy63LeaWM+Rc8JbEbDr7628YHp2Iw=; b=D9AAeHY4OtqVTK
	8hWxJN/5oDzpcNY45kCI7uF3FIfSfGUNC+cJjT7cHuvMoBFIOmOjpZ6HjIcQX7J5zI/tR12OUXHA/
	PdgIo0eVtnhNrt0SW8V/aaR5KcWN7eP7YxlB0IVsVunzVZWcqwWS0XWr+Q48s3e1Y1IlTapnZH1l9
	RZHmiVM4UJUKw8w+HdBHyYYAGOP7oTaduM6+Lt/y5dk+5yMUBZevP3lS+IMvkVo2qmyxG4YU+9Zqg
	7Lk7kkZZuoSIsud+h2xDnn43lOAzEaty/xpmcFd1tgJG9VCS6BGnv4mbue2Er2/MtpIf1PDutzxRt
	yiiVnVUWkAsJMZ3ZWnAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy42x-006ibM-2H;
	Wed, 01 Nov 2023 05:45:43 +0000
Received: from mx1.unisoc.com ([222.66.158.135] helo=SHSQR01.spreadtrum.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy42t-006iXj-1h
	for linux-phy@lists.infradead.org;
	Wed, 01 Nov 2023 05:45:42 +0000
Received: from dlp.unisoc.com ([10.29.3.86])
	by SHSQR01.spreadtrum.com with ESMTP id 3A15ih0A023577;
	Wed, 1 Nov 2023 13:44:43 +0800 (+08)
	(envelope-from pu.li@unisoc.com)
Received: from SHDLP.spreadtrum.com (shmbx06.spreadtrum.com [10.0.1.11])
	by dlp.unisoc.com (SkyGuard) with ESMTPS id 4SKwnb0BfKz2LjbCt;
	Wed,  1 Nov 2023 13:40:03 +0800 (CST)
Received: from zebjkernups01.spreadtrum.com (10.0.93.153) by
 shmbx06.spreadtrum.com (10.0.1.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Wed, 1 Nov 2023 13:44:41 +0800
From: Pu Li <pu.li@unisoc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: Pu Li <pu.li@unisoc.com>, Zhiyong Liu <zhiyong.liu@unisoc.com>,
        Chunyan
 Zhang <zhang.lyra@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] phy: sprd: Add Spreadtrum USB20 HSPHY Driver
Date: Wed, 1 Nov 2023 13:44:30 +0800
Message-ID: <20231101054432.27509-1-pu.li@unisoc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.0.93.153]
X-ClientProxiedBy: SHCAS01.spreadtrum.com (10.0.1.201) To
 shmbx06.spreadtrum.com (10.0.1.11)
X-MAIL: SHSQR01.spreadtrum.com 3A15ih0A023577
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_224540_424233_77D94EEA 
X-CRM114-Status: UNSURE (   7.31  )
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

This patchset is used to add spreadtrum usb20 high speed phy driver. Patch 1
is dt-binding Documentation supports, and patch 2 is the specific implementation.

Pu Li (2):
  dt-bindings: phy: Add Spreadtrum usb20 hsphy yaml
  phy: sprd: Add Spreadtrum usb20 hsphy driver

 .../bindings/phy/phy-sprd-usb20-hs.yaml       |   70 +
 drivers/phy/Kconfig                           |    1 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/sprd/Kconfig                      |   14 +
 drivers/phy/sprd/Makefile                     |    6 +
 drivers/phy/sprd/phy-sprd-usb20-hs.c          | 1324 +++++++++++++++++
 drivers/phy/sprd/phy-sprd-usb20-hs.h          |  525 +++++++
 7 files changed, 1941 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-sprd-usb20-hs.yaml
 create mode 100644 drivers/phy/sprd/Kconfig
 create mode 100644 drivers/phy/sprd/Makefile
 create mode 100644 drivers/phy/sprd/phy-sprd-usb20-hs.c
 create mode 100644 drivers/phy/sprd/phy-sprd-usb20-hs.h

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
