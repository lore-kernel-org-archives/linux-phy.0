Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA493D0E6EE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 11:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npCKp0PExPDpVvsGdqfTZP0DzcS/rG9X0KPBwfcSv54=; b=epfuCfwoRwq0+L
	BQCO/dTaw8C3ro2fdJWwKd5TV1eBUAbhchKQXC+WZ9fNv+GLft/6Bw1hPGKdUok5XL/gRhoviDUmx
	FNWWZg5EtGPQchba7VcqsRj5II4Y+pFqKj4gGRAnd8/us3bnUDj71aLNHPkMGUthCzWzkIUH+HpKs
	5M68YDBWflDMaY9ZcvVeJpKy72qajW0NcStw/EbgLmnoc/04yKd1BPFnIGRXgwJtNJmvS81a+YHIO
	WH751oi8xDRMrr+CNCDptesx0/jzF/6I6BWM4Q0a5HV7rgc5UmkVzDozxYgkFX2h8RIXIDS8PE0jP
	09NKsFkYKZTnWcINW7Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qCL-00000006zbC-2gv7;
	Mon, 21 Oct 2024 11:03:41 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qAn-00000006zNp-1A6U
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 11:02:08 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3e6044f9561so1281122b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 04:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729508524; x=1730113324; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3KEnxCRvJxHLUHwDo6LAN7RNla4DoUTlDGrHx8mrkYs=;
        b=SNxsZKRdWbJG6Z1MyYOiLQi8koSWa9fc89k/OWezprhKftI6doIyfwtOfS63eZw8iZ
         6u5whIf29Zrp3ffvlbGmZvCxcuFAJxHOf1nJIj6w4kqjwXVrz867CxBTwRl0GzS42t3d
         SyrEW8mvaeChlc6+YBAEc+YD2TGfSJhJdfF5LvbKfj0ocul1fvsQchlY/epfIntOGmoI
         pb8aEdahhScoLXVQW883EI1uc2GMz+qR9G8xPmgLZUKiwMhASqPhyaQa1lTG5otCpsVu
         PPJjPzOO+JWwoAGHUf9jMzvZIMd7jmFCnhmQpCYbltjPUMkKDGm2YVyxnN0JcE1vdkAM
         oneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729508524; x=1730113324;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3KEnxCRvJxHLUHwDo6LAN7RNla4DoUTlDGrHx8mrkYs=;
        b=oFKgppI9p+QONZjXGnHCl1yfhHCjg/jkj+5g5CbH2eQ9DpO1jEf4qRj++Jpe72X9zc
         Ggtnmj92oTlJdVo29Cw5rYg78Mtmpln062gTVS4VmFDJ5x9rQR4ryiJ8635WkPHJqVqw
         PZQE3j579Va4qpMQHNTwLQDUd/QXiueG+pWwSK7xVaUQJMJJHRTLa4ffBhtsirNenp9y
         6pSvsZc36DyHrBu6r560zVfdEvvuEA8M5jbxTdTQMwkyFddGITfJg8pnu+hBY6myTX3Y
         lbuNtbbQnw66rw5oIi51C9MpP+ehTC0fVxV+las3amCg4VYJyBb1ql3jrEePBAKU6+sT
         qg6Q==
X-Forwarded-Encrypted: i=1; AJvYcCX3JzzqnKUS4GEuLTcdfjqr9i6XeSORtFUMsg72JKMP8vUIqcP9itSO5OwuN6SrIWYc/a+gz8/+UQg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzlr/7aSbrNUs8zNbK9bCLkc3+BT8RKOKR6cW1Zw8ixKAfmPGaY
	wal9vf2WyRcT55Bx1BmTEXqRzKaRebrZECD+3KZgBEC2d1pkvhhWNGuA8FbpyCNA5ux7xbfUoZh
	OPRDubDaBQw4T0qavJGbTkBHE744G4MaGXRNxIg==
X-Google-Smtp-Source: AGHT+IHvdIXPDe2YEV1+7SFaHz0hdIX8uJm2BxidzbXIrl1aadRtmsEbTSvHB1GJZ9NGNT34ilz+0JXG84igEBttV/4=
X-Received: by 2002:a05:6808:1284:b0:3e6:147d:f13 with SMTP id
 5614622812f47-3e6147d0fdcmr1647722b6e.5.1729508523794; Mon, 21 Oct 2024
 04:02:03 -0700 (PDT)
MIME-Version: 1.0
References: <20241002201555.3332138-1-peter.griffin@linaro.org>
 <20241002201555.3332138-2-peter.griffin@linaro.org> <ZwN/d8l7Mk6x2GHP@vaman>
 <CADrjBPrRrwEyg0p+6kfVoZGbPdvW6K3fa9paUoLyg_bHHScgHg@mail.gmail.com> <ZxED5/HdlBLWqesE@vaman>
