Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9612CC3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 19:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUu3pUcoRLrTHIh7LherIocNjg85HcqZKm+yKgK3aJA=; b=PBOeX1BgFjnILQ
	V4Z4uuaB7KNhhAlufTqxBtjmovZ+fEeNnMvKRGrDPfBzFSRbHnzRHd4X5E/MQfRn0dE/iP1CxBEGd
	xNNAnrHSlFSSl+l6KxdjyoeQJIJQ/Jyuqw3OYgaLCcPDmHrjtF8C3iMI1GvN/afzHC972qItu/W7Q
	MD1o2QfOry7mivNl5ssqweZoAz4pmuZ4+1/8Wk53Qc9PvhOHXLNovO9On4oE/hmzdE9bPDzg4VLK3
	mnXNPjoahSwEY20+EyO7x5s7PGUBqgAySSgRYxeRZYD/prB9crzFAgzFul8ZkzZyT6FAjElzuuejS
	uv4LEfcMHr0mYa9L3wtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPT4l-00A5TD-0r;
	Mon, 15 Jan 2024 19:56:51 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPT4h-00A5Se-2p;
	Mon, 15 Jan 2024 19:56:49 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40e5f746ac4so55610715e9.1;
        Mon, 15 Jan 2024 11:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705348605; x=1705953405; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VpU6+YHkvn08adzjTfnX/FYJd9oIMlOMtpUIvBTFqE=;
        b=QucqMWUTkh/ljUeq1FpuZk/WKXXzFAUrZqzcDQdDTXobReHJ97/3+Q88hd79F2Qhb9
         sAxriwLhHCu/e5jPBAxPNGqRAOgsuIHecYEIEI5JpKCXXvr1BG5GKtGKqtSuw65+Uc/A
         iMyz+2LfQiH7v+30c7+y2l8KHNZRNHPNp1cYGJYZXa7HaDq6SviEvOND4EJCIIY6OYA+
         zZa2y1UpVo9zndWuLnssJgwdKUrySLRJCOoyQEl7UXBqJv7BDcgnaPj+MisGGbPZaZ3m
         uCn/RO6RFw/OnVoYhhpNVsHNqut7HxF/XtNNv+U5HoJ29p13HpOjPvJkVMgxj/J0dILn
         zAkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705348605; x=1705953405;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9VpU6+YHkvn08adzjTfnX/FYJd9oIMlOMtpUIvBTFqE=;
        b=DFGrGhXjXy+38z8PmH70Bctpox8BpGmE/sBgCXt7yyTdCMfDQPpdhas82YLQT2o3AS
         Qx2ECIFMzSWMvamJ4Ranjq/Sf96a+YwyA+vG0LR3YYkrxKJPRgG3e9h1U4MkquB+opmW
         Z6Ax4QY9+MgSY0s3OmgKu1FIJqaN6HsHvwWDhiY2PBaafDzbo8a1LnWzEuzy1+AAFTeI
         /WNzZ5R9U8V2azMB7HJ/yYVFet1CNwT+B6U/G84npZO0r/m1AAF50Q1Fb8QVZiJYn35V
         zL+QNohLSaUfgJ26kgUjld1Ls2XmbdItFp+kVTpQ7PFtaVbX4GTxvB/lXQDhpvScof0S
         gW+A==
X-Gm-Message-State: AOJu0Ywkp3B9fcQShjGtx6tfT/6IoqPJt8SmifNxdEbM2c17MaQBT/1f
	Bf6gE8GkrWZvn+xGEFxUPLA4SfelDhDnCJiqR2s=
X-Google-Smtp-Source: AGHT+IG2g/dlkMceaiIBkgJJPIAHDRblBc7tqNn4N7kSwdW5ytNtvwVcSmdmsn+PEXzA0l4KSS3qI1/vQowfZ0sqVlU=
X-Received: by 2002:a05:600c:1d95:b0:40e:6dfb:7b3f with SMTP id
 p21-20020a05600c1d9500b0040e6dfb7b3fmr2194829wms.95.1705348605229; Mon, 15
 Jan 2024 11:56:45 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com> <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Jan 2024 21:56:09 +0200
Message-ID: <CAHp75VezeBp3Umg4prvdS83WrHViyTs-hBV0SejVD2BBnGYEvg@mail.gmail.com>
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to suspend_noirq/resume_noirq
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
X-CRM114-CacheID: sfid-20240115_115647_931591_380C7EC5 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBKYW4gMTUsIDIwMjQgYXQgNjoxNuKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBTb21lIElPcyBjYW4gYmUgbmVlZGVkIGR1
cmluZyBzdXNwZW5kX25vaXJxL3Jlc3VtZV9ub2lycS4KCi0+c3VzcGVuZF9ub2lycSgpIC8gLT5y
ZXN1bWVfbm9pcnEoKQoKPiBTbyBtb3ZlIHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcyB0byBub2ly
cS4KCi4uLgoKPiAtc3RhdGljIERFRklORV9TSU1QTEVfREVWX1BNX09QUyhwY2E5NTN4X3BtX29w
cywgcGNhOTUzeF9zdXNwZW5kLCBwY2E5NTN4X3Jlc3VtZSk7Cj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgZGV2X3BtX29wcyBwY2E5NTN4X3BtX29wcyA9IHsKPiArICAgICAgIFNFVF9OT0lSUV9TWVNU
RU1fU0xFRVBfUE1fT1BTKHBjYTk1M3hfc3VzcGVuZF9ub2lycSwgcGNhOTUzeF9yZXN1bWVfbm9p
cnEpCj4gK307CgpQbGVhc2UsIHVzZSBjb3JyZWN0IC8gbW9kZXJuIG1hY3JvLgoKLS0gCldpdGgg
QmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
