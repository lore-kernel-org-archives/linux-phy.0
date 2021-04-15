Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B67C433ED
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 14:50:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 360B7613BB
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 14:50:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 360B7613BB
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VM7Z0MRgOjp2ie6HkPDBLFJ+ocbFozJRtHYNRWEPLDw=; b=GBGxVx0YEezjOUFd//jDssX3fb
	DzcMrgxF+KtKE6qHOjgYVkRhjImbV0NSd7m832mzzn17jUOteSB+ESieZLmWrt19JrDUlZpUVRqu6
	8eIOWjzVzGlK71+UBuaaGhvJy/bW24j1nEwLw2gUGNm7fYwN9MGcbALTqvj5ZUlQZ5PpMg2vJDBWi
	Hgk5LoN0jIZSolS054rmkbqj/4xjEm7T1gTFXQLZFbQjmC/r8KCb4l8SONAesdY+pk2smZnIlJPAj
	KE6Qz+RwA/P6CgK/gXIjkG2KCGZzOHb3FBK8PyO+ciVppVkCKmY6CmjM0vJpgd3YmH/qRNf0KufC7
	x+ozWm4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX3Jn-00GVQs-P6; Thu, 15 Apr 2021 14:50:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Jf-00GVPT-8e
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 14:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=dtU7yZZCXXN3KU4xhLoqZPhQYRi1AWdP0Mnfpha+Ma8=; b=u+AWI6aa9lCwHwu9qeh7djx60Q
 sFxGQryNNqDzneXU2ZrfDJ+Meg9yMx3EVp/wRBD2P9+H3XHhaGaJIUFVB7+1lTb8aCsLw4NoR1YMD
 jZReYFAFA7TBXwNRS6RJFP/hWEXjd8QwXLcJX3PzNuYmQxa0jH9/gh7/B/qoSjGl34W/KdEGemjVx
 MDYLzL/pxv95FWd1aU1/SwiJIX4Sgao8F6JJMuufd28ub77//zQbpa6z6uphYsYkMrqinsjrXuJao
 a9FsPYG8k2kijHhPlr1B9iM9febGqaQ8+M2mdGesZOTjF7xz2RtvItFTVP+xTxmEdNOPVpK4XJ15S
 UP+ougxw==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Jc-008fPp-Bc
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 14:49:58 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13FEnqjo001444;
 Thu, 15 Apr 2021 09:49:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618498192;
 bh=dtU7yZZCXXN3KU4xhLoqZPhQYRi1AWdP0Mnfpha+Ma8=;
 h=From:To:CC:Subject:Date;
 b=w0PZWJbgd6z7XWw0Y0390BG0W3uy8yzBy/f45NNHjVujPK9SawGUHvgwa+cqhW8si
 l2g/mCo0OjtfnXxlYke1/GFHPDr1CG09uCl5lEb18Kjs5dbUCn5gFRh0sgt/RA2UPR
 kzzJO9srFthW5W2a3dGxn1mui2tJnBnomn22wuL8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13FEnqX1102388
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 15 Apr 2021 09:49:52 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 15
 Apr 2021 09:49:51 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 15 Apr 2021 09:49:51 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13FEnlS5037772;
 Thu, 15 Apr 2021 09:49:48 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-can@vger.kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Wolfgang
 Grandegger <wg@grandegger.com>, Lokesh Vutla <lokeshvutla@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v3 0/4] CAN TRANSCEIVER: Add support for CAN transceivers
Date: Thu, 15 Apr 2021 20:19:43 +0530
Message-ID: <20210415144947.4725-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_074956_501034_2181AF0B 
X-CRM114-Status: GOOD (  18.37  )
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

The following series of patches add support for CAN transceivers.

TCAN1042 has a standby signal that needs to be pulled high for
sending/receiving messages[1]. TCAN1043 has a enable signal along with
standby signal that needs to be pulled up for sending/receiving
messages[2], and other combinations of the two lines can be used to put the
transceiver in different states to reduce power consumption. On boards
like the AM654-idk and J721e-evm these signals are controlled using gpios.

Patch 1 rewords the comment that restricts max_link_rate attribute to have
units of Mbps.

Patch 2 adds an API for devm_of_phy_optional_get_by_index

Patch 3 models the transceiver as a phy device tree node with properties
for max bit rate supported, gpio properties for indicating gpio pin numbers
to which standby and enable signals are connected.

Patch 4 adds a generic driver to support CAN transceivers.

changes since v2:
- dropped 5 and 6 patches and to be sent via linux-can-next
- added static keyword for can_transceiver_phy_probe()
- changed enable gpio example to active high in patch 3
- Rearranged the file names in alphabetical order in Makefile
  and MAINTAINERS file

changes since v1:
- Added patch 1 (in v2) that rewords the comment that restrict
  max_link_rate attribute to have units of Mbps.
- Added patch 2 (in v2) that adds an API for
  devm_of_phy_optional_get_by_index
- Patch 1 (in v1)
  - updated MAINTAINERS file
- Patch 2 (in v1)
  - replaced m_can with CAN to make the driver independent of CAN driver
  - Added prefix CAN_TRANSCEIVER for EN_PRESENT and STB_PRESENT
  - Added new line before return statements in power_on() and power_off
  - Added error handling patch for devm_kzalloc()
  - used the max_link_rate attribute directly instead of dividing it by
    1000000
  - removed the spaces before GPIOD_OUT_LOW in devm_gpiod_get()
  - Corrected requested value for standby-gpios to GPIOD_OUT_HIGH
  - Updated MAINTAINERS file
- Patch 3 (in v1)
  - replaced minItems with maxItems
  - Removed phy-names property as there is only one phy
- Patch 4 (in v1)
  - replaced dev_warn with dev_info when no transceiver is found
  - Added struct phy * field in m_can_classdev struct
  - moved phy_power_on and phy_power_off to m_can_open and m_can_close
    respectively
  - Moved the check for max_bit_rate to generice transceiver driver

[1] - https://www.ti.com/lit/ds/symlink/tcan1042h.pdf
[2] - https://www.ti.com/lit/ds/symlink/tcan1043-q1.pdf

Aswath Govindraju (4):
  phy: core: Reword the comment specifying the units of max_link_rate to
    be Mbps
  phy: Add API for devm_of_phy_optional_get_by_index
  dt-bindings: phy: Add binding for TI TCAN104x CAN transceivers
  phy: phy-can-transceiver: Add support for generic CAN transceiver
    driver

 .../bindings/phy/ti,tcan104x-can.yaml         |  56 +++++++
 MAINTAINERS                                   |   2 +
 drivers/phy/Kconfig                           |   9 ++
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-can-transceiver.c             | 146 ++++++++++++++++++
 drivers/phy/phy-core.c                        |  26 ++++
 include/linux/phy/phy.h                       |   4 +-
 7 files changed, 243 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
 create mode 100644 drivers/phy/phy-can-transceiver.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
