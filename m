Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83C1606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 21:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=o6s1Upv4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Fc+6uiBm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AtqW6S/JjPq9AickBo4jbQp/+OXn2GYYmH3cs1u6hU0=; b=o6s1Upv4h+bL9JnLNp4JV8U6qF
	gv1p3DC6vF+3ZXiFSrpADvAsykm3ssmxVR8MAV6riN5PIbsv8maK+TZfUZeQtUn7Hoc6SkGpDRRjM
	H9/dedr20kE9dW/mWokzvox6A74xs/9Ojd31Bgj/fj5AQR6/AVNQQT2ULPdp4S99xv8kPEAau1Aan
	+zIJwsWzW8wqMrtMv8h14CfeEHTLnQTYwQiRyvY3/pr3ShbzZ6zuJH0ehwm9bG85IgGjM3xpcowtc
	w6aLaCa9jU5DFCbs6Yb4aQppyZuBe05iv3SeKYEI43hZZQuuJ3fAepr55phprytxot5MnTSAXIyWz
	D3BgdgGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR2B-00000007AF9-2JLW;
	Tue, 17 Nov 2026 21:48:11 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR28-00000007ADt-08iI
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 21:48:10 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-8b4d6981c67so1815507b3.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 13:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794952087; x=1795556887; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gWhTP+MsEZH11Xk/IKOvm1ABoNQtFuyWT71ie9/W1Ho=;
        b=Fc+6uiBmJ6URtU8FnEhp2/CYgbUwV6/6GV3raDZF7TwMyZsdEztqXsa/c8ZgrXG0QN
         2MwfIGxle+llf7Ie+i5K7YyMeYXIyqGPZWl/kiEV/mNtF9KZGiZp1l04yHgqF9mruj7j
         vqnJw+E2RYUYhb8DqNP3EHxePD7A1fsEpp08O0Sr5GjaoMz87Y7ltU80wiS+wkTg6pZB
         oGu3H/GbqJMqPbR7delbq5tWroaobMLb4nJuYtQaKYkeNKHT1oFT1ObJCjBtt3KKgJRq
         aMXOZ8Q/dEOdeb9QCt4hxjusjHGlQ4aS/pe/N/3gbn1yZJYTeeKBkEwO128D1gzuOFTm
         xYHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794952087; x=1795556887;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gWhTP+MsEZH11Xk/IKOvm1ABoNQtFuyWT71ie9/W1Ho=;
        b=c16vaC3fIuhPJsmda3SjN8u7a4CjpB5Brt5ws+3DoQ8kkLDpFfjBwwJ+H2qCVTSVSc
         eDplQXRPq2PZAA4gH0VKSgIH0mUF8Knvb57I2s42vzageNYo9EmP2AXhHZIBFZGsyTGU
         zDDaoRRCogbiQdjIRQ8Fe/oafaowQwD80B0nM3My+XcJbqjos8UnzUcxZYQi2Kd4U5GZ
         gRgMGqIOlk9xYUvB665pXHAn0hMaKdSLrBP7pfe+Tmm2FuU/MV6S+0j/UG6eNGA7ntXu
         VO9Oan6xUZInO8f+vzKNKQf+2RNBCouHYyz4Ur4ykJ61Mc835eXKBzLN0ybB5LF1h+1v
         CwMg==
X-Forwarded-Encrypted: i=1; AL+hErE4Mi2lp1UbDgFZe+jtuchqVwOCiB3nsbmPPsT5/52vooqmcGF4CDaNZuKl7QBDx5wSBjVU4QIJczg=@lists.infradead.org
X-Gm-Message-State: APuU4Z/zCRbfFsbrb/7hEhFVSnsVZ3aFkf2c4xegeABs0wspmdqOiMUb
	PZy+gdtKc1Qi72WzNxLBhqsehyBXi+NRCcgYY/fmt4fI2VNROEtYVkRk
X-Gm-Gg: AZFdTZeTzkkuldjni+e4yr+ERlUKAIELNdyq6r5y48mCqWAn89AHFn5KCKUQwxnrNtm
	7OJu98keW7F756XyIzlob+kUAuQgwkAuJO+nh2PdrsKvnmuHk3L9tszQkaBLykI02kvBsYvlNSm
	ILbZVCeBcM3wA+sn2I3KAqgk+QFvNaYhafSQJaybiQ4Q5ld/MD6rYMmX9fPLYldclg5LZ2PZqoN
	N2nMr+cgPZiJAbQCwr/Jyjz1z8j8G/YoKCnHXxzreadz/TzM2nTQfsK/deeDw7ea4J0xmZn4RNP
	VE+mx0rA3J2TDmSx/Pb6qOUuAlCeLFKhKAFxpNMtSZFgz2Mo2AmpMdA/x9Emwo75nPObRPnI4MV
	SOyxpVKKMqvWN6Gp5rG3khHSMe1omRTqcCv7DXQ0h+m56+kV7BN9JPpf8Gqtk8Bh9MaSaNt4PM4
	Wl6U/VkrvRPu9C/YWx49DfXOkICkLotxhPlIPCG/yOCOiP+hwZ0i65P6DVWYjSfw379EwRVNArL
	WdDN2IeGL85i6Ouqpj5StsokvycSjFyUyVimw/TDDqp7NPFE65H5ehz2RL9m3K60KelBK03N4gL
	e8ylfPJzDXuE+nvJ3Hc8SWUr
