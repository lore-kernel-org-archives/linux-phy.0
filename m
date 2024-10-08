Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8EFCCEF174
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 13:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QslyDJ/1Si0gVj3MK0C2+k6me6FUlNZv96N7C0OneiY=; b=DM92hwXnd2vH6n
	OAA3nlS7Vc41Wwt3ANS1g1JwwUokPTLCo1C86cTSnxeqSl9ETWGn5Rb8McGe+TfRJn1iyPvGytlli
	8JYbyLIf/UzouBqzfmhoTL5jg/2oWDdJeoAKUE0q+ab/+9ET4pbk3fAbMp2d/HEIuCCOh8ljQ8rAx
	QMhNsMTa1uSwTS5W+K3ogYelNRIlCGbt0BdCgGLDy0rHEm98v/9ovH18udCjwadMOZFXorPodexAD
	9wvgNm4EQIxTtNcglownxJvQgPMpneoLREl7EGqkI7jzUR7OqN+bSM4a955TXxM7domt0pfJ75ro3
	DKRt9UI1N63vDT502v8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syANP-000000060z1-2TO9;
	Tue, 08 Oct 2024 13:35:47 +0000
Received: from mail-yw1-f180.google.com ([209.85.128.180])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syADb-00000005yZn-1TKQ;
	Tue, 08 Oct 2024 13:25:40 +0000
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6e2e424ab49so23047857b3.3;
        Tue, 08 Oct 2024 06:25:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728393937; x=1728998737;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1eTUczWLqVNXasZJjw/6MkuEU30oFDIHMIf/C0sqcKE=;
        b=LxL2jcaH0EjMVo5tcVMfWNkOmQnzdbepYJJHuK041ff94oAd4DOqhKn/wilcVNMMkF
         M+9nNBED8ZGgRV+Wu0wi9WUWPLYuiAc9W92w8RvrF0wOGFDHwDfG5b+VVOuK0S5oErDp
         6QVZYycjS9vobSZOKbfeeL+f+3JSqhgMjo6Dz216dFtPgBa8GwJcHBFfei2m+rr4PD+C
         mJ1Zq60dF0yAyg44RcBfdMSiapPMWoJL7X3U5A2584ReOHa/7/bDO1iXL306KAKAOthY
         fIousG1Ki3ZEf/p+nx8LJPL0veNglsi28JJAfcB7NP+vocDcae0l8w0AJi47uf48Dsyr
         a6CA==
X-Forwarded-Encrypted: i=1; AJvYcCVvV7MB+kQ8yWxEhDR5iUCyeGz8+bGC8MWVMGtEhyPdU5K0YYhe81nM2f5wT/glfxe0kGfI3aJjJMYQ4w5bTvKk@lists.infradead.org, AJvYcCVxir8+FZsv6FJh7RPB9PAdhg7soLmoD2XH/oB4aqizWSNLW9ng1LOQKxKfv0FJutn/4karTZfx6INl@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3NJVjTQgyFwx+fznoXGp/H8pkfvAdoyYVNo+hehZVBsnlgWmC
	1WLkjxKZi0QQ4mtKrmYx/2m6lHvu0CG59DQk15n3Q+F2T33v/3NzmbI5UiKk
X-Google-Smtp-Source: AGHT+IFDwuN/vmEkfCcXt4P8tIsC5YAX36G16TLQ9aPeXrd4Qolu5JpRheNT4Rv+30gRO8Szp0p7XQ==
X-Received: by 2002:a05:690c:4a07:b0:6e2:1b46:27c1 with SMTP id 00721157ae682-6e2c72bb5b9mr112242927b3.45.1728393937019;
        Tue, 08 Oct 2024 06:25:37 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d93e9951sm14287347b3.122.2024.10.08.06.25.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 06:25:35 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6e2e508bd28so21400087b3.2;
        Tue, 08 Oct 2024 06:25:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVvr7Yf/RYxVQQ53Nz881I5+2EFQjC4G4cBvnHEakBxLfq2AdiBtpyEYb4bbzSX73oFV1tMHK/KCNwDeX8N0x+M@lists.infradead.org, AJvYcCXRe/NZCVm3xIE+ZBRMLhY17PFgqW/gxE5ZmQci2zu/hI6Pdei+uqPPMeaBFaW9gZXCwrkoANLKJ4Pw@lists.infradead.org
X-Received: by 2002:a05:690c:2e0d:b0:6db:db7b:891c with SMTP id
 00721157ae682-6e2c6ff8368mr89381207b3.14.1728393933660; Tue, 08 Oct 2024
 06:25:33 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-4-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-4-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 15:25:21 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW+OoOghaRdSgxY0cA7eeE1+N+CUetQXx1Rnt9d0wyd9g@mail.gmail.com>
Message-ID: <CAMuHMdW+OoOghaRdSgxY0cA7eeE1+N+CUetQXx1Rnt9d0wyd9g@mail.gmail.com>
Subject: Re: [PATCH 03/16] dt-bindings: reset: renesas,r9a08g045-sysc: Add
 reset IDs for RZ/G3S SYSC reset
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	ulf.hansson@linaro.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_062539_416005_FA0D0ADE 
X-CRM114-Status: GOOD (  13.60  )
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

T24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENsYXVkaXUgPGNsYXVkaXUuYmV6bmVh
QHR1eG9uLmRldj4gd3JvdGU6Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVh
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gQWRkIHJlc2V0IElEcyBmb3IgdGhlIFJlbmVzYXMgUlov
RzNTIFNZU0MgcmVzZXQgY29udHJvbGxlciBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1
ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+CgpSZXZpZXdlZC1i
eTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGpl
LGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0
ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxp
bnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBl
b3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
