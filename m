Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 047ECC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 01:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YX2iKxY5agkw6Uk1a3ndlVOEgoUTec9Fq2vxo6BTdVE=; b=K40sQsITHkfQRW
	VZ0/8Bjeumdf8ncr7O57XoKEap72g05+EVwnAoFrP8df3+THPM8eT1Zk0jD5zPQYurKR7rLtdarEd
	QEhzEonMntsWElh+OcKdSVj8rUPXySWvCTzT96rMps/N5tXxZnSUwD8ikd4Ecx72VTxoQelsjMgLy
	JyZIgxiOeM/Vcu2T1xIjjuQd3uNu4eA65yffdgQZgF345Gzs26mVoLNAp9p9k3pvtRuxCBRjuCfvU
	v1d6F5eth+O8VfcNLLzZ3EneYKlgvMnLafzcIcvDo6LhryDzOkVhwx0zHYkaR+A1X3L57kSf3CwhP
	MzPs0+K3+nCl9G1mzyfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNP9d-002r7m-8M; Fri, 25 Feb 2022 01:12:17 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNP9Z-002r75-TX
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 01:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1645751533; x=1677287533;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LufNjz8E8edDYYHLaymtIUjPsqaiuNBQVhZrRsR6Ze4=;
 b=gYfia//AFmgJ1JHWmCjZiQYYizHiVWmNx9VTP0qAhyFQ+jtG7Vh+Y/8m
 pMnzFF0Ad+XSjHuW4x71fZ0DywKaiX+ZEePdYsy8rqc2pKdxTXyOQP2Kh
 FEzLBjeXpIxEJZK5Ih3AQ1ys9IPhxanfZ5qq2rhPkMu3Owoq2vtpuiY6S
 ijWw0Wlow6uRdX73kvqzG4QyC9yYhBBmPPrXikBihTDIN0Ix7sNgbrbjZ
 fQHyPz9RUfPrDJq2tmw2Hs0ZfOPRzLaD8TWBPvuNnU4sAxXI0qTDCKyAX
 5anvpiJKHaCNuoYqGZtHLCO3FSVgjzgWmtMDV/kY4pe4yWPKWpw+Ogb0o Q==;
X-IronPort-AV: E=Sophos;i="5.90,134,1643644800"; d="scan'208";a="305803914"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 25 Feb 2022 09:12:00 +0800
IronPort-SDR: 03NS0EGFXtcm8GBkD4vM8WiXcfZltCtyb0r8P4It5Dmfa8eeknNHzvyJRgCDEagHP/dRetVap4
 TQwKboOw/5ewBk3cfheUhQZhGAA/de5ehNMiDfye8k3mPyxQ0N5KwGL1XezXV1iIvWx8pcP0si
 Jg6SU41l1EtXYUNA+v+rOPjmJhAoiRDqtCulNNle/s1Ibv0rioyigjj9lkwxo6Ab7qnQKZMhnV
 3EZGnvEAkXcpPebvVBZEP8HSiQvHvN9G4Tr7HSqbS+oJ/uDE+RFW/M2zGpfwOPkRzwfLmPyvU4
 Fks69pbOv9Tup15RZXnxl4tg
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 16:44:34 -0800
IronPort-SDR: Gff2XxNq7ex+G8hF8dcIzmhvlqVDl73gvS/K/tazHb53IwFnQEUZ0lSnYwal4yMF9YO188xRTc
 MXg6rkM/UAgklvkMwPDxniyDZnGEU12BSNs/FMQX+8ABMeCCB+yQhsl6cZzDoB176oMhP+7Z7I
 lfrMylLQGTic0KbRyrgxFJqiSfHLFkv2M4W1QYHMROal4NhOXeOGO+Oz7KZiD6YY5FKy8OOQdf
 Hqc10TBzorCx3ZAvQ0mG+dI+/ADrKCbJPfXGUOCHC4gIiDxyavmfN/vTi15GdgcJsULZwZOFKP
 3LI=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 17:12:00 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4K4Wvh1Jb6z1Rwrw
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 17:12:00 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1645751519; x=1648343520; bh=LufNjz8E8edDYYHLaymtIUjPsqaiuNBQVhZ
 rRsR6Ze4=; b=D1tJJFgPUFrXEVGyLvj38OAnpNnH2nu9HY7L6iPTcXjfzHahZ2+
 OkRIu4O6ZYDXwTHkb4LMRHvT6o2UVAzOyx2jySHy729DXJH4it2A4d8Gd88andpr
 dVdKsPFJNM1brzrkdYfwtP8c8xP9UjwujhgvdOH0MDhQaLTZkkJNrx7yxnr8likI
 e7Fe81DtoOV8FLe4ND+e4Iq0JlOi91h1kp/hGHLTF+paim9WqNCHOE8KgNtOfet9
 SWiFST07HxYIXmKJgYHZcRdQ2RD+rGBusRWrn7p7/F7RN2B4HzSu8DQGLUo2eD3E
 izzbbO02h8VZLBxWIwsAs6hywuIQuCWxnug==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id ji1rPgN5XP82 for <linux-phy@lists.infradead.org>;
 Thu, 24 Feb 2022 17:11:59 -0800 (PST)
