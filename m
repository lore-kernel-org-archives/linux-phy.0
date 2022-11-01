Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CADDC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 17:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8yIz6vD57uTpuwocAgH+Qd77m+B7nQL1KwBdgZ4RHw=; b=g4A+tELFoLMMPd
	HH9GJdjHbcP59vNK0xMC22GdM51nF7tftDmTjSOu0DWf/g2AwbwDsIJUCEi7j05ZKXM/JFN0z/5/S
	g4jMlR31GAOsgEQdvnxTwx3lAzlVUFzztk7m9p8klsasKmdZA3hOCZb+qieEPpNrPdPS+k/an5/yh
	tgRbvIy5IAvLM2OzStqulkyPPcrBusf/ZEh1ULeqLj0UKJozc03zi7YiTutlWVl9p+/4Nb8MRh2WE
	w4OuCfiJB+gCXxsSTQCretp5HPZZnD0oErqW9a8cobK7DnMz153KYKoQ3lF9PEnI483cat6iJAuI5
	IjkmMDcKRm/nMe9HqMDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvFd-006LIl-RK; Tue, 01 Nov 2022 17:40:37 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvFb-006LHg-P2
	for linux-phy@lists.infradead.org; Tue, 01 Nov 2022 17:40:36 +0000
Received: by mail-ed1-x52d.google.com with SMTP id z18so17811187edb.9
        for <linux-phy@lists.infradead.org>; Tue, 01 Nov 2022 10:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UQdrouDXKXfvnI6vdPyQG7nLFjbvZ8WIOoJP9jMXChc=;
        b=lFgWghOzmIXhCHIDDheWnJaQA6brf6Ly22UrhjqZiUag3kGziwK59twAeVx6M/gIM4
         1G483qrSC9Q6fuFyHU2lKN4COQZPP8ZwxzjuCZiT77Z7RYum2+l6jwXeWiWSr1117TKo
         u06hbFdGDtFaqYYTftQlDjY2nNx/EqNHovMtSMt9nt9xvURuZ8/qgSsSHUC9idCck9mG
         TCU57efWvoUlMn3e56Kp2q3lM0iCAX5SNVtKtcOUsXGuQvCqvPT4Cn7mCiYhK3GmbFhy
         pmlaexkr9bBUQtE++QK1cBdxvtTU3Vb0XPqQ/LweUXSV1AM6qU/mQ9ykdgF+mORzzNzE
         r81A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UQdrouDXKXfvnI6vdPyQG7nLFjbvZ8WIOoJP9jMXChc=;
        b=Clj4Gs+l8zVk3lPIv2TIQQI+jx8FmjUf6OMJ6lOT+vzuLOWnJY5CoGu927zVb0ZqxP
         wBhVw5XxE1RuHfCTOl+7i3QtiRWXrLj0q+H1ylwfl8lDhtXCjmXb4P0gyb/RM+uzamxS
         C6RPUYJuLtO6Bx+x6Hgk0mi+8RqWaaOyHeoMhRNC6F0T1mdcGRf5GbWXVp74pSDqx/Ks
         UObNlxPqHntT6BV5ApNFDXV2FplptAmYYGW/u2HGWy6et73V6AImppnRNNc3HfVBbTC7
         WX/ezWhuVlDuayfTvzWFmCIBtr4OqITmEZqvhkNdmnAiFPvRMAnHWjeKDs4jBQKAeUhr
         7nNQ==
X-Gm-Message-State: ACrzQf2+x1CaUxlh2F2p7EIz0dwLxz7TMOW1H7ZjYU+499bLqYdXoTVh
	3MdgGQQi8+iml+HGzx+R6bUdYGh6xcBESuTDYOraa3mv
X-Google-Smtp-Source: AMsMyM6cO7xf9Yoje6qJYFc9KxbVMTB4kjV40MW6U2wHClkuXh5MNse5Fajj12u+FfB2cWh/uoqvC60OYYPiFTGf2iU=
X-Received: by 2002:a05:6402:616:b0:463:e2cd:a88d with SMTP id
 n22-20020a056402061600b00463e2cda88dmr651298edv.400.1667324432069; Tue, 01
 Nov 2022 10:40:32 -0700 (PDT)
MIME-Version: 1.0
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
In-Reply-To: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
From: Justin Chen <justinpopo6@gmail.com>
Date: Tue, 1 Nov 2022 10:40:20 -0700
Message-ID: <CAJx26kXrsELEkTGYJ31hVR7icfM=WARjad0bf=djeGCdLf7h0g@mail.gmail.com>
Subject: Re: [PATCH 0/6] Various bug fixes/improvements for phy-brcm-usb driver
To: alcooperx@gmail.com, kishon@ti.com, vkoul@kernel.org, f.fainelli@gmail.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com, 
	Justin Chen <justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_104035_831218_FD036247 
X-CRM114-Status: UNSURE (   9.83  )
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

On Wed, Oct 5, 2022 at 2:30 PM <justinpopo6@gmail.com> wrote:
>
> From: Justin Chen <justin.chen@broadcom.com>
>
> A few suspend/resume bug fixes with clocks and wake counter. Also improve
> port mode selection.
>
> Al Cooper (1):
>   phy: usb: s2 WoL wakeup_count not incremented for USB->Eth devices
>
> Justin Chen (5):
>   phy: usb: Improve port mode selection
>   phy: usb: Migrate to BIT and BITMASK macros
>   phy: usb: Disable phy auto-suspend
>   phy: usb: Use slow clock for wake enabled suspend
>   phy: usb: Fix clock imbalance for suspend/resume
>
>  drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 95 ++++++++++++-----------
>  drivers/phy/broadcom/phy-brcm-usb-init.c          | 90 ++++++++++-----------
>  drivers/phy/broadcom/phy-brcm-usb-init.h          | 11 ++-
>  drivers/phy/broadcom/phy-brcm-usb.c               | 28 ++++---
>  4 files changed, 116 insertions(+), 108 deletions(-)
>
> --
> 2.7.4
>

Friendly ping. Any updates on this patch set?

Thanks,
Justin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
