Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB10FE95A6C
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 10:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iR1u5nIjXoWsoHh7PBRkRO1/QRf2I5/lRdxKLoV4d0=; b=I2PYAaGuSYI9+n
	gDKLroyED4VT8Fg1ljXuspAWIQ+1QQhayhLQYtMErGD4AfF0UZuklC9x7jSUO1mfXtnXaXql7HCbn
	MToTSQQjQHALgeNzIS2hRgS/me8n3SP/Gi2tTbn+L9zIuAoWTZk3kesPDKnFM3JICw6mALYo4EyiR
	KrfOpLPWHAXsqJefAECslSz+b9JlmbKNO5NjfVn6S4d03f3B1GFawFi6VqbeDtBj2Qjj244YG9amA
	BGNTHADj4lKcScQrlpr0wrIY55E2xAoa7qFZFONY/Ad5L2U0E9lZyiWZOaVXI2JsUaS8IsnbCZT3d
	Fq7DiFqFGh7MocF6M0jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaX3S-00000004ihc-2FTq;
	Tue, 30 Dec 2025 10:34:18 +0000
Received: from mail-vs1-f50.google.com ([209.85.217.50])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaX3P-00000004ih8-2zH4
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 10:34:17 +0000
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dbe6304b79so3645554137.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 02:34:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767090854; x=1767695654;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eiqG0RuHQZMk6KJKRxI6Xkue4A0zmVgJcCqyVxR0fvw=;
        b=Tb8cBSgtPk/l4lnMSpQGulZzUUb5ZydjAbQ3bxR9rcY9ZvDk1gLYfq6E4QIwH4ztj9
         AugA1DhLmnoZVk13QMd7LUKVjstq6E5hebgOaycKljSEuimlEbcbrBNJ1Ngrb8/v5mbk
         lWO9qk/T7kwHS+W4KkjiIg0nxa0MWfzw/jyQ84/91CkfBmu8VdR/Xh+k720N8B6WN2XS
         Ri9GGB29zknJ7QMIqsaxuVLWZNAHEXTMaVz/S7gIJ8shTNBrC4a5MMmGMy2HWz36HPFh
         puAC8vZaQY912cnQFvcU5biqCByvfwl6c5WLL01e8NDm1n8+OmSfj3B6M1/+U94tNlkc
         8iNg==
X-Forwarded-Encrypted: i=1; AJvYcCXwkqFY5O05bEv40sl2YIulHZkdJgTAqdb2KV2XtoneZwvmmGEpL4CPBnBI/vGpM+r8JLwcToWrFLE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhTnYMaVPqqEJHao/4NtdASnvtc/xB9oNqgi3eOFi226AreEK6
	bcOekjMsRDJYa8fxnasFn9QSHi3O2tt6Bdyd6DBp7IjUQxnaId7+ES4cGSYr6DXh
X-Gm-Gg: AY/fxX4UmeR2b00XSSJPu3zMD4fpHHEjLhfpsxQGHN8cKRqXQPGcyt9q5Dxrk839N1m
	3uNAMEAvLCfAcwhXY9CnobqlbgPqmLQ1xggaLn+qEQsQaE36VJaAGsWT6bIrQEvzrB3dLTp4j2w
	oYuWTzXtQ6pOgGPXggAAtuTSSWhYIjMnqXm7NQc9kUMN0nAKOX6M6L0eP8tfNdOn73QwvZnSwoq
	y7EUYMzvz15pz0FPC7VZxDozBdyAa7zNu80ttuHi+fjl6bdH58/uTHzxr5F7gKQZUnn8MOcX7A1
	FUVWoub/gvWYoq09Fmy0Yvid+r1e9wOOHtkm0dZYTwgMcbU6a/R1qCUyuMOzCc1wPtoqieuPL9z
	EZv+VX78pnsWuU4r9Xv/FAiDSDvglBKivh0AHflkFyTPl067aPAo3014yXubqNpKymwb++SuT5p
	RUwItzHo9wxm2Xxig5FHWDjBITjylooL7QrsOW71xKmEX2kVavWc/F
