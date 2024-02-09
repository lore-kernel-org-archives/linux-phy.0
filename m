Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0885C48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 10:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osy5rJnamQKDBTjvn1X9r9NvhgOaiXXqdrY950Vi6SI=; b=VFRgc4j0m4O8lN
	DsfXamMJIxvri8bek6ee8fefR77+AEXOy1zLWJqgctorfE98NLjsx/dOIOq9nZWGLRPTz3PFIBUT1
	Fw0v/yX9MJ+k45ZwrhZH7TNhH6n9AZgr+tshYeRNmt5qfwUtpMI+2n8uC2K1Ii0bkX4hluf5eTRVO
	gl62Gyk7ee6JsGkKXuY6U9TmxA+nzfwKEESHLLBqQdvn2KAxETmJsqoqx6Elt5FOdGbUcoQdDdItA
	9seW72nxJ4wsbxZLe26gmLhPMO5AsqB+b83ZqezLxsdyj+zjKyfsf5Qww9FEA8IBabsgRafSAm6gW
	SBGvwFovl3yGuuX9FWgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOSX-0000000GlGH-1gSB;
	Fri, 09 Feb 2024 10:50:17 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOSU-0000000GlFG-47i6
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 10:50:16 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-dc745927098so671021276.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Feb 2024 02:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707475813; x=1708080613; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6iTZ3L1x+uoh1UT8BZM96Kcc36zdm9shl9bdfb9ciug=;
        b=JGpJk7IWVIvljhO3xmKytXQj4qxDcW7o/o44rOy5JGloY4ksdjRkPWInM4MwrMa4KP
         unzRYMyHiok8nsC2/GC8i+1fh4f4hXCJZuyLIBZwpSpETterhUQIJEYFSJeZeVUDBGRC
         EwIR7u9aiSH7tTEUF2PD9CI/j5JxUWxsplN5EScgbg+rsJcQYrGrMEFeoutRzEOTvBht
         XO6egw7NR/F06UQ6DxCiEsaA3GJ7kEolc0MOPiji/uqUrh118YXKHrQq9uVMZwrXP1ZJ
         voHeYhIsRkUZ28P0FB7j+uqBisQAj0jgYmmEmz9ocFA6Voq8geOuRjRIOEw9D8+V/dUN
         EdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707475813; x=1708080613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6iTZ3L1x+uoh1UT8BZM96Kcc36zdm9shl9bdfb9ciug=;
        b=FRcJK9JsZsLGk985SdImkDdDjX0FmQt/j95iNBZHtQTg81/EfRQmcfH9uzuJBS+/Va
         MfQhQtSEFaRDSLHdyoY4rpr5WGYERl/plcf7GC6ebW5gqeS/WbSyngCI/W0W5KFTmG7t
         g/PXv5VzItljHbK/+UBDAUuiis50y7JieOVJ71WUFx4IYPpERUKRO/VbwGIgEvlFwe5g
         RjogZa0ON/l4A3SWKNb43gT+KYo9+VxeqMCCgZ6j9jfx2RkXP26Sc0aRnoHrzj+4f4K1
         i0sk5mhw027XNCiVD9NZn8dVvHbKL002PvZk/FTIdnaL9MtAAVsAgRwXPc2Ar//+WBHr
         WbGg==
X-Gm-Message-State: AOJu0YyVSRnubbduEhFhiX1CyZM47OA2+b00fYjsqgmcfPTUsQMmGDZi
	Ha8fonugosTKdjeUztJ/xkB6a2XkH1bgob381EDSf8Qka+scELehWblPPOUn0Pw2zRCZKszns6C
	olxAWnYdwebtHYy6Ob3JVdFo7BEdyrNWvfrF6+Q==