X-Received: by 2002:a05:690c:6502:b0:8b4:e2dc:3f2e with SMTP id 00721157ae682-8b4febccf0fmr3038007b3.8.1794952086607;
        Tue, 17 Nov 2026 13:48:06 -0800 (PST)
Received: from localhost ([120.244.9.31])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8b4fe030a65sm7195267b3.15.2026.11.17.13.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 13:48:06 -0800 (PST)
Date: Tue, 17 Nov 2026 16:48:02 -0500
Message-ID: <19ceb44df3141049a955c2c30fe64766.docular.xu@gmail.com>
From: Guodong Xu <docular.xu@gmail.com>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Cody Kang <codykang.hk@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 07/17] drm/spacemit: add Saturn DPU register model
In-Reply-To: <edd7ae1b38ebc687d0b2bfb2509c40fb8a45e625.camel@icenowy.me>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-7-327d7910bf71@gmail.com>
 <edd7ae1b38ebc687d0b2bfb2509c40fb8a45e625.camel@icenowy.me>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_134808_077468_0CB04293 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSWNlbm93eSwKCk9uIFRodSwgMDMgU2VwIDIwMjYgMjA6MDg6MTAgKzA4MDAsIEljZW5vd3kg
Wmhlbmcgd3JvdGU6Cj4g5ZyoIDIwMjYtMDgtMDnml6XnmoQgMjE6MTQgKzA4MDDvvIxDb2R5IEth
bmcgdmlhIEI0IFJlbGF55YaZ6YGT77yaCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9zcGFjZW1pdC9k
cHUvc2F0dXJuX3JlZ3MvZHB1X2ludC5oIHzCoCAyNSArKwo+Cj4gSXMgdGhlIHNsaWdodGx5IGRp
ZmZlcmVudCBLMSBTYXR1cm4gRFBVIHJlZ2lzdGVycyBjb25zaWRlcmVkPwoKSSBjb21wYXJlZCB0
aGVtIHdpdGggdGhlIEsxIEJTUCB5b3UgbWVudGlvbmVkIG9mZmxpbmUgWzFdLiBKdWRnaW5nIGJ5
CnRoZSBibG9jaywgZmllbGQgYW5kIGludGVycnVwdCBtYWNybyBuYW1lcywgSSBhZ3JlZSB3aXRo
IHlvdSB0aGF0IHRoZQpLMSBhbmQgdGhlIEszIHVzZSBzaW1pbGFyIElQLiBCdXQgdGhlcmUgYXJl
IGFsc28gaW1wb3J0YW50CmRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIEsxIGFuZCBLMyByZWdpc3Rl
cnMsIHdoaWNoIGlzIHdoeSBJIHdvdWxkIG5vdApwcm9wb3NlIHJldXNpbmcgdGhlc2UgdGFibGVz
LgoKRm9yIGV4YW1wbGUsIHRoZSBibG9ja3Mgc2l0IGF0IGRpZmZlcmVudCBhZGRyZXNzZXMsIGFu
ZCBtb3N0IGZpZWxkcwphcmUgYXQgYSBkaWZmZXJlbnQgd29yZCBvciBiaXQuIEluIGRwdV9pbnQu
aCwgQ0ZHX1JEWV9DTFIgaXMgYml0IDQgb24KdGhlIEsxIGFuZCBiaXQgNSBvbiB0aGUgSzMsIGFu
ZCB0aGUgdW5kZXJydW4gYml0IGlzIDkgYW5kIDguCgpJTUhPIGEgSzEgcG9ydCBzaG91bGQgYWRk
IGl0cyBvd24gY29tcGF0aWJsZSwgaXRzIG93biBmaWVsZCBoZWFkZXIKYW5kIGl0cyBvd24gYmFj
a2VuZCBmaWxlIG5leHQgdG8gdGhlIEszIG9uZXMuIFdoYXQgZG8geW91IHRoaW5rPwpIb3BlZnVs
bHkgeW91IGFncmVlIHdpdGggbWUuCgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3NwYWNlbWl0LWNv
bS9saW51eC02LjYvdHJlZS9rMS1ibC12Mi4yLnkvZHJpdmVycy9ncHUvZHJtL3NwYWNlbWl0L2Rw
dS9zYXR1cm5fcmVncwoKR3VvZG9uZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
