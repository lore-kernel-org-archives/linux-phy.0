Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F971125838
	for <linux-phy@archiver.kernel.org>; Wed, 11 Mar 2026 14:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/qPdQkW8+2hIGhWGQHbuWLcAxTfBt5hRUtSMNb5hIo=; b=WCnouFqLomh7ht
	MNgQSiFXTDCElfQ05oyjnW+K3WmSV+yukBtxnQtIw6aNxHfVGIO5RfNiIEKeWe7XCD0MXawn3wXlU
	SvONCLjnXPayBni+CCHdJ55K1MxI8dsQy789bWFIJ5sGgrip6rLEfEey3Y6KoKZzVmFJQ3A1Ku7cl
	CYCu0j4WOIx22lRHCer4V272fr2BA2EkYKwuUIrnJUATQB79eQG4FO7VF7DLQ1s+ovUd3qN3oxo21
	mvZZfqMreEXM4xxma4GGOxQAzSF5O2oTrPk6QCDYC77esEhauWP6o48VbOg8MTBbCiIgMK21hJgks
	uZn7tSNhyRVhlrK9Cgzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KKL-0000000Bgfg-2ohP;
	Wed, 11 Mar 2026 14:14:21 +0000
Received: from mail-ej1-f50.google.com ([209.85.218.50])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KKJ-0000000BgeS-0c9p
	for linux-phy@lists.infradead.org;
	Wed, 11 Mar 2026 14:14:20 +0000
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b942b36de08so190859766b.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Mar 2026 07:14:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773238457; x=1773843257;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIz9Fr5w5J45ZN4rxwvT/0kjXMGfLP1VpB2aKPOax7k=;
        b=Lmyjv/v7c//p/QV3YK+qvLNVrHc7DjOif3ttWcKbOtGaVB3jnnU5rTlpScHDye9ffo
         /MMZ7b4bExx2Vw2Xo7yrcjeNj9is3RUDtBRYTs0qclcACT1Mc8LEB05/msLj48WVhmwv
         lEBUGJrtb7sJVK8nXBoke7SchZoovXOnTwE/ysGJHdi7s+FearZJ/CcwEm8k/4wNMmpQ
         j+REIK+rZp7riK4gfW3AgQFJPasq67rYvZje7D496o3Y2CAlRJWIpxIiic5Tnee8HMUQ
         MAfEEzmYuWZk8cz5LaRdURJY+9eK7JpQ4yZ59aDfq6/UzwW4eZpu7J+QTj0BO6LuC7hk
         VW+g==
X-Forwarded-Encrypted: i=1; AJvYcCVjABhNY/uqod2x4S4epjQpxSA/zXWPOGJU5uDPIfFKHlZ275t1REZ374vSyNxZFSoXZaFjMhJrTeU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb5wVooXPCMuFD8qMK1y0S74Bvvjs04BbY5jhknrjR3STgiwwH
	iCxrIa59wH08S0I1AOsfbYbqTaQ8MJ5Dzm0v8/PGh0qwouqI+ck0mlHrZPEayzBh9wnbzg==
X-Gm-Gg: ATEYQzzH66jE3WRhiSwsOC368IkhmdypdoPymCcI3NXQ0DrSig9H4FFG54gwZjalLGc
	+SJj8S48GrLWqXFk4ow/IZ06pzHZ5v2wwTpaVhwKA2tE1CXS8yuU5tRjATLmeBw0JYKWyjXxn/j
	vMrcWeA0x85+OHjdcryyeYSMvd3sOWBpB3pBh2NCpbwzhK7bvl+VmCtnCdzfOPVGZM7Fiwi9IYP
	nn2wGzBefyhbl/7G5byfySKrc+0+4qlNPurCKFmvb/tsyePkGaxvJp8UbGoj1ckinnUijVbbgOu
	Y9XlqS5SIpRt9kcDV9i/GnYlddzpEXSVpyrsqm/9SCukPxX0P6lTksrkJXNUx4pkR8EIJpWqvLv
	aad7FX9pNaKPY9p4UGSqM9Ik8YP/0pnTqw+C9Wu2y2IVrR77j55GWnXM0jCF8bq4xo/6lXpYpjZ
	dK9x3meVyVMLcpXjw/72gN/9v6bBqrAeSrbBK+MC5t/wQrWtF2agNmmNPcqDTNdBgFGXUkeSA=
