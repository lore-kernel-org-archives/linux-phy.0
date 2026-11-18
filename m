Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D343F606A32C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 15:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AcgztMln;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vDWmnVf5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DC3vunJxVKrlwIsZMJMDwz1yXIDTrAxujdhl/nHxj58=; b=AcgztMln8TllJMi8hcZH9wTXzS
	EkYfYC8kPuxBZXWQ4UenEdXcy7BWMTs9cs9udT7YhYropoOnGm1OZynuZBWFwmEgdjinp+zssIcBS
	cxjpNDRXl/VGvrrTP8zgzh1un/XhsPGI0omNG9cY4jSNyZI+V3cw4m/vFlCQXStj0JST71duJPF3s
	pitWWEfKLhhEe3Xuz/gkUwU+kaDQ+5ZR2ZNal46AA4G/WD2imQ2e2XLImyVUsdcPQ+xeJ5uOnnySb
	PJLjXG/r6ngp7UE/MDHf8KJjyAc6FToe/mOmwKjA9vTqX+hcHlxMuaNExfaeN130RAMGhhZd7992Q
	+lDpoOMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xThvb-00000009Mjv-2TWa;
	Wed, 18 Nov 2026 15:50:31 +0000
Received: from mail-pj2-x0a.google.com ([2607:f8b0:4864:39::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xThvY-00000009MjA-3Axs
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 15:50:30 +0000
Received: by mail-pj2-x0a.google.com with SMTP id d9443c01a7336-2ed14ad20b8so3239165ad.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 07:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795017028; x=1795621828; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4lLupD4z98CK9UrD3eQfsjdZUJgyZTecsH4A98HzZRA=;
        b=vDWmnVf5kiHkwTxS3pqDTbgE+fxPTIyL6ytej94GM6RbkJknUeHVFHeHZndsc4tUxg
         bo+sSDJS5HRlWASh6n3/jAVYWHBFUFTaDApoXHgbos30z1RZ8MjjYHo4gmO9klQbZDXm
         1IyWTSK7E11SqjV9mMCj1nhRzVI3PEYZbFAqfmYNJYXsk40Bwx766xNE70M0LdgM4pjt
         Z14TkppCm66Txfe0Dbpj9SfaIVHkqKX6e1XeqH5vm362G8rS1pWBHEBOpudGp5X/9uNH
         QqeJScTEDoeQGli3ZwqLJu90lTmYQUYgb9fI+bhxivuRR4t70ZlAPhes3T0ge+unKBqq
         zBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795017028; x=1795621828;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4lLupD4z98CK9UrD3eQfsjdZUJgyZTecsH4A98HzZRA=;
        b=cmx6Qs29SC0QkQiGRhyB5G9KtNnUJQD8vsShoy8rn2aF9cOvwDD6ZfZtFGKQCvdHwm
         OY1vyKcZVgR42Niu8hvIMo2n4LlWqrI6jEtvZUi4WTjRcXVlclt6E3qT7T8R8/Dqialb
         YKlq/ozuXnemmim8akcWwN9zqtq4wsI9cUC+pyNT9lhKN5/WZrkVGLo1WMN2q6lZyIvO
         wq5zcUDZ3OR7AL6rbneGf7V05x/SLcdZ3Er7v8FGEgCEN62ZXtCttfIZxsAuxB8BXem2
         a6MOsgikwTvQF0bGMsBnDYkAHSz836FIzJyN/oPd9XBRTwBz7v5Ag4YC70AfWTgroEKC
         7Y/w==
X-Forwarded-Encrypted: i=1; AL+hErEnXYIvVRVzTmN8eeGDaAPJm4k6zxm3Ht6SZrVVt6mu2sltdbMGEnMDVxLoO65Nho6b9bImw6GtsjY=@lists.infradead.org
X-Gm-Message-State: APuU4Z8y2Dq5vLDZXCDUACMs2F0g2+VIxvI7bItgGDkZVNvriY3+jetM
	NPioMADWQ6piKPAVpbYchVLR4vp9KNe9IoI9lg9M8hOs4ahzr7hanhSz
X-Gm-Gg: AZFdTZeSjopjODy3Rm5NiQbAL5P4ZSXsSi9ZTgHy9bmop0xjHxcECYHYMrxZTzkgVIw
	+gAXDVYP+ros8Do0pW817xeHLylaSxZ95NucNZPO624vKjewGkmnZumcFBas969WZw09Bv9oBdF
	ZRnKgT4Q0fLgYLCb8K4NJTx6Jn+PYItHhHj8D0M6VZIof/b8eNOHVrg0/Txa7Bn0czqJLvJz/1s
	dssQB+0om11zqhRo/TO91f7XrSPmROwrGZlJA5n7yBcDY7EpHW0HoQbsxgQNznFsRZyoPGQs/66
	qtzgg4jqUMoZIWBZ9YCoCZwMKWLQIMOJl2kq5r0XVhPZAFyFsiyxtK/2JViHQoDwxGjY3eIQeJp
	K7SGBrgr1VgXdCn8PgOJHruv5pAfNacELI2fnYk+p/g8vNfpLDr7kCartcBmm/aw335bJuuOc/x
	0GB21fdvnRRNqQftVkJJsm1sezgJjt7YFmiNgdjk8VtLn/tD5dSqxDS1TIsng2kYcJep7ssHsLN
	T4Iz+plzP+PLeBJEub1Y7v/XC1oB5M2IkP2yeLv54wTwgZP8AQBD1ctR5arfKBRZCpuX097pqne
	AEI=
X-Received: by 2002:a17:90a:dfcf:b0:3ac:9d14:feb1 with SMTP id 98e67ed59e1d1-3b3d07c9ca5mr3201351a91.43.1795017027692;
        Wed, 18 Nov 2026 07:50:27 -0800 (PST)
Received: from localhost ([2403:2c80:6::107b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cde534ae0edsm193214a12.21.2026.11.18.07.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 07:50:27 -0800 (PST)
Date: Wed, 18 Nov 2026 23:50:21 +0800
Message-ID: <aee275aa2ebf093d8518e53c5d264064.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
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
 Guodong Xu <docular.xu@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 11/17] drm/spacemit: add Saturn DPU DRM device driver
In-Reply-To: <e492222feabaa5c72229c93ce75f9500e4346da1.camel@icenowy.me>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-11-327d7910bf71@gmail.com>
 <e492222feabaa5c72229c93ce75f9500e4346da1.camel@icenowy.me>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_075028_824457_33C290B5 
X-CRM114-Status: GOOD (  11.95  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSWNlbm93eSwKCk9uIFRodSwgMDMgU2VwIDIwMjYgMjA6MDc6MzIgKzA4MDAsIEljZW5vd3kg
Wmhlbmcgd3JvdGU6Cj4g5ZyoIDIwMjYtMDgtMDnml6XnmoQgMjE6MTQgKzA4MDDvvIxDb2R5IEth
bmcgdmlhIEI0IFJlbGF55YaZ6YGT77yaCj4gPiBGcm9tOiBDb2R5IEthbmcgPGNvZHlrYW5nLmhr
QGdtYWlsLmNvbT4KWy4uLl0KPiA+ICsJZHJtLT5tb2RlX2NvbmZpZy5taW5fd2lkdGggPSAxOwo+
ID4gKwlkcm0tPm1vZGVfY29uZmlnLm1pbl9oZWlnaHQgPSAxOwo+ID4gKwkvKiBLMyB1c2VyIG1h
bnVhbDogZWFjaCBEUFUgc2NhbnMgb3V0IGF0IG1vc3QgMzg0MHgyMTYwQDYwCj4gPiAqLwo+ID4g
Kwlkcm0tPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IDM4NDA7Cj4gPiArCWRybS0+bW9kZV9jb25m
aWcubWF4X2hlaWdodCA9IDIxNjA7Cj4KPiBUaGlzIGlzIGZvciB0aGUgYmlnZ2VzdCBwb3NzaWJs
ZSBmcmFtZWJ1ZmZlciBpbnN0ZWFkIG9mIHRoZSBwb3NzaWJsZQo+IHNjYW5vdXQgcGl4ZWwgY291
bnQuCj4KPiBUaGUgd2lkdGggaGVyZSBzaG91bGQgYmUgYmFzZWQgb24gdGhlIG1heGltdW0gYWxs
b3dlZCBwaXRjaCBvZiB0aGUKPiBkaXNwbGF5IGNvbnRyb2xsZXIgaW5zdGVhZCBvZiB0aGUgc2lu
Z2xlLUdQVSBtYXhpbXVtIHNpemUsIG90aGVyd2lzZSBpdAo+IHdvbid0IGJlIGFibGUgdG8gZHJp
dmUgdHdvIDM4NDB4MjE2MCBzY3JlZW5zIGluIGEgc2lkZS1ieS1zaWRlCj4gY29uZmlndXJhdGlv
biBiZWNhdXNlIHRoaXMgd2lsbCBjcmVhdGUgYSA3NjgweDIxNjAgZnJhbWVidWZmZXIuCgpUaGFu
a3MgZm9yIHRoZSByZXZpZXcuIEFncmVlZDsgd2lsbCBmaXggaW4gdjMuCgp2MyB3aWxsIHRha2Ug
bWF4X3dpZHRoL21heF9oZWlnaHQgZnJvbSB3aGF0IHRoZSBSRE1BIHJlZ2lzdGVycyBjYW4KYWRk
cmVzcyAoYSAxNi1iaXQgYnl0ZSBzdHJpZGUgYW5kIDE2LWJpdCBpbWFnZSBkaW1lbnNpb25zKSwg
YW5kIG1vdmUKdGhlIDM4NDB4MjE2MCBsaW1pdCBpbnRvIHRoZSBDUlRDJ3MgbW9kZV92YWxpZC4K
CkNvZHkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
