Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF6A6CA5FF5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 21:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYzMxVMMMtZs6Kfywv0LukWUFUNl8ma81d1pYTWjnN8=; b=pOZ0taz0uFKioE
	3MX+Wyg7FqU+FdJhBf/zISAxZ/+yOoHCEyDZGaoXT/cDW3k46N6LU6t5drgIJVnyqdMgr1aNYD5vC
	wIinQAs9Gw9/qBvbs0FmD7chBTUKwXghRvpDhzJf6zylBAmAKFfi58Nnnf2yTIn4KzW4hKwEhYbfC
	hZhQQ394d1/zl+kBkJaQwJ/fAGDrgoXF9Z02tD83Kxf2R/N7xzITkIY1WcJ8ByWFNweuOpOQqMV09
	g1yJvUknzB8w+Gtx6iBRRgR3TlzjEtYfyUg33zahVdUB7c1EVacqwk8s3vH7m0hzxai5umrJooA2Z
	CRGYbx1CCc/UsEYppjnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq1s-0000000HBUw-1XXL;
	Mon, 05 Oct 2026 21:15:24 +0000
Received: from mail-ed2-x0b.google.com ([2a00:1450:4864:33::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq1o-0000000HBTH-3XZW
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 21:15:22 +0000
Received: by mail-ed2-x0b.google.com with SMTP id 4fb4d7f45d1cf-6aaf76d8881so1203432a12.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 14:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791234918; cv=none;
        d=google.com; s=arc-20260327;
        b=frWuh9RSCEC+zBr0iewKu/n3XMMcTMlcDnr2E6SXA4BZSywLgYjnFjRyCdkENP9HWJ
         Tqzf+Jj8tamuw+jk9i5Mz68O3UGxndsxF5iMJZrdAQXTNPYGO145qp3/v+34olDimAq+
         DCPu5Lzfikr7mkTNmYPbs2LUDcdnieBXG4RkHA4pg9nMDlfnnioYgraETLVOlME6Cs+K
         K1NOebTnottOG67MG5fJYMgXsXH0BDOfd2l1U0vq691qjFwdTjgf1+jKa0U69PpfBl8r
         djEhyTYV4OgbmgbPEqUrJLvfDtmxr3RkHyskyClDEdXm0y+CByf5UHJro7hyt/0A59ZX
         tJfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v463Ztb7l8HkbYlND0+jy6OLKJauaplyxKRrplRmY1k=;
        fh=z/dp/wtwxf/PB4o9gkQaqEz0g0IWKEx4k61TI+MDFpM=;
        b=SLClMHRFuMak+VmGgEHqv+ublk5O57icQU/7DixU2ih2aYWwBiqBBiYE7h1ie6FjnF
         4VXOikbJimAH1tgGINiVdzZP2g5ZlUcnzFOBCWZl5CB4j/3O0OaMDwqUvxpHziP1HU76
         w0BcmohCcuLMV+K1lwhDfUxlseHvfTb9XONU7vFnMbprqo/TupY/5sPaMqiiuPiy5hKq
         8wLBQTv8ROyQCKY9Hun2JY/5sv2OfIGCjYrcI9PuP/rQFsP8miBh3J/nDoRfL9kT26xI
         +Sr8L1/CxMNVqgKkhKbpOjKlCIt43EJQqglpJI99qHQEFvKpyhuK3bWLE1PqsgLL4RX2
         imQg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791234918; x=1791839718; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=v463Ztb7l8HkbYlND0+jy6OLKJauaplyxKRrplRmY1k=;
        b=dSRTaO8dWwoAqpFXB3yfnsnJRwJiL3GQ4k2pMks1ShBnzp3nT9VQP9SCqwJGvUMGCH
         zhQ7VSGh+xKB9KHKqbMJIRL0oSf5mOfhsxFYK+sjxqeQmlIGpHfg/VMjzACjeK6rDd53
         EPn0Ap2Pxy8M994hY6/1yFzOsUWEj/GjTONp7B18s3FgbiUO68znsJmdBtUt4/aftCP/
         /cYKBIllW7rKTSbb7h716pbe9jOXhicRSKe5ZRyrtY1BrPp/qUY39B44RovSCprHVkvl
         ljV+Nzf6AXPJhS8SutRljRweNQrTlooN+M2le60gOXNxHDbXXo3BdwgImWLIWe20Osxw
         NV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791234918; x=1791839718;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v463Ztb7l8HkbYlND0+jy6OLKJauaplyxKRrplRmY1k=;
        b=hl8HTJICYvMrmZXCM3T4ctMrP+jDlaubkoZjcRnuvM3ErumWzt3xT/csLvJfWP0KoE
         DVjglCNP4/6yPJP7eUg0pUjiu5AN1ZjpePAxc7v5/mz8ro8RZ0NpT4CAlwHzTeHQNmD0
         fsezC7BJ9G4+UGvsJVid1DBpYqL214n6lD6DC0NGao33LT4spiHezEAuobA7y7HwvOhL
         9118QPA9J/f3UHJPd8kpV3p9getTKg/vS/DumOm9Z2IUmH4KafCnhVqUWcD29JJI6IGv
         eLqeoSwJt3WblpQZz7nJff9LTOXUqWWBJ6NJeJ3Mq3OwaYkHCaQn5+rl+yf8jnXFzhEW
         dFBg==
X-Forwarded-Encrypted: i=1; AKwUvBwvRbNOFp0GvI614V3BXguup6jJsoDVn4x/l/KlStVaoTBTUmp9YOE1ADc9RNpYZbzOgCNWa7Z1kMM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJTIvcBvycluqSwNJLkBLZYu3AO5vYD9j7C6C8IPQZ3FSf44iLp
	KkSLvwuCOjZ6g2T5JSFUPgk+FQz53ysFiymmIw5cen16DMiImcW30WBpfckn+Orc/+Br9NRuu8X
	7bmSz9hiJDYohwl4DuKNdyVC8q+SjTXc=
X-Gm-Gg: AYBFou1rr8VX+cFOIFe0S6Z5d6YLB0++7YyMDO3uB3aI36mW8+yX3sjoatuxlymXsyk
	Jmw4EQp2sQu00CFJjZwSqKMOC9Voh+WH2L4AGSX7YfVItlURN5RTlGv1SDu5v0pgLag8+K8NAsm
	22Ezi4UHpYMHGc0Ua1jpiHzrYhFyyfILwGt3/0wZtbg0qnYURpqOalPQ/EmXS5ThHr8xifL8tIu
	+90Pz+sm1I0VwxDrXCET+7IOXH1D6Kc37V6M0SjbKTsch9u0cEKefB1a51Z+uTgPcWDcr1VcUxk
	9y2A1p+rKPqZ1rAeF1BBemzLPvxpGOyiHI5yGmZfyJfS10T/7FnqmvlyRQ==
X-Received: by 2002:a17:907:7215:b0:c2d:bd95:874a with SMTP id
 a640c23a62f3a-c2e4ad79199mr1112515766b.17.1791234918176; Mon, 05 Oct 2026
 14:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-4-coiaprant@gmail.com>
 <20261005135939.01ccde50@kernel.org>
In-Reply-To: <20261005135939.01ccde50@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 05:15:07 +0800
X-Gm-Features: AclHuK-hmC2IHermBe0I62cu-4Uo5MfOk7srVIbtbJ9DQ0aB5gykKJWKnA3WMzU
Message-ID: <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
Subject: Re: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_141520_883328_4FE14F0E 
X-CRM114-Status: GOOD (  24.22  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAwNDo1OeWGmemBk++8mgo+Cj4gT24gV2VkLCAyMyBTZXAgMjAyNiAwNDowMzoyNyArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gT24gUkszNTY4LCB0aGUgU0dNSUkgaW50ZXJmYWNlIGNhbiBi
ZSByb3V0ZWQgdG8gZWl0aGVyIEdNQUMwIG9yCj4gPiBHTUFDMSB2aWEgdGhlIEdSRiByZWdpc3Rl
ciBwaXBlX3NnbWlpX21hY19zZWwuCj4gPgo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoaXMgc2VsZWN0
aW9uIGJ5IGludHJvZHVjaW5nCj4gPiB0aGUgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiIERUIHBy
b3BlcnR5Lgo+ID4KPiA+IEZyb20gdGhlIFJLMzU2OCBUUk0gKFBhcnQxLCBQYWdlIDIyOSksIHRo
ZSBQSVBFX0dSRl9YUENTX0NPTjAKPiA+IGJpdCAxIChwaXBlX3NnbWlpX21hY19zZWwpIGlzIGRl
ZmluZWQgYXM6Cj4gPgo+ID4gICAgIDA6IFNHTUlJIHJvdXRlZCB0byBHTUFDMAo+ID4gICAgIDE6
IFNHTUlJIHJvdXRlZCB0byBHTUFDMQo+ID4KPiA+IFRoZSBoYXJkd2FyZSByZXNldCB2YWx1ZSBp
cyAxIChHTUFDMSkuIElmIHRoZSBwcm9wZXJ0eSBpcyBzZXQgdG8gMCwKPiA+IHRoZSBkcml2ZXIg
cm91dGVzIFNHTUlJIHRvIEdNQUMwOyBpZiBzZXQgdG8gMSAob3Igb21pdHRlZCksIGl0Cj4gPiBy
ZW1haW5zIGF0IEdNQUMxLgo+ID4KPiA+IFRoaXMgaXMgbmVjZXNzYXJ5IGZvciBib2FyZHMgc3Vj
aCBhcyB0aGUgQXJpYWJvYXJkIFBob3RvbmljYXQsIHdoaWNoCj4gPiB1c2VzIHRoZSBTR01JSSBp
bnRlcmZhY2UgY29ubmVjdGVkIHRvIEdNQUMwLgo+ID4KPiA+IE91dC1vZi1yYW5nZSB2YWx1ZXMg
YXJlIHJlamVjdGVkIGJ5IGR0c2NoZW1hLCBzbyB0aGUgZHJpdmVyIGRvZXMgbm90Cj4gPiBkdXBs
aWNhdGUgdGhlIHJhbmdlIGNoZWNrLgo+Cj4gV2hpbGUgbG9va2luZyB0aHJ1IHRoZSBwYXRjaGVz
IGFnYWluIEkgbm90aWNlZCB0aGlzIGlzIGNoYW5naW5nIGdlbmVyaWMKPiBQSFkuIE1heWJlIHlv
dSBjYW4gc2VuZCBpdCBzZXBhcmF0ZWx5IHRvIFZpbm9kPyBJIGRvbid0IHNlZSBhIGhhcmQKPiBk
ZXBlbmRlbmN5PyBUaGUgY29kZSBjYW4gImNvbnZlcmdlIiBkdXJpbmcgdGhlIG1lcmdlIHdpbmRv
dyBmb3IgdGhlCj4gd2hvbGUgdGhpbmcgdG8gd29yay4KCkhpIEpha3ViLAoKVGhhbmtzIGZvciB0
aGUgc3VnZ2VzdGlvbi4gSSBsb29rZWQgYXQgdGhpcyBhZ2FpbiwgYW5kIEkgdGhpbmsgdGhlCmRl
cGVuZGVuY3kgaXMgYSBiaXQgbW9yZSBpbnZvbHZlZCB0aGFuIGl0IG1pZ2h0IHNlZW0uCgpUaGUg
UEhZIHBhdGNoICgwMy8xMSkgYWRkcyB0aGUgZHJpdmVyIHN1cHBvcnQgZm9yCiJyb2NrY2hpcCxz
Z21paS1tYWMtc2VsIiwgd2hpY2ggaXMgZG9jdW1lbnRlZCBieSB0aGUgUEhZIGJpbmRpbmcgKDAy
LzExKS4KVGhlIERUUyBwYXRjaCAoMTAvMTEpIHRoZW4gdXNlcyB0aGlzIHByb3BlcnR5LiBJZiBJ
IHNlbmQgMDMvMTEgc2VwYXJhdGVseQp0byBWaW5vZCBhbmQga2VlcCAxMC8xMSBpbiBuZXQtbmV4
dCwgZHRic19jaGVjayB3aWxsIGZsYWcgdGhlIERUUyBwcm9wZXJ0eQphcyB1bmRvY3VtZW50ZWQg
dW50aWwgdGhlIFBIWSBiaW5kaW5nIGxhbmRzIGluIG1haW5saW5lLiBUaGF0IHdvdWxkIGJyZWFr
CkRUUyB2YWxpZGF0aW9uIGZvciB0aGUgbmV0LW5leHQgc2VyaWVzLgoKQWxzbywgc3BsaXR0aW5n
IGludG8gc2VwYXJhdGUgc2VyaWVzIG1lYW5zIGVhY2ggaGFzIHRvIHF1ZXVlIGFuZCBnZXQKcmV2
aWV3ZWQgaW5kZXBlbmRlbnRseSwgd2hpY2ggSSdtIHdvcnJpZWQgbWlnaHQgbm90IGFsbCBtYWtl
IHRoZSBtZXJnZQp3aW5kb3cgaW4gdGltZS4KClNvIHVubGVzcyB5b3Ugc3Ryb25nbHkgcHJlZmVy
IHNwbGl0dGluZywgSSdkIHJhdGhlciBrZWVwIHRoZSB3aG9sZSBzZXJpZXMKdG9nZXRoZXIgaW4g
bmV0LW5leHQuIElmIHRoYXQgd29ya3MsIHdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGNvb3JkaW5h
dGUgYW4KQWNrIGZyb20gVmlub2QgZm9yIHRoZSBQSFkgcGFydD8gT3IgaWYgeW91IHN0aWxsIHRo
aW5rIGl0IHNob3VsZCBnbwpzZXBhcmF0ZWx5LCBJIGNhbiBkbyB0aGF0IHRvbywgYnV0IEkgd2Fu
dGVkIHRvIGZsYWcgdGhlIGRlcGVuZGVuY3kgYW5kCnRpbWluZyBmaXJzdC4KClRoYW5rcywKQ29p
YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
