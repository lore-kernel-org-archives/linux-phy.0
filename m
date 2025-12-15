Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64848D5B852
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 16:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNObeX/JoSs2/ISGfkHVXSxdR6K7JPDTkgYpy8LzTRg=; b=RoOC5YeTIsWz4u
	luqV6EG2gjJFFEjx0fAJnAWHuz2TQK1738ilTwJ4mj1su9v5rtKjuqqwRZxa6JUekE3ocTq7luMZb
	zVlKd4VM2LMZlr186MFTsMyQ/qLo2oyNSpdCW4pJcI0VmrbBzHs2ALkzvN6byHwWk4XVIZRrHo2Xd
	xXAG4mLHarMBelEnRH7bqz+DAcB8zn8ChPECH/NPh7XuGXSe/y09uwrb5EeWOBT80hh7SYI5vMamT
	iEmAiXsZXMgZ1r4cOT5kveUkW5MUfFKqdQ7R8k6C48UCLi2OdB418jD2AVXGX777Blt79TiklKYAe
	o8nikOIZS18GkOdPwBCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBTH-00000003zKs-3geN;
	Mon, 15 Dec 2025 16:30:51 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBTD-00000003zKK-3TLy
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 16:30:50 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 06E561A21E9;
	Mon, 15 Dec 2025 16:30:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CE22D60664;
	Mon, 15 Dec 2025 16:30:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 64EAD119426BE;
	Mon, 15 Dec 2025 17:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765816244; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=QF0a2d33ceWGEkE+JlJ9v7Vx9rNUh7hXKpLn5YyCvvc=;
	b=b/2TsJQCxsrDCyqAit+mCBvkpYAvhFDHIWx/MS8yXW6MI6gytG1BbV0q2aipA/pULv8mq8
	yXqpyd5/KmToROssOh1ypUWoVWuMVs/NhwnEbUcEvrVngLLjFZkEv6h3xqMUTHw8TEGKN5
	MlyLBQdacKRzQkpshouWWv5WBTvTp90YJHQkfpbNjxpn+GIWTyUrAKKM0sHbSpkuE8dt6l
	M6h2WhI901vGItG3UiwTTjOOuM6MhmwzuIw3Zg+tvlQ6ytiAcesHHeqQlU3CTrE5tp5bpQ
	s6OAIunOjGUaNZukMcJVuEjlRPTS9eNDrAZiYe5MsLTQdkoFfYHcCAXUDIsyaw==
Mime-Version: 1.0
Date: Mon, 15 Dec 2025 17:30:41 +0100
Message-Id: <DEYXM6CGJULV.1KKA37ZLEIW1K@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v4 2/7] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>,
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-2-955c625a81a7@bootlin.com>
 <DEUNYYW0Y23E.2SA0SOCS99NA0@bootlin.com>
 <DEYVVCWBOZSH.2ZY41YCHLS8FU@bootlin.com>
 <DEYVXJI90AA7.KPDEQCNZOOXI@bootlin.com>
In-Reply-To: <DEYVXJI90AA7.KPDEQCNZOOXI@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_083048_062193_3D74D99D 
X-CRM114-Status: UNSURE (   9.97  )
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

T24gTW9uIERlYyAxNSwgMjAyNSBhdCA0OjExIFBNIENFVCwgTHVjYSBDZXJlc29saSB3cm90ZToK
PiBPbiBNb24gRGVjIDE1LCAyMDI1IGF0IDQ6MDggUE0gQ0VULCBUaMOpbyBMZWJydW4gd3JvdGU6
Cj4+IE9uIFdlZCBEZWMgMTAsIDIwMjUgYXQgNTowNiBQTSBDRVQsIEx1Y2EgQ2VyZXNvbGkgd3Jv
dGU6Cj4+PiBPbiBNb24gTm92IDI0LCAyMDI1IGF0IDM6NDEgUE0gQ0VULCBUaMOpbyBMZWJydW4g
d3JvdGU6Cj4+Pj4gKwlwcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRl
diwgZXE1X3BoeV94bGF0ZSk7Cj4+Pj4gKwlpZiAoSVNfRVJSKHByb3ZpZGVyKSkgewo+Pj4+ICsJ
CWRldl9lcnIoZGV2LCAicmVnaXN0ZXJpbmcgcHJvdmlkZXIgZmFpbGVkXG4iKTsKPj4+PiArCQly
ZXR1cm4gUFRSX0VSUihwcm92aWRlcik7Cj4+Pj4gKwl9Cj4+Pgo+Pj4gQXMgYWJvdmUsIHdoeSBu
b3QgZGV2X2Vycl9wcm9iZSgpPwo+Pgo+PiBHb29kIGlkZWEgb25jZSBhZ2Fpbi4KPj4KPj4+IE90
aGVyIHRoYW4gdGhlIGFib3ZlIG1pbm9yIGlzc3VlcywgTEdUTS4gVGhpcyBkcml2ZXIgbG9va3Mg
Y2xlYW5seQo+Pj4gaW1wbGVtZW50ZWQuCj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4gRG9l
cyB0aGF0IGltcGx5IEkgY2FuIGFwcGVuZCB5b3VyIFJiIHRyYWlsZXI/Cj4KPiBJZiB5b3UgYXBw
bHkgYWxsIHRoZSBjaGFuZ2VzIEkgaGF2ZSBtZW50aW9uLCB5ZXMsIGJ1dCBpbiBkb3VidCB5b3Ug
Y2FuCj4gYXZvaWQgaXQgYW5kIEknbGwgcmV2aWV3IHlvdXIgbmV4dCB2ZXJzaW9uLiBSZS1yZXZp
ZXdpbmcgaXMgbXVjaCBmYXN0ZXIKPiB0aGFuIHJldmlld2luZyB0aGUgZmlyc3QgdGltZSAobGFz
dCBmYW1vdXMgd29yZHMpLgoKSSd2ZSB0YWtlbiB0aGUgUmIgdHJhaWxlciwgaG9waW5nIGV2ZXJ5
dGhpbmcgaXMgdG8geW91ciB0YXN0ZS4KCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAy
NTEyMTUtbWFjYi1waHktdjUtMC1hOWRmZWEzOWRhMzRAYm9vdGxpbi5jb20vCgpUaGFua3MsCgot
LQpUaMOpbyBMZWJydW4sIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVl
cmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
