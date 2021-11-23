Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD3EC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 08:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:Subject:Reply-To:To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1EmsgkWrTMZkFTngPYQmcJawFVrOR+cvrYWIl7CEk/k=; b=M7mGgmh9QGTepnGlhMHpUbZ7rr
	4GaJ2UEUB61Iw1yv2AJv6GmZSSy2o7HdLRZNE78GiZiL+RLShJPndIa8MhyjgcHGiM980lqNct6AB
	S7Jmx3YAC4UhgJZmysWfYjXyKD/HhWDmjJntkXqSTI0xrEz7JNLRelt9tq+zLLXcO0RhHv62rmOmh
	aP9D0rXtIhlG4LiC9R++gD8zaXd6lv4fVzltCH/fGydxHcKU5ssw9ZT4+MbB7FeFN37K6+0O6rXX+
	g2WDWlfkKD4K9DIMbZsBY4wsQ65SI4jx1trrRt+jE55V2S+aV8U3tSdyht1WA7ugn9Qvfvw/VPNZN
	svcuGN+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpR4U-001GQ1-7e; Tue, 23 Nov 2021 08:22:34 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQwl-001Dhq-2C
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 08:14:37 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8ESHh024421;
 Tue, 23 Nov 2021 02:14:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637655268;
 bh=y5EkiJ7SMkpoSDDEcOeXgHBrlYWqeQNdWDeIJEVvZYk=;
 h=Subject:CC:References:From:Date:In-Reply-To;
 b=mY19MsNzNTLzrQNmAD4U70WVMUmzGu2bPhSaBnORwJOzyAn2lRd35+qIZrpHgje9L
 K+aFWfRsiiIrA7/B0C8OCETvcMbLK+rZ2JPhlZX7Bqjy67cTzPb1xNoQdAYGnvBTG9
 RMsVJ7yBee1vEZds0EkmVk7rfAndG9pMLAI94TRA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AN8ES1C006944
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Nov 2021 02:14:28 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 23
 Nov 2021 02:14:28 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 23 Nov 2021 02:14:28 -0600
Received: from [10.250.232.185] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8EOPw107046;
 Tue, 23 Nov 2021 02:14:25 -0600
Subject: Re: [PATCH RFC v2 0/4] MUX: Add support for reading enable state from
 DT
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Peter
 Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>, Wolfgang
 Grandegger <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20211122125624.6431-1-a-govindraju@ti.com>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <b9ad641d-e697-fcd7-a113-685d371bb0ba@ti.com>
Date: Tue, 23 Nov 2021 13:44:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211122125624.6431-1-a-govindraju@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_001435_350378_AD80EC42 
X-CRM114-Status: GOOD (  18.22  )
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

Hi All,

On 22/11/21 6:26 pm, Aswath Govindraju wrote:
> - The following series of patches add support for reading the state of the
>   mux to be set for enabling given device.
> - As these are RFC patches I have combined them into a single series for
>   better understanding of the reason behind making this change.
> 
> Changes since v1:
> - Added support for reading the enable state from DT instead of hardcoding
>   the state to be set to 1.
> - Made relavent changes in the bindings
> 
> Link to v1,
> - https://patchwork.kernel.org/project/linux-phy/list/?series=578863&state=*
> 
> Aswath Govindraju (4):
>   dt-bindings: mux: Increase the number of arguments in mux-controls
>   dt-bindings: phy: ti,tcan104x-can: Document mux-controls property
>   mux: Add support for reading mux enable state from DT
>   phy: phy-can-transceiver: Add support for setting mux
> 

Thank you for the comments. I have made changes based on the comments
received and posted a v3 of this series.

Regards,
Aswath

>  .../devicetree/bindings/mux/gpio-mux.yaml     |  2 +-
>  .../bindings/mux/mux-controller.yaml          |  2 +-
>  .../bindings/phy/ti,tcan104x-can.yaml         |  8 ++++++
>  drivers/mux/core.c                            | 20 ++++++++++++--
>  drivers/phy/phy-can-transceiver.c             | 26 +++++++++++++++++++
>  include/linux/mux/consumer.h                  |  1 +
>  include/linux/mux/driver.h                    |  1 +
>  7 files changed, 56 insertions(+), 4 deletions(-)
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
