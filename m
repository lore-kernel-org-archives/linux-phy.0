Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026D9C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P61NPixIrptCLoVE30oa9kjepn59PBGG+xdwcmdZnqs=; b=Yq7AgqhUNbszV/
	ERWOvOND0DgjLEGubxc4sgobxgPYNJ2Drv8huUZP+vWJ75xUT0DTSU6dV2lISb/nfK6HCXsjW9HBT
	KbM67fi0LFLT3aELcgrMHKcWAy4+G/CDfxmB5iot8H9Cm14mvqLmnp5VueRt+T7O7VlX9u+miw/jK
	AUxS7/aF1CCfPj1ylryIdzxcQ1h8TbeF++YiMr155QrTZao47YvAKNrIpAG0yF5uOiRpFOX2Ki/MK
	WxUb8ey3uu3jD2iFs2xotAEK9cWAbHZdGQERsm6iCYyCXTyrJaXuAS0Kc0/5LnBZ4REjshiiR0d/z
	ntNQYH7NJyidtZRS5QrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QJo-00000005tye-2lut;
	Tue, 15 Sep 2026 10:23:16 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QJl-00000005txB-1L7R
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:23:14 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c29440ee0e7so201359366b.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789467791; cv=none;
        d=google.com; s=arc-20260327;
        b=qgLRse+RPY89iJqkmr+28DTvoRCCs9UT9VUmimG0t4t8IAPUEK4Fu5uqZRWqzErLao
         Q/1MYeq+z0uH/x6Tw048Hr3XbkqwCUjebSUKJv2BITElU61Ky90AmatmhBIeFi40tLE3
         3jKx7cRcydQmQK562fGjYlwCsTTGFfjD/Lek37PR6PFK1YY+cKONZQmymBIsmJWOxvLi
         1lWUF9k50bMLdhU2ZxfYFlWIhgbDpRvnOi5edn+3cb7TZGul2co3hXtWQqhihHnpDEQ5
         /EtRWA8jkWjsEpvZ6VM/jJ2lHShEPT8WE4bVkt6/I11SfB85wnBpnMPSe2VzHzBK+qxA
         kQcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nYoTXRWm9dXxQab97Avfkm/YI6364EPnV/puvJGLZtc=;
        fh=uyPDeiB07T7hG3/vywYq/Jp5xiVre56Ou1QM2PS5x1w=;
        b=hlOlPRMXIpXDjiVXWwOyKWzokE38rRtXSNuT3PmkFRRX3GFruNXkZTj2JnfEVV4V3A
         U880kvnmqcvAF6DquD3vMzhwFfoaIXcvgwf50XDawPHB+N0b7nZ35tCUi0A5y46QGy85
         z3xgtaEhoccx+rnAC2oGwUvYvpICFsseTOR9pBOzGkJSZ3WtvTnI6Sh+rbFB3Hp3a4sA
         UsAvOMbM+fSeB41ntKQCwXqPrfZzz6PRG9XzYXoBtcjNhxFduXGa24tpVPPcXDTptiKY
         d23vvKVNGHLWbCkxbgDlpHzvNAnwJrywUI5bS9PHDkFtWIglEzxGbVrAdRDIUfZfSyiJ
         qprA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789467791; x=1790072591; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=nYoTXRWm9dXxQab97Avfkm/YI6364EPnV/puvJGLZtc=;
        b=A3HNq0ZV3W/rTicHrs4nlJfKEZ1wVI02+xDmg17XfMW4xI9o9C5P1Vw/mwpNHtZK5y
         YXKk12QvCwA8OERQOeCtnIRxFWq/xbtSwOoKyHOoB8xCdR4IjBJNjHBE985TWQG2qby2
         cOWUs7v0VTlhH6heXzSHNDj1uL0yqMpouwkSxqG3tBaxFCJwsDMKRG5gDIarFGFLP28s
         zCDpRaPVSwVSDQjIj7BjfDJQ4X3EV+etFv4MIzOEnIdatyudK7XhmiLeRjqiOlWACrLS
         egNnB6g50YMzeFp+YmoJg++AraIzCtV3e25jECNYDMDZSGTFgF3tRoC6JssARQ7r9izP
         R0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467791; x=1790072591;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nYoTXRWm9dXxQab97Avfkm/YI6364EPnV/puvJGLZtc=;
        b=0kXUnusfTqjpNm8M6SFHkcFLiWAJvR5VaObtOARA9PlZoc3Q1C5ZaOEfbw0enXYjxD
         8O3KlSjk5+mravezrQb9+zIqqmpkuATbbmCQd6vUktSQhWkQ8H9tKABWChx1fBqAhmTM
         kntcLX3zCsRSz53iUCGlQBvHZFczI1kK0VfthZ9Tu+mIE/xO1tgX21JpKdB6gUu4/PII
         3XB4p12XQkZHBjh2uMct1f409pal309sK7K6AS7Mw5YnRCyEyPKaBQF2LDtVc4lH61bJ
         /CIUUUT8cy2IkrVF7O7vtEfBor1N2svaSct7KBgt6QeutEJxq9VmLoEN9CVO3iHWaDXu
         XRgA==
