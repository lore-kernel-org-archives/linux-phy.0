Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048E2C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 13:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpkT0pCxo4BCdnEpfaI3RPHTrd/fTLLILZDCdurnO2Q=; b=GCqREqZuc6FPfY
	y5f1sgJt6/Vb2ZCE20/35g7PR6eFH9uzYCHlWwcbqm6d3esD2PF/10dlESOq4RxNpsQ73K2XKQ+Tv
	6TD1MZYeDRor4eWicbu6ohqwtgeuihhJ+xT7nwIMu6FM1mD7cUJTmKNnZCTFPTTAtTbxUFJWlXv2I
	80S5JNlFMAx2c9Yfa7OhnMXW8CI0lWDFIF7NJ1P0vkbI5st9XJu1vrzHueEdXttw6i+o8sQq7ZNuR
	TdeD2U57avGn4bmN5qdDV7GgT/vVOOvopCdzBeHINebSoS/3vpFQ6XYVWYgNRZ+u4s0QlaHFGcht4
	mHuF6aXZpedYVIKPSegQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfH6b-00000004UX6-2lMD;
	Thu, 02 Jul 2026 13:05:25 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfH6Y-00000004UW0-1RyT
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 13:05:23 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-4629051c9d1so1181068f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 06:05:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782997520; cv=none;
        d=google.com; s=arc-20260327;
        b=R7XkrsKOyVq6EGL59PjAF6Y9EEKb0P7SXJViMwLmrvjradPHFW/lXyki9jMj/z/b8U
         eSDVtspzUhqXmKksly18hElTLuJ44yjoWXMaxvQgJTkaISdcwg7YuTeYRtDGq2W4elz/
         sQRtI38vqudHRpWgfoMgVbCyCJ8Ot1vPchIWyGpYT8Qa7DYQceOFCCnjXV2Tlx9sfOsC
         tAfx3RmLwL8Ycj6AwGgNjmQF7D5/jdimzd0QbmSvWFhO48QXYug2O2LfUhYjrsynfzpf
         HYj4l5XcrbTv9w1qiW6k/DLUUMgswUAFeP+6F290iK/rFqAC75YSa9Pda4jgNhDa89X0
         y/xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uL99PvBKlKoYRi5dLWiDvrrzNBLVjJWycSXQYHd0R3Y=;
        fh=4nZlblNXq+lw4S3VrD/8ZFVCqWMO8TKDFndVu5cekh8=;
        b=GEGNlxU9GmTtX2lUDCgAMMTFdSd9cDRKVbWWagCLo9xBt0PublS4UaGUJ2HKEw485R
         QvK42HQN4FexJ6xOpbhAStn67yhhca9+N6AJUUodA1xH/tYtxOmbYO3PZ77wh1y88GO+
         cH133gItjZyHZmfVXGHrnCiA2jxZsx01Tfqx5EfyHZB00HmaJLSlLF5VN4GxRfm2Nrun
         xW3qJdOUR9yxVGcMauMmJKJ8QJFkfjCkInxt7UeVFYUnWLbrzvGBG/TaXQAYF/KKuYAV
         4OUwYTBc+qFfZTjoR6d2fSjF+6TzVN5UPgEyAOOzRzP/A3wJunrfJVtcovarXWNLyVWb
         RAlQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782997520; x=1783602320; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uL99PvBKlKoYRi5dLWiDvrrzNBLVjJWycSXQYHd0R3Y=;
        b=HTgz9GQ31jrCbZM7JZphr2Img7o4bc5zkCS9rooF1T52P/IrqZqyp1tAsvE/D8Xz4a
         UsPWhEGptINRihSVl4tK4kpgzejoxRXXRCabUtyZAZNGYZvPyJgBhHHZZ9hJm7VSKDtK
         El0rP39e4moZqLzkkaBz75mk26AS/+33Le91h8iHoIuc+gLR9tj1DWoDfHN7iMpaKW2+
         uedIBOHED6YOp6TmvkkCsiDBAnfbvqqmT73yNqJXbiDzrcFAoY76B8O1aZb3LZbU6rOL
         CJ7bJlceuRhhB5SmlI15K9JBkrDDwVifz6tVDKlASKk+pNapYcRY1VtJBmGQH/v2+s8Z
         Wq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782997520; x=1783602320;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uL99PvBKlKoYRi5dLWiDvrrzNBLVjJWycSXQYHd0R3Y=;
        b=SBlBYyn23YnbS07nyXC1Mby5UDFoC0jBVLzTextaPDEubxuKIHxTlqaID4xVsZLLt2
         /z310lw3txhgFh45tTIQyQIBMv0utJ+bBRzXRdh5tY4rHFrq7jn0iq/UGKKasYqiboqU
         DjNivXBYyT2I/jI717wbF4LaIMkRh39CDQBpejmT6BqQ9x/PlcDstRZbgTexyPUyFbXr
         ZHZxjkolNCTlGjgZoxC3d2VCsrjXYkYVCa3h/t0ZaDRx4MIsAOdQliDn7Yw9Kl965ebJ
         HXsNXQkNTDtIb28qeCjdrf0A46Sl50h/zgFsX8emx7Rb9iyUrsszMyx2VXNWDZOY19nU
         rkMw==
