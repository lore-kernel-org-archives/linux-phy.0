Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F8D0C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQ5ZOp5o+nnGCQPEDZWL+rbp0zhg3MqA1oky+6mVopw=; b=tp+BycTegv81QJ
	btUU6MlGxIe6hxwyvgNFYBcmpWIoxH9Qepi33tkqlDDkfSSupeF7DIPwGYo8UomzLV7cZpxLhOC7j
	L5UenbO45ha5JPTzqbqtNSPCl12nYTW4p87EM50pOiCiIyv7xSjRUUC53rSvyLlXRIUJFv8JnCi72
	EGmFRv0DzslmUL3DuqkqnIimJKZq6t3VDjvkJbJ7GHjnopz0FD6IE7pOX4+JtA8e97twCG+cki3QH
	OnHyrN3LVJ6IO6E97jNSO9PD5CUQPsMg9GEtz2D/hd6TNkXKrEmigMHen/pbFDGT5NB6Bo6mT2Lt/
	S4OnCG/du6yI9VUJIH/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTlH-00000005Ski-2xsi;
	Fri, 26 Jan 2024 21:29:19 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTlE-00000005Sjy-2OrF;
	Fri, 26 Jan 2024 21:29:17 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50e5a9bcec9so893515e87.3;
        Fri, 26 Jan 2024 13:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706304552; x=1706909352; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5dGaRcZGZXBVKac7GIu7GBfbJOVUBsye+tLRWwIY3dY=;
        b=QnTjB1UshQ2ECw4PeVc42QGpEG56DSEJAqRtGBTxx6wtPh4b2TbnfcHehqwuR6okt5
         WMQExVO5lj5ZC7aGILj6r1gtvkq2v7Lhe6xcJZHaX6PjYL/2B/K8wFAWArEBV6/Utc7C
         pCNY+rxkKI/b2YnVc1UQ53djLYAL3GaHGEnZ1KW9gS7Nzg49Ou2YiR/WDZw/iREsARDc
         5NQ0f1xGNknvhP/8indyjSYNkoTDeADWrQxNrzSJ7rXSSeI0SucL1rX1SEZ9MW7qoAN5
         JOSjfJHSBNoeJfy8ZJ0gfqrIZZp9xW3nVN0BdYRvJU5eLjs78WD92B/0ykNCg1IXqVpC
         Q0Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706304552; x=1706909352;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5dGaRcZGZXBVKac7GIu7GBfbJOVUBsye+tLRWwIY3dY=;
        b=chYmNe8uNRy6nxB0r+mFf8gzac2gI5KHKDG1YOVz/gE+BJKV6Vnt6oeCGOszjOSzcu
         Do4mSl/leREJIG0lNrOspC+PFvqM46bEP8oEzAgbmfcN0ovw4qQvdpOHDGr76q6BCLrx
         U4bCFqa8MTSteJXEvcLY3GpPO182raUrXbrDlNAbfScaHHzRiI9rO/ghbDjPWHbTYfIx
         +AoWySnB1AKgJtczEY4NvRBlCKeDcYtPBDUfLSmaxzuF0TRTXUvZSI/srqPHQKAQKp/f
         lidPlJ2lRcxCOLWAb0Vl2ffYC9vTeWsPNn+pgi/UU29bW01cm/u3of9DaWuo/3Ps+gzH
         r1mA==
X-Gm-Message-State: AOJu0YxLWR0pDAV5o5bVNNM4Hq82zAyGnkmgwDJUB2+z/JNk2VCDi4lU
	6vES6hv+dwJx8iimy2ow9+KBUQjKIr/KYLkZpfH0aHJy2lMlqHJfL0xOHF3xM7D3W8giH3B/VG8
	CadSBD/31ErY+O7r6GddNk2dJquw=
X-Google-Smtp-Source: AGHT+IGeM+pQ+Cnao4mzrrHgxL3aMLIh3IIoj3QybKfVNw6pv8H/R/tftIwIc8VbdO+9lsAp4rKqVnSWF8w3kXZnZrc=
X-Received: by 2002:a19:ad4a:0:b0:510:106b:3369 with SMTP id
 s10-20020a19ad4a000000b00510106b3369mr218788lfd.26.1706304552212; Fri, 26 Jan
 2024 13:29:12 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-4-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:28:35 +0200
Message-ID: <CAHp75Ve2K=v=OrNPH0q+K6vp2283HSMBYYSh0hYbw56snGd+xg@mail.gmail.com>
Subject: Re: [PATCH v2 04/15] mux: add mux_chip_resume() function
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
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
X-CRM114-CacheID: sfid-20240126_132916_632330_FF3BC69A 
X-CRM114-Status: GOOD (  12.13  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgNDozN+KAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBUaGUgbXV4X2NoaXBfcmVzdW1lKCkgZnVu
Y3Rpb24gcmVzdG9yZXMgYSBtdXhfY2hpcCB1c2luZyB0aGUgY2FjaGVkIHN0YXRlCj4gb2YgZWFj
aCBtdXguCgouLi4KCj4gK2ludCBtdXhfY2hpcF9yZXN1bWUoc3RydWN0IG11eF9jaGlwICptdXhf
Y2hpcCkKPiArewo+ICsgICAgICAgaW50IHJldCwgaTsKPiArCj4gKyAgICAgICBmb3IgKGkgPSAw
OyBpIDwgbXV4X2NoaXAtPmNvbnRyb2xsZXJzOyArK2kpIHsKPiArICAgICAgICAgICAgICAgc3Ry
dWN0IG11eF9jb250cm9sICptdXggPSAmbXV4X2NoaXAtPm11eFtpXTsKCj4gKyAgICAgICAgICAg
ICAgIGlmIChtdXgtPmNhY2hlZF9zdGF0ZSAhPSBNVVhfQ0FDSEVfVU5LTk9XTikgewoKICBpZiAo
X3N0YXRlID09IC4uLikKICAgIGNvbnRpbnVlOwoKPwoKPiArICAgICAgICAgICAgICAgICAgICAg
ICByZXQgPSBtdXhfY29udHJvbF9zZXQobXV4LCBtdXgtPmNhY2hlZF9zdGF0ZSk7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKHJldCA8IDApIHsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGRldl9lcnIoJm11eF9jaGlwLT5kZXYsICJ1bmFibGUgdG8gcmVzdG9yZSBzdGF0
ZVxuIik7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgfQo+ICsgICAgICAgfQo+
ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2
Y2hlbmtvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
