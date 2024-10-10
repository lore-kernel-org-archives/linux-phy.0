Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68E75CF11F5
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bhicMnRbehNgO2JbYd49Hz4iHZ1UfEa7qeuQa0G+TE=; b=wMX2bNZ14tB4xf
	arpEwOATjTIN9piPhhFALxkJdmkeZlSLhjh2CxCx2PI+ir3Eelay+9vnCNRRgAz2Ks9gqFOriSQsT
	v3NwUtjDm5c7CqtxfpDfN7eLnIvfDUud4Zq5XVZ87niHIAlB6HTmswSnPDEqCUlGAcWNORw89emNB
	HzetiGbq0+C//vjkBjUtdmsG/+08zz5dV5IwVY1VzdsU7ya/JJd+Y+3RmhTzHDyDCHl+Zj4p/2O7i
	Mk9VLdefJFtqisIm/HFdeZHTSlCwuQ833wsxFpa6kHAVjkPPfJkeRl6OfQJgN2SCcgxZGD9yqMdeO
	n2P610WGSoyrNNUOkkWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sytMK-0000000CwGh-0VdZ;
	Thu, 10 Oct 2024 13:37:40 +0000
Received: from mail-lf1-f43.google.com ([209.85.167.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sytMG-0000000CwF5-3KV5;
	Thu, 10 Oct 2024 13:37:38 +0000
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5398e33155fso1138807e87.3;
        Thu, 10 Oct 2024 06:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728567452; x=1729172252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZzwzKkCp6jPszo6ZyDDEvEEJi7wd/je50oKdYYshjiU=;
        b=uxs2XVUqwPKpa1f42OKbb/J5WdCmFyycq9DRhHdTZQcW3i5bxbXG2OhlmHhMrlXpPt
         88xJVFKz17eB90IYqIuKxk7rszmFJv3RE7dyzFpFz3ch+affkpQJcx4PZa+f5cUWPHcj
         I7eyi6g/VSFkp/PGkJsb4HeXiNBuYz5P2VWwRkvybcP/I2JDqRl6p7hqzMAEywOCVfLs
         jRhGzMUoKXmBZHTdmQz/WX6s2BtFGOEJn9nBCMAFhQCeNJW1TfYioouw5QHBeTNQQsyZ
         tp/l4hKs0zw7oJjTYnyiMoViWdh/dXuqmF2A1rSIkyg+sh4gUK033S8zAO41UHZ92Zy3
         2cPA==
X-Forwarded-Encrypted: i=1; AJvYcCUshsKe3AhFjqGL1+1pM9IgOZsecdDEduea+Tg0AQI6BxlVll8hxZmj/FKaUN7iSQU0Bjz5glOEvMFJ@lists.infradead.org, AJvYcCW3RmWMFn76yOq7N2sg5g1b12UD9YtsokDU1TApO0HEbEQLpmJwd1oUT+2DzzCcERbFfYBjlJgOTJinEUXE6/Id@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6XEXJdI3oaYyNqC22ggS271Tbf8q/895ibpKEJOuU5p+7jnwA
	aHa5YHqXQ/6L/oMQ5dVALzfD2Zs+Ah+S9jGMN4Mdc/AWA6zu2NYV2RuwVlSI
X-Google-Smtp-Source: AGHT+IFID503MVLNy0HCftWjNRcC8i2WAZkORTcTtS3tGi8a6Wwpk/nNdiIFrl8IFB1pwZxLvXIE1A==
X-Received: by 2002:a05:6512:3da8:b0:533:46cc:a71e with SMTP id 2adb3069b0e04-539c496ac4fmr4821769e87.54.1728567451723;
        Thu, 10 Oct 2024 06:37:31 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com. [209.85.208.176])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb6c8510sm260138e87.96.2024.10.10.06.37.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2024 06:37:31 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fac60ab585so9024531fa.0;
        Thu, 10 Oct 2024 06:37:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVAMRjrYHh1Luzx2neIqKzCvP+pL/gn2y9wrtgg1MWmN08/H6rxXOu+k/jn2SB7rY7AiezIEoG/yeB4nE6xmXcg@lists.infradead.org, AJvYcCX0Wgk0HduD+jxYPzmrrV25Kua3dw0xUZILAbdRBQw4PMwIrDl20MZ5EWBJy+ctfzgTebz1ITa27FyV@lists.infradead.org
X-Received: by 2002:a2e:f19:0:b0:2fa:c57a:3b1c with SMTP id
 38308e7fff4ca-2fb1873eca8mr32339161fa.17.1728567450394; Thu, 10 Oct 2024
 06:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <20241010091355.8271-1-algonell@gmail.com>
In-Reply-To: <20241010091355.8271-1-algonell@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 10 Oct 2024 22:37:16 +0900
X-Gmail-Original-Message-ID: <CAGb2v64=WSCyKVyMtUv1d_WoLLnJjEx4WzC3mmF2uB+6O+0oZQ@mail.gmail.com>
Message-ID: <CAGb2v64=WSCyKVyMtUv1d_WoLLnJjEx4WzC3mmF2uB+6O+0oZQ@mail.gmail.com>
Subject: Re: [PATCH] phy: sun4i-usb: Fix a typo
To: Andrew Kreimer <algonell@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	kernel-janitors@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_063736_850302_1D886353 
X-CRM114-Status: GOOD (  13.86  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBPY3QgMTAsIDIwMjQgYXQgNjoxNOKAr1BNIEFuZHJldyBLcmVpbWVyIDxhbGdvbmVs
bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRml4IGEgdHlwbyBpbiBjb21tZW50czogd2V0aGVyIC0+
IHdoZXRoZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgS3JlaW1lciA8YWxnb25lbGxAZ21h
aWwuY29tPgoKQWNrZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KCj4gLS0tCj4g
IGluY2x1ZGUvbGludXgvcGh5L3BoeS1zdW40aS11c2IuaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9waHkvcGh5LXN1bjRpLXVzYi5oIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LXN1bjRp
LXVzYi5oCj4gaW5kZXggOTFlYjc1NWVlNzNiLi5mM2U3YjEzNjA4ZTQgMTAwNjQ0Cj4gLS0tIGEv
aW5jbHVkZS9saW51eC9waHkvcGh5LXN1bjRpLXVzYi5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9w
aHkvcGh5LXN1bjRpLXVzYi5oCj4gQEAgLTExLDcgKzExLDcgQEAKPiAgLyoqCj4gICAqIHN1bjRp
X3VzYl9waHlfc2V0X3NxdWVsY2hfZGV0ZWN0KCkgLSBFbmFibGUvZGlzYWJsZSBzcXVlbGNoIGRl
dGVjdAo+ICAgKiBAcGh5OiByZWZlcmVuY2UgdG8gYSBzdW40aSB1c2IgcGh5Cj4gLSAqIEBlbmFi
bGVkOiB3ZXRoZXIgdG8gZW5hYmxlIG9yIGRpc2FibGUgc3F1ZWxjaCBkZXRlY3QKPiArICogQGVu
YWJsZWQ6IHdoZXRoZXIgdG8gZW5hYmxlIG9yIGRpc2FibGUgc3F1ZWxjaCBkZXRlY3QKPiAgICov
Cj4gIHZvaWQgc3VuNGlfdXNiX3BoeV9zZXRfc3F1ZWxjaF9kZXRlY3Qoc3RydWN0IHBoeSAqcGh5
LCBib29sIGVuYWJsZWQpOwo+Cj4gLS0KPiAyLjM5LjUKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
