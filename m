Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBEBC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:43:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 832C361167
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:43:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 832C361167
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBXXecN1U41W+U0GbEBCtWX/j+/a2tL4gKa0l5oTpCI=; b=gXEK8ahVbF6DHU
	akQRpTOZAvt1MS4VqyWsyMvOwU/YyKXb0+kwOr+D57ne+1a306nOkesTABufuD8cjk7+f6kIKu9f0
	BKspWuapW6fRjfTfamq4/LTny2wrb3WFca6stEiT5DobfO7U74PuTk/PoUuExZsEwItAvVMnxr5A7
	mxLlfipezd1llhv/nN5U4FsHb6sZ2cquGTG6Z13ubh1ktGKiGnMUutgPyLO9+xXhgVbNXsZJ6DVsS
	3NEejz3Y/iNf0Ui6J8AKHUdFmU0vj4Hv5Yy3c3bDt/zapT1bNMlmXN57ibdURebs1EArTnJLwyJ1T
	ZPRn//BGCCzOaoQfLdPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzBt-00CUil-Vj; Fri, 06 Aug 2021 12:43:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzBr-00CUiH-LM
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 12:43:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 74C4561176;
 Fri,  6 Aug 2021 12:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628253787;
 bh=bNL016xssL9s5HaTioY077mWsQhoc/LW1BtqHoEY8ZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ckkq/z7PjH8iMAF9eCLUtZurD/CsNQVBSEb2xPkQg576mYkDLOvpiQufFQtk4w84P
 E1R3WY1Mrtlt/0yoiB7RvHWruR9JlKyKEhi+MQDoHLHwPdp4SH2pfOVQwZHhkBlQ4v
 jFgQXthwtZshZ6EfU85/OkZAoKCfPW2a9SrqZxft0yhKmNQZr4Kemz1bk/NVuGIXZQ
 Oe3bNEV7yIZPx+C3TR/1vh23Tr1GDEoIlQi6sjjSN8tRsnmnt/f+Sj0FdArwo9xxVu
 cVQzjteX1Glp18DRbzyllkHonNp7Ou7/zC8LL0GflplqUl/+mJ27A/Bn3Mclmo80/W
 GVZZlvwgYElTw==
Date: Fri, 6 Aug 2021 18:13:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v5 3/6] phy: renesas: phy-rcar-gen3-usb2: Add USB2.0 PHY
 support for RZ/G2L
Message-ID: <YQ0uVyBGYbvG4WTi@matsya>
References: <20210727185527.19907-1-biju.das.jz@bp.renesas.com>
 <20210727185527.19907-4-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210727185527.19907-4-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_054307_754263_DC4A31EB 
X-CRM114-Status: UNSURE (   6.57  )
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

On 27-07-21, 19:55, Biju Das wrote:
> This patch adds USB2.0 PHY support for RZ/G2L SoC.
> 
> We need to use a different compatible string due to some differences
> with R-Car Gen3 USB2.0 PHY. It uses line ctrl register for OTG_ID
> pin changes and different OTG-BC interrupt bit for device recognition.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
