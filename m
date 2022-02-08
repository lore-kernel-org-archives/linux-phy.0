Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5211BC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 00:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zWQZt/An3KAl5jEH/AZuvsGT8P+SuuPrq3CHQCiXPk=; b=lyZDeWXguBuLEQ
	S6gBgStpFmXaLJeaJZmxJCsiQ/wFqbVENcDUIbMrx5YWzzcE90Gd8SP41f4fj7Z8SWC4MRYofw0kX
	ozrXtuVOru7Zr9HVSs0EXpmUT+bNsX0SUXZwWlE8McgIsQljiyVonwWObtSfMTgaSNf0nkYdOETTG
	FP5a++lp0MnWLSEy043uXTCOE1rdWwAYZoaL2zBLTjJGuilnq+FQ6OZDAbsD2f+wWBdvZdlS7Nug5
	eYiWJkL3NkIK6y0DwefQI2uhYOCc9BGIy9msDHD1/+Sbq0CInKFJOi5PDlLhPQKt4TnE/AIK7meTm
	xcGff7d/Id1fOJsteQBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHEDj-00C2oH-Jv; Tue, 08 Feb 2022 00:18:59 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHEDg-00C2nr-H1
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 00:18:57 +0000
Received: by mail-il1-x133.google.com with SMTP id e8so12549138ilm.13
 for <linux-phy@lists.infradead.org>; Mon, 07 Feb 2022 16:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vScBC3jkunPuKV71bwmpHxOhrGxKlBbuYe/cqBu7qF8=;
 b=TV/KEXy0SdalYrBG9vcyQo4ANXKRqQZpfsevkQCRvDDS3QkNqsAVFK3CiXgrn7BhEC
 lQZP1zue6xcSxErPJDsPnbnJ7NzZaPCUltMJoeN9SGtNIMM3tb2qVUWD6hCx2/5gvyQb
 4WVzprlonmdeJ8JUjSQiAOvjj5o67UrS7+Dfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vScBC3jkunPuKV71bwmpHxOhrGxKlBbuYe/cqBu7qF8=;
 b=tQN3zeEHhdQvTbDkZKQiwnXfXYwFu8ZV7Sp+ega9FE7J4+3xHK6crsnOVPe1pu67dO
 Dg53IgYY36mxOTCxK4i6+hSnpCfqGhQm6SJ0EbKHMO66n2mtnrBm7Wk7RTUPgF0+GeLc
 1nvXYQdQgi4NgERBEjvk2zqu7BOCwgXLB0Ny6tNg3pJD9cw9XAEIfQOLFC55vwJ8HtuD
 UDzMhhXevFU5Y2R7hyCvDFlFEtQ6uRlJxJeAnfg2RyJeUgx4OEzPNzMYaz+TFkKmlJyC
 xWqLjg5ZsZA5KRmoql89MRi99mO/rhEbW4tRgFOp9u15UAWHcYFRH7s4DwwPkihpcQJp
 +vxg==
X-Gm-Message-State: AOAM532/O5D8pWQ5V83yGZny8mYR0ygRcppWDd2iffAbyBJwaIH/dS3I
 mz+G/szVxDE+43no6cauFW62lIk29rSLeA==
X-Google-Smtp-Source: ABdhPJyuJo7Nmb6iLirRm9UVYPbAjJq8RQktotrCPEHex8r4wpZRji2YZ/y5HoaO7Z/M2uda0MBW0Q==
X-Received: by 2002:a92:190f:: with SMTP id 15mr1017929ilz.82.1644279535245;
 Mon, 07 Feb 2022 16:18:55 -0800 (PST)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id k2sm7085825iow.7.2022.02.07.16.18.54
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Feb 2022 16:18:54 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id i62so19174911ioa.1
 for <linux-phy@lists.infradead.org>; Mon, 07 Feb 2022 16:18:54 -0800 (PST)
X-Received: by 2002:a05:6638:168d:: with SMTP id
 f13mr980261jat.44.1644279533953; 
 Mon, 07 Feb 2022 16:18:53 -0800 (PST)
MIME-Version: 1.0
References: <1637046458-20607-1-git-send-email-quic_sbillaka@quicinc.com>
 <CAE-0n50sONq+URcWwvDH=UPshgy6+XZEB3sK_4n+5jNktHsEhg@mail.gmail.com>
In-Reply-To: <CAE-0n50sONq+URcWwvDH=UPshgy6+XZEB3sK_4n+5jNktHsEhg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 7 Feb 2022 16:18:40 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VwrO9fpOtpjrsbjkmucvL6NbHMc3jLtjsiRJD6aG0Hkg@mail.gmail.com>
Message-ID: <CAD=FV=VwrO9fpOtpjrsbjkmucvL6NbHMc3jLtjsiRJD6aG0Hkg@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Add support for eDP PHY on SC7280 platform
To: Stephen Boyd <swboyd@chromium.org>
Cc: Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 freedreno <freedreno@lists.freedesktop.org>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Clark <robdclark@gmail.com>, 
 Sean Paul <seanpaul@chromium.org>, quic_kalyant@quicinc.com,
 quic_abhinavk@quicinc.com, 
 quic_khsieh@quicinc.com, quic_mkrishn@quicinc.com, 
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_161856_592168_C49A3ECC 
X-CRM114-Status: GOOD (  12.99  )
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

Hi,

On Wed, Feb 2, 2022 at 1:54 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Sankeerth Billakanti (2021-11-15 23:07:35)
> > This series adds support for the eDP PHY on Qualcomm SC7280 platform.
> > The changes are dependent on v4 of the new eDP PHY driver introduced by Bjorn:
> > https://patchwork.kernel.org/project/linux-arm-msm/list/?series=575135
> >
> > Sankeerth Billakanti (3):
> >   dt-bindings: phy: Add eDP PHY compatible for sc7280
> >   phy: qcom: Add support for eDP PHY on sc7280
> >   phy: qcom: Program SSC only if supported by sink
>
> This series was sent to the wrong maintainers. It's in the phy
> framework, not the drm framework. Please use scripts/get_maintainers.pl
> to find the right email addresses and send this series again.

To help out, I've re-posted this myself, hopefully getting all the
correct maintainers.

https://lore.kernel.org/r/20220208001704.367069-1-dianders@chromium.org

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
