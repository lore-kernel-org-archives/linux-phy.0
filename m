Return-Path: <SRS0=hDbK=JN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C71DC433B4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 05:27:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1A1C61103
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 05:27:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D1A1C61103
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3xQxEbOGdnMqINcnU2jIqdxZk9YjguqCbTTV+CmBbNM=; b=Xtvqj27PPKE8E2ZycRJ5rNItSb
	lQ7slBvgbm6enAuBig+H5w0yQxlqjfnQoA9sdRkkzbqaCt68tghLdJ23JPK/P5O81CPovFNhjiHUI
	73pqbWzwIPpMQ+vQEF57YoW0twSTZcLx0DbT9E/+ACXMhZ+T6A8e0up05Stk9nxjVxkaRjwwL/O/u
	8jrDkzHJAWIs54bTDRSTO+14Pjm1mcJQn9jaYM2JjoDsFy6P7d5yDyOKYNpoBoETRGTrGcB8eiOvz
	BGyqSxcPHf2nYRu67S0wBEGF3EEMvUzBO6pvNA17SWhpXQHnD0TpIU67I3z508ZezNdLZiDfGmn84
	IkcGIYvA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXH0R-000sUA-R9; Fri, 16 Apr 2021 05:27:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXH0P-000sTF-UD
 for linux-phy@desiato.infradead.org; Fri, 16 Apr 2021 05:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=OGWmPUCq+G+tmdEY0d0MYzZx+ArvEQd++b9Kv5/YV/E=; b=fN+8tOH9h61r0o7qbTKeOc9VGD
 AgY0b6uNa9igHW50lLI/QAa1z2W2rYvluLn2mu+mFgnX6Fm0maRPxC3GCUusydbUg/WwMJoHUrrDo
 YD12U2DntiJpWdlB8PEeA+fVWy6I3GlcEba//ZYSYCzHO+EupMpKChHsiS1l7NBsvb/cpq1d7mohA
 OPRc8qDyr9D9LgQCIUAfi24pGIwd9Zs1gzz18pAYHgHM7sx5/jb0qDb53xEfYkYM3furViSV31h4l
 QeobbCIL/LfG7+dg2KdalAGrpYf6leMggGDI+K7vdSO2PUs7o/RQLylLPirN0jrAzgs/pzVn1HuiZ
 Nie16g+g==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXH0M-0095Zd-4C
 for linux-phy@lists.infradead.org; Fri, 16 Apr 2021 05:27:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13G5QqFO100260;
 Fri, 16 Apr 2021 00:26:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618550812;
 bh=OGWmPUCq+G+tmdEY0d0MYzZx+ArvEQd++b9Kv5/YV/E=;
 h=From:To:CC:Subject:Date;
 b=bKVPKDEfLI2hpgA9W5zUZ+v+2bH+DJh7fvypqo7urWwKY/ggxJdKUdLtFYoqfqYz6
 c3xBY35VBjYNuvG8dzBASwFwfRBe9DfXrX8YnIbOtlDITgos/pO9XA3ka1n1FX4Uoa
 BZSpMEUfiF6x+WLYrjbI1VIN1Q/mOksR9ICq0AFw=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13G5Qqpt114854
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 16 Apr 2021 00:26:52 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 16
 Apr 2021 00:26:52 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 16 Apr 2021 00:26:52 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13G5QlLL023847;
 Fri, 16 Apr 2021 00:26:48 -0500
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
Subject: [PATCH v4 0/3] CAN TRANSCEIVER: Add support for CAN transceivers
Date: Fri, 16 Apr 2021 10:56:44 +0530
Message-ID: <20210416052647.2758-1-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_222658_405804_48F1E02D 
X-CRM114-Status: GOOD (  17.91  )
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

Patch 2 models the transceiver as a phy device tree node with properties
for max bit rate supported, gpio properties for indicating gpio pin numbers
to which standby and enable signals are connected.

Patch 2 adds a generic driver to support CAN transceivers.

changes since v3:
- dropped patch 2(in v3)
- changed the node name property in patch 3(in v3)
- picked up Rob Herring's reviewed-by for patch 3(in v3)

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


Aswath Govindraju (3):
  phy: core: Reword the comment specifying the units of max_link_rate to
    be Mbps
  dt-bindings: phy: Add binding for TI TCAN104x CAN transceivers
  phy: phy-can-transceiver: Add support for generic CAN transceiver
    driver

 .../bindings/phy/ti,tcan104x-can.yaml         |  56 +++++++
 MAINTAINERS                                   |   2 +
 drivers/phy/Kconfig                           |   9 ++
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-can-transceiver.c             | 146 ++++++++++++++++++
 include/linux/phy/phy.h                       |   2 +-
 6 files changed, 215 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
 create mode 100644 drivers/phy/phy-can-transceiver.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