X-Forwarded-Encrypted: i=1; AKwUvBy17DQu762Bi6iiJ/kjC/gxI9eZAWQnfNXfdL5eUaQHqyfbMzOFpplyrcRVJTCi6BylTfQyNRv3Ifc=@lists.infradead.org
X-Gm-Message-State: AFuF++ne/Xah6DH4ORgfNTQQvopT6Qq51PMwtNLZQh9S3mgvMFlneKm+
	WjCCJRFQY7GJvT8A4qf1lbG22dRVvnK/WuyuHiC3gjaMPDBjSLAporx+m96vqC302KwLWmScMn2
	TiyO7+gL0XOyQ28advasSbn4o/WpWQWw=
X-Gm-Gg: AYBFou0gu/uynLL9wguWiqBQZssuiLvCmw0nCNZn+M3Yh/8FO1T5Jj7i8R1xco91jmx
	dAqj0xDp7Hh8lNOc00/D5LGPgOn6lXN6Di/FucUucQKfg+eWXrXWjLnetWuOTBGElBoXoAfWruc
	lp03meLnMwAxXjFbFKAGm3Q5rj/DIc8aAR953j9VevDXjxFfcrdQQtoTqXphjV3FlBRR21VLsZD
	O9STMoBrvVvytDZ5o/8K31GYS8RJy7nnZvQkJXWEUeCH0TFnrnc2RbGn/1jYQnxETGclGK7eJQP
	cthYfugLb9KQlmT0lJO/rmifUuUFJlDIO7SKLbrQ8kb7Ywmm5epI/oRtGQ==
X-Received: by 2002:a17:907:3d56:b0:c25:6c9a:88bc with SMTP id
 a640c23a62f3a-c29b87339e8mr775899466b.19.1789467791028; Tue, 15 Sep 2026
 03:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260913185849.907479-3-coiaprant@gmail.com> <178941747711.22033.8495700704733189874@kernel.org>
In-Reply-To: <178941747711.22033.8495700704733189874@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 15 Sep 2026 18:22:59 +0800
X-Gm-Features: AcwNN1XIwap_FwM1kV5GNhNfjY4yI0txPnJoW2RyomCTNzqIwhUfgmMQ2h9aiaE
Message-ID: <CALj3r0ge_AVi=jrUZh_T8cEt954S_Ah7Hi4QxkccjEm6zug_Ag@mail.gmail.com>
Subject: Re: [PATCH net-next v5 02/11] dt-bindings: phy: rockchip:
 naneng-combphy: add rockchip,sgmii-mac-sel property
To: netdev-bot+sashiko@kernel.org
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org, 
	maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org, 
	linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz, 
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_032313_443427_1FC4697C 
X-CRM114-Status: GOOD (  16.98  )
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

