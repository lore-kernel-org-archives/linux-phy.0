Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6EF0C27C79
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jun 2024 15:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4Ob8YLpg9q1d9ewWpbVPmoIf36mhNaMXPdSG9KYTaM=; b=u7OjnXhFMmGMIW
	gknVfbPsrr8OqFbPdQCkBuK2qP6/PdE2T2zI1rNl7/4EcbN8qy5JX6KrQHjNKOtyd8EYO39eMyMzt
	aEuJdMWynsHxMDilj0m02tHRk/w6MT5i6dTVdFLLBz+/iFEfRlqao8WbxlHnl0OVdT1p84r7C1ouc
	TFREeQuAi2pq0sJFTqdMhFOxWfMLN6c36uJFmgMcR+Dj8+yUamVnNij71T0XxPqRgoHPWKqfpOQ6f
	sDEBw7xwCVLZS4mFdGaUi5hNt2alaMvuIP1PBA9SRJiCB0ZpC2VAqXVWraFUIJe4nUS3xzGbrCwNS
	fPIPhy6bTMta8LE5ofIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH39f-00000009I0n-1fSd;
	Tue, 11 Jun 2024 15:11:23 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGa4h-00000004AxL-0Zb3
	for linux-phy@lists.infradead.org;
	Mon, 10 Jun 2024 08:08:21 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-52bc1261f45so2568684e87.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Jun 2024 01:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718006892; x=1718611692; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=;
        b=kGoAeKFbqy+nLq7hEXuWHKw7iCDxqjWa4l8EOwFJ8U6/fE2YPd60LemIQZ/dCe7CJB
         vIf7xEnFalls2ctgTe5Ce9NuG0rwNEClgfrRrMy/OJcDM+Z+hLgZ1lGeiAF0AJ7BH5cP
         WCeuGW0A4wUzM7P/eHFfvpUfJg7ApUCJA+Jn8Ww5rQzoyhSPu2C2B8sC0A6QV8ScFOH1
         ReYd1VkCKrDTR/6p15aEW5UBLvvvkzymJYHWVd7FyI79pESEAuF7DHdv6roFG0Ok3zXY
         +GefGb8qUYhtm5RJIiR2W21+QXUYmIwuyFZ/eYX9h+peKxr33g0dt7V+tn0Wo5txgRPy
         7nGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718006892; x=1718611692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=;
        b=r0fRSyO37gl0mzaPugKm2HjRYm0d6RGfii1XDE70YS5hdwRI/OzaTPOmProVHNVpob
         yTR53oCiXK+q7r+Wah0ki/rvxoyvzux/tZnr4IyGXTYJetDVPgglq9UxcGqQtAiJKDD1
         IAcbyNJsM0izC9Vy8ON/tmGo29pMwSsyyd3bUe0NkFRIl79Ty3yqk1b5+DGXHWBrd3HY
         78cT36dIses5LA3K6x0ZLGP2QJ3WDsz3e/YOxfhrfnduBbYKpCF6CICRBtfe2UCpe40J
         biEr9xCBTdRTOuaEMuhOqzz5zHyT1Bo+jJSuU2L6+Clk/I8RSF350TzFY4HpENyPe/xf
         S5FA==
X-Forwarded-Encrypted: i=1; AJvYcCVdxAbeMkqaWAp5WxHRfPzKoKd4HKZyuJxtxAGI2UPuWtN3FqZFaq0wninwkzaN5wAq9U1do6cXZFt/AsKODvDP5TpD9gJlKV4sajzMjA==
X-Gm-Message-State: AOJu0YyWIr+hCOUq+uJpupccJfKpMRRLg3eY+sEB3254gABdGM4VzQb4
	Hpvx20i0PoMhZcC0oZFyUUgFDarDDYvvBg8MSg3LI73N8OqL1AN1srUlQCDv91vr/Ku5g+Ds4QL
	fSLS4bqYdNrt37R0bgl/SSBD+E4GWh0GWeE9p3w==
X-Google-Smtp-Source: AGHT+IEoIIaopVbMhKiBzu+ZFeFG117iZrYhuaSy1PLsnicMvCE0nAaF1iUL9hhnUeVtUHqe9i20V059/u6XmSWe6yI=
X-Received: by 2002:a05:6512:234d:b0:52b:be9b:cafe with SMTP id
 2adb3069b0e04-52bbe9bcbadmr5940256e87.21.1718006892189; Mon, 10 Jun 2024
 01:08:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com> <87tti9cfry.fsf@intel.com>
