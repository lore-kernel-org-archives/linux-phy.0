Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A37C7C46CD2
	for <linux-phy@archiver.kernel.org>; Sun, 28 Jan 2024 00:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCEpZQiLsJDyNSG7jVWaRCc1wTKDBGYD1hqHbZYp2T4=; b=Lb2oW0+0q8wTOh
	cd7XmLM+vkZIaliPWNhAUUlctWL19GT9MLK8Iso1RqBbR+wE3q9Rclkbb7v0EMFqwRv0eLUzysZqt
	4PwPe2pEE1NTfSP/9lntspUQQFV1qs+wdzDzoUb3KbgK9LPia3AHsR/fHIRzoXC89rLR3A4m6JtjW
	Z1AjM78RD3RuA/ubIzfi43NqJgfM02h1zsCq13E8NB9N+GXvPO6QiIAR6zaILrg8NcCwhL16UI2we
	wJcrGHS5w4vC0zbqoZeA9O+UNa1XX7JbbESQ2V+bBaLHREC7ipZNe7ygZfTOKKWuxrOUyUKN+h5yM
	sGhZ+wAMpbggyVA5rxCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTsnI-00000008SLq-1NaA;
	Sun, 28 Jan 2024 00:13:04 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTsnF-00000008SKz-3dJN
	for linux-phy@lists.infradead.org;
	Sun, 28 Jan 2024 00:13:03 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-602cf7dfeb1so15040287b3.0
        for <linux-phy@lists.infradead.org>; Sat, 27 Jan 2024 16:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706400781; x=1707005581; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s382zJRyJ6x/m0CqRGyW8m+O+mRKPthrymTT1vXT0ds=;
        b=SKIg41ar/EkuM6cspYTIaGnoVhgtXYUXzNoNQZMSN6bXaN5buIl77euAZN/iDZXsqG
         GXI+GPEmH4HGQQcmBBfcOPzIO/+EkqR+eZ68CvKv2gUR2H9moQqnE8Ml1BW2MdqpKuAi
         g7qdF0by1K3N8+hmurqBTYwEg59Rkh5mJ+jnYKPUGjfnB8FnLBq/qUs0qhGoSkukYH+u
         60BYLcZtRKSFzfM7yBgjAjscJBQRJKFRmTeH/cY1VJc3hRYBGer/AzL/gUrVGvRU6/yK
         u+/hunGgk2RS3a4xOfVRZA4xUJCB5QpTPf8uUAVCdnnGJjJkni/QfXBcRPQ0X65ULolx
         dZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706400781; x=1707005581;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s382zJRyJ6x/m0CqRGyW8m+O+mRKPthrymTT1vXT0ds=;
        b=mY35msmsChLljgLFCwg/fT2TqXWG3Uikxa329iE9NGBpcp5kPYoZo9XDkIr61kM228
         /wWHW8ZaBjYySNTSJe7x5jEB1P4stUNf0JzMR1H/7ABAs0icT9Akmy37wDs0n6OZxugp
         bmFdI5Ttyk6ZXAo3kCCJ7iEKNMBsGxaPP+wkBDfJPOUJKW/JWHS4Gx/7mlKCuwnOQH23
         vO6GmeQV2mCgA17cY1jmPY8qfnIWVFTikNfrGuDmyRQAjrNpcrfChreebJ33ZJ5wcFbB
         R7+G46U03L7nQF/DWFZfVvEohyQZpeHJ+r/i/yEf9IKrPZZRi7u/5edNyY+1T1Mllp/4
         qm2w==
X-Gm-Message-State: AOJu0Yw9eimy+is1UMAjSUPvN4IbkIF8kRvGApqoxAuUb1mEneGa4M/w
	xk9eTw5ekN7rL0xuqxcPbLUT5mqVCEe3VRvHkeo1fyY5KJwnd/w/14wrVRcGd4VReEjD+y9jHJb
	nt0muxvETu5Xac0B1JGHFStXy0ROFDGrWI9Arwg==