In-Reply-To: <ZxED5/HdlBLWqesE@vaman>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 21 Oct 2024 12:01:52 +0100
Message-ID: <CADrjBPpyTz6ytYXRkTSYGxhBCTkKjMPmopXyrvbPOQg1OiBcFA@mail.gmail.com>
Subject: Re: [PATCH 1/3] phy: Add UFS phy hibernate modes
To: Vinod Koul <vkoul@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Bart Van Assche <bvanassche@acm.org>, Avri Altman <avri.altman@wdc.com>, quic_stummala@quicinc.com
Cc: kishon@kernel.org, krzysztof.kozlowski@linaro.org, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, kernel-team@android.com, 
	willmcvicker@google.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_040205_348649_1EC07F85 
X-CRM114-Status: GOOD (  33.65  )
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

Hi Vinod,

Thanks for your feedback!

On Thu, 17 Oct 2024 at 13:32, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 08-10-24, 11:30, Peter Griffin wrote:
>
> > > > +     PHY_MODE_DP,
> > > > +     PHY_MODE_UFS_HIBERN8_ENTER,
> > > > +     PHY_MODE_UFS_HIBERN8_EXIT,
> > >
> > > I am not sure I like this. why should this be the model? Phy drivers
> > > should listen to pm events and handle this in pm_suspend/resume calls,
> > > why do we need this special mode here...
> >
> > There are a couple of reasons I added it here:
> >
> > 1) Whilst link hibern8 mode can be used as part of runtime PM and
> > system PM, it is also used outside of those contexts by ufshcd.c. The
> > host controller can enable UFSHCD_CAP_HIBERN8_WITH_CLK_GATING (which
> > will be the case for gs101 / Pixel 6) and the UFS clocks are gated and
> > link put into hibern8 mode for periods of inactivity. When that
> > happens the rest of the system isn't entering any sort of sleep state.
> >
> > 2) From looking at the existing code upstream ufs-qcom.c and
> > phy-qcom-qmp-ufs.c look to have similar requirements in that it needs
> > to program a set of specific register values depending on the UFS
> > gear. To achieve that they added PHY_MODE_UFS_HS_B and
> > PHY_MODE_UFS_HS_A modes here and then use phy_set_mode_ext() API in
> > ufs_qcom_power_up_sequence() to signal to the phy driver the UFS gear,
> > which is then used to choose which set of values to program to the
> > phy.
> >
> > The two new UFS phy modes added here for hibern8 are for a very
> > similar purpose (to choose a bunch of register values to program), so
> > I considered it consistent with what was already being done upstream
> > to signal between UFS host drivers and UFS phy drivers. Arguably I
> > guess we could have one "mode" PHY_MODE_UFS_HIBERN8 and use the
> > submode parameter to indicate whether we are entering (1) or exiting
> > (0) from it. I wasn't really sure what the rules/guidelines for the
> > submode parameter were though.
>
> Yes but not exactly. The HIBERN8_ENTER|EXIT sound like PM events rather
> than a PHY mode. If this is resultant from inactivity, then we should
> hook this up to runtime pm ?

As I mentioned above HIBERN8 is implemented and runs independently of
runtime pm in the upstream UFS stack. To be clear that isn't a
ufs-exynos thing, but rather the core ufs stack in
drivers/ufs/core/ufshcd.c.

I've added Bart, Alim, Avri to this thread, as they are listed as
reviewers of the core ufshcd file and also Sahitya who originally
introduced this UFSHCD_CAP_HIBERN8_WITH_CLK_GATING functionality.
Hopefully they can provide more details as to why hibern8 has been
implemented like this outside of runtime pm. The original commit where
this was introduced is

commit 1ab27c9cf8b63dd8dec9e17b5c17721c7f3b6cc7
Author: Sahitya Tummala <quic_stummala@quicinc.com>
Date:   Thu Sep 25 15:32:32 2014 +0300

    ufs: Add support for clock gating

which mentions in the description that the timeout is typically less
than the runtime suspend timeout.

I think the main difference here versus other SoC UFS controllers and
UFS phys is that the others don't appear to need any additional phy
register writes when entering/leaving hibern8, which the ufs-exynos
phy does. It looks like all the hibern8 callbacks upstream in the core
UFS stack were added by Samsung for ufs-exynos. In downstream they
don't split the ufs controller and ufs phy parts into separate
drivers, it is all done from the controller glue driver so it isn't an
issue.

With regards to whether it is a "mode" or not, HIBERN8 is a M-Phy
power state, but then PHY_MODE_UFS_HS_A and  PHY_MODE_UFS_HS_B are
also m-phy power states (HS_BURST with rate A or HS_BURST with rate b)
so it seemed in keeping with what you are already doing here.

regards,

Peter.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
