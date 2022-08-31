Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 963C9ECAAD1
	for <linux-phy@archiver.kernel.org>; Wed, 31 Aug 2022 20:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BwZk8IzUk7KfTpb9ISvDfI4DbCSQO0Uymo6zLj/KVLs=; b=g7yPkr/ltI076M
	kd1niC4aGXlQmtg0WbY3eCYhX86ogq/nT0VPBccMVtZ6q49XTSD+D/8k5izhTX8bfoZBARBVdta1S
	ebotOryMW1r0hXQcv5/BIHLXTScvy4ZkR6oKqMhdjGa5+ko7azkE5cEa9Rk/QN1g8evPq+s7IkyfH
	Jv8ydYs7/3MLlebI6zYjEa7pT2geJdj5fV1BjjWKaLFPSg/NRJEWlPUwO+QKtdr8iDgYu3LFKReO+
	MdK6aLRCLNNg5G1zMn3HRuxfA7K/F9LgnMhRcuFSNNUjp117Dqqg8zxrXI39gERQ6xWd3FG/xLYyg
	0QpyAagbuUEXKK9n2oPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTUAw-0087az-Rr; Wed, 31 Aug 2022 20:19:02 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTUAu-0087Zx-NL
	for linux-phy@lists.infradead.org; Wed, 31 Aug 2022 20:19:02 +0000
Received: by mail-pl1-x62d.google.com with SMTP id j5so11276064plj.5
        for <linux-phy@lists.infradead.org>; Wed, 31 Aug 2022 13:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=PSp2/fCmK/hRUtlQD1BiQphhei94+qnRCH+0FidZ1zw=;
        b=f8sz/I3hUQu4tiGhEbhXBwcKiu3wj+iZEtjROVtx8TWnrHqobITYy9Mn/qjL19/jdh
         WnjalXzzcjYqICVXaChJ6vBcSNcug2hOx4d7fgIMUqJfRTBAWG96VhfiVy6I1Df4eWLl
         zAkM/O4HdRLftXhkFuQYhqcCiIYj0Dmf2iyE8RumWhgbKgZVg6zVlndjOe9Ah6IeiEnX
         6bMJZdtSSOIiUXcXleQ9M4chDfHthe5klJC0aUydwFfjv78uj9XLHt1BfEAi/vMxUY9O
         dV3fvLEyPOBffLYElbzrpTdBVzyKLKDC+YpdvMnLzTurCowI9uAz48+oZY349kbA7qjX
         gKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=PSp2/fCmK/hRUtlQD1BiQphhei94+qnRCH+0FidZ1zw=;
        b=Gb0Jx0rqlRDPDYy1ZWPlbZUE0y33KnoK8dUs+pnmrriGehe2P6cFqSMp2yworORBSC
         yt+xZtV8KVEGQnwPw3ohJ4JFuCa/7sd9uSA8hSPLzgVL+Wldvd8ZSjlvrGu/bmjaSGaR
         AFw9JHgZyJGQCzRKehDsc9WZ6Z5jFf6/eUDezIYU2mrU2JlsjNNJAsBKK5VE8bTlsvLt
         B91qV4jkF9JjL079zpz9iy4ZpTf4DwRZGoZ+3FKc4+rr1A8bb5fI+gQCccuNsOHvCz4t
         lXvb2TGo1kH/Rrb/8dQfYp+Y5GHNzE+Jzi2xBm9RaeeXP8WE0Wk5AD0LCixjc+WRJPaL
         DDqg==
X-Gm-Message-State: ACgBeo1Bi4gDR4xZ3Dzv9iURZjoc+uW5sPdFXqTG9Tl1SYG3N0OOktDI
	CRL2+IUiMb4GZ0UApOADxQVr26wdeK46ADPcBcHEBw==
X-Google-Smtp-Source: AA6agR6VnuCxmthA4BAwAtlPYstZif8e+PGgcnE5gw9L5XABrzBF+RLZdpDqBVTUtKfwyZGa6wyzdBoSM7nNF2+3df4=
X-Received: by 2002:a17:90a:8689:b0:1fd:9ab8:bec2 with SMTP id
 p9-20020a17090a868900b001fd9ab8bec2mr4998101pjn.155.1661977138318; Wed, 31
 Aug 2022 13:18:58 -0700 (PDT)
MIME-Version: 1.0
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 31 Aug 2022 13:18:46 -0700
Message-ID: <CAJ+vNU1F3sYuSX9HEpVEPb-NzFEaKnuc_5mznTHOLFmCkCu_Lg@mail.gmail.com>
Subject: cn9130-crb PCI support
To: kostap@marvell.com
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com, 
	vladimir.vid@sartura.hr, luka.kovacic@sartura.hr, 
	linux-phy@lists.infradead.org, 
	Device Tree Mailing List <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, mw@semihalf.com, jaz@semihalf.com, 
	nadavh@marvell.com, stefanc@marvell.com, bpeled@marvell.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_131900_994713_7AE60EE8 
X-CRM114-Status: UNSURE (   8.00  )
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

Konstantin,

In commit 5c0ee54723f3 ("arm64: dts: add support for Marvell
cn9130-crb platform") which added support for the cn9130-crb where are
the PCI RESET# and CLKREQ# pins configured and specified?

As PCIE_PERST# is connected to CP_MPP[52] on the board I expected to
either see something like:
cp0_pci_pins: cp0-pci-pins-0 {
     marvell,pins = "mpp52";
     marvell,function = "pci";
};

or:
&cp0_pcie0 {
    gpios-reset = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
};

I don't see any support in the PCIe driver (marvell,armada8k-pcie,
snps,dw-pcie) that support gpios-reset.

I'm working on support for another cn9130 board and am unclear how to
configure the pinctrl for PERST# as well as CLKREQ3. Any pointers
would be greatly appreciated.

Best Regards,

Tim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
