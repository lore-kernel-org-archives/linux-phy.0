Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BDCEC3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 20:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gufsuZGn87xNX7iGziMtkoWouU6HZA4gdKueAqRFESE=; b=T/r8WBR6zMCkvR
	9RlUEL/LSXeMBFVDBLJIemHjJu0l5AOo6bOfXH7Ez9nfIndN08HlqLVR7Eu1kdqgm+usKYTJ7r2dO
	FYZxwRtNCfslcY734qAqbGguWW1aVuV261AWqDSQg+K1ZPelrQcQvgvchHApMX3JiT0CW9QtSXkyy
	Mkh5E4yGRde1ocb3BTUZ9O6Yn7UvBWdoyQsIkItlwRhk2Kml1lMLCsGxt1Kx53vS0HiIBkPRJHdkC
	CGahqccGl3rRFnvyBNJs6XNRC7t86oo3gL1LuNqYFeuXBFNVerMfPcIvELTnmvV3Ol6wdciExx3Tr
	HUrSPMA7DLH3nRooeOJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTH0-00A6y6-1u;
	Mon, 15 Jan 2024 20:09:30 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTGx-00A6xd-1y;
	Mon, 15 Jan 2024 20:09:28 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-55980045ddbso136828a12.1;
        Mon, 15 Jan 2024 12:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705349363; x=1705954163; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eTSsmF9bay5eiASBLzGyhlZe0LQNn59Lj5uJ3Vfhg1s=;
        b=mQyh+LRI3ZnNSVk1Wk940E3GuT3jkCYKbeKo0b26aopEMxF5tvUySxTlUmrDWk3txD
         uQ5XkfnFXhAmhB+kdLnBOIz0hCO1Q9vDzkWmS3j7teloi1Bj3AtYkNKvPRZlqgoTM/zb
         8GXf2FgRz4ygP3FK3G27DHPyaCIIWSSPmOoV/8g/fM9H3Jw7oMdgLJJwv9nynIsTmeYJ
         EQbSOb+5RS1V0ZC8GHR2h9xYiQa4+AqPUEpwXkAIxT2DwayZhFRybtv4KSVXhH+M+iZo
         MxbLlIflQ8GR2dtW7XxQSTAL7wRsskV5RzIfITWBWR5xNcFvy0WwjcYZY343EHw4x/oN
         A0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705349363; x=1705954163;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eTSsmF9bay5eiASBLzGyhlZe0LQNn59Lj5uJ3Vfhg1s=;
        b=KqD4LPVIS+DbTXMqREQGrEI5zSIUWz4K+UktcgLy0UugasCxz99WOsuFWFIg61uzcc
         kIdeWHlHwEHnUkfTRYa11bm1qJE+PAwHGiq7BdkWNsAmnYAuvPJKFdJqMAugqZrh7ZPN
         mQLF8rilPzwnPgr0bxtmJk5mnwHfnUXU9AZG/WJ2qbi1ccKQzdNKqeTXjtoqmWbpmFzw
         ISM5umOyusClu3yGOScQdE6aJN095xL8Wcvi3ietVHwnzK8te+vtB32MZarpSODO4YXu
         oBjCB0L3hs3/Dvn+an8qXi71pDEqZ0/32Y0k46h5OVpjfbdZnYk5U4/+ebDHw94VG3YV
         fa0Q==
X-Gm-Message-State: AOJu0YxmL6Nk1wMYuCgDomSIN+tneYU8GkeQ97q959wJf/b9noOuKiZV
	Pmp54OyGOaWItsad0HSZCRPH/Te27VlgSS3BjN0=
X-Google-Smtp-Source: AGHT+IH4K/0MSQ2AdSJavyYxu02KhPdDIrkcZQ+IgMJl9YgR7xGb5Z6QZpkBkLn2Jd6lpzIzNOMcDN2koWupF26hQB8=
X-Received: by 2002:a17:906:fc10:b0:a2e:51bb:6e97 with SMTP id
 ov16-20020a170906fc1000b00a2e51bb6e97mr121762ejb.67.1705349362821; Mon, 15
 Jan 2024 12:09:22 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com> <20240102-j7200-pcie-s2r-v1-13-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-13-84e55da52400@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Jan 2024 22:08:45 +0200
Message-ID: <CAHp75VcZXyGNY1jVNch1X6J5BqtbL6Hbh2o6yAd8Hp7-n4xAag@mail.gmail.com>
Subject: Re: [PATCH 13/14] PCI: j721e: move reset GPIO to device struct
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
X-CRM114-CacheID: sfid-20240115_120927_672003_3471E45D 
X-CRM114-Status: UNSURE (   8.56  )
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
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBUaMOpbyBMZWJydW4gPHRoZW8u
bGVicnVuQGJvb3RsaW4uY29tPgo+Cj4gTW92ZSByZXNldCBHUElPIHRvIGRldmljZSBzdHJ1Y3Qs
IHNvIGl0IGNhbiBiZSB1c2VkIGF0IHN1c3BlbmQgYW5kCj4gcmVzdW1lIHN0YWdlcy4KCi4uLgoK
PiAtICAgICAgIHN0cnVjdCBncGlvX2Rlc2MgKmdwaW9kOwoKWW91IGNhbiBsZWF2ZSB0aGlzIGFu
ZCBtYWtlIHRoZSBwYXRjaCBtdWNoIGxpZ2h0ZXIuCgouLi4KCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKHJldCAhPSAtRVBST0JFX0RFRkVSKQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IHJlc2V0IEdQSU9cbiIpOwoKU2lk
ZSBub3RlIChub3QgcmVsYXRlZCB0byB0aGlzIGNoYW5nZSk6IHBlcmhhcHMgZGV2X2Vycl9wcm9i
ZSgpPwoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