In-Reply-To: <87tti9cfry.fsf@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Jun 2024 10:08:00 +0200
Message-ID: <CACRpkdZFPG_YLici-BmYfk9HZ36f4WavCN3JNotkk8cPgCODCg@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] treewide: Align match_string() with sysfs_match_string()
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Corey Minyard <minyard@acm.org>, Allen Pais <apais@linux.microsoft.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Perry Yuan <perry.yuan@amd.com>, Giovanni Cabiddu <giovanni.cabiddu@intel.com>, Herbert Xu <herbert@gondor.apana.org.au>, Nuno Sa <nuno.sa@analog.com>, Guenter Roeck <linux@roeck-us.net>, Randy Dunlap <rdunlap@infradead.org>, Andi Shyti <andi.shyti@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, Lee Jones <lee@kernel.org>, Samuel Holland <samuel@sholland.org>, Elad Nachman <enachman@marvell.com>, Arseniy Krasnov <AVKrasnov@sberdevices.ru>, Johannes Berg <johannes.berg@intel.com>, Gregory Greenman <gregory.greenman@intel.com>, Benjamin Berg <benjamin.berg@intel.com>, Bjorn Helgaas <bhelgaas@google.com>, Robert Richter <rrichter@amd.com>, Vinod Koul <vkoul@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Hans de Goede <hdegoede@redhat.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, Nikita Kravets <teackot@gmail.com>, Jiri Slaby <jirislaby@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, Stanley Chang <stanley_chang@realtek.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Abdel Alkuor <abdelalkuor@geotab.com>, Kent Overstreet <kent.overstreet@linux.dev>, Eric Biggers <ebiggers@google.com>, Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, "Steven Rostedt (Google)" <rostedt@goodmis.org>, Daniel Bristot de Oliveira <bristot@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Hugh Dickins <hughd@google.com>, Abel Wu <wuyun.abel@bytedance.com>, John Johansen <john.johansen@canonical.com>, Mimi Zohar <zohar@linux.ibm.com>, Stefan Berger <stefanb@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Eric Snowberg <eric.snowberg@oracle.com>, Takashi Iwai <tiwai@suse.de>, Takashi Sakamoto <o-takashi@sakamocchi.jp>, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Mark Brown <broonie@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, keyrings@vger.kernel.org, linux-crypto@vger.kernel.org, linux-acpi@vger.kernel.org, linux-ide@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-clk@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org, qat-linux@intel.com, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-hwmon@vger.kernel.org, linux-i2c@vger.kernel.org, linux-leds@vger.kernel.org, linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mtd@lists.infradead.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, platform-driver-x86@vger.kernel.org, linux-staging@lists.linux.dev, linux-usb@vger.kernel.org, linux-fbdev@vger.kernel.org, linux-bcachefs@vger.kernel.org, linux-hardening@vger.kernel.org, cgroups@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-mm@kvack.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, David Howells <dhowells@redhat.com>, "David S. Miller" <davem@davemloft.net>, "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, Sergey Shtylyov <s.shtylyov@omp.ru>, Damien Le Moal <dlemoal@kernel.org>, 
 Niklas Cassel <cassel@kernel.org>, Daniel Scally <djrscally@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Heiko Stuebner <heiko@sntech.de>, Peter De Schrijver <pdeschrijver@nvidia.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Huang Rui <ray.huang@amd.com>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Viresh Kumar <viresh.kumar@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, Danilo Krummrich <dakr@redhat.com>, Jean Delvare <jdelvare@suse.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Pavel Machek <pavel@ucw.cz>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Tony Lindgren <tony@atomide.com>, Adrian Hunter <adrian.hunter@intel.com>, Hu Ziji <huziji@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>, Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Potnuri Bharat Teja <bharat@chelsio.com>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Miri Korenblit <miriam.rachel.korenblit@intel.com>, Kalle Valo <kvalo@kernel.org>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, "Oliver O'Halloran" <oohall@gmail.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, JC Kuo <jckuo@nvidia.com>, Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sebastian Reichel <sre@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Helge Deller <deller@gmx.de>, Brian Foster <bfoster@redhat.com>, Zhihao Cheng <chengzhihao1@huawei.com>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>, Dietmar Eggemann <dietmar.eggemann@arm.com>, Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, Daniel Bristot de Oliveira <bristot@redhat.com>, Valentin Schneider <vschneid@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Jason Baron <jbaron@akamai.com>, Jim Cromie <jim.cromie@gmail.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Clemens Ladisch <clemens@ladisch.de>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_010819_260685_9F308B82 
