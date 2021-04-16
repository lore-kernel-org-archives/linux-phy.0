Return-Path: <SRS0=hDbK=JN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MISSING_HEADERS,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 281EDC433B4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 11:44:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D23261166
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 11:44:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D23261166
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:Subject:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RbKcbMi2uwLnWwkJ1mxohMHBeH8A3WSS8NHfx2bgKcY=; b=YzDIFjjFHKzvsdx9duv8kRUYF
	NYjSZlNeYiZ1QKXe9S341qvV3ZuFzJ7U+o5TXYe1O67GXeTnXM/UrdNQoB3rpJZSPZRJODPELB1hw
	C1gvykre1ca5UxlCUDW8Pqiek7orj2SCehf+q4YGqeFGo1UTsl3k5YGIIFuO6nYp0PMxtVENVNZZv
	r24oDxh8OouzDlxKD8zGsg9wlHR5gtex8VPNvSYiDDjEjtriDSg6qLd8oGUBbE6mwPGEukSgzQt59
	Zhbl4IVDfxSgOZrDuoyMlOmyMjA9jOTfUfHEWSKDrgfcRbvuo3foAsBHf0z8dI0JtkrqMhNArvvMX
	TAtNMefuw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXMu1-001yAV-Rb; Fri, 16 Apr 2021 11:44:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXMto-001y8m-Cw
 for linux-phy@desiato.infradead.org; Fri, 16 Apr 2021 11:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:
 Subject:Sender:Reply-To:To:Content-ID:Content-Description;
 bh=mbuQ70PGAeBYG1iuTQJgyXbv/NPSjwO6U3RTsucScYI=; b=USSdLSpDWuAhdtC/UGPHGJIlgy
 miM1P3YISkbHIvkdMXALPW7ZbfvA10+hSZMgCCbCDbHW6f94n8e+5ze+ftiuNmlc7zUslGMTxMIGA
 tlEcYYCmgrxpblNxup6k+f5rOSTBr86O5B+K2L1xuFf1IfZJtM5B1MwEuCc4iqyGTSPhCykhN8PPl
 08MUhzXtxT8rAIX535PnMGsITEy71wbjAUzIDfyGama9WK+D1skzJo4aA5ZjCG3aDyK4ZscQnHWKt
 nO9ZXNJGkKi3kRfJy2cEbMXM3qXziRFuwVsg6rFSc0DtdZU97ngcVYV9It0hDJi2KLbasOr4sTLf7
 2cXr5CMw==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXMtl-009KNd-F6
 for linux-phy@lists.infradead.org; Fri, 16 Apr 2021 11:44:35 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13GBiTtj112596;
 Fri, 16 Apr 2021 06:44:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618573469;
 bh=mbuQ70PGAeBYG1iuTQJgyXbv/NPSjwO6U3RTsucScYI=;
 h=Subject:CC:References:From:Date:In-Reply-To;
 b=s9cY+HzbMnpWAhJ2uaRn0HeSn8KN/gBCeBOAUQO7PbhkrdhNWN2EcUd+kJC9jBYHr
 d5mX/gqcxl+BdCrHkC16FdupGY5+5eAc77cm4izWcWmXajCCfr86wxX4NsoOvfHLx5
 4K9O1fG5XaNVKkeYvcQ8K6p4FgF6QYYD0kfyKMJo=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13GBiTSQ096205
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 16 Apr 2021 06:44:29 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 16
 Apr 2021 06:44:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 16 Apr 2021 06:44:28 -0500