X-Forwarded-Encrypted: i=1; AHgh+Rop8KLJeH2Rji+hZVcJsfzxX4O4yl00mKN40BLH1a9AWBJpnhxKvc2uhLwzrM/t181ffWaVmy7A/k0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzifjmvUTFUkeBF9afn4FAgJDa1H+xhGS/aRipORB960dbG7Hs6
	Jn8EhZrv9e2bbL1n9+bMbCzjcISFFfTOOn+sEFz17ih3uX03B1f1Zp3zDnYuAKqO1cKT/8ZTXDR
	6HGKQIZ2qm6OUGFxZioXNtay/7mkLZvE=
X-Gm-Gg: AfdE7cmMMiLaJzyCdTIzw7ilzsdc6s91t0Wff2P1bGCSLaiH+KzVg5k5M1Eu3hH1CB3
	oWaPQL845u4Q3VDfWO8UDzfSbufWfWxeMfGByOOqOpxK+PgGb+ZxGkpx5+mhLQHFePy8VStcqE0
	1y5zFWYa3bzMZTjN51MO5MiQtfajV6cpCRYYgTThOpiHcBlPAmCUb2Ga2+CKKD9LhxGSVQfc4w5
	rgNYxMP1AfsyfFBXj+SBoLoNcW2vbk+Uznrhq/cDlBKSm3hxA0XHBCFpd/qDmohr3u2mM0PARXq
	F7/3JwEI3irWUaD1iIK0rw9Agc4QMpQfgcQ4bz0vaJfLO8TDRPBbHP3KfA==
X-Received: by 2002:adf:ee52:0:b0:45e:d6b2:e6a5 with SMTP id
 ffacd0b85a97d-477b4fb2bd3mr5775644f8f.34.1782997520019; Thu, 02 Jul 2026
 06:05:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260702125855.3157253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260702125855.3157253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 2 Jul 2026 14:04:53 +0100
X-Gm-Features: AVVi8CdQlIn1tOQiizFUwZylI6QZQSaA0raBRxFeQukb0RWfwJShlDIxtbMfm7I
Message-ID: <CA+V-a8tEW7Rk3WmOMEnFNtW=FBwhNqSm7bHEdn70LkM_tqXkJQ@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Ignore missing VBUS regulator
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Prabhakar <prabhakar.csengg+renesas@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_060522_686655_B52607F5 
X-CRM114-Status: GOOD (  16.58  )
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

