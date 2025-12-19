Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D319BD74969
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 09:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlEOz3bdYt/8BerIQmOW12f2obJalNzb8ijE30ty3dk=; b=RPpSd1zlMreiqC
	1sHF6mdvvy9kePwo0gBX9KtpAyu5st8cGlIeYLoQ2a+NFYctaeZM0IvFE/IE1SODszrjtQa93oTEU
	zRWHuPFhVtTBbZdif9RhTH7FWi/qoUrLnzyi8kfWGmdHW3TVqFphX3/5Vpg0A/NSHrMxqjf6LzV8D
	4M+0/bH4HJCQc49RIv7PckC31RL/QKmhChtLiRp/HzE+CWCTtM1MOsXhcIK2L2LOibunZcJ61hDa8
	p537cypg+PSFibFe224I7lRFEMTA4Xd7y0LbVNVsHLgcZ3T5Ss8434BRSmbKiO1fURpaCUA4oToSe
	5NHjIkwpy6qQzFGzusIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWtG-00000009y6y-1lpT;
	Fri, 19 Dec 2025 09:35:14 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWtD-00000009y4w-1zKO
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 09:35:12 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-bfe88eeaa65so1114058a12.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 01:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766136910; x=1766741710; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AyAGCUlm+brXr7pmh+HChqf8cAz1yyIjxqldlF7yhcs=;
        b=AoSJUMAmel4EMq/oeNKbgfZsf0cVsu7p0QxZfghKPfpQ5nmSFJO9wXlfqtBdHOsumW
         hVQgD+l6aLoWu/T2qYMWbQbex+IATCfgsuvJABynsebpfOQyM/4iuieGankEdO42RdzD
         nw5Z4BHOPXe0FPfiNBhCVZHO1zTinMC+l1o9C3Bnaeow5FBci4xoBlqyeBprX8ylO9xy
         9QUjuugcqquQnpcsPjV0ChfF+Lu7UWG4JyOzM9f6ujEQ1aWa1/GZ1LbGmW4Vi81ms2sk
         03A5/o19JfD2+nGKwlQPi7pcKJRkJQXcAVFd26Joj0e/j2+8H+1KL7ELkZYBqGp57nuD
         7WDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766136910; x=1766741710;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AyAGCUlm+brXr7pmh+HChqf8cAz1yyIjxqldlF7yhcs=;
        b=u5LaLCO8j6U/pMdjFbZRad3xSknUor8EXblx4f94qrJIMScPAcgJ+1cJHXL5wb2OLR
         8+NNLiGw9yl8w2QlRidJx79bXRuXHwhxFG/KW2zvy8QW5db2AjSAPUyihhCb2/9o74Gv
         pFlVxsfs8vj/Pj82X1uOLqNbFRFKGwf5HfYOMK7Twb2ZrDvqY8u33lCB1h9LpQMOXokl
         ZYnCjZTgQR/xNWvvJ7Xdsk1bEpZKijy9q2bunpJyZ95ohUDnjcYeO20Kyo570QE66BOa
         tmFuu0Pa44dWLLGDa1BY0HbnRx5GaUaVdcIqTuBDe1MCnIhAksnfWJHf+tNbh+KNSaS/
         1sZw==
X-Forwarded-Encrypted: i=1; AJvYcCX5MSv2maLaUEYONcnTjD/15k7skUMw9loKStX09ux2/8Ks+2sakYBKIcaFzK909rC6ThccEW+2Xas=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3eM0b65xmUEmTeSuc5YvL4Fu4+n9p30hSUJ+rAvIYSk/QnX/j
	JXfhe2y0WrKh7Kx8FlbZE9nogeCY6YCCy4VWujbJwZr2IRvl51r/bOlOZrdJoEL8cIsgS9Bxq4K
	D+OsPDMEaQSLS8mX4E8BiIs/UvbJtJKI=
X-Gm-Gg: AY/fxX7kWzAmvXO/jj8hLMs+p2pzGTpmf4mqlN33wE7w8ZFbIRnnd73Aku1G2sAddqO
	MBXLDGOaPiuzlGA6A/uTgYPFpzScJGOzmujBLd9FtIiLud7dZIJyw8j+xngrj/5/eyxR36x6PE0
	XBzn4xcsIW/AoAWGMxWDVoEGLuAx20RD2IMzw5AJMcg2S4eIwHJu3RCnu+xTz3PQOzoKqxu58VI
	oWn/nadLOlJm8VjSDsTrEY8YlA0fYIhXrct0CTUYYC0qHYgoIsb322zy3EpXRLYMABg0DB1ScqA
	xQ5yRINU/pBzubzL5u5XUJFEzuLK9JOceIDqrGalKyqPCYQjZuHE9da8lqpH0CjQ4ewnXOKeDr/
	vJ2dKeJ4ZLw==
X-Google-Smtp-Source: AGHT+IEC+GRfBHy/wKtqpZsBBkP6Qw8fpQs3utuiawRsmustP1cLTt5mwJXD98PkDBYzd2Voi6o2nfAACcKqpL0sZnw=
X-Received: by 2002:a05:7022:2586:b0:119:e56c:18a7 with SMTP id
 a92af1059eb24-121722b4e90mr2430820c88.15.1766136910154; Fri, 19 Dec 2025
 01:35:10 -0800 (PST)
