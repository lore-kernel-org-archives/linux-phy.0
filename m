Return-Path: <SRS0=FOTy=LY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0FE8C11F65
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 12:24:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DB2761409
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 12:24:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DB2761409
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjNztu48Gm/aW7VoSjMjCvHiZiiRdp74ac7PQYBpfiI=; b=FmgrPMsJvijqx4
	pMhHSFbYBInYViWbychvw1iWPsRXa75KZxdi75v+QajaAebGAxFy+jL3wqJPlChmd4uB87HOfLuSN
	uDBIBqszNr0tI/f83x8ae0NrFjjaDdemC/E3JnKuDCV5KjkOIkuUFEf9Sq3+PKUjnjU9xRuGqhmR7
	WA8U62wtlJzwaXPk23Igjm54q1lqiH5RtxFRvUr3veHZSZHCiOINpLZU7dNRa1ESVyoQQ5jUVrqor
	r3qF3+MDtd1XvvI7mJcTcqJBBQu1zHQxp5PAfQmJtULX1kuUTZ1VNODUqY5mVKwpi//bK2g0zJ1AZ
	T0NzTkxI0TYSb04epjkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyZGd-00DqQM-1r; Wed, 30 Jun 2021 12:24:35 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyZGY-00DqOn-VJ
 for linux-phy@lists.infradead.org; Wed, 30 Jun 2021 12:24:33 +0000
Received: by mail-ej1-x62c.google.com with SMTP id nd37so3917074ejc.3
 for <linux-phy@lists.infradead.org>; Wed, 30 Jun 2021 05:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Eh0RuQARDzYtX6oU1mn3qAV9Ucz3Lp8rJN5AdD4bnhs=;
 b=WBXCycTdBoh6XyOaRz5Q0FgDS+p+Jgx5jtTyEatbqxXji88bYAukahgX9m7BnqakDW
 ScgcdoRm4a22be1BUHuSaUkIe/dro9uVDW84Gzz8byb3jhcDM21cjjVIswHwmAzAT2ay
 3r1KF56s0IiNEdecxUP32P2jUjjQ9x42GuI1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Eh0RuQARDzYtX6oU1mn3qAV9Ucz3Lp8rJN5AdD4bnhs=;
 b=MUoICONKa7qaAb/yZCU/9idcNV5hUigE57Gr2dZiflOnye1klxbY7vGWTCb0AipZx8
 sHP97HLWDN+Qlg+p1wMwN7GXrZum7j+lGuHH5PLz1m9xEyjTt+tvtlO9J0+vOLevrqGh
 7lHztKETuMHfSkG4atAdPRMXKOnPiT59ysWTpGFruxDSaXSee+ULhnRHaFU44QMxf9fg
 EKikkp4Lr5WKyNNrCRux6u3HoZyism3oja7iwExAVVF0Hj1fi+m2yv2vM2JLZjuIFJXq
 9y1lKuJZJ+xJO9iZYNN5bnVnRzINnjZVruMDVYW+SQWkTNbHs4zKFLnQHqFAqopVB53U
 A//w==
X-Gm-Message-State: AOAM530vLMAJgClo1JVVCnRv1Hlg4/beH/lR9/jGWQEiTSctYQhcy5Tf
 s+TFNywdvSk3gaIVi8agobMBYHbLC6PqpbFuH1FwjA==
X-Google-Smtp-Source: ABdhPJxwqMZaLfOn6TzLb/GLihpg4GGodAJleAoeLOXW6d+kxnZXNArRcvf9kTne5Z021JckBamQgD4y7urdQuzOzm0=
X-Received: by 2002:a17:906:2dd5:: with SMTP id
 h21mr35625781eji.522.1625055869329; 
 Wed, 30 Jun 2021 05:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <DB6PR0402MB2760C13BBF36FF98E4F4635988029@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB2760C13BBF36FF98E4F4635988029@DB6PR0402MB2760.eurprd04.prod.outlook.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 30 Jun 2021 17:54:18 +0530
Message-ID: <CAMty3ZDb5h2WJNxW=ZdFty53KFoZJmzZ8aBnFYfxnhKhgrpa8A@mail.gmail.com>
Subject: Re: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Tomasz Figa <t.figa@samsung.com>, Fancy Fang <chen.fang@nxp.com>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, 
 "linux-amarula@amarulasolutions.com" <linux-amarula@amarulasolutions.com>, 
 Anthony Brandon <anthony@amarulasolutions.com>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Milco Pratesi <milco.pratesi@engicam.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_052432_128430_8012F3B1 
X-CRM114-Status: GOOD (  16.91  )
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

Hi Peng,

On Tue, Jun 29, 2021 at 12:40 PM Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>
> Hi Jagan,
>
> > Subject: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
> >
> > This series support MIPI DSI on i.MX8MM.
> >
> > It worked directly with existing mxsfb driver but the SEC DSIM timings has to
> > be validate and tested through all platforms, ie reason I'm sending it as RFC.
> >
> > Tested on Engicam i.Core MX8M Mini SoM.
>
> Thanks for the work.
>
> >
> > patch 1: dt-bindings for SEC MIPI DSIM
> >
> > patch 2: SEC MIPI DSIM bridge driver
> >
> > patch 3: dt-bindings for SEC DSIM DPHY
> >
> > patch 4: SEC DSIM DPHY driver
> >
> > patch 5: MIPI DPHY reset enable in blk-ctl
> >
> > patch 6: display mix blk ctl node
> >
> > patch 7: eLCDIF node
> >
> > patch 8: MIPI DSI pipeline nodes
> >
> > patch 9: Enable LVDS panel on EDIMM2.2
> >
> > Note:
> > - all these patches on top of Peng Fan's blk-ctl driver.
>
> Would you please update to use V8 patchset?
>
> And the dtb:
> https://patchwork.kernel.org/project/linux-arm-kernel/
> patch/20210604111005.6804-1-peng.fan@oss.nxp.com/

Thanks for the details.

I will rebase to use this series and test. Will update on blk-ctl patches.

Thanks,
Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