SGkgQWxsLAoKT24gVGh1LCBKdWwgMiwgMjAyNiBhdCAxOjU54oCvUE0gUHJhYmhha2FyIDxwcmFi
aGFrYXIuY3NlbmdnQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBMYWQgUHJhYmhha2FyIDxw
cmFiaGFrYXIubWFoYWRldi1sYWQucmpAYnAucmVuZXNhcy5jb20+Cj4KPiBDb21taXQgYjZkN2Rk
MTU3NzYzICgicGh5OiByZW5lc2FzOiByY2FyLWdlbjMtdXNiMjogQWRkIHJlZ3VsYXRvciBmb3IK
PiBPVEcgVkJVUyBjb250cm9sIikgaW50cm9kdWNlZCBzdXBwb3J0IGZvciBjb250cm9sbGluZyBP
VEcgVkJVUyB0aHJvdWdoCj4gdGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsuCj4KPiBBcyBwYXJ0IG9m
IHRoaXMgY2hhbmdlLCB0aGUgZHJpdmVyIHN0YXJ0ZWQgcmVxdWVzdGluZyBhbiBleGNsdXNpdmUg
InZidXMiCj4gcmVndWxhdG9yIGZvciBPVEctY2FwYWJsZSBQSFlzIHdpdGggbm9fYWRwX2N0cmwg
c2V0LiBUaGUgbG9va3VwIGZhaWx1cmUKPiB3YXMgcHJvcGFnYXRlZCB1bmNvbmRpdGlvbmFsbHks
IGNhdXNpbmcgcHJvYmUgdG8gZmFpbCBvbiBwbGF0Zm9ybXMgd2hlcmUKPiBubyBWQlVTIHJlZ3Vs
YXRvciBpcyBkZXNjcmliZWQuCj4KPiBPbiBSWi9WMkggYW5kIFJaL1YyTiwgd2hpY2ggZG8gbm90
IHVzZSBhIFZCVVMgcmVndWxhdG9yLCB0aGlzIHJlc3VsdHMKPiBpbiB0aGUgZm9sbG93aW5nIGVy
cm9yOgo+Cj4gICAgIHBoeV9yY2FyX2dlbjNfdXNiMiAxNTgwMDIwMC51c2ItcGh5Ogo+ICAgICBk
dW1teSBzdXBwbGllcyBub3QgYWxsb3dlZCBmb3IgZXhjbHVzaXZlIHJlcXVlc3RzIChpZD12YnVz
KQo+Cj4gVGhpcyBmYWlsdXJlIGNvbXBsZXRlbHkgcHJldmVudHMgdGhlIFVTQiAyLjAgaW50ZXJm
YWNlIGZyb20gaW5pdGlhbGl6aW5nLgo+Cj4gRml4IHRoaXMgYnkgYWxsb3dpbmcgdGhlIHByb2Jl
IHRvIGNvbnRpbnVlIGlmIGFuIGV4dGVybmFsIFZCVVMgcmVndWxhdG9yCj4gaXMgbWlzc2luZy4g
T25seSBwcm9wYWdhdGUgdGhlIGVycm9yIGlmIHRoZSBpbnRlcm5hbCB2YnVzLXJlZ3VsYXRvciBu
b2RlCj4gaXMgZXhwbGljaXRseSBwcmVzZW50LCBvciBpZiB0aGUgbG9va3VwIHJldHVybnMgLUVQ
Uk9CRV9ERUZFUi4gRm9yIGFsbAo+IG90aGVyIG1pc3NpbmcgcmVndWxhdG9yIGVycm9ycywgZ3Jh
Y2VmdWxseSBhc3N1bWUgbm8gZXh0ZXJuYWwgVkJVUwo+IHJlZ3VsYXRvciBpcyBhdmFpbGFibGUg
YW5kIHJldHVybiAwLgo+Cj4gRml4ZXM6IGI2ZDdkZDE1Nzc2MyAoInBoeTogcmVuZXNhczogcmNh
ci1nZW4zLXVzYjI6IEFkZCByZWd1bGF0b3IgZm9yIE9URyBWQlVTIGNvbnRyb2wiKQo+IFNpZ25l
ZC1vZmYtYnk6IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5l
c2FzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIu
YyB8IDEzICsrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4KTm90ZSwgdGhpcyBwYXRjaCBhcHBsaWVzIG9uIHRvcCBvZiBwYXRj
aCBbMF0uCgpbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNjE2MTA0NDU5LjQx
MDc0My05LWJpanUuZGFzLmp6QGJwLnJlbmVzYXMuY29tLwoKQ2hlZXJzLApQcmFiaGFrYXIKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
