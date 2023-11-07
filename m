Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA2DEC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 07:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zT0Ad+S+O46U5PAEobr9gIjjoiuyZXqv6dR8VMMeyBs=; b=Cawga+O3w94rdX
	u05B6q1s1NLif94T25mW5Bl2LUx9Q3qG/ocPtffmJRyS57JyxtiOhXlRZOpZeDD4Lx0iBzhkvV/A7
	ZLhgUSj8kxFtG/X/qZpVIh1cdRJ4g9TI35/NW7aKzaC+hKB4j4o8JSov32O6rnpkZT1KJM4Zr4E+0
	dYoLoPrBW62/gAaC0lU/mr09bf/JZ3E1m7Dq5HZBZ0lZoP7KLbYwbQglDMhW/VNOd4VPM9ZLVINZi
	AYwn8GNo3H7Lbr+D/4urHzPBe17lT+bL6gCp2U772NyoOtuGUJM1UzqqifdervHqtqCkzuOr1QrQn
	1hHgZCw0eMHIvDmtiJMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0G75-000gSi-1y;
	Tue, 07 Nov 2023 07:03:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0G73-000gRz-1S
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 07:03:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C48E6118C;
	Tue,  7 Nov 2023 07:03:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14915C433C7;
	Tue,  7 Nov 2023 07:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699340579;
	bh=JDRGlM9lrsHUhV43a6D7wVaw0GwPSvbuJMm3TbmECDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0kjZWwChfUkzXoNI3F0xNtc+Hxuv7g98mWrYubOvkUH6fWwAeBIJcpNktzR7Aakl9
	 dUPzVJkP4xdUYhFSJ6ybb/rFX5zqT9/V/nQW5HkOzauL3MsfDkY3YmL3Pj9INU33Us
	 e1EtFqahjL0WXs5LHsi8XuoiBtMtfqc7TBImUTMQ=
Date: Tue, 7 Nov 2023 08:02:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan+linaro@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 0/3] Revert "usb: phy: add usb phy notify port status API"
Message-ID: <2023110713-morphine-mortuary-337e@gregkh>
References: <20231106110654.31090-1-johan+linaro@kernel.org>
 <2023110623-pointing-stump-643d@gregkh>
 <ZUjM/VEliT5c8H4C@matsya>
 <28e77cbc531248bf913ceedba6425cf6@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28e77cbc531248bf913ceedba6425cf6@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_230301_533009_CE694DAA 
X-CRM114-Status: UNSURE (   9.22  )
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

T24gVHVlLCBOb3YgMDcsIDIwMjMgYXQgMDY6NDQ6MjZBTSArMDAwMCwgU3RhbmxleSBDaGFuZ1vm
mIzogrLlvrddIHdyb3RlOgo+IEhpIEpvaGFuIGFuZCBWaW5vZCwKPiAKPiBJIG1vZGlmaWVkIHRo
ZSBSZWFsdGVrIHBoeSB0byBzb2x2ZSB0aGlzIGlzc3VlIGFuZCBvbmx5IHVzZSB0aGUgZ2VuZXJp
YyBQSFkuCj4gQW5kIHN1Ym1pdHRlZCB0aGVzZSBwYXRjaGVzIHRvZGF5IGFzIGZvbGxvd3MKPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC11c2IvMjAyMzExMDcwNjM1MTguMjc4MjQtMS1z
dGFubGV5X2NoYW5nQHJlYWx0ZWsuY29tLwo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXVzYi8yMDIzMTEwNzA2MzUxOC4yNzgyNC0yLXN0YW5sZXlfY2hhbmdAcmVhbHRlay5jb20vCj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtdXNiLzIwMjMxMTA3MDYzNTE4LjI3ODI0LTMt
c3RhbmxleV9jaGFuZ0ByZWFsdGVrLmNvbS8KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC11c2IvMjAyMzExMDcwNjM1MTguMjc4MjQtNC1zdGFubGV5X2NoYW5nQHJlYWx0ZWsuY29tLwo+
IAo+IEkgZG9uJ3QgdGhpbmsgdGhpcyBwYXRjaCBpcyBuZWVkZWQgdG8gcmV2ZXJ0IGEwODc5OWNm
MTdjMiAoInVzYjpwaHk6IE5ldyB1c2IgcGh5IG5vdGlmaWNhdGlvbiBwb3J0IHN0YXR1cyBBUEki
KS4KCkkgaGFkIGFscmVhZHkgYXBwbGllZCB0aG9zZSByZXZlcnRzIHllc3RlcmRheSwgYnV0IGZv
cmdvdCB0byBwdXNoIHRoZW0Kb3V0IChzb3JyeSBhYm91dCB0aGF0LCBub3cgZml4ZWQuKSAgTGV0
J3Mgc3RhcnQgb3ZlciBoZXJlIGFuZCB5b3UgY2FuCnJlYmFzZSB5b3VyIG5ldyBzZXJpZXMgb24g
dGhlIDYuNy1yYzEuCgp0aGFua3MsCgpncmVnIGstaAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
