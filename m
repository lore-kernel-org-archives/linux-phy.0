Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD8DBCCA47F
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 06:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PFzTqelEl0gTzs1Y0UpE+QsKrm8/xr4OwCX1jBkM2Y=; b=DDYts9On+cdYw+
	ugWpWBrOqZlDcz/f65LacFnwcYo+l8CRDjaXhPPq4O10hkMa4g5QCsRQbHrEphVjTMt+tJHPyAOfF
	Og9/05Qo5NrUXi4kd2YRLN9vxfQrkew0B6cW7jP9HQx4lYWwe6Vc+/RJfCP/ByOAqpvPkEqHsMwJh
	6BWAfMGoBJPNJagqx39xQKqMXcroIrJokxu2fU8tHNDXoOWlMa0TSXL8t+eQblhbsWNKJP9tirQUZ
	IGgFI8r95yDkjEJDk4O6Sq2QLz+LSLmi9xo1PFiP2tR/K3G/sd6kCv+hRyfDIzu7sF+/X00P2rkoo
	AEEXQKocKqQHr0gdp0GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yWS-006hAw-Uu; Wed, 06 Jul 2022 06:28:28 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8yWP-006h4I-Iz
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 06:28:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2FBEAB81A61
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 06:28:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50A3EC341CE
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 06:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657088903;
	bh=uf62HvexVvB/Jx636o0MTt6E8hWMJQJNNvtBTXI9zxU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=inhfUNQ4eoL/s3BvkLPhTfpTXUyY3Um/ynU4oJD6fAmIxr2da4mvIonLnOhuSE4S2
	 xtZP1F+/IckpFSk/VgPIzcAqZkbDucMs7Mwt269DQmrASyWxH1jz5dlJhigA9w4IS3
	 sIVpag65QuzZlPt16iddFyqWtX2jf1iUgUY3Dj13lPQHv77T4rI3PEGveVNYrQDSys
	 7j1SF3T2ZYRiqhQYlPwUl9Df1AiJ5HwwbFJyc3spw8U7bgRzuwET2oMjNC3Xwscppg
	 Sx+T7CWGyUyzWAwoglJNoQsumuM/CoylPF49jeuhM40LsjboVZKd2HrG4IVq/xw/y7
	 8Xxe+2nH7yCPg==
Received: by mail-ot1-f52.google.com with SMTP id q18-20020a9d7c92000000b00616b27cda7cso11200140otn.9
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 23:28:23 -0700 (PDT)
X-Gm-Message-State: AJIora9kDYE6nKmYT80bFAxxfreaUzJAEB41NwlSxMCaVa1mER0Qu6U0
	jitGilArGRYRBVdGUZP32Ptmj7zacowvJsfMges=
X-Google-Smtp-Source: AGRyM1utRDa88CHhHTp5mP603IgAR57zrfhTLhegc113/GcO7yyNAJfXIpPN9E4szsM0k5P00ekmC12Kbd2fKlOgQfk=
X-Received: by 2002:a05:6830:d0d:b0:616:99da:1fb0 with SMTP id
 bu13-20020a0568300d0d00b0061699da1fb0mr16396323otb.109.1657088902445; Tue, 05
 Jul 2022 23:28:22 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p4>
 <20220706052217epcms2p444cc8608b21d483a66a43ecf4f2140d4@epcms2p4>
In-Reply-To: <20220706052217epcms2p444cc8608b21d483a66a43ecf4f2140d4@epcms2p4>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 6 Jul 2022 08:28:11 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfA_5a9bfx5=p=2qj1GxLRxt-1WsHwPfT3iho48mxiANw@mail.gmail.com>
Message-ID: <CAJKOXPfA_5a9bfx5=p=2qj1GxLRxt-1WsHwPfT3iho48mxiANw@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
To: wangseok.lee@samsung.com
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com" <kw@linux.com>, 
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>, "kernel@axis.com" <kernel@axis.com>, 
	Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim <hypmean.kim@samsung.com>, 
	Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_232825_813510_F0AAB85B 
X-CRM114-Status: GOOD (  17.13  )
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

On Wed, 6 Jul 2022 at 07:22, Wangseok Lee <wangseok.lee@samsung.com> wrote:
>
> On 05/07/2022 19:59, Krzysztof Kozlowski wrote:
> > On 29/06/2022 09:18, Wangseok Lee wrote:
> >> Just a gentle ping for this patch, if any concern on this patch please let me know.
> >>
> >
> > You received comments to fix in this patch. Exactly four. Four important
> > points to fix. Therefore what is this ping about?
> >
> > Without fixing these items, your patch cannot be accepted. What is more
> > to ping here?
> >
> > Best regards,
> > Krzysztof
>
> I tried to receive your opinion about the fix point .
> I will request a review again after modifying it in the next patch.

But there was no quote about any fix point in your message. You
replied on top of it so there was no reference to any previous topic.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
