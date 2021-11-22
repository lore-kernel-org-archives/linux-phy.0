Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB760C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 13:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:Subject:Reply-To:To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kuo8QIGInAWbOHRuQ09lRjuEsVU9c2tD8yxYEHOyt48=; b=cM/1k+RdqLvm+HNBLbr22oTT1J
	WV1lf67YOlc6VQGli9YnW7fas2BLbkZw+tUuhzt+n4rOQkD11p67A54Tvkadcktyjwt/hDtHs0FdX
	6+fRspr+Q3uH62wXe+ujNTF5o5NDY3mGRJcAP7QL9I3HUZrhs9Z0thZylRU7eBEO6XoZfjtXnuAG0
	yMveTTPi8kPp4H2TcH4i5qLyK/iS4HAF4yinvOgnyTPpL8L52VH+31zvkrDyL7j4um1PPgLNgJeU6
	FjixL0aT7Ax4x0NcDQwss4HqGOKXDrrss8S06agyLU1MemCUSqQEdR2sP7WsUkPERM91L5SPtcLPN
	gwWn0cNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp8zb-00GZMe-Bo; Mon, 22 Nov 2021 13:04:19 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp8zY-00GZLI-3J
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 13:04:17 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AMD4CfE110222;
 Mon, 22 Nov 2021 07:04:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637586252;
 bh=cgfUQb5H+/q89FEobokpGFktiAaiufefxSB1SXD7M2c=;
 h=Subject:CC:References:From:Date:In-Reply-To;
 b=kjUYxnjlY/l9kWVVKFvafoneBn9Aj9CxTSfdKDAVU/saHvI6fYimjGuIRxO+a+F5S
 wnKfi+FrbMkQg2xl6T4rjxoLOMA0IgMxes+kdqaBnGRc+KY9z6n84frgacY6Du78wS
 /VeV26xcz8TV71FZBEBC098raB8ipnlg6vuOfsJo=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AMD4CCr128275
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Nov 2021 07:04:12 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 22
 Nov 2021 07:04:12 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 22 Nov 2021 07:04:12 -0600
Received: from [10.250.232.185] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AMD49wq127891;
 Mon, 22 Nov 2021 07:04:09 -0600
Subject: Re: [PATCH RFC 0/2] CAN TRANSCEIVER: Add support for setting mux
CC: Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Nishanth Menon <nm@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Vinod Koul
 <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20211111164313.649-1-a-govindraju@ti.com>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <cf9c9534-92a8-4c7f-fdb6-43b40768ec65@ti.com>
Date: Mon, 22 Nov 2021 18:34:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211111164313.649-1-a-govindraju@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_050416_229397_94A02949 
X-CRM114-Status: GOOD (  13.16  )
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

On 11/11/21 10:13 pm, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceiver,
> muxes might need to be set. Therefore, add support for setting the mux by
> reading the mux-controls property from the device tree node.
> 
> Aswath Govindraju (2):
>   dt-bindings: phy: ti,tcan104x-can: Document mux-controls property
>   phy: phy-can-transceiver: Add support for setting mux
> 

Thank you for the comments. I have posted a v2 for this series after
making the changes that were requested.

Link to v2,
- https://patchwork.kernel.org/project/linux-phy/list/?series=583917

Thanks,
Aswath

>  .../bindings/phy/ti,tcan104x-can.yaml         |  6 ++++++
>  drivers/phy/phy-can-transceiver.c             | 21 +++++++++++++++++++
>  2 files changed, 27 insertions(+)
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
