Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B1EFC47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTsdXvvwXfBaX8nFqb3qdI/0bBrhC/QMh13E7JlbNqo=; b=JGj+N9ahq22dE5
	bMFHDWtPYtbwL9NyIQ7EwogxEHWL06NnykYCCYeNGQ6POe3oXAV+skIGBTM50C5JxnECfA5NMcW1V
	rcxLr666uY+EiznNkjMPEGGrm4067j8CtAuLsgxb+6i0uZwVafu1jvcPzHShX9GluFb8IZS/38/yI
	lek3hG1V/R2BFHxCPzvejEZ6b7W+ytaSbnoK6/JqMUN3B5qJPnWqW1JEFWhKaMsc1GqUEhr5hlisT
	Wq2DaWNyvJY7R6E30RXgnqkmvdFDe6zAJHt93grXdopm67d6wglpfmE1yOzOyOPFoG4pT5nm47xJK
	fBpdkl/IyXc5xPtVTIjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU1a-00000005VHZ-3aSa;
	Fri, 26 Jan 2024 21:46:10 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU1X-00000005VGt-278L;
	Fri, 26 Jan 2024 21:46:08 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a28a6cef709so80960166b.1;
        Fri, 26 Jan 2024 13:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706305566; x=1706910366; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HQkL6ngwMWDmrq3Sj7a3dyToWvz/1Fxwyt+zP1pM9/I=;
        b=Z/WF0V9oIQwGrSAeuHEIipxfaj0pYM+X1F7io1Q3SK56IQ3EPBJBhQi10DWsnB1Szb
         HtMz0rqRYeM0edMlFGVidbDKxnRnnLpsJ4r3dEPfYyfiviBrl6oqYFzvbYYgdxGWxEj8
         0NoKBed1Sl+MYvJc8g5eZ+ggm44jByx31+VqzLZW6uQKrlJylX3ujqX3s77J56q3guhJ
         hr23YrTwihPSoA1f2oRIKrLm2L2YWCrltRYggmdw9ZRyQipaYGEmnxm7z+1hjTGlrPU/
         0Ve6iQTCx54oZWjdpuGXbthO/XCyxhfzmyJPbd5D9iCAwEIaer8d7k0S3vWEAFvSyNwe
         VN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706305566; x=1706910366;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQkL6ngwMWDmrq3Sj7a3dyToWvz/1Fxwyt+zP1pM9/I=;
        b=oQ7xLmupZMkTQfKh1FdDVVVfTe6CFsuZQINuGNtJzp9QSsGq7vG1UCjCDUGE1os6QR
         j8AUF0DPsg4/Xg5r26KitxkFOBbYgNPDECyXq7nXEQZkgV0N0CFBFMabTzFRKZaCbfJr
         OQuWsKBBbBBjZipxkhJbHygBfnAqf2JJPw6er88Ntu+5ACkIJB2Wg5mlVOIpM1TiyKmb
         5cQMEzMA6rjfLSVkU+s0A0+LwdhBhm63lQUboWT96eQYyBfI5qu8+FTCC+Ss9u1Sy7hX
         lipbGe62HUvFRnMuVyBU2jozoO5PeR9oYWELlwxnd0RkXB8YEpDtBmSgTKBmNSHVLQ5x
         Bxkg==
X-Gm-Message-State: AOJu0YzvKcKJ+FowXyl9A6R2OTyuBksL5UroHwCtq+/UwWY2nVy7zGb/
	6ULgz2g2yvdc+PqbqVyU0htWSBPyjuIE2Af9qbtcJQV4pPLxnjdV6XyagWKXHgbt6+hXJZx9vVA
	qo3HsabL+mrC5fQZr5ZgFWc+HZ9E=
X-Google-Smtp-Source: AGHT+IFuaN66sH/Q1hNZyw9mZrIx0mYKhx0F1IQ/t/bx/vsOS7NFf3pBAuGabC39Y7mXEG7N/TyC/Sukm+qc+ZnwxjE=
X-Received: by 2002:a17:906:f858:b0:a30:a4d4:b4a9 with SMTP id
 ks24-20020a170906f85800b00a30a4d4b4a9mr206016ejb.44.1706305566044; Fri, 26
 Jan 2024 13:46:06 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-9-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-9-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:45:29 +0200
Message-ID: <CAHp75Ve440129bHZ3e7Sq1EsGtEzSwYaGfgAPfiN0LE7bw6oXQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] phy: cadence-torrent: register resets even if
 the phy is already configured
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
X-CRM114-CacheID: sfid-20240126_134607_564302_2CA247FF 
X-CRM114-Status: UNSURE (   8.96  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgNDozOeKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBSZXNldHMgYXJlIG5lZWRlZCBkdXJpbmcg
c3VzcGVuZCBhbmQgcmVzdW1lIHN0YWdlcy4KPiBTbyB0aGV5IHNoYWxsIGJlIHJlZ2lzdGVyZWQg
ZHVyaW5nIHRoZSBwcm9iZSBldmVuIHRoZSBwaHkgaXMgYWxyZWFkeQo+IGluaXRpYWxpemVkLgo+
Cj4gVGhlIGZ1bmN0aW9uIGNkbnNfdG9ycmVudF9yZXNldCBpcyByZW5hbWVkIGNkbnNfdG9ycmVu
dF9vZl9nZXRfcmVzZXQgdG8KPiBtYWtlIGl0IGNsZWFyLgoKRnVuY3Rpb25zIGFyZSByZWZlcnJl
ZCB0byBhcyBmdW5jKCkuCkl0IGlzIGFsc28gYXBwbGljYWJsZSB0byBvdGhlciBjb21taXQgbWVz
c2FnZXMgaW4gdGhpcyBzZXJpZXMuCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNo
ZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