Received: from [10.225.163.81] (unknown [10.225.163.81])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4K4Wvf6Sklz1Rvlx;
 Thu, 24 Feb 2022 17:11:58 -0800 (PST)
Message-ID: <49ef22b8-9a29-b153-397a-ffd94fd27ecc@opensource.wdc.com>
Date: Fri, 25 Feb 2022 10:11:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH phy v4 3/5] Revert "ata: ahci: mvebu: Make SATA PHY
 optional for Armada 3720"
Content-Language: en-US
To: =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 pali@kernel.org
References: <20220203214444.1508-1-kabel@kernel.org>
 <20220203214444.1508-4-kabel@kernel.org> <20220224161324.6ac0061c@dellmb>
 <6082e3a5-aaf7-f876-b1ec-c6627fba1503@kernel.dk>
 <20220224163738.7da04b51@dellmb>
 <c6a1d5ca-255b-9a3d-aad2-9c3dc4dd68a3@opensource.wdc.com>
 <20220225004300.1bd1405e@thinkpad>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220225004300.1bd1405e@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_171214_053255_85BC9CAF 
X-CRM114-Status: GOOD (  17.19  )
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

T24gMi8yNS8yMiAwODo0MywgTWFyZWsgQmVow7puIHdyb3RlOgo+IE9uIEZyaSwgMjUgRmViIDIw
MjIgMDc6MzM6NDggKzA5MDAKPiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEBvcGVuc291
cmNlLndkYy5jb20+IHdyb3RlOgo+IAo+PiBPbiAyLzI1LzIyIDAwOjM3LCBNYXJlayBCZWjDum4g
d3JvdGU6Cj4+PiBPbiBUaHUsIDI0IEZlYiAyMDIyIDA4OjE0OjU4IC0wNzAwCj4+PiBKZW5zIEF4
Ym9lIDxheGJvZUBrZXJuZWwuZGs+IHdyb3RlOgo+Pj4gICAKPj4+PiBPbiAyLzI0LzIyIDg6MTMg
QU0sIE1hcmVrIEJlaD9uIHdyb3RlOiAgCj4+Pj4+IERlYXIgSmVucywKPj4+Pj4KPj4+Pj4gY291
bGQgeW91IHBsZWFzZSBzZW5kIEFjayBmb3IgdGhpcyBwYXRjaD8KPj4+Pj4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtcGh5LzIwMjIwMjAzMjE0NDQ0LjE1MDgtNC1rYWJlbEBrZXJuZWwu
b3JnLwo+Pj4+Pgo+Pj4+PiBJdCBpcyBhIHJldmVydCBvZiBhbm90aGVyIHBhdGNoIHRoYXQgd2Fz
IGFkZGVkIGJlY2F1c2Ugb2YgcG90ZW50aWFsCj4+Pj4+IHByb2JsZW1zIGluIGNvbXBoeSBkcml2
ZXIsIGFuZCB0aGVzZSBhcmUgbm93IHNvbHZlZCBieSB0aGlzIHNlcmllcywgYnV0Cj4+Pj4+IFZp
bm9kIHNheXMgaGUgY2FuIGFwcGx5IHRoZSBBVEEgcGF0Y2ggYnV0IGhlIG5lZWRzIHlvdXIgQWNr
LiAgICAKPj4+Pgo+Pj4+IEknbSBub3QgbWFpbnRhaW5pbmcgbGliYXRhIGFueW1vcmUsIGFkZGlu
ZyBEYW1pZW4gd2hvJ3MgdGhlIG5ldwo+Pj4+IG1haW50YWluZXIuIExlYXZpbmcgZW1haWwgYmVs
b3cuICAKPj4+Cj4+PiBEZWFyIERhbWllbiwKPj4+IGNvdWxkIHlvdSBsb29rIGF0IHRoaXMgcmV2
ZXJ0IGFuZCBnaXZlIHlvdXIgQWNrPyBTZWUgdGhlIHF1b3RlZCBtZXNzYWdlCj4+PiBmb3IgSmVu
cy4gIAo+Pgo+PiBUaGUgcGF0Y2ggbG9vayBPSyB0byBtZS4gQnV0IEkgaGF2ZSBub3QgcmVjZWl2
ZWQgaXQsIG5vciBkbyBJIHNlZSBpdCBpbgo+PiBsaW51eC1pZGUgbGlzdC4gUGxlYXNlIHJlc2Vu
ZCBpdCB0byBtZSBhbmQgbGludXgtaWRlIHNvIHRoYXQgSSBjYW4gYXBwbHkKPj4gaXQgdG9nZXRo
ZXIgd2l0aCBvdGhlciBsaWJhdGEgZml4ZXMuCj4gCj4gRGVhciBEYW1pZW4sCj4gCj4gdGhpcyBu
ZWVkcyB0byBiZSBhcHBsaWVkIG9ubHkgYWZ0ZXIgdGhlIGZpcnN0IHR3byBwYXRjaGVzIG9mIHRo
YXQKPiBzZXJpZXMgYXJlIGFwcGxpZWQgdmlhIGxpbnV4LXBoeSwgc28gd2Ugd291bGQgbGlrZSBh
bGwgb2YgdGhlbSB0byBnZXQKPiBhcHBsaWVkIGJ5IFZpbm9kIHZpYSBsaW51eC1waHkgaWYgcG9z
c2libGUuIElmIHlvdSdyZSBub3QgY29tZm9ydGFibGUKPiB3aXRoIHRoYXQgcGxlYXNlIGxldCBt
ZSBrbm93IGFuZCB3ZSdsbCB0cnkgYW5vdGhlciBzb2x1dGlvbi4KPiAKPiBJIGNhbiBib3VuY2Ug
dGhlIHBhdGNoIHRvIGxpbnV4LWlkZS4gU2hvdWxkIEkgYWxzbyBib3VuY2UgdGhlIHdob2xlCj4g
c2VyaWVzLCBvciB0aGF0IHBhdGNoIG9ubHk/CgpHb3QgaXQuIFRoZW4gZmVlbCBmcmVlIHRvIGFk
ZDoKCkFja2VkLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndk
Yy5jb20+CgpCdXQgaW4gdGhlIGZ1dHVyZSwgcGxlYXNlIENDIG1lIGFuZCBsaW51eC1pZGUgb24g
cGF0Y2hlcyB0b3VjaGluZyBBVEEKY29kZS9kcml2ZXJzLgoKPiAKPiBNYXJlawoKCi0tIApEYW1p
ZW4gTGUgTW9hbApXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