X-Received: by 2002:a17:907:3fa2:b0:b93:6ab6:5b72 with SMTP id a640c23a62f3a-b9711851235mr484491266b.7.1773238456853;
        Wed, 11 Mar 2026 07:14:16 -0700 (PDT)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com. [209.85.208.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6631419b0e4sm620303a12.2.2026.03.11.07.14.15
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 07:14:16 -0700 (PDT)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-66174cf4549so2117697a12.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Mar 2026 07:14:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWn8Xx8UY2FbpbsOfj+z8tGscEwpwN9Yh1SOipSs8So203W1k2B2I4dXwwCCwA5asMZ/ei/A++90+o=@lists.infradead.org
X-Received: by 2002:a17:907:6d16:b0:b88:4f25:81da with SMTP id
 a640c23a62f3a-b97113ff0b9mr462021166b.0.1773237981235; Wed, 11 Mar 2026
 07:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-15-bd63b656022d@avm.de> <20260310100750.303af303@gandalf.local.home>
 <20260311141332.b611237d36b61b2409e66cb3@kernel.org> <20260311100332.6a2ce4b1@gandalf.local.home>
In-Reply-To: <20260311100332.6a2ce4b1@gandalf.local.home>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 15:06:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX4kRGLaKMzPuhS1Pmxh609eiqQW-cAS_jWBBbt-vE6SA@mail.gmail.com>
X-Gm-Features: AaiRm53WEGMMLW4z34e7P-lM1qFvsCJGZ_o4JNL5NPWbhJPKmcqz6k9bJcyL--8
Message-ID: <CAMuHMdX4kRGLaKMzPuhS1Pmxh609eiqQW-cAS_jWBBbt-vE6SA@mail.gmail.com>
Subject: Re: [PATCH 15/61] trace: Prefer IS_ERR_OR_NULL over manual NULL check
To: Steven Rostedt <rostedt@goodmis.org>
Cc: "Masami Hiramatsu (Google)" <mhiramat@kernel.org>, Philipp Hahn <phahn-oss@avm.de>, amd-gfx@lists.freedesktop.org, 
	apparmor@lists.ubuntu.com, bpf@vger.kernel.org, ceph-devel@vger.kernel.org, 
	cocci@inria.fr, dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, linux-btrfs@vger.kernel.org, 
	linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-erofs@lists.ozlabs.org, linux-ext4@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mips@vger.kernel.org, linux-mm@kvack.org, 
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, ntfs3@lists.linux.dev, 
	samba-technical@lists.samba.org, sched-ext@lists.linux.dev, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	v9fs@lists.linux.dev, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_071419_199623_3536909D 
X-CRM114-Status: GOOD (  20.76  )
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

Hi Steven,

On Wed, 11 Mar 2026 at 15:03, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Wed, 11 Mar 2026 14:13:32 +0900
> Masami Hiramatsu (Google) <mhiramat@kernel.org> wrote:
>
> > Hmm, now IS_ERR_OR_NULL() is an inline function, so it is safe.
> > But if you want to use IS_ERR_OR_NULL() here, it will be better something like
> >
> > node = rhashtable_walk_next(&iter);
> > while (!IS_ERR_OR_NULL(node)) {
> >       fprobe_remove_node_in_module(mod, node, &alist);
> >       node = rhashtable_walk_next(&iter);
> > }
>
> But now you need to have a duplicate code in order to acquire "node"
>
> I think the patch just makes the code worse.

Obviously we need a new for_each_*() helper hiding all the gory internals?

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
