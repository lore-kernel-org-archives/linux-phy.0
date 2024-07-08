Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D52A4C3271E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 20:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUsF/U8s8+Y75Blb1tuPSWMw+GlmVqDeCEiG03piY2I=; b=lCKCe5JIuOgNKM
	lp7Lom9VhM16WGD///SFg+vUYpmKvsfqiLf1xdIyLgSBthwenEoeqcW3P+9bij0AxDDd0lCCoZkbF
	nZ5iyAK98+pzIeUSi4Ibp/w5JOjsk4C9gwFYOvSn/lOcZKTLf526IgtNJutTau6JL15DrD9YzKbsT
	5XxbSwTVhlNmVGNsULTU1CrIWb7OgUUGviY8mzqn0EaMg8H18VbSqIJ/wLC3aUGjLzH90b67Yh+Zd
	xAQOVOZCV1PAbCO53p2ZFjX9bIKEDJb0bnjUXnXcjpEG9zk0qxNeNLPVlIW1WwBBys5mjPLxw5pE8
	6xcrmetU5owqXbza3AMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQuwu-00000004xkR-1z8u;
	Mon, 08 Jul 2024 20:27:00 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQuwr-00000004xjL-2qF7
	for linux-phy@lists.infradead.org;
	Mon, 08 Jul 2024 20:26:59 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-651da7c1531so40073827b3.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Jul 2024 13:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720470416; x=1721075216; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kQqAxoPni/sISUNtLPGbi6yaKTLLkE7TWz06MwgXUpw=;
        b=VlEKsAKEqek/dLqdZ3XdGdeYjiKRr0Xs/XAcH9FPBooJ7LtXgfq+AVlDvxw4Ijiic0
         rdj/wGFJ9okVQITw9RyH4BEpujgX/IExIOStPw3GxY8rBJoSzb98PhTlmDW9JxsMZUIL
         QMhInsjPVHnjs1WXpBVwfnHt3IXUfCt/iMuFfKkth28Nj9uRWmHkenj26FhyMDas2yuB
         wtU+V3HqETvsac3ubSWGoKGYw+QOt3u4TDq+dW0KGLJ4T4BUkit2ulo/hGFw3nw4gOht
         XXEYLf5SylgVPNtZ1f+B2SilNoEXrTBiQhOiZUUVPEjDWYzW8EyjCg46Xta9Hn26SwPA
         zSVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720470416; x=1721075216;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kQqAxoPni/sISUNtLPGbi6yaKTLLkE7TWz06MwgXUpw=;
        b=GQ4KqxfvsmePcisR27eG7Mbx3PlgEJcZOXSYkV+6hf2502h5GCHEZtMmbEhraO06xT
         OQzKQWgft5NZKpknlTDb+4wHzoguyAoy5K6n7KP7vatKV+d/rnHcr/MAabqj5n4Gg29I
         VZmAuvXGacXKN92I06nGKZqpWK3/XHUDKXD0ZpsRUaoL/+QhUnZPQqcP+pOp0t6Akuuh
         abo0eKCNm0+3L3sfpWiPnu2Mv8dtqOS3O6yDu1rkQj7w0xs9Pc2+htFsuXOW2ApNMvdE
         db9naq0aw99auxyhAY1fniB3YjAxwuLm29Snug1sSMRN4epuXfkdmam5FxSS/Af5d3xk
         F7uw==
X-Forwarded-Encrypted: i=1; AJvYcCUeHQVC8Ta9dsX85JdKXNgJh+FWW4+qLUpA99OaCMGFpofacCSA3cax9ak02tU6dEJ1TLHxP7jhn3oZmP5DCcJ2cCYh5zX48QN6VKVeGA==
X-Gm-Message-State: AOJu0YyfaL1FtxNszBROFQeWWGQfQYVfaFSAz8Dhw+eiQ/1SGI8xUt9u
	PrNMgx1oscLqym46hawnGIs+eIIfGHwz17wseOIe+Cmnl2pTIq8dI4qmQyWrcjmTDq1Av5uh3/j
	SgL6ziFM1Lg5Z0/wrnTFyL/TYuzIxZajHBwHieQ==
X-Google-Smtp-Source: AGHT+IGO2ni/QPKZ5DyTQznLmq+yxlD7B6UffX80ITsFXuqHyccHxv2wbcoz3FyUQBIlQaTdDB4QDOW83uoQ6RkVu50=
X-Received: by 2002:a81:ae04:0:b0:649:fa54:1f8c with SMTP id
 00721157ae682-658f11a595cmr7769077b3.48.1720470415272; Mon, 08 Jul 2024
 13:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
In-Reply-To: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Mon, 8 Jul 2024 15:26:44 -0500
Message-ID: <CAPLW+4kwiKUUdwPW-TjdXEWivWbh4dTe+LYqsR+YssYy6XSzvg@mail.gmail.com>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix error code in probe()
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel-janitors@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_132657_747680_16B581DD 
X-CRM114-Status: GOOD (  13.32  )
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

T24gTW9uLCBKdWwgOCwgMjAyNCBhdCAxMjowNOKAr1BNIERhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBSZXR1cm4gbmVnYXRpdmUgLUVOT01FTSBpbnN0
ZWFkIG9mIHBvc2l0aXZlIEVOT01FTS4KPgo+IEZpeGVzOiA0OTdkZGFmZTkxNWUgKCJwaHk6IGV4
eW5vczUtdXNiZHJkOiBjb252ZXJ0IFZidXMgc3VwcGxpZXMgdG8gcmVndWxhdG9yX2J1bGsiKQo+
IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4K
PiAtLS0KClJldmlld2VkLWJ5OiBTYW0gUHJvdHNlbmtvIDxzZW1lbi5wcm90c2Vua29AbGluYXJv
Lm9yZz4KCj4gIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCAyICst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2
ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gaW5kZXggZGY1MmI3OGExMjBi
Li45Y2JmOTAxNDI5NTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNi
ZHJkLmMKPiBAQCAtMTc0NSw3ICsxNzQ1LDcgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9w
aHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZW9mKCpwaHlfZHJkLT5yZWd1bGF0b3JzKSwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0ZQX0tFUk5FTCk7
Cj4gICAgICAgICBpZiAoIXBoeV9kcmQtPnJlZ3VsYXRvcnMpCj4gLSAgICAgICAgICAgICAgIHJl
dHVybiBFTk9NRU07Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ICAgICAgICAg
cmVndWxhdG9yX2J1bGtfc2V0X3N1cHBseV9uYW1lcyhwaHlfZHJkLT5yZWd1bGF0b3JzLAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcnZfZGF0YS0+cmVndWxhdG9y
X25hbWVzLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcnZfZGF0
YS0+bl9yZWd1bGF0b3JzKTsKPiAtLQo+IDIuNDMuMAo+CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
