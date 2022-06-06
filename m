Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEABDC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jun 2022 14:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0sd2bbbAZj+Y7daEIiODB9mqjx+HX6VeSppVTFRPIg=; b=a6dVWotEcfzTqq
	LcsA8ZdpDVrvzZt+qno0YHwL0azs1X/tIYbSOqOPYNrTtZOUO8ZcYj320C9Qr/FgQ1F7OZRfQhjpU
	6WD2xLIInwx36XfSsWzgDhE7lQ5X93QzKO+3hgRUIuepvsvcSDHJqi4ZPot/01xNwmYozycbftDa7
	7wpy7l6gcP1Rgauw1IAL5DuD+cVP8r3t9y/bKsOQZqGTkYmm/IwrYY82f5l9DBmBS99qxYMphT08t
	sHvjgnVL1aOrbcU8VdM3ZjjNpT76xuQFJFhpwi7ZQ8b4OMb8NHY9B8ob5DoDuRD5+4ZVEitGJbjUN
	FW+NrezY2VqCCfNSsSdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyDaX-001TLX-4F; Mon, 06 Jun 2022 14:20:13 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyDaU-001TK3-Vj
	for linux-phy@lists.infradead.org; Mon, 06 Jun 2022 14:20:12 +0000
Received: by mail-qk1-x733.google.com with SMTP id bi27so4373851qkb.10
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 07:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dM396G/2QLfKioc1syDLOcBhUV6ELRzsPLGNpLhwVM4=;
        b=g/K66wRRBcNu+YwOGEtjZAqNUaihQbAWupXjLyzDpylwhn+yPd+Mi4ri/fttRxQhOV
         FZEjlrRRUKoNEb9thvv3KUAKQyteO+16cCf58RkrZtqwstKu8ubKTV/em7u6Pvwnlmu5
         dGTlkM9OMXw6qYx1ke5p9aubbbITIQlnl4BpIdzdo0969hwe2VLjxe8AuTYoirmeS7cs
         Ng3wpe8nR7oRUeq1Z0piMCn29dTuu0vZON050LeGxzCC1YoNb3LZJgqFj8VNUp9WGy6D
         lj6QNZ0MxL2MdDHGR5RFs/50yVpEJLfcPzKhpwwKfq1U3+HrkATdt55kq2aE6NlPx/9z
         69Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dM396G/2QLfKioc1syDLOcBhUV6ELRzsPLGNpLhwVM4=;
        b=CzCyI/4qYUvuLEFt1QgfWhy7kxy4RV3NMjtClaw1QihBN5vZUBKBZHa12q5LCMXQdv
         tQ2cyngTHqVAq259LdeHhv6yA2ZX/5gMfHphx15UkwcaA6TuUbrT2REHMknqYl3LSw6x
         8uuz2zoGq5tDsITgGbxnkIEAdd4Dp875lutGnYvpeH2gXpg9PT/6MUoBt/5xk8No/EKh
         NBUJ0DhscpyNF6y/nitLksKos3KZv6kDoDn2Idq+/GBBzeZ3qrZNq+MdzwptV2nPf5Sx
         TFdQSN5qU2LxRQcp2WEOAbld0izda56KnQtqgYYxdQZmLg0I5D/GhJPvJnZIMckFG3cA
         5aEw==
X-Gm-Message-State: AOAM531JFIY25WudLYUryQPHyyUBq9ISdqaJq5OgpELZH7wC+EfuVLe9
	iffN8D+eSuo0XG2zpWzBoTeqwpEXcPo1fwu8/JlpFw==
X-Google-Smtp-Source: ABdhPJwCgwyEqFtCYUGmUxfsE/3NhDjPqELI8Rn6UPGZ90g6qh5uCPgZURSpTtOodpN0uMsuaVhi3qToGDahMVVVHq8=
X-Received: by 2002:a37:b081:0:b0:6a6:7ae4:aa0c with SMTP id
 z123-20020a37b081000000b006a67ae4aa0cmr14350164qke.203.1654525208867; Mon, 06
 Jun 2022 07:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
 <20220602070909.1666068-3-dmitry.baryshkov@linaro.org> <Yp4HDG4Bus1FOHId@ripper>
In-Reply-To: <Yp4HDG4Bus1FOHId@ripper>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Jun 2022 17:19:57 +0300
Message-ID: <CAA8EJpoj0ps=iBfx97XmaVrbMoXmzyM35QVS7MdB=_D8Y4p02g@mail.gmail.com>
Subject: Re: [RFC PATCH v3 02/30] phy: qcom-qmp-combo: drop all non-combo
 compatibles support
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_072011_064026_13A2D0BB 
X-CRM114-Status: GOOD (  14.12  )
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

On Mon, 6 Jun 2022 at 16:51, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> On Thu 02 Jun 00:08 PDT 2022, Dmitry Baryshkov wrote:
> > -static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
> [..]
> > -     }, {
> > -             .compatible = "qcom,sdm845-qmp-usb3-phy",
>
> We have a few examples of these, where we have a compatible for the
> USB-half of the combo PHY. For backwards compatibility I think we would
> want to retain these, but if we move them to the UNI phy driver wouldn't
> we end up with duplicate USB configuration tables between the two files?

Yes. Unlike previous approaches (RFC v1, v2) this series ends up with
duplicate USB configuration tables for these three PHYs. We can export
them from -combo and use them in the -usb driver.
In previous attempts I tried to use the USB subdriver from the combo
one. However at this point I'd prefer first to sort out the combo PHY
init/reinit/switch issues, fix the register layout for the USB parts
and remove duplication afterwards.

>
> Should we keep the combo instances here as well?

We keep combo instances in qcom_qmp_combo_phy_of_match_table.

>
> Regards,
> Bjorn
>
> > -             .data = &qmp_v3_usb3phy_cfg,
> > -     }, {



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
