Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9351CD8CAE
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 05:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rArp59N/x/i8CThG7rTywlZvw3+peiB7atHI8pbn0vY=; b=lPPIjxDeNj7v1e
	QXE8DUQLPA2T52rGjzwP7ixW9lpqIhi9Kc7JpWTrCGmfu1zXQtOynAObJrYsw65f6bCi4aJZOf3aJ
	fJaPaM6qKympqJ4Y+rhZc8zVqu71l4IFQBNjTzGSiOnstK6OgreDqugb4E6Ebz1z+z930f4SDK2gn
	HUSrZrPlSlb+ocSUWUDrayZ7Tdn5irNFZF+s6M/qvkgNvp7RtVX8NoCXQjGXSDdMhqFz1DHIKpQt8
	ZaTaZ0eorYm0mFVF0GCnzazHb/rEg0g3DXxQDTi3DvFlIho+pBNVux1542crCGi2R3nTRMfBUNM9k
	aDpKBnp4eMgD6mpDLvCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWp7n-00000004lEk-09WI;
	Tue, 09 Jun 2026 05:35:43 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWp7k-00000004lEE-129B;
	Tue, 09 Jun 2026 05:35:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1780983323; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PVW9w59KiqODY+5AC3EOr1QN4kqQw1VMcG020fokPnJ6vmQinqKfDpnipyU4S3JznovbCVzKCRTUOzFPLo7bNAHMNhFf48e5M+6jfEFMOPPPwg/O4+eRvMm6lvtBKWKJzGKa98ePF1+qTA81dPBXrNRmwaD/Z815Biyvc1WnRuo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1780983323; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=aeyRk661Z8pMzzMr6vizd11aGoPyzX0vz8JfiH5ebRs=; 
	b=X0l1rbTmOwFsso0BkZxalGmfPDVUdnnSSkv+fW86sbVCKL0N63dm2xcr0e/Qf3gE4zW79W5fyL0lCYRcvbp23jQwzBHnDTNjCZOrZUCdqfrqqTx2ra4pJr6n3o3SncObsiTvfOeIpUXReO1FPJ/RiPm4h0jWEfBArHjY2K5gxtg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1780983322;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=aeyRk661Z8pMzzMr6vizd11aGoPyzX0vz8JfiH5ebRs=;
	b=GBX+wSO/sD6gTvgRkNoKNACIb8KP2A1OCKjUn03fEQ9YRERDNuPHy70jdqBQizJe
	E16Td4uLRmNwu6fRtEBLihtpmsiW1StMTgH/m+2dGRNCEW8c9B6L2rjese5buX459eK
	nz9l1ky0avX/B4XDOg7G5jBFAP1UfRYZ8AtsGbCW/RfLjOnEK5lLRXbR63IoHvaZrq6
	4EL/nx1CdthUtyQC0fXrjf6PDj2VrVww3bQ/JXQUws18HScCYGrKlgCQf1DA7Tp4pVw
	bYEhJHUsM5H12u7Td+vR7msim8kEoGU4wehoThgnmJJF+/++Akso6zBoY8eFkKp6UAC
	gl3+OlNeYQ==
Received: by mx.zohomail.com with SMTPS id 178098332120521.424882624077895;
	Mon, 8 Jun 2026 22:35:21 -0700 (PDT)
Message-ID: <67790d90737c13127100510020262d6921810e34.camel@icenowy.me>
Subject: Re: [PATCH 03/12] riscv: dts: thead: add device tree node for MISC
 clock controller
From: Icenowy Zheng <uwu@icenowy.me>
To: Drew Fustini <fustini@kernel.org>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Michael Turquette
	 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong	
 <neil.armstrong@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  Paul Walmsley	 <pjw@kernel.org>, Palmer
 Dabbelt <palmer@dabbelt.com>, Albert Ou	 <aou@eecs.berkeley.edu>, Alexandre
 Ghiti <alex@ghiti.fr>, Jisheng Zhang	 <jszhang@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, 	linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org, 	linux-usb@vger.kernel.org, Han Gao
 <rabenda.cn@gmail.com>, Yao Zi	 <ziyao@disroot.org>
Date: Tue, 09 Jun 2026 13:35:11 +0800
In-Reply-To: <aiehUzl-qZeZDjXP@thelio>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
	 <20260507081710.4090814-4-zhengxingda@iscas.ac.cn>
	 <aiehUzl-qZeZDjXP@thelio>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_223540_386559_86903E28 
X-CRM114-Status: GOOD (  11.12  )
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

5ZyoIDIwMjYtMDYtMDjkuIDnmoQgMjI6MTQgLTA3MDDvvIxEcmV3IEZ1c3RpbmnlhpnpgZPvvJoK
PiBPbiBUaHUsIE1heSAwNywgMjAyNiBhdCAwNDoxNzowMVBNICswODAwLCBJY2Vub3d5IFpoZW5n
IHdyb3RlOgo+ID4gVGhlIE1JU0NfU1VCU1lTIGNsb2NrIGNvbnRyb2xsZXIgb24gVEgxNTIwIFNv
QyBpcyBhIGNsb2NrCj4gPiBjb250cm9sbGVyCj4gPiBtYWlubHkgY29udHJvbGxpbmcgVVNCLXJl
bGF0ZWQgY2xvY2tzICh3aGljaCBpc24ndCB1dGlsaXplZCB5ZXQpCj4gPiBhbmQKPiA+IE1NQy9T
RCBjb250cm9sbGVycycgQUhCIGJ1cyBjbG9ja3MuCj4gPiAKPiA+IEFkZCB0aGUgZGV2aWNlIHRy
ZWUgbm9kZSBmb3IgaXQgYWxvbmcgd2l0aCB0aGUgbWlzc2luZyBidXMgY2xvY2sKPiA+IHJlZmVy
ZW5jZXMgZm9yIE1NQy9TRCBjb250cm9sbGVycy4KPiAKPiBJcyB0aGVyZSBhIGZ1bmN0aW9uYWwg
cmVhc29uIHRvIG1vZGlmeSB0aGUgbW1jIG5vZGVzIGluIHRoaXMgc2VyaWVzPwoKV2hlbiB0aGUg
Y2xvY2sgaXNuJ3QgcmVmZXJlbmNlZCwgTGludXggd2lsbCBkaXNhYmxlIGl0IHVubGVzcwpgY2xr
X2lnbm9yZV91bnVzZWRgIHBhcmFtZXRlciBpcyBwYXNzZWQuCgpUaGFua3MsCkljZW5vd3kKCj4g
Cj4gVGhhbmtzLAo+IERyZXcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