X-Google-Smtp-Source: AGHT+IGLvOd9/MBitQXhfAzlH+623tzVUG7WaQ7stY8iXEbXC38uzHJ96hKdcn9vmVOBj+lQYRfk9XfqcIwuAYfUmAs=
X-Received: by 2002:a25:d804:0:b0:dc6:7937:53da with SMTP id
 p4-20020a25d804000000b00dc6793753damr939249ybg.39.1707475812934; Fri, 09 Feb
 2024 02:50:12 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com> <20240116074333.GO5185@atomide.com>
 <31c42f08-7d5e-4b91-87e9-bfc7e2cfdefe@bootlin.com> <CACRpkdYUVbFoDq91uLbUy8twtG_AiD+CY2+nqzCyHV7ZyBC3sA@mail.gmail.com>
 <95032042-787e-494a-bad9-81b62653de52@bootlin.com> <CACRpkdY2wiw1zH8FsEv7S1FW044PBSXpLPqanF5yyH1R4oteEA@mail.gmail.com>
 <68d4a1bb-5b40-47fe-a117-647d77009b43@bootlin.com>
In-Reply-To: <68d4a1bb-5b40-47fe-a117-647d77009b43@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 9 Feb 2024 11:50:01 +0100
Message-ID: <CACRpkdZOhZu8OjgFHtqjeuujav3-N4dQFEqB2yvM+5QKNP37QA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240209_025015_058232_1E4A4494 
X-CRM114-Status: GOOD (  14.79  )
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

T24gRnJpLCBGZWIgOSwgMjAyNCBhdCA4OjQ04oCvQU0gVGhvbWFzIFJpY2hhcmQKPHRob21hcy5y
aWNoYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKCj4gPiAqRklSU1QqIHdlIHNob3VsZCBjaGVjayBp
ZiBwdXR0aW5nIHRoZSBjYWxsYmFja3MgdG8gbm9pcnEgaXMgZmluZSB3aXRoCj4gPiBvdGhlciBz
eXN0ZW1zIHRvbywgYW5kIEkgZG9uJ3Qgc2VlIHdoeSBub3QuIFBlcmhhcHMgd2UgbmVlZCB0byBl
dmVuCj4gPiBtZXJnZSBpdCBpZiB3ZSBkb24ndCBnZXQgYW55IHRlc3QgcmVzdWx0cy4KPiA+Cj4g
PiBJZiBpdCBkb2Vzbid0IHdvcmsgd2UgY2FuIHRoaW5rIG9mIG90aGVyIG9wdGlvbnMuCj4KPiBJ
IHRoaW5rIGFsbCBzeXN0ZW1zIHVzaW5nIGEgaTJjIGNvbnRyb2xsZXIgd2hpY2ggdXNlcyBhdXRv
c3VzcGVuZCBzaG91bGQKPiBiZSBpbXBhY3RlZC4KPiBJIGd1ZXNzIGEgcGF0Y2ggKGxpa2UgSSBk
aWQgaW4gdGhpcyBzZXJpZXMgZm9yIGkyYy1vbWFwIFsxXSkgc2hvdWxkIGJlCj4gYXBwbGllZCBm
b3IgYWxsIGkyYyBjb250cm9sbGVyIHdoaWNoIHVzZSBhdXRvc3VzcGVuZC4KPgo+IFsxXQo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9ocW54eWZmZHNpcXo1dDQzYmV4Y3Fyd215bnBqdWJ4
YnpqY2hqYWFneGVjc283NWRjN0B5N2x6bm92eGczZ28vCgpJIHRoaW5rIHRoaXMgaXMgdGhlIHJp
Z2h0IHRoaW5nIHRvIGRvLgoKTWF5YmUgd2Ugc2hvdWxkIGp1c3QgZ28gb3ZlciBhbGwgb2YgdGhl
bT8gKEFsc28gU1BJIGNvbnRyb2xsZXJzPykKCldlIHdpbGwgc29vbiBtZXJnZSBhIHBhdGNoIHRv
IG1vdmUgdGhlIHBpbmN0cmwtc2luZ2xlIFBNIHRvIG5vaXJxLCBhbmQKdGhhdCBhY3R1YWxseSBh
ZmZlY3RzIG1vcmUgdGhhbiBqdXN0IE9NQVAsIGl0IGFsc28gaGFzIGVmZmVjdCBvbiBlLmcuCkhp
U2lsaWNvbiBzbyB3ZSBjYW4gZXhwZWN0IGEgYml0IG9mIHNoYWtlb3V0IHVubGVzcyB3ZSB0YWtl
IGEgZ2xvYmFsCmFwcHJvYWNoIHRvIHRoaXMuCgpZb3VycywKTGludXMgV2FsbGVpagoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
