Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80A1FC3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 20:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otJscUJAvkggzH5tdvQr8eaCiXgziVPp6rHQKFpOzFw=; b=huDIK4lOfnb8xZ
	/KVvbeN/3s/7x0/Xalyfw/9m0C56AjveY7jXySF4Za3H8kpOJ9RxX91gxdvz+eDdAVd7tX3Xi7qlD
	3tpsuQdM3wBEwmBPTDRnfFPVU6gOPKnkCZ2tj06W0NZAhnwnrAXyVi0zr4cNA7BmD/JT8oXyEQsHW
	siK+isVvPYdlXizaKduNy7qPvvteQi1O4Ta4pExxPd5GL/hr1/q01waJDeDbY8uZsRUEf98FgMGps
	FCPXYGadVK3+cfKqkUUxlCu1E/1eBwfx7I/JfIi0KHW4266XGMxZT4bTPsBGweziLHDhppi3qXYuh
	8TKPJt3nCrcHYzXsN1nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTAV-00A61I-0c;
	Mon, 15 Jan 2024 20:02:47 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTAR-00A5yo-1I;
	Mon, 15 Jan 2024 20:02:45 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a26ed1e05c7so1090093266b.2;
        Mon, 15 Jan 2024 12:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705348959; x=1705953759; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fv9XBLOpYPAupVH4VJlqIAgoTeB9qFyrwGApny5s9n4=;
        b=mjuSzKLoMAtNaNKWXICZa/dS9QA2GT8JFa70EGZwJyWuudYdUNoY+CjsUbl2w8v4mq
         zPC0id1c4O916zUNZIihHaefE8XCDs5nM7ke4peUvfYqUdHP4Y1QBa+CoTDt5n4t9W2b
         oHYJBZLb4qGYv5VSAhFycXdT71GsWelbBeRzG/H3fSF2AAko5vr5AIGguMfWRERrD4Z+
         44mUFQ3CzHCwujDYv3+5sTx9LoYF+PoiIWB8O8PHJeOKeGN8pWjqwkvIskfxTou0ozpR
         KmNtkOhEk5NXPXdzGUdjge/0m7w2uevfQNjUI6jpzSlIrlMdE7+g6bnFRPbMcM9tF7Aa
         oTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705348959; x=1705953759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fv9XBLOpYPAupVH4VJlqIAgoTeB9qFyrwGApny5s9n4=;
        b=DHsNTiAplQC5AKxVirx4AhsjuhLRlZDFjuGBhnzSXNoFJoFpIkmOLnR0DQRgY9LARW
         DVsDPWGMAgW1l942zBYG9vngVy6n4IMT5Xwk5j82hEhHuTzQ1veRrEmzoUM/Z9FIdNyf
         cV7BTTm4iRk8IiznmnLJra+f7WfLD54uEz9wQCmJxR6AkQi8+DqtohC4vd8gisgnrgrW
         aA5PD1RZFUxB+JV6nd4BaI4hULkCK4wRb9UqFEMWsiVZzxPB5ZWVLJQZ1F2KGFa0TK2L
         9ejctHcYo6BU6Kgd1xccWO2XpI2xwNOUCh6MfycnP5mXRD41w9knIRC1PsKKnm0Fr7M9
         WwWg==
X-Gm-Message-State: AOJu0YzAfSFdJL/yykiJCX8gx9CjlTJvVqPNBcBk4g9+hW6BZuBuZWm9
	HgHlX9a3PhveimXYSYLsRP8UuTheID6iOfLiYxw=
X-Google-Smtp-Source: AGHT+IFGtkui4lng3GSiRYoHvFlRcvlu7L0C2EI9PWrxqxFGpBJHPQ/cYp9p96ExxQEDsVPdlsgZU/bzCs9OSzxXglE=
X-Received: by 2002:a17:906:b053:b0:a2a:7404:cf5d with SMTP id
 bj19-20020a170906b05300b00a2a7404cf5dmr2017687ejb.114.1705348959235; Mon, 15
 Jan 2024 12:02:39 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com> <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Jan 2024 22:02:01 +0200
Message-ID: <CAHp75Verff06LE0QFaDRoun=ANpGfVU1tHknvvQZd_KyzLVP5Q@mail.gmail.com>
Subject: Re: [PATCH 02/14] pinctrl: pinctrl-single: move suspend/resume to suspend_noirq/resume_noirq
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
X-CRM114-CacheID: sfid-20240115_120243_438303_8470E488 
X-CRM114-Status: GOOD (  10.66  )
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
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBUaGUgZ29hbCBpcyB0byBleHRlbmQgdGhl
IGFjdGl2ZSBwZXJpb2Qgb2YgcGluY3RybC4KPiBTb21lIGRldmljZXMgbWF5IG5lZWQgYWN0aXZl
IHBpbmN0cmwgYWZ0ZXIgc3VzcGVuZCBhbmQvb3IgYmVmb3JlIHJlc3VtZS4KPiBTbyBtb3ZlIHN1
c3BlbmQvcmVzdW1lIHRvIHN1c3BlbmRfbm9pcnEvcmVzdW1lX25vaXJxIHRvIGhhdmUgYWN0aXZl
Cj4gcGluY3RybCB1bnRpbCBzdXNwZW5kX25vaXJxIChpbmNsdWRlZCksIGFuZCBmcm9tIHJlc3Vt
ZV9ub2lycQo+IChpbmNsdWRlZCkuCgotPi4uLmNhbGxiYWNrLi4uKCkKKFNhbWUgY29tbWVudCBJ
IGhhdmUgZ2l2ZW4gZm9yIHRoZSBmaXJzdCBwYXRjaCkKCi4uLgoKPiAgICAgICAgIHN0cnVjdCBw
Y3NfZGV2aWNlICpwY3M7Cj4KPiAtICAgICAgIHBjcyA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBk
ZXYpOwo+ICsgICAgICAgcGNzID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gICAgICAgICBpZiAo
IXBjcykKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CgpEcm9wIGRlYWQgY29kZS4K
VGhpcyBzaG91bGQgYmUgc2ltcGxlIG9uZSBsaW5lIGFmdGVyIHlvdXIgY2hhbmdlLgoKICAgICAg
IHN0cnVjdCBwY3NfZGV2aWNlICpwY3MgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKCi4uLgoKPiAg
ICAgICAgIHN0cnVjdCBwY3NfZGV2aWNlICpwY3M7Cj4KPiAtICAgICAgIHBjcyA9IHBsYXRmb3Jt
X2dldF9kcnZkYXRhKHBkZXYpOwo+ICsgICAgICAgcGNzID0gZGV2X2dldF9kcnZkYXRhKGRldik7
Cj4gICAgICAgICBpZiAoIXBjcykKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CgpE
aXR0by4KCi4uLgoKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHBpbmN0cmxfc2lu
Z2xlX3BtX29wcyA9IHsKPiArICAgICAgIFNFVF9OT0lSUV9TWVNURU1fU0xFRVBfUE1fT1BTKHBp
bmN0cmxfc2luZ2xlX3N1c3BlbmRfbm9pcnEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBwaW5jdHJsX3NpbmdsZV9yZXN1bWVfbm9pcnEpCj4gK307CgpVc2UgcHJvcGVy
IC8gbW9kZXJuIG1hY3JvLgoKLi4uCgo+ICAjZW5kaWYKCldoeSBpZmRlZmVycnkgaXMgbmVlZGVk
IChlc3AuIHRha2luZyBpbnRvIGFjY291bnQgcG1fcHRyKCkgdXNlIGJlbG93KT8KCi0tIApXaXRo
IEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
