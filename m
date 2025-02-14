Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45FEFC021A6
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 14:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcsLoDwmvc37hgZc4MqgaxxppX7go7ygsfeKF3tRQrM=; b=gyDdKcE6JJ++QD
	gFz4akCKItaS+3WY8Fl5piljsoPQU5GS7JCy5gFJMQO2gEQ+xjph51/mluTvX10w73Qigd2Qo70bL
	/WHv/VBTu1MLRnuwLP37xJK/JYoCQPgYrj1mmA9KTdXNWWZ5ce15nYKxxf48tnZZdMODtuyVQtbs0
	XQ6U96drIdXQxb35HaWNAzanPWapVBlIWoFV6j2yBGe1AJZzSA9pYZzza+5F1MQut+gpJUOKf3cQ+
	+u+BdnqFoBOP7pHTzrx4Jedym+y+iud1wIabv8WpCViySW1GRkoMhbm/IwEjaSXQWqUPHmsciPaPE
	bkUS2flQ+9tUQXe7iFhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwz8-0000000FD78-06w8;
	Fri, 14 Feb 2025 14:48:06 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiwpO-0000000FBHq-21pm
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 14:38:03 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-545097ff67cso2120070e87.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Feb 2025 06:38:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739543880; x=1740148680; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s/nWo8rBImm3/oJoY9sZaYO485tQZOmVynsCXssfwwk=;
        b=ZbW3HF0ouZQKkNcHmprWkr72I9a0ffVC3nPN9S37EIlm1TejP6b5CypAdfMTx58wlP
         xfnWABAgYaY/cmM2lUNl844DyXAgzaoF35yyNPPgJaoaey2rxnylAX+71G7drpr0HWVn
         pP9Z/3xV/xcJr+lzjbt7avlvSS9a/ej33pfOnGCtXQsZf5CY3QXYojjDUC8a4nJSjIE1
         K3YdKcJvyVHCqlcEP4220n0edcRUMag8Xt2leutH9NBJSYNzjIlce0P1jCbzHOA0GXs3
         srSQsRFMuenkYf6Ti0++HC+WexP0x+kuuM1FDwySAXIHobxVZJvQCYsgDMr/f71PgMoZ
         InmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739543880; x=1740148680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s/nWo8rBImm3/oJoY9sZaYO485tQZOmVynsCXssfwwk=;
        b=o5SlK3sKR4jmIKsHPe7K5FOmDLrtAaTCAcnsB9/6XKCAJnM/N0Hnqf3AGeHQkI29KL
         VH7SYnKXPHoW9/Ihvn9lQnR7FBrxq9zFfAc8Og8rjx9Qaeouy7klxF11qHyzc6hXr+h5
         Wy2jpJFsKwyMe1ChyXtkdbYu4w8kUGci6hyzfdTs1Z6CcF17W4tTmh51IiOeEpwUoIT9
         D04WF0LAe9DXPwprlv7zTzcLWhih5WDGne6xLVuAWpr3tzsugBci4hUgeZe4Oy6+BAiK
         IfxRp43JKcCz+3LEzbqhJEhophreeWQWnIEqRg4sgneUVhCdAIBGGVxqJ9UNW0FPQxNP
         tfOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxRN7+vrd8Gd6RXD8lkqSoVQ7KcKAhXnhb1ljIoC9efFWfzKUjQ5t0L13/+Gx8RAzO90BexUo2L6w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyaAc/7szeFONpxlTIGcBCLgEnj7y+wISlh8SWMR/vEg2KYFglM
	cfJoEmWslqlpzzfMsIR+D/mQyHvhNAJZ8+/sV9hJ/gMUzd6cppQ5Dc0TivjaYLINo/f1fc2l0Ut
	AESRR3ZO5rYmIMZ1uog3jYRUYnXHyJcznJgCwWg==
X-Gm-Gg: ASbGncuSmhdoafUh2bBIZMR7Nxz1tuzUOljsndGKUBIFyNYs2rH1JRLiYkSx9RnzAm7
	OPMIZUzmMSB/Jq+/hPLEf6lPBK3CMEAyAa4/822n+3jua0ptQocUpdaiM01B1fRP1eExu6Nltss
	qbs2wFxX7ogF8szQMCZmjjMiUjkpc=
