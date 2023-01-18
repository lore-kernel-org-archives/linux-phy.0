Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE175C54EBE
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 18:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhoDMeONT/rjIE4z3XonJynuzmTksz63cAnlQUXDuUI=; b=qpHZpm1s0/2YiE
	vlbIeEzqBufTqD2J4Pb2+omrGcDRANZXcjsuQ4YcSneGg4rFSZoQbVv8i5H2BqHhObmjeZxAeQA/I
	hTreUcrf6kKfyoWr6leePQlYIZy17EsHbJhUaMuV8S+RKW4FeiKy1c6hLf5oqWWr7rNQBflAIw0ir
	bkErJg8o9Z5d6YkVe4wadgjgkjBat5KcpzkPaIfvs0122nGqeWhfp0mREd8vyAcMz8/keiXP/XSaX
	bNUtYERbQIT6Ufs6kmSudl6nuhzvdv29HU6BS8Ii09psYdqaEePHF38ZqLWbg09DCrAfhbdWjurNQ
	MePOWWw4don502g2g2RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDBE-002JnJ-W6; Wed, 18 Jan 2023 18:29:01 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDBA-002Jl1-Tw; Wed, 18 Jan 2023 18:28:58 +0000
Received: by mail-qt1-f171.google.com with SMTP id j9so7761959qtv.4;
        Wed, 18 Jan 2023 10:28:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m6+hopJKlcYVjWue00VkVDFjPrjXwNY80RsgV+H7s3k=;
        b=LXRwvBxajD+G721tEY6ozTRMpcp38uX3dmH2kFmBP+Qc1gHZPMCgT0Y48ro6Rd0j/P
         LxpOLUEqTKZbbTLsuOE9X2sLb1EPtncHXEnQYbTzBQfme4Ic7aGKbKp21u8JPkGhv4/y
         5Kz9GhbLEZj+GpeXeCWzRS0pzOTdC4Xeex+Vvu7obWvwGbWqPwaT3rTgW7nmR7pHx2r+
         39FyqAq3yp+fnoXeFSIsSi9yYBTnUZZkFNVtLm6oXCkGuhDgJeo+gSB9Nnia9tKVCBr/
         ZX66xFG43PLZKCBaLnXQ0bpH0IAH5VO5XmFcPACbhr14hZwpyjqf4XaXdhIgm0qrmRQo
         ON1Q==
X-Gm-Message-State: AFqh2koVEHFfqC5Sr86y7Ian7BHzt1kbKAoi1QxUEWxGbY0EBgLEuhCq
	P8CcyFnPZKlFOI5dRFdCk6okJysvXLq6EDpO
X-Google-Smtp-Source: AMrXdXuNpA6CkATtVT89N9SzGFaub2v4I8Uz/zxPsrW0h4rpQZrndgA0gMJpOEgAQ9/ubbPXzVX95g==
X-Received: by 2002:ac8:6a07:0:b0:3b6:425d:d5ca with SMTP id t7-20020ac86a07000000b003b6425dd5camr9847396qtr.24.1674066533873;
        Wed, 18 Jan 2023 10:28:53 -0800 (PST)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id y14-20020ac87c8e000000b003b6347595c9sm4117790qtv.12.2023.01.18.10.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 10:28:53 -0800 (PST)
Received: by mail-yb1-f175.google.com with SMTP id p188so39235301yba.5;
        Wed, 18 Jan 2023 10:28:53 -0800 (PST)
X-Received: by 2002:a25:d88c:0:b0:77a:b5f3:d0ac with SMTP id
 p134-20020a25d88c000000b0077ab5f3d0acmr833623ybg.202.1674066532773; Wed, 18
 Jan 2023 10:28:52 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674036164.git.geert+renesas@glider.be> <cd685d8e4d6754c384acfc1796065d539a2c3ea8.1674036164.git.geert+renesas@glider.be>
 <CAL_JsqJS2JTZ1BxMbG_2zgzu5xtxMFPqjxc_vUjuZp3k1xUmaQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJS2JTZ1BxMbG_2zgzu5xtxMFPqjxc_vUjuZp3k1xUmaQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Jan 2023 19:28:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXGsmNjYy-ofmuHLkr8yaDEzy+SGnhtbmc_2ezbEKAMjw@mail.gmail.com>
Message-ID: <CAMuHMdXGsmNjYy-ofmuHLkr8yaDEzy+SGnhtbmc_2ezbEKAMjw@mail.gmail.com>
Subject: Re: [PATCH 7/7] usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()
To: Rob Herring <robh@kernel.org>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_102857_002850_3757D15F 
X-CRM114-Status: GOOD (  29.19  )
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

Hi Rob,

On Wed, Jan 18, 2023 at 6:30 PM Rob Herring <robh@kernel.org> wrote:
> On Wed, Jan 18, 2023 at 4:15 AM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > Use the new devm_of_phy_optional_get() helper instead of open-coding the
> > same operation.
> >
> > This lets us drop several checks for IS_ERR(), as phy_power_{on,off}()
> > handle NULL parameters fine.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  drivers/usb/host/ohci-exynos.c | 24 +++++++-----------------
> >  1 file changed, 7 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/usb/host/ohci-exynos.c b/drivers/usb/host/ohci-exynos.c
> > index 8d7977fd5d3bd502..8dd9c3b2411c383f 100644
> > --- a/drivers/usb/host/ohci-exynos.c
> > +++ b/drivers/usb/host/ohci-exynos.c
> > @@ -69,19 +69,12 @@ static int exynos_ohci_get_phy(struct device *dev,
> >                         return -EINVAL;
> >                 }
> >
> > -               phy = devm_of_phy_get(dev, child, NULL);
> > +               phy = devm_of_phy_optional_get(dev, child, NULL);
> >                 exynos_ohci->phy[phy_number] = phy;
> >                 if (IS_ERR(phy)) {
> > -                       ret = PTR_ERR(phy);
> > -                       if (ret == -EPROBE_DEFER) {
> > -                               of_node_put(child);
> > -                               return ret;
> > -                       } else if (ret != -ENOSYS && ret != -ENODEV) {
> > -                               dev_err(dev,
> > -                                       "Error retrieving usb2 phy: %d\n", ret);
> > -                               of_node_put(child);
> > -                               return ret;
> > -                       }
> > +                       of_node_put(child);
> > +                       return dev_err_probe(dev, PTR_ERR(phy),
> > +                                            "Error retrieving usb2 phy\n");
>
> Optional is really the only reason for the caller to decide whether to
> print an error message or not. If we have both flavors of 'get', then
> really the 'get' functions should print an error message.

In case of a real error, both should print an error message, right?

Anyway, I understand that's a three step operation:
  1. Introduce and convert to the _optional variant,
  2. Add error printing to callees.
  3. Remove error printing from callers.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