Received: from [172.24.145.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13GBiOS6095142;
 Fri, 16 Apr 2021 06:44:25 -0500
Subject: Re: [PATCH v4 0/3] CAN TRANSCEIVER: Add support for CAN transceivers
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-can@vger.kernel.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Wolfgang
 Grandegger <wg@grandegger.com>, Lokesh Vutla <lokeshvutla@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>
References: <20210416052647.2758-1-a-govindraju@ti.com>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <ca83b1e1-b656-33a5-0abd-b7c1123ef32b@ti.com>
Date: Fri, 16 Apr 2021 17:14:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210416052647.2758-1-a-govindraju@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_044433_628435_2B951336 
X-CRM114-Status: GOOD (  27.93  )
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

Hi all,

On 16/04/21 10:56 am, Aswath Govindraju wrote:
> The following series of patches add support for CAN transceivers.
> 
> TCAN1042 has a standby signal that needs to be pulled high for
> sending/receiving messages[1]. TCAN1043 has a enable signal along with
> standby signal that needs to be pulled up for sending/receiving
> messages[2], and other combinations of the two lines can be used to put the
> transceiver in different states to reduce power consumption. On boards
> like the AM654-idk and J721e-evm these signals are controlled using gpios.
> 
> Patch 1 rewords the comment that restricts max_link_rate attribute to have
> units of Mbps.
> 
> Patch 2 models the transceiver as a phy device tree node with properties
> for max bit rate supported, gpio properties for indicating gpio pin numbers
> to which standby and enable signals are connected.
> 
> Patch 2 adds a generic driver to support CAN transceivers.
> 
> changes since v3:
> - dropped patch 2(in v3)
> - changed the node name property in patch 3(in v3)
> - picked up Rob Herring's reviewed-by for patch 3(in v3)
> 
> changes since v2:
> - dropped 5 and 6 patches and to be sent via linux-can-next
> - added static keyword for can_transceiver_phy_probe()
> - changed enable gpio example to active high in patch 3
> - Rearranged the file names in alphabetical order in Makefile
>   and MAINTAINERS file
> 
> changes since v1:
> - Added patch 1 (in v2) that rewords the comment that restrict
>   max_link_rate attribute to have units of Mbps.
> - Added patch 2 (in v2) that adds an API for
>   devm_of_phy_optional_get_by_index
> - Patch 1 (in v1)
>   - updated MAINTAINERS file
> - Patch 2 (in v1)
>   - replaced m_can with CAN to make the driver independent of CAN driver
>   - Added prefix CAN_TRANSCEIVER for EN_PRESENT and STB_PRESENT
>   - Added new line before return statements in power_on() and power_off
>   - Added error handling patch for devm_kzalloc()
>   - used the max_link_rate attribute directly instead of dividing it by
>     1000000
>   - removed the spaces before GPIOD_OUT_LOW in devm_gpiod_get()
>   - Corrected requested value for standby-gpios to GPIOD_OUT_HIGH
>   - Updated MAINTAINERS file
> - Patch 3 (in v1)
>   - replaced minItems with maxItems
>   - Removed phy-names property as there is only one phy
> - Patch 4 (in v1)
>   - replaced dev_warn with dev_info when no transceiver is found
>   - Added struct phy * field in m_can_classdev struct
>   - moved phy_power_on and phy_power_off to m_can_open and m_can_close
>     respectively
>   - Moved the check for max_bit_rate to generice transceiver driver
> 
> [1] - https://www.ti.com/lit/ds/symlink/tcan1042h.pdf
> [2] - https://www.ti.com/lit/ds/symlink/tcan1043-q1.pdf
> 
> 

Posted v5 for this series.

Thanks,
Aswath

> Aswath Govindraju (3):
>   phy: core: Reword the comment specifying the units of max_link_rate to
>     be Mbps
>   dt-bindings: phy: Add binding for TI TCAN104x CAN transceivers
>   phy: phy-can-transceiver: Add support for generic CAN transceiver
>     driver
> 
>  .../bindings/phy/ti,tcan104x-can.yaml         |  56 +++++++
>  MAINTAINERS                                   |   2 +
>  drivers/phy/Kconfig                           |   9 ++
>  drivers/phy/Makefile                          |   1 +
>  drivers/phy/phy-can-transceiver.c             | 146 ++++++++++++++++++
>  include/linux/phy/phy.h                       |   2 +-
>  6 files changed, 215 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>  create mode 100644 drivers/phy/phy-can-transceiver.c
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