X-Google-Smtp-Source: AGHT+IEZVSZUzzjxzZn0Av2/7INObuTua3Mia5HKhwhoo7tJ2m/wqcv1w98aBP4XbcXGiLtyHqQ0OWN/g5UmL4382Eg=
X-Received: by 2002:a81:4426:0:b0:602:c9ad:f979 with SMTP id
 r38-20020a814426000000b00602c9adf979mr1944880ywa.75.1706400780839; Sat, 27
 Jan 2024 16:13:00 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com> <20240116074333.GO5185@atomide.com>
 <31c42f08-7d5e-4b91-87e9-bfc7e2cfdefe@bootlin.com>
In-Reply-To: <31c42f08-7d5e-4b91-87e9-bfc7e2cfdefe@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 01:12:50 +0100
Message-ID: <CACRpkdYUVbFoDq91uLbUy8twtG_AiD+CY2+nqzCyHV7ZyBC3sA@mail.gmail.com>
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to suspend_noirq/resume_noirq
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Tony Lindgren <tony@atomide.com>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_161301_953599_ADA8D4B6 
X-CRM114-Status: GOOD (  12.56  )
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

T24gRnJpLCBKYW4gMTksIDIwMjQgYXQgNjowMeKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gT24gMS8xNi8yNCAwODo0MywgVG9ueSBMaW5k
Z3JlbiB3cm90ZToKPiA+ICogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4u
Y29tPiBbMjQwMTE1IDE2OjE2XToKPiA+PiBTb21lIElPcyBjYW4gYmUgbmVlZGVkIGR1cmluZyBz
dXNwZW5kX25vaXJxL3Jlc3VtZV9ub2lycS4KPiA+PiBTbyBtb3ZlIHN1c3BlbmQvcmVzdW1lIGNh
bGxiYWNrcyB0byBub2lycS4KPiA+Cj4gPiBTbyBoYXZlIHlvdSBjaGVja2VkIHRoYXQgdGhlIHBj
YTk1M3hfc2F2ZV9jb250ZXh0KCkgYW5kIHJlc3RvcmUgd29ya3MKPiA+IHRoaXMgd2F5PyBUaGVy
ZSdzIGkyYyB0cmFmZmljIGFuZCByZWd1bGF0b3JzIG1heSBzbGVlcC4uIEkgd29uZGVyIGlmCj4g
PiB5b3UgaW5zdGVhZCBqdXN0IG5lZWQgdG8gbGVhdmUgZ3Bpby1wY2E5NTN4IGVuYWJsZWQgaW4g
c29tZSBjYXNlcwo+ID4gaW5zdGVhZD8KPiA+Cj4KPiBZZXMgSSB0ZXN0ZWQgaXQsIGFuZCBpdCB3
b3JrcyAod2l0aCBteSBzZXR1cCkuCj4gQnV0IHRoaXMgcGF0Y2ggbWF5IGhhdmUgYW4gaW1wYWN0
IGZvciBvdGhlciBwZW9wbGUuCj4gSG93IGNvdWxkIEkgbGVhdmUgaXQgZW5hYmxlZCBpbiBzb21l
IGNhc2VzID8KCkkgZ3Vlc3MgeW91IGNvdWxkIGRlZmluZSBib3RoIHBjYTk1M3hfc3VzcGVuZCgp
IGFuZApwY2E5NTN4X3N1c3BlbmRfbm9pcnEoKSBhbmQgc2VsZWN0aXZlbHkgYmFpbCBvdXQgb24g
b25lCnBhdGggb24gc29tZSBzeXN0ZW1zPwoKV29yc3QgY2FzZSB1c2luZyBpZiAob2ZfbWFjaGlu
ZV9pc19jb21wYXRpYmxlKCJteSxtYWNoaW5lIikpLi4uCgpZb3VycywKTGludXMgV2FsbGVpagoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
