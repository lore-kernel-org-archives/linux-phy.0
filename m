Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 219EEC47094
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:20:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB359611EE
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:20:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB359611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MwM4OomBmk/O97N4PIxrcJcG1ega8Ozxt+J6VFWe5k=; b=4MqmsurUiCr6Xn
	5OHSZvjLgFXtuOfDoIdHrlqxbI09JJrZ71pRi5lXKPDXJYOC4z8lBJHrrFCOV05Jdz6W7V6j33Bsf
	hpnwxeEELmnlLf8nPcZRUt3OvslhEJbrs1VJIlkWnRLkdHhImlfOGdeZD0hIZExL9RWBuPaJ6CKMs
	MSNr0B1i5msWsfNLV3tu9VoUgkG+sCr3J8jabEFJa3BivwpAQ4nWZ0tKVTzNZe+l4g7Vt2PNIJ+1Q
	/doB3om9e56BIQLvX9MuWueMi6IcKVDnP6Xfo7XEJXUn6nfIYWyPDWIbLAdD4kcymuLOXgO+6ZwD4
	00jf5xAfGQPJlT+eF3FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndAC-00BOlA-BM; Mon, 31 May 2021 08:20:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndA7-00BOjb-D5
 for linux-phy@lists.infradead.org; Mon, 31 May 2021 08:20:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3B4B4611EE;
 Mon, 31 May 2021 08:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622449239;
 bh=qZHb4f59HDu59685ZwIkFpkzcknD3fzRw4ifX4SpuYk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fl20srjg9zrqemgVtxIIP/4aKLen/uBi2ukdYMOtOciqXgJN8OorXSUFNJpgdvNST
 hb98qjtAqkCrFm+K0ia/S8rI1H0h+xwcwCSKsvQqBr+Tnm5I7mV1j7K+prciCh07lJ
 yeeTdQU7kSwmj1ijlrVmLi55bA70Tc9iUIAjHBIr3KY8nbpYnV85vFu1V5aNfBPHgQ
 k7CEVqgZt0FZndIruf4EBHY5n4PNzZcN3+tWZY+1iJoJfcTW3oazDEqO/6En8L4PVZ
 p/omT4NtAYKuZq0ThnnwVLbpfu3UFiGo02pn06X4Jw6ZhYkY2ynkALFS9tTrQbI/mI
 tZjWwtcLLDEJg==
Date: Mon, 31 May 2021 13:50:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wang Wensheng <wangwensheng4@huawei.com>
Cc: kishon@ti.com, sjakhade@cadence.com, p.zabel@pengutronix.de,
 rikard.falkeborn@gmail.com, sparmar@cadence.com,
 chunfeng.yun@mediatek.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, rui.xiang@huawei.com
Subject: Re: [PATCH -next] phy: cadence: Sierra: Fix error return code in
 cdns_sierra_phy_probe()
Message-ID: <YLScUxaDt/G9+Wdf@vkoul-mobl.Dlink>
References: <20210517015749.127799-1-wangwensheng4@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517015749.127799-1-wangwensheng4@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012039_498965_2C915766 
X-CRM114-Status: UNSURE (   5.36  )
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

On 17-05-21, 01:57, Wang Wensheng wrote:
> Fix to return a negative error code from the error handling
> case instead of 0, as done elsewhere in this function.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