X-Google-Smtp-Source: AGHT+IFI84zGNU/5Prn01Vy8fWHPKleDbw82zc5GSdSgL+oYsNCtPFeqOqBeE0yzBu7Mgzm4cA6Jih86DZ3F3f8DtA8=
X-Received: by 2002:a05:6512:ac7:b0:545:1049:eb44 with SMTP id
 2adb3069b0e04-545184a2edcmr3543131e87.36.1739543880482; Fri, 14 Feb 2025
 06:38:00 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173952845012.57797.11986673064009251713.b4-ty@linaro.org> <CAHp75VcjAFEdaDQAMXVMO96uxwz5byWZvybhq2fdL9ur4WP3rg@mail.gmail.com>
In-Reply-To: <CAHp75VcjAFEdaDQAMXVMO96uxwz5byWZvybhq2fdL9ur4WP3rg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 14 Feb 2025 15:37:48 +0100
X-Gm-Features: AWEUYZmZOOzJ-2PYVb-j2HjRho5iTG1Da6ZcvH4AymKKHcJZkPFSmjChMriWUzs
Message-ID: <CAMRc=MefPRs-REL=OpuUFJe=MVbmeqqodp+wCxLCE8CQqdL4gQ@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add gpiod_multi_set_value_cansleep
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, David Lechner <dlechner@baylibre.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_063802_787194_EFEF5AD1 
X-CRM114-Status: GOOD (  12.07  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBGZWIgMTQsIDIwMjUgYXQgMzozNeKAr1BNIEFuZHkgU2hldmNoZW5rbwo8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEZlYiAxNCwgMjAyNSBhdCAx
MjoyMeKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3RlOgo+ID4g
T24gTW9uLCAxMCBGZWIgMjAyNSAxNjozMzoyNiAtMDYwMCwgRGF2aWQgTGVjaG5lciB3cm90ZToK
PiA+ID4gVGhpcyBzZXJpZXMgd2FzIGluc3BpcmVkIGJ5IHNvbWUgbWlub3IgYW5ub3lhbmNlIEkg
aGF2ZSBleHBlcmllbmNlZCBhCj4gPiA+IGZldyB0aW1lcyBpbiByZWNlbnQgcmV2aWV3cy4KPgo+
IC4uLgo+Cj4gPiBbMDcvMTVdIGlpbzogYWRjOiBhZDc2MDY6IHVzZSBncGlvZF9tdWx0aV9zZXRf
dmFsdWVfY2Fuc2xlZXAKPiA+ICAgICAgICAgY29tbWl0OiA4MjAzYmM4MWYwMjVhM2ZiMDg0MzU3
YTNkOGE2ZWIzMDUzYmM2MTNhCj4gPiBbMDgvMTVdIGlpbzogYW1wbGlmaWVyczogaG1jNDI1YTog
dXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ID4gICAgICAgICBjb21taXQ6IGUx
OGQzNTliMGExMzJlYjY2MTk4MzZkMWJmNzAxZjViM2I1MzI5OWIKPiA+IFswOS8xNV0gaWlvOiBy
ZXNvbHZlcjogYWQyczEyMTA6IHVzZSBncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xlZXAKPiA+
ICAgICAgICAgY29tbWl0OiA3OTIwZGYyOWYwZGQzYWFlM2FjZDhhNzExNWQ1YTI1NDE0ZWVkNjhm
Cj4gPiBbMTAvMTVdIGlpbzogcmVzb2x2ZXI6IGFkMnMxMjEwOiB1c2UgYml0bWFwX3dyaXRlCj4g
PiAgICAgICAgIGNvbW1pdDogYTY3ZTQ1MDU1ZWE5MDA0ODM3MjA2NjgxMWRhN2M3ZmUyZDkxZjlh
YQo+Cj4gRldJVywgSm9uYXRoYW4gdXN1YWxseSB0YWtlcyBjYXJlIG9mIHBhdGNoIHF1ZXVlIG9u
IHdlZWtlbmRzLgo+IEJ1dCB3aGF0ZXZlciwgaXQncyBub3QgbXkgYnVzaW5lc3MgYWZ0ZXIgYWxs
IDotKQo+CgpUb28gbWFueSBjb25mbGljdGluZyBzdWdnZXN0aW9ucy4gSSBqdXN0IHBpY2tlZCB1
cCBhbGwgQWNrZWQgcGF0Y2hlcy4gwq9cXyjjg4QpXy/CrwoKQmFydAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
