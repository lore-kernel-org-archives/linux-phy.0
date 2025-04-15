Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C331C369B2
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 00:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2ACpEzFr00mT0dCZVXT4LFbdRfRtkOTiboJ2+a5kBw=; b=UuV+5untgYjTZh
	uI1pNMc+XLVz47eFjBFFcQTMH7vQUQTUorBCP7WHvocyfRquF6Jb+49E8J6z4Wv80Ai/go7Z7k+99
	dsELCcpAiiZQnAhTnMhil20j/i7ZgBbm0OrTs9MEqHvEGkJ7vB2SasiPmDBeqoU/1hW9LjP3BnwsO
	0EG15mvtVysC/8fUUrNaXJMEZO3r8uPDkqleRT/1D9LeIqPJ2m7Ns+nbJ/M20PkfjZWAUbj5ADLhL
	K9Ej0xYhGLC9ForBKCmrbvesIHiHZXf5LYC1OWMGlMvmrpbLkdIiPmeulvVAs9BGDUgKvopDwotCw
	PnQIet3fA2UpemH12/cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4UUv-000000043Ba-3Xeq;
	Tue, 15 Apr 2025 00:49:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4UT6-0000000433G-1CKA;
	Tue, 15 Apr 2025 00:48:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AAD2044817;
	Tue, 15 Apr 2025 00:48:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AC51C4CEEC;
	Tue, 15 Apr 2025 00:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744678083;
	bh=RctWjOi2giJst7wLG7hJMf+486uMe6AiP6atMkwHVFY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rYUJEomi3t13v0k52FKZq1BfWI8eGCDRGljAyJxToldcbr/ynOjQkMsdwWECFTdi4
	 c7rJKZQFv1uEbNg3G7iys7O2BOZqzbut+enjmj7WmmAriF/jPbGsW9SiB6ITKmBmhl
	 2xUM75bT8eeqbiJfSGc+THgHhDh0s/E8TAdvQQZ5PTJ601jo+gFD9XJ8xdb/zjQ94x
	 SIluMEXi2Lu7fBl4mK9wbzHGKAR9Wd7xIg+MWq+07V1K0czh7Hu2z3xsgzcWFK3JNJ
	 TLjklGfuuB4ruIKMIjlBiFDgjbVYJFXE48AGHUA0Ba34rxsjVdt0MIlwSEG7Mh4TX4
	 eNTt6U6Auy1Cg==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5ed1ac116e3so7385795a12.3;
        Mon, 14 Apr 2025 17:48:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUaFccndpl+VrrnX1cEsyuh5dKWnaFFpLhzB4Wm1dv0QpUvAp/GBzUQvRn9nwKtxCfgVP91mO4IY7BDjv0v5ks=@lists.infradead.org, AJvYcCXW53ItvB4VSK/Homxs2fJEjYFpP6SSF1bDxwpR+K1GdFX7TTagXbvKgXbz7Y7djq/UKCtms9mhY3yd25WYkYGX@lists.infradead.org
X-Gm-Message-State: AOJu0YwBQYnt0CtHO1L6ZJBwj6fQ3iJaGSt+anI7KsnvGlLV91ogSAXp
	lSAA70ZUwtCu1ENY7KDKOE1EvKGZuvz5t9DFiG6bxEM1Iyl/tF6noEkSbGAVW8ZmZOxuT5SAsOm
	ypg3H6O2uBXMMndVhisOvTOq0oQ==
X-Google-Smtp-Source: AGHT+IFFPfOrrDqgzpv3auvBWL0e6nlb0egIXX4wtTdxuwO1Kxz4UxhZv8bMmjzVcyJ70rS0tg3eelf7AFPeC8n1FUc=
X-Received: by 2002:a05:6402:2711:b0:5e5:be7f:a1f6 with SMTP id
 4fb4d7f45d1cf-5f36f527034mr10329827a12.1.1744678082088; Mon, 14 Apr 2025
 17:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225311.1913480-1-robh@kernel.org>
In-Reply-To: <20250414225311.1913480-1-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Apr 2025 19:47:50 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+D832Dq6oHO6Vxg=oMEA6drwWpgUqwHS+5f3s8-LBNeQ@mail.gmail.com>
X-Gm-Features: ATxdqUGRL_jz_WBTa5GmqkL_V7H8md2ow6s-ckR8Dq1jEmPSQe6gYDCQzg7ci0U
Message-ID: <CAL_Jsq+D832Dq6oHO6Vxg=oMEA6drwWpgUqwHS+5f3s8-LBNeQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: rockchip: Convert RK3399 PCIe PHY to schema
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_174804_343127_76EBB81D 
X-CRM114-Status: UNSURE (   8.29  )
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

T24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgNTo1NOKAr1BNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gQ29udmVydCB0aGUgUm9ja2NoaXAgUkszMzk5IFBDSWUg
UEhZIHRvIERUIHNjaGVtYSBmb3JtYXQuIE1vdmUgdGhlCj4gZXhhbXBsZSB0byB0aGUgR1JGIGJp
bmRpbmcgYXMgdGhhdCBoYXMgdGhlIGNvbXBsZXRlIGJsb2NrLgo+Cj4gU2lnbmVkLW9mZi1ieTog
Um9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgLi4uL2JpbmRpbmdz
L3BoeS9yb2NrY2hpcC1wY2llLXBoeS50eHQgICAgICAgIHwgMzYgLS0tLS0tLS0tLS0tLS0tLS0t
LQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwgfCAxMyAr
KysrKy0tCgpTaWdoLiBGb3Jnb3QgdGhlIG5ldyBzY2hlbWEuLi4KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
