Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC64E77180
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV8POytZVvYfDx1T5iocM2j1CAaRRMSNb6Id8RunGLM=; b=Ok5tqApnv7YzUu
	l8JkAgowuzSGT33rA5FfODfxJVrWkunoTpdt0TGgTEwVWFY3TRnI9Ib67hzQYxhCuJRbGRHZSwfZI
	RNq8cCrzxZ0hJwYkNlxXf6e3UmpNgV2Gu9o7P+wlqPW83nk8yR8ejKas5NeWzL8+Dx3DrM8iXten/
	6f7QtgHElzBCXuO9y17QkXSKrClZpJ4HkQfsOZFujPcYxFSNk3V3TlHNB7Ksb96KlBXqCLEISRDq9
	5LT63O1dbcg49Y54zYp4uSDUu9hcc1FszU7tbjDSlDrRd/sCXHSlOnhmE/gskh8PUh6BvEaIRaAzQ
	BNVRBurywggaxG3Nm6Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2D2-0000000BxKV-3Otb;
	Tue, 10 Dec 2024 15:31:36 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL2D0-0000000BxJA-0JjD
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:31:35 +0000
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4674c597f2eso17810651cf.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:31:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733844692; x=1734449492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bvkDKTKiNoo1ealOS02lkDBKr/zdbL5bowKhEQIzcag=;
        b=md7jf8kq+dmBU+JS/tnIg5ihKfNyeM/cyci7cbtQOjMTjQLNFE9KKyEt0OYbx/uF5Z
         3pINFh4O6BC5yUbo0udOjz/B4LCCeXDNkhZ7Fi8lV+eKooSBPmGzA+hDUzJUCIpajmjQ
         n6nHRB9FpLk17pb1kbyeluRBirtuR0eLyLCV7KdypGgBZDAb7mLnHIDVuhYkrdwTjpgM
         JzP5CYsq6NmK0v9yKx8yrubv5ZX5IGPQ9U6vQ/UlRcUd5rFS5eeUUuxxqM5kicTVW3JR
         J/4oehDXAEfPd48hui6k0hjl27YrbnTp3GKqPZzGCoJOmcOM+xmHZAj9YmjPwNTS5AEt
         qtig==
X-Forwarded-Encrypted: i=1; AJvYcCXt7y9Jkgk/oJqzdgiBQkADu+AIhGolqBejBMHi2E7kJQkO6rcN1J+VIC/Q77Fcc9jXxAavr7EJm6I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWpVwiyoJ2V08gpB5C9CtYns7JNC0y8RtmbcwEITIgtrP/gplM
	xhzZLxPwT5fTyODiDxuS1c807hQ1P9ggJR8RgbPfJu5iX0AtEHOh0rtLPmcx
X-Gm-Gg: ASbGnctCBob3px8qRNsurSBsyUTLQgM0qpDr0xvYPt6upYbfzHOAMWrFjaDtSx7UmNQ
	ydiTaA0nSkQRxWeIFHMK1NZjda0PEViguTgVMrJTah8L5HFS6U71w79F1Sh6O1VYau3Za8fBtU5
	apxSIUuKkwYdcWlj5Ypypm/KjjZ1sQ+HkrikfvoPDCadegTDJucwadxQeUP2TbyTD6Mpu3Em+De
	d+nJlfaemBcI3D98Z+kLTPTmkc0yyTZ9cYBV6yxMLVXzt2c7njZO/8DKegMJdW9keznbDNd1rkg
	bFPXkhIDuMDW2hWAaYSS
X-Google-Smtp-Source: AGHT+IH/x7klfUEcSWhcFbd/n1zQ3u1OyUo9GZ4qlELp5kJMsGa5BjOz7i0P57J0CNGfpMrzxK+gng==
X-Received: by 2002:a05:622a:13d1:b0:467:5cfb:bd3c with SMTP id d75a77b69052e-4675cfbc2c2mr146623411cf.20.1733844692289;
        Tue, 10 Dec 2024 07:31:32 -0800 (PST)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com. [209.85.222.172])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46764d04355sm22887841cf.54.2024.12.10.07.31.32
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:31:32 -0800 (PST)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7b6d63ab374so127058685a.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:31:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU3Nxsppe/0odlMc2KuskwpTtHjEF6U1sPTnB9bU/XP0dqdJ9DlhX0MhFWsVj0RHJjfIptQyQNomr4=@lists.infradead.org
X-Received: by 2002:a05:620a:29d6:b0:7b6:d273:9b44 with SMTP id
 af79cd13be357-7b6d2739e80mr1380681885a.18.1733844691902; Tue, 10 Dec 2024
 07:31:31 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-14-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-14-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:31:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXv3=pEfx9YiXqh1nFfa0jVD-TRoaxfije8KuzkA4A_dA@mail.gmail.com>
Message-ID: <CAMuHMdXv3=pEfx9YiXqh1nFfa0jVD-TRoaxfije8KuzkA4A_dA@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: renesas: r9a08g045: Enable the
 system controller
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, 
	yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_073134_111937_89261535 
X-CRM114-Status: GOOD (  17.00  )
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

SGkgQ2xhdWRpdSwKCk9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0IDEwOjIx4oCvQU0gQ2xhdWRpdSA8
Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8
Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4KPiBFbmFibGUgdGhlIHN5c3RlbSBj
b250cm9sbGVyLiBJdCBpcyBuZWVkZWQgZm9yIFVTQiBhbmQgU29DCj4gaWRlbnRpZmljYXRpb24u
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAu
cmVuZXNhcy5jb20+CgpUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCgo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVuZXNhcy9yOWEwOGcwNDUuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcmVuZXNhcy9yOWEwOGcwNDUuZHRzaQo+IEBAIC0yMDcsNyArMjA3LDYgQEAgc3lzYzogc3lz
dGVtLWNvbnRyb2xsZXJAMTEwMjAwMDAgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIGludGVy
cnVwdC1uYW1lcyA9ICJscG1faW50IiwgImNhNTVzdGJ5ZG9uZV9pbnQiLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjbTMzc3RieXJfaW50IiwgImNhNTVfZGVu
eSI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgI3JlbmVzYXMsc3lzYy1zaWduYWwtY2VsbHMg
PSA8Mj47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiAg
ICAgICAgICAgICAgICAgfTsKClBsZWFzZSBlbmFibGUgaXQgb24gYWxsIG1lbWJlcnMgb2YgdGhl
IFJaL0cyTCBmYW1pbHksIGFuZCBjb21iaW5lCnRoaXMgd2l0aCAiW1BBVENIIHYyIDEyLzE1XSIu
CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLQpH
ZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0t
IGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVj
aG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtp
bmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxp
a2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxk
cwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