X-CRM114-Status: GOOD (  19.90  )
X-Mailman-Approved-At: Tue, 11 Jun 2024 08:11:21 -0700
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

T24gVHVlLCBKdW4gNCwgMjAyNCBhdCA5OjQ24oCvQU0gSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6CgpbTWF5YmUgc2xpZ2h0bHkgb2ZmLXRvcGljLCByYW50
eV0KCj4gV2h5IGRvIHdlIHRoaW5rIGl0J3MgYSBnb29kIGlkZWEgdG8gaW5jcmVhc2UgYW5kIG5v
cm1hbGl6ZSB0aGUgdXNlIG9mCj4gZG91YmxlLXVuZGVyc2NvcmUgZnVuY3Rpb24gbmFtZXMgYWNy
b3NzIHRoZSBrZXJuZWwsIGxpa2UKPiBfX21hdGNoX3N0cmluZygpIGluIHRoaXMgY2FzZT8gSXQg
c2hvdWxkIG1lYW4gInJlc2VydmVkIGZvciB0aGUKPiBpbXBsZW1lbnRhdGlvbiwgbm90IHRvIGJl
IGNhbGxlZCBkaXJlY3RseSIuCj4KPiBJZiBpdCdzIHRvIGJlIHVzZWQgZGlyZWN0bHksIGl0IHNo
b3VsZCBiZSBuYW1lZCBhY2NvcmRpbmdseSwgcmlnaHQ/CgpJdCdzIGEgaHVnZSBtZXNzLiAiX18i
IHByZWZpeCBpcyBqdXN0IHNvIGFtYmlndW91cyBJIHRoaW5rIGl0IGp1c3QKc2hvdWxkbid0IGJl
IHVzZWQgb3IgcHJvbGlmaWVyYXRlZCwgYW5kIGl0IHVzdWFsbHkgYnJlYWtzIFJ1c3R5IFJ1c3Nl
bGxzCkFQSSBydWxlcyB0aW1lcyBvdmVyLgoKQ29uc2lkZXIgX19zZXRfYml0KCkgZnJvbSA8bGlu
dXgvYml0b3BzLmg+LCB1c2VkIGFsbCBvdmVyIHRoZSBwbGFjZSwKaW4gY29udHJhc3Qgd2l0aCBz
ZXRfYml0KCkgZm9yIGV4YW1wbGUsIHdoYXQgZG9lcyAiX18iIHJlcHJlc2VudCBpbgp0aGlzIGNv
bnRleHQgdGhhdCBtYWtlcyBfX3NldF9iaXQoKSBkaWZmZXJlbnQgZnJvbSBzZXRfYml0KCk/CgpJ
dCBtZWFucyAibm9uLWF0b21pYyIuLi4KCkhvdyBkb2VzIGEgcmFuZG9tIGNvbnRyaWJ1dG9yIGtu
b3cgdGhpcz8KClllYWgsIHlvdSBndWVzcyBpdC4gQnkgdGhlIHRva2VuIG9mICJldmVyeWJvZHkg
a25vd3MgdGhhdCIuCihHcmVwLCBnb29nbGUsIHJlcGVhdCBmb3IgdGhlIG51bWJlciBvZiBjb250
cmlidXRvcnMgdG8gdGhlIGtlcm5lbC4pCgpJIHdhcyBjb25zaWRlcmluZyB0byBzZW5kIGEgc2Ny
aXB0IHRvIFRvcnZhbGRzIHRvIGp1c3QgY2hhbmdlIGFsbAp0aGlzIHRvIHNldF9iaXRfbm9uYXRv
bWljKCkgKGV0YykgYnV0IHdhcyBoZXNpdGF0aW5nIGJlY2F1c2UgdGhhdAptYWtlcyB0aGUgbmFt
ZSB1bmFtYmlndW91cyBidXQgbG9uZy4gSSB0aGluayBJIHN0YXllZCBvZmYgaXQKYmVjYXVzZSBj
aGFuZ2luZyBzdHVmZiBsaWtlIHRoYXQgYWxsIG92ZXIgdGhlIHBsYWNlIGNyZWF0ZXMgY2h1cm4K
YW5kIGNodXJuIGlzIGJhZC4KCllvdXJzLApMaW51cyBXYWxsZWlqCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
