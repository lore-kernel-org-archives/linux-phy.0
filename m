Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5DE6E77182
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izVThdeDD/DlFVVr7jmlSqBnvKn76mJh1UFQk7Zz8g8=; b=PI5+vPVOA9AO34
	j8UTMJCq6rGK82C5tiFyZRLfZCQb+o1GHvmKlviWsvVfzpdZBhyfPJpBbXeMUCS6iSSJBI7UZjeyA
	sK4KR8ti7vqfhlLKxb4Zab2JCom3LFMzUNYUKGOejbKXMuAPXdXuFQMtiQ0EXY/uNAYc/ifx+zFtv
	oo9G0o2646ia51so+ldNxh1sjnxlCVVx03RHsmbNaVkpEnxWif/752GSf0kx2Cvlu1782M9ClyIEQ
	joYWo8QGPQiHdR2rW42t+I6QCtyToxcI4HutNQMYpe+WdixdQzDXS7bcuKpoTUbSOfHwqpnKS4D/Y
	SV6dP2/I3jhoyocnrTuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1ld-0000000Bt1F-2Hhy;
	Tue, 10 Dec 2024 15:03:17 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1lb-0000000Bt0h-1tOZ
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:03:16 +0000
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b6cf666ab9so231024685a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:03:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733842992; x=1734447792;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmXqIocA1G1xcFIUFx0xQafi68mSgezdKyyOt2V02OM=;
        b=ZcQGenkTQn8KZgAnr4l1eSmA5320eHS/yHjnzG1e0Wxd+oxNnXhJenjhnt8h80R5EQ
         uKI4geEELmWoXVMnNTXLAe5yxaJYX7aXde3unzEhbz2lqbhyZEihU4CBkodAFWX8fsTn
         tSWBR3q52+ty7zOTogh/+K9TGqV2b5thtrhfPqyGcg22+WsBNJ4E969L+6NWCD4ES4Eg
         YAp/UCZO79W7Zf8ruS7k6HdekLhFZYXPA+eMe0iZTmqeED+W5fq9LYZZ/eq0hrM4R2bZ
         hBou+khz0C7m+KIakrzDO3m51dGikm/8XR2b5CElx4QkMBWX+PbNjX7E1CGhM0A4cH41
         rfqw==
X-Forwarded-Encrypted: i=1; AJvYcCWwPX6PDGNAYn6gbhoeOUentaPqr2V8UPDKkigzB75Us3MSBxOB8fmNHtF7YHiqbq+QbBeX1kySFek=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYk6e4Q7TjXMKtRrHKBiUiDyY4eW8zFdbKrLDlLtD3zXuPvrQM
	WqKiprVzZFfYd97heoYca+N1dGlv6YyJaFDQAf/ldcBg36B8hEbSTYvuShbb
X-Gm-Gg: ASbGnctUoMJXUhV2nIOqVXNopZ32knRIuK7dIdEoyuv//yWDoFkUDaoZ2o1Sz6l8seP
	bPPRFbCGG2YvV1ZEj2p506rR7fsxck5uPqlzNOegWgqdw952CZb0UuegRr+jgIxVf6zjwY/mkIw
	1RRbSmuK6qUQf99ZudySkkDYmom1Znw6t55+wqGOduSYOHJeiBZ4Y+ddFOD3FvqyCqx5mGEbAfi
	kjFA2XryKd1OT/1PvVarvfUZ0yqafyd/S//64KtAPzXG3oDad01ctnktEJDt96FWe/3ohVdoJd6
	Mtu8HmOWnSyiZzM/GCfq
X-Google-Smtp-Source: AGHT+IHFGp9dQENclxMHls1r+TPbl6nxI9BwemS0tcX2gjAqk/qIm87uoXWy1UXcOh7vedzFbRG3VQ==
X-Received: by 2002:a05:620a:4390:b0:7b1:21c4:ecf8 with SMTP id af79cd13be357-7b6de79e84emr617989885a.28.1733842992192;
        Tue, 10 Dec 2024 07:03:12 -0800 (PST)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com. [209.85.222.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b6e8d4a261sm27440485a.104.2024.12.10.07.03.11
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:03:11 -0800 (PST)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7b6e9317a2aso22642285a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:03:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWtwSJsyQbKNb7ZvGqt69zsk23nSH6l3tGCY3xg58RrjsKTEuknrCDZKo+CnRi5LY4KO7pVIkQLpRA=@lists.infradead.org
X-Received: by 2002:a05:620a:4408:b0:7b6:d611:ce6f with SMTP id
 af79cd13be357-7b6de6e6475mr504839085a.8.1733842990849; Tue, 10 Dec 2024
 07:03:10 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-9-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-9-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:02:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVRtmEhKwXHBb4yAxmSBX6G0hmi=7eZ4koOptHYx4kbng@mail.gmail.com>
Message-ID: <CAMuHMdVRtmEhKwXHBb4yAxmSBX6G0hmi=7eZ4koOptHYx4kbng@mail.gmail.com>
Subject: Re: [PATCH v2 08/15] dt-bindings: phy: renesas,usb2-phy: Add renesas,sysc-signal
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com, 
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_070315_489420_B1B74C4F 
X-CRM114-Status: GOOD (  19.10  )
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

T24gVHVlLCBOb3YgMjYsIDIwMjQgYXQgMTA6MjHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5l
YS51akBicC5yZW5lc2FzLmNvbT4KPgo+IE9uIHRoZSBSZW5lc2FzIFJaL0czUyBTb0MsIHRoZSBV
U0IgUEhZIHJlY2VpdmVzIGEgc2lnbmFsIGZyb20gdGhlIHN5c3RlbQo+IGNvbnRyb2xsZXIgdGhh
dCBuZWVkIHRvIGJlIGRlLWFzc2VydGVkL2Fzc2VydGVkIHdoZW4gcG93ZXIgaXMgdHVybmVkCj4g
b24vb2ZmLiBUaGlzIHNpZ25hbCwgY2FsbGVkIFBXUlJEWSwgaXMgY29udHJvbGxlZCB0aHJvdWdo
IGEgc3BlY2lmaWMKPiByZWdpc3RlciBpbiB0aGUgc3lzdGVtIGNvbnRyb2xsZXIgbWVtb3J5IHNw
YWNlLgo+Cj4gQWRkIHRoZSByZW5lc2FzLHN5c2Mtc2lnbmFsIERUIHByb3BlcnR5IHRvIGRlc2Ny
aWJlIHRoZSByZWxhdGlvbiBiL3cgdGhlCj4gc3lzdGVtIGNvbnRyb2xsZXIgYW5kIHRoZSBVU0Ig
UEhZIG9uIHRoZSBSZW5lc2FzIFJaL0czUy4gVGhpcyBwcm9wZXJ0eQo+IHByb3ZpZGVzIGEgcGhh
bmRsZSB0byB0aGUgc3lzdGVtIGNvbnRyb2xsZXIsIGFsb25nIHdpdGggdGhlIG9mZnNldCB3aXRo
aW4KPiB0aGUgc3lzdGVtIGNvbnRyb2xsZXIgbWVtb3J5IHNwYWNlIHRoYXQgbWFuYWdlcyB0aGUg
c2lnbmFsIGFuZCBhIGJpdG1hc2sKPiB0aGF0IGluZGljYXRlcyB0aGUgc3BlY2lmaWMgYml0cyBy
ZXF1aXJlZCB0byBjb250cm9sIHRoZSBzaWduYWwuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1
IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+CgpSZXZpZXdlZC1ieTog
R2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVl
dGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJo
b2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4
LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3Bs
ZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5h
bGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
