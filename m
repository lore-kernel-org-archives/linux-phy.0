Return-Path: <SRS0=grP4=LM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C35DC49361
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jun 2021 12:26:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 258186121D
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jun 2021 12:26:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 258186121D
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69Pw1Vl3KheixMydTOcSR1sLdkLaX7S6oU7C9tO4sVY=; b=gneFRH5vave60E
	LD9ha5apTKT5cEWDxa74CJclTuKWGP5U7hwzDnOd8inOd3FPzWsbvGWG4XmBDatgGkKXIQnvQkv/+
	A9TzOGR9LE5cSd3EoUD0RWz48kIsDikOvUUmxNXDi8dr26riGn9n+15Wm+Xpoc2Me5Mc22DpJecaM
	fH3haqoOSjPAThDGldl8bmo4wjDwDk+vNydu5BxcQhMyUOH+7lb7w+VD4QOlW70KTaSfQtXfVI2/5
	dSTsNXKcXFfc6AU7EZ5b8hKTwQ8LgBSV34X8Ln5Fs80/ejb4E/A/vnZLMvTMOQ1DSkQAPXJ91Z1v5
	aWnbXfIGQGfRfC0ZUnEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luDaI-00DzTN-Kr; Fri, 18 Jun 2021 12:26:54 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luDaF-00DzSd-S8; Fri, 18 Jun 2021 12:26:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id w21so8406970edv.3;
 Fri, 18 Jun 2021 05:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VWDDLJjgn0EHJdARf/CI0iB9+tS/p4I47DaD75u4ICY=;
 b=MblTaNSd/oDlHFOoAUkTZGcb9VDT/teyxorP8WFhP6CuEbCDVBoLXbTjmZoIu0PSq2
 EePLo/bevCZQ+IFH/Klpgweq1OH3E/+D+MBt5sy1oSUPFoShBbU9oO533vITGgCABFEy
 WJ5KCY5L0GfM9HMJzAI31p0RyJjDm1dYQ4dxkfkKnllaqoFJZCDQoowCV+7//KYKagfz
 tCLz6MD6hKdArqNrDH6LL5KaUtgK5c1N1/RsnG6YwGrvNC9ekqhb1JV5CQ1kA0YhJefr
 nBePSBk+IcukFpboa8RyPzkG69jPW+kUN9ZMLyg6RxzerUe7P9EaD0zCy5gLyb2xZfZX
 Q2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VWDDLJjgn0EHJdARf/CI0iB9+tS/p4I47DaD75u4ICY=;
 b=IElIF5b8CIyqxIEt3a7x3mvUCKOPu+J2z8zKkSO8XFy3qt+uEQN21+YNUKAe86nOU0
 ycrj5eK59ArdSmk4WCmmg6gxkLj7XZwzXn74HE6oMUFRVpB5Q/8RRVc0tdLx/NCckM/J
 n/tvYlkRzjEhKiRF4fc6OE6OUqPsooZeT9rdnUASfj8hUV1WGpgHTyDBDUkN2wvRmdgG
 k+FK4ZdNep0jgVNjKLpJ4KJF7/ZtxaWUxdMRdbcT0E9Vqjs8HylH4taBV3Jvfi7yF28L
 6H5m17Utl55riKk9APe0VPYM+NntOGWoKABsVdmx2z1yu4AAZKGUaJyWaNKvvsxFWag6
 hqjw==
X-Gm-Message-State: AOAM531nrZ4ZzWWca5jk6hyzI+6jX8NqZpt/C+743LU6cgwB9h8jUrTc
 sW42vrmRppQDmAaWQh0CnDBES69bxaLO/7Hmi8k=
X-Google-Smtp-Source: ABdhPJySmeaBFcg4YsH567Ixrpa9eygvtgUVwztI2AGOzwm6sokMOIthHKxLtCfCq/TiDMAKVEBi8VhgSQRe02cqQco=
X-Received: by 2002:aa7:de1a:: with SMTP id h26mr4576399edv.176.1624019210427; 
 Fri, 18 Jun 2021 05:26:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210617194154.2397-1-linux.amoon@gmail.com>
 <20210617194154.2397-3-linux.amoon@gmail.com>
In-Reply-To: <20210617194154.2397-3-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 18 Jun 2021 14:26:39 +0200
Message-ID: <CAFBinCAZn13-GpMw-b4=rd9zwwNCtvmv0Oq0BXt+1PTTQ+Gngw@mail.gmail.com>
Subject: Re: [RFCv1 2/8] phy: amlogic: meson8b-usb2: Use phy init callback
 function
To: Anand Moon <linux.amoon@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_052651_967004_04F4199C 
X-CRM114-Status: GOOD (  12.73  )
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

Hi Anand,

On Thu, Jun 17, 2021 at 9:43 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Reorder the code for bulk clk_enable into .init callback function.
Depending on whether changes are made to the dwc2 driver this is
either fine or might cause some issues.
My understanding is that drivers which are using a PHY should use the
following code-flow:
- phy_init
- phy_power_on
- phy_power_off
- phy_exit

dwc2's platform.c [0] however currently uses the following order:
- phy_init
- phy_power_on
- (remaining ones omitted to keep this example short)

So with this patch and the way dwc2 is currently implemented the
phy_meson8b_usb2_power_on implementation might not work anymore.
That is because the clocks are turned off and in this case all
registers will read 0.
You might be lucky that u-boot left the clocks enabled for your case -
but in general I would not rely on this.

In case of the phy-meson-gxl-usb2 PHY driver the ordering is different
in the "consumer" driver (dwc3-meson-g12a.c).
There the order is:
- phy_init
- phy_power_on
- (remaining ones omitted to keep this example short)

I don't know if the order in the dwc2 driver can be changed easily
(without breaking other platforms).
Until that dwc2 driver issue is resolved I suggest not applying this
patch (even though in general I like the approach).
The same thing also applies for patch #3 from this series (for
implementing phy_ops.exit)


Best regards,
Martin


[0] https://elixir.bootlin.com/linux/latest/source/drivers/usb/dwc2/platform.c#L157

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