MIME-Version: 1.0
References: <20251219075447.3672833-1-xu.yang_2@nxp.com>
In-Reply-To: <20251219075447.3672833-1-xu.yang_2@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 19 Dec 2025 11:34:56 +0200
X-Gm-Features: AQt7F2qZpM6npqbvUvhl8gYuuDP4SgIr_o7BiZ-Bvy86V9dJT-iXFljB710VpjI
Message-ID: <CAEnQRZCZJnkXCM2ACf3dXQ-ZynRB1q2zcarWLAZO_1TsL-1GcA@mail.gmail.com>
Subject: Re: [PATCH] phy: fsl-imx8mq-usb: add debugfs to access control register
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org, 
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, Frank.Li@nxp.com, 
	linux-phy@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_013511_505180_213933F7 
X-CRM114-Status: GOOD (  20.06  )
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

T24gRnJpLCBEZWMgMTksIDIwMjUgYXQgOTo1NuKAr0FNIFh1IFlhbmcgPHh1LnlhbmdfMkBueHAu
Y29tPiB3cm90ZToKPgo+IFRoZSBDUiBwb3J0IGlzIGEgc2ltcGxlIDE2LWJpdCBkYXRhL2FkZHJl
c3MgcGFyYWxsZWwgcG9ydCB0aGF0IGlzCj4gcHJvdmlkZWQgZm9yIG9uLWNoaXAgYWNjZXNzIHRv
IHRoZSBjb250cm9sIHJlZ2lzdGVycyBpbnNpZGUgdGhlCj4gVVNCIDMuMCBmZW10b1BIWS4gV2hp
bGUgYWNjZXNzIHRvIHRoZXNlIHJlZ2lzdGVycyBpcyBub3QgcmVxdWlyZWQKPiBmb3Igbm9ybWFs
IFBIWSBvcGVyYXRpb24sIHRoaXMgaW50ZXJmYWNlIGVuYWJsZXMgeW91IHRvIGFjY2Vzcwo+IHNv
bWUgb2YgdGhlIFBIWeKAmXMgZGlhZ25vc3RpYyBmZWF0dXJlcyBkdXJpbmcgbm9ybWFsIG9wZXJh
dGlvbiBvcgo+IHRvIG92ZXJyaWRlIHNvbWUgYmFzaWMgUEhZIGNvbnRyb2wgc2lnbmFscy4KPgo+
IDMgZGVidWdmcyBmaWxlcyBhcmUgY3JlYXRlZCB0byByZWFkIGFuZCB3cml0ZSBjb250cm9sIHJl
Z2lzdGVycywKPiBhbGwgdXNlIGhleGFkZWNpbWFsIGZvcm1hdDoKPiBjdHJsX3JlZ19iYXNlOiB0
aGUgcmVnaXN0ZXIgb2Zmc2V0IHRvIHdyaXRlLCBvciB0aGUgc3RhcnQgb2Zmc2V0Cj4gICAgICAg
ICAgICAgICAgdG8gcmVhZC4KPiBjdHJsX3JlZ19jb3VudDogaG93IG1hbnkgY29udGludW91cyBy
ZWdpc3RlcnMgdG8gYmUgcmVhZC4KPiBjdHJsX3JlZ192YWx1ZTogcmVhZCB0byBzaG93IHRoZSBj
b250aW51b3VzIHJlZ2lzdGVycyB2YWx1ZSBmcm9tCj4gICAgICAgICAgICAgICAgIHRoZSBvZmZz
ZXQgaW4gY3RybF9yZWdfYmFzZSwgdG8gY3RybF9yZWdfYmFzZQo+ICAgICAgICAgICAgICAgICAr
IGN0cmxfcmVnX2NvdW50IC0gMSwgb25lIGxpbmUgZm9yIG9uZSByZWdpc3Rlci4KPiAgICAgICAg
ICAgICAgICAgd2hlbiB3cml0ZSwgb3ZlcnJpZGUgdGhlIHJlZ2lzdGVyIGF0IGN0cmxfcmVnX2Jh
c2UsCj4gICAgICAgICAgICAgICAgIG9uZSB0aW1lIGNhbiBvbmx5IGNoYW5nZSBvbmUgMTZiaXRz
IHJlZ2lzdGVyLgo+Cj4gU2lnbmVkLW9mZi1ieTogTGkgSnVuIDxqdW4ubGlAbnhwLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBYdSBZYW5nIDx4dS55YW5nXzJAbnhwLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jIHwgMjIxICsrKysrKysrKysrKysr
KysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEt
dXNiLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiBpbmRl
eCBhZDhhNTUwMTJlNDIuLmNiMjM5MjAwOGFkMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9m
cmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiBAQCAtMSw4ICsxLDkgQEAKPiAgLy8gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gLS8qIENvcHlyaWdodCAoYykgMjAxNyBOWFAuICov
Cj4gKy8qIENvcHlyaWdodCAoYykgMjAxNy0yMDI1IE5YUC4gKi8KCldoaWxlIHlvdSBhcmUgYXQg
aXQgY2FuIHlvdSByZW1vdmUgdGhlIChjKS4gTmV3IHBvbGljeQpmcm9tIE5YUCBpcyB0byB1c2Ug
ZGlyZWN0bHk6CgpDb3B5cmlnaHQgMjAxNy0yMDI1IE5YUC4KCnRoYW5rcywKRGFuaWVsLgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