X-Google-Smtp-Source: AGHT+IHJr+aybjwEs2q5ezt0vYKwakgqhpxYtKWNk1pPQoX8lMbft8nBDqBhwTqGROE4Ju1d2SF4KA==
X-Received: by 2002:a05:6102:38cf:b0:5db:debf:658f with SMTP id ada2fe7eead31-5eb1a6baa96mr9991543137.19.1767090853742;
        Tue, 30 Dec 2025 02:34:13 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aa4f32dsm10494386137.3.2025.12.30.02.34.12
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 02:34:12 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-55b155c9ab2so2188682e0c.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 02:34:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVXGB20gqTgVaxQfLMfhTEeL9sdWl8+Fjw0NJ+Dm4Sv5dZN0h3NnRdy5q/rdUnC6WiOfwzi2OlbbMc=@lists.infradead.org
X-Received: by 2002:a05:6122:1b8e:b0:55b:305b:4e37 with SMTP id
 71dfb90a1353d-5615bec271amr7076419e0c.18.1767090852559; Tue, 30 Dec 2025
 02:34:12 -0800 (PST)
MIME-Version: 1.0
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki> <2556645.jE0xQCEvom@rafael.j.wysocki>
In-Reply-To: <2556645.jE0xQCEvom@rafael.j.wysocki>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Dec 2025 11:34:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVMFQebA43FJ53PBnd67C8fxWAC21cr4jWTGDwg-HV53w@mail.gmail.com>
X-Gm-Features: AQt7F2oNmmGurpUUAM5WEOMSDRy-1YxYjMjXZjhhxF2SDHcSD9gt9FTqJxI49VQ
Message-ID: <CAMuHMdVMFQebA43FJ53PBnd67C8fxWAC21cr4jWTGDwg-HV53w@mail.gmail.com>
Subject: Re: [PATCH v1 15/23] phy: core: Discard pm_runtime_put() return values
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Brian Norris <briannorris@chromium.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-phy@lists.infradead.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_023415_763541_1ABF9ABE 
X-CRM114-Status: GOOD (  29.07  )
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

Hi Rafael,

On Mon, 22 Dec 2025 at 21:40, Rafael J. Wysocki <rafael@kernel.org> wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>
> The PHY core defines phy_pm_runtime_put() to return an int, but that
> return value is never used.  It also passes the return value of
> pm_runtime_put() to the caller which is not very useful.
>
> Returning an error code from pm_runtime_put() merely means that it has
> not queued up a work item to check whether or not the device can be
> suspended and there are many perfectly valid situations in which that
> can happen, like after writing "on" to the devices' runtime PM "control"
> attribute in sysfs for one example.
>
> Modify phy_pm_runtime_put() to discard the pm_runtime_put() return
> value and change its return type to void.  Also drop the redundant
> pm_runtime_enabled() call from there.
>
> No intentional functional impact.
>
> This will facilitate a planned change of the pm_runtime_put() return
> type to void in the future.
>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Thanks for your patch, which is now commit caad07ae07e3fb17 ("phy:
core: Discard pm_runtime_put() return values") in phy/next.

This is causing several messages like

    phy phy-e6590100.usb-phy-controller.2: Runtime PM usage count underflow!

during boot, and s2ram on Koelsch (R-Car M2-W).

Reverting this commit fixes the issue.

> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -190,15 +190,12 @@ int phy_pm_runtime_get_sync(struct phy *
>  }
>  EXPORT_SYMBOL_GPL(phy_pm_runtime_get_sync);
>
> -int phy_pm_runtime_put(struct phy *phy)
> +void phy_pm_runtime_put(struct phy *phy)
>  {
>         if (!phy)
> -               return 0;
> +               return;
>
> -       if (!pm_runtime_enabled(&phy->dev))
> -               return -ENOTSUPP;

Adding some instrumentation shows that this branch was taken before,
thus skipping the call to pm_runtime_put().

Can I just put the check back, or is there an underlying problem that
should be fixed instead?
Thanks!

> -
> -       return pm_runtime_put(&phy->dev);
> +       pm_runtime_put(&phy->dev);
>  }
>  EXPORT_SYMBOL_GPL(phy_pm_runtime_put);
>

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