PG5ldGRldi1ib3Qrc2FzaGlrb0BrZXJuZWwub3JnPiDkuo4yMDI25bm0OeaciDE15pel5ZGo5LqM
IDA0OjI05YaZ6YGT77yaCj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNo
aWtvIEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbAo+IGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+
Cj4gQ3JpdGljYWw6IDAgwrcgSGlnaDogMCDCtyBNZWRpdW06IDAgwrcgTG93OiAxCj4KPiAtIFtM
b3ddIENvbmNlcm4gKHZhbGlkYXRlZCBhcyBOT1QgYSBkZWZlY3QgaW4gdGhlIHNlcmllcyBjb250
ZXh0KTogdGhlCj4gICBiaW5kaW5nIGFkZHMgYHJvY2tjaGlwLHNnbWlpLW1hYy1zZWxgIHdoaWxl
LCBhdCB0aGlzIGNvbW1pdCBhbG9uZSwgbm/igKYKPgo+IC0tCj4KPiBkdC1iaW5kaW5nczogcGh5
OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hpcCxzZ21paS1tYWMtc2VsIHBy
b3BlcnR5Cj4KPiBUaGlzIGFkZHMgYW4gb3B0aW9uYWwgcm9ja2NoaXAsc2dtaWktbWFjLXNlbCBw
cm9wZXJ0eSB0byB0aGUgbmFuZW5nLWNvbWJwaHkKPiBiaW5kaW5nIHNvIGEgYm9hcmQgY2FuIHNl
bGVjdCB3aGV0aGVyIHRoZSBSSzM1NjggU0dNSUkgaW50ZXJmYWNlIGlzIHJvdXRlZAo+IHRvIEdN
QUMwIG9yIEdNQUMxLiAgVGhlIHByb3BlcnR5IGlzIHJlc3RyaWN0ZWQgdG8gdGhlIFJLMzU2OCBj
b21wYXRpYmxlIHZpYQo+IHRoZSBleGlzdGluZyBhbGxPZiBjb25kaXRpb25hbCBhbmQgZGVmYXVs
dHMgdG8gMSAoR01BQzEpLgo+Cj4gW1NldmVyaXR5OiBMb3ddCj4gQXQgdGhpcyBjb21taXQgYWxv
bmUsIGlzIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgcmVhZCBieSBhbnl0aGluZz8KPgo+IHJvY2tj
aGlwX2NvbWJwaHlfcGFyc2VfZHQoKSBpbgo+IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1uYW5lbmctY29tYnBoeS5jIGRvZXMgbm90IGxvb2sgaXQgdXAsCj4gc3RydWN0IHJvY2tj
aGlwX2NvbWJwaHlfZ3JmY2ZnIGhhcyBubyBwaXBlX3NnbWlpX21hY19zZWwgZGVzY3JpcHRvciwg
YW5kCj4gbm8gaW4tdHJlZSBEVFMgc2V0cyBpdCwgc28gYSBrZXJuZWwgYnVpbHQgZnJvbSBleGFj
dGx5IHRoaXMgY29tbWl0IHdvdWxkCj4gc2lsZW50bHkgaWdub3JlIHRoZSBwcm9wZXJ0eS4KPgo+
IFRoaXMgcmVzb2x2ZXMgaXRzZWxmIGxhdGVyIGluIHRoZSBzYW1lIHNlcmllczogInBoeTogcm9j
a2NoaXA6Cj4gbmFuZW5nLWNvbWJwaHk6IGFkZCBTR01JSSBNQUMgc2VsZWN0aW9uIGZvciBSSzM1
NjgiIGFkZHMgdGhlIHBhcnNpbmcKPgo+ICAgICAgICAgcHJpdi0+c2dtaWlfbWFjX3NlbCA9IDE7
Cj4gICAgICAgICBkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9ja2NoaXAsc2dtaWkt
bWFjLXNlbCIsICZwcml2LT5zZ21paV9tYWNfc2VsKTsKPgo+IGFsb25nIHdpdGggdGhlIFJLMzU2
OCBwaXBlLUdSRiBkZXNjcmlwdG9yCj4KPiAgICAgICAgIC5waXBlX3NnbWlpX21hY19zZWwgICAg
ID0geyAweDAwNDAsIDEsIDEsIDB4MDAsIDB4MDEgfSwKPgo+IGFuZCB0aGUgd3JpdGUgaW4gdGhl
IFBIWV9UWVBFX1NHTUlJIHBhdGggb2YgcmszNTY4X2NvbWJwaHlfY2ZnKCksIGFuZAo+ICJhcm02
NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBob3RvbmljYXQ6IGVuYWJsZSBTR01JSSBMQU4gcG9y
dCIgYWRkcyB0aGUKPiBmaXJzdCB1c2VyOgo+Cj4gICAgICAgICAmY29tYnBoeTIgewo+ICAgICAg
ICAgICAgICAgICByb2NrY2hpcCxzZ21paS1tYWMtc2VsID0gPDA+Owo+ICAgICAgICAgICAgICAg
ICBzdGF0dXMgPSAib2theSI7Cj4gICAgICAgICB9Owo+Cj4gU28gdGhpcyBpcyBub3RlZCBvbmx5
IGZvciB0aGUgcmVjb3JkLCBzaW5jZSB0aGUgYmluZGluZyBhbmQgaXRzIGNvbnN1bWVyCj4gYmVp
bmcgc3BsaXQgYWNyb3NzIGNvbnNlY3V0aXZlIHBhdGNoZXMgaXMgdGhlIG5vcm1hbCBzZXJpZXMg
bGF5b3V0Lgo+Cj4gVGhlIHJlbWFpbmluZyBwb2ludCBpcyBhIGRlc2lnbiBxdWVzdGlvbiByYXRo
ZXIgdGhhbiBhIGJ1ZzogaXMgYSByYXcKPiB1aW50MzIgTUFDIGluZGV4IHRoZSBpbnRlcmZhY2Ug
cHJlZmVycmVkIGhlcmUsIG9yIHdvdWxkIGEgcGhhbmRsZSB0byB0aGUKPiBHTUFDIGNvbnRyb2xs
ZXIgbm9kZSBiZSBhIGJldHRlciBmaXQgZm9yIGRlc2NyaWJpbmcgdGhlIHJvdXRpbmc/CgpUaGUg
cHJvcGVydHkgbWFwcyBkaXJlY3RseSBvbnRvIGEgc2luZ2xlIGJpdCBpbiB0aGUgY29tYm8gUEhZ
J3Mgb3duCkdSRiByZWdpc3RlciAoUElQRV9HUkZfWFBDU19DT04wIGJpdCAxKSwgd2hpY2ggc2Vs
ZWN0cyB3aGV0aGVyIHRoZQpTR01JSSBsYW5lIGlzIHJvdXRlZCB0byBHTUFDMCBvciBHTUFDMS4g
SXQgZGVzY3JpYmVzIGEgbXV4IHNldHRpbmcKaW5zaWRlIHRoZSBQSFksIG5vdCBhIHJlbGF0aW9u
c2hpcCB0byB0aGUgR01BQyBub2RlLiBBIHBoYW5kbGUgd291bGQKaW50cm9kdWNlIGFuIGV4dHJh
IGRlcGVuZGVuY3kgZWRnZSBiZXR3ZWVuIHRoZSBjb21ibyBQSFkgbm9kZSBhbmQgdGhlCkdNQUMg
bm9kZSBmb3Igbm8gYmVuZWZpdCwgYW5kIHRoZSByYXcgdmFsdWUgbWF0Y2hlcyBob3cgdGhlIEJT
UCBhbmQKdGhlIHN1cnJvdW5kaW5nIEdSRiBwcm9wZXJ0aWVzIGRlc2NyaWJlIHNpbWlsYXIgbXV4
ZXMuCgpTbyBJJ2xsIGtlZXAgdGhlIHVpbnQzMiBmb3JtLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
