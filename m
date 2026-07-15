Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F506C44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 23:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyFCzJFZrM3ZTRJoN64EBxYpwKO5gWHkEKshmExZNq8=; b=0gd8gIfk/0lreH
	/FfFIJFroOMzKTJRjV0O8CJltJ9CDYoEYD2PO4n7Gw68puP3NTunGHB7L2Hc/Kjce/vLM98v2q2qs
	wUmgbMjZEO0yn6PCZUkGHf3eCUOOXf2SCU6yO28PkHOfktOMDeE0OfAeA6gmMdP5CBXXg6tss31Kr
	YswvJwCAJMDog2i6Z6uFwMqvi1/PonoShnwQU36FZOd/N7Us6Y7OfUmeczyAREdQdfjVLioqglrsu
	XZKS5+TYEXKJWvv1LHNaBQ52um1dFIdCzOaICn1ndsLASo1+hkKEVOQ48jQopXajHAKFbDYQBIN75
	mIb648RaPPmXSpaytWdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk8bx-0000000G3gr-445W;
	Wed, 15 Jul 2026 23:01:53 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk8bv-0000000G3fw-2r2I
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 23:01:53 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c15de09d5c4so355953166b.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 16:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784156509; cv=none;
        d=google.com; s=arc-20260327;
        b=ilQjuxthAy+blvUshqCgkjf7ykHcAOEj4OgwkcOj5OgaJBbuuhkJhGg2VXk12bWI/P
         eADpW8y0gGOXv45QvXVmoTEjP1ZfBSOaIJSa7hPW3YEuaQMGpis4M2SgWyspyse8kk5G
         L+M452BoIf+fM7XBiS62d01Ymb7bHu7HKebLxiT/gRJVT5jtRpQi7MO7CT2dmQP9Butu
         ZmPBxFzkTr6f4KqwDu/BPlytJY9yAFrPkG8vlqB6MHLjnqy7GZ24vkgLCnXk19PQf+it
         wkvwmRA8NXe8M38astX4Meqsw5azjkrls5OjmWj3XDQK2Zb1g7FT48i0gbuRaOG/o0JH
         mB4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y8obYoQRW0D7bMouRYacqh4D5cOARHGrRdydWcpJ2O8=;
        fh=Kh2NpGSyDrH8zzftgHUtQ4Wvm9tY6xi82kd1S9RqMNs=;
        b=rU9KbhETzh1/RIbTTCNm9T1nKmTR2ZpCiYtbRImBJS+F84xNYOsa/hBAq9q8jXYIxr
         eE9CjG/r/kzK9DnWRPaensGUhVqBLHEiYQE1DminR6F4PZvYIL4SFN2vUcNXHaf5u6Qb
         8F0rdlbwQc70rZZ/GQb0GRM17RI8Gqb/PxnGxNdcinNIw0O/C9IUEZqWIDRSyTo8wA94
         cQtrQySq8dfMtZFDCHKSoqnf0TopIgt/2+n87RX5A+u4QNa/Ly01IqI7ein+iS2L54fw
         h7gwDECQXGFD3y9TbkCj2D3RIZpexLYxR4qAqu4AnOakb6Vrsi+OuhlMiZMHtzOI98La
         qt4Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784156509; x=1784761309; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Y8obYoQRW0D7bMouRYacqh4D5cOARHGrRdydWcpJ2O8=;
        b=VmUbIgjv/IAYNVwj1H04oQPJm3t3kVPhrXhbkfNilpdWe/RVZxEhpsLZp+gJEGB7H8
         38dkXvBUwUdconWabC1xkFybqfrO7stWhJN2twlfAFCLjLTBwh1bBy8I04iRSWx0Bkjz
         U2Xc5E48bkm8OG4SEhSe71OvA/5ZOZ/BXRib5ZRG1PVdkSuZwIG2AMYMfcSbo/b+a972
         xlS/Rp7F4mcH9dKpPrED7rJL7M+Hj5SJBaG0YEhMgDHhgkEZP0/N4avrdkqtNMyCKScc
         mooBazjRVYenBN+LmuHPWyiYsN5vaCsEwzzpL4fOuuAaY/ABE+xBPXx54PjN/MtVGQPc
         7N1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784156509; x=1784761309;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y8obYoQRW0D7bMouRYacqh4D5cOARHGrRdydWcpJ2O8=;
        b=BYH5TLVGtFOS6/obuEXhn7YhYiBmmWFoedab5OoZaR6iPIRKS0s0lm7tWYmc9zAtrM
         SO04ByGkh1emaeFmr/XCbz/dMSo97uJskWjeljA1nipxjFGXtCPyNjSlAy9zkGw9TM3c
         rQY5CWInLjdcLu9t8E6e7QqbC/fDPmTXxlf877yx6gOm9bSEieV54sg+s8qdPDBpUEcU
         N8dmKWQuCK4tM9P3tBFQlAczMuViEiN4fwFl5xiiWebmOIex5+rJihKMWmTL8t/hjNo8
         vvmCIdyM64H309jv4X97ORvKRybQN4PCR5XStE4qDY/0FIr7FZL5Odpbk067qiAG6sL0
         j7Pg==
X-Forwarded-Encrypted: i=1; AHgh+RpgbxSxmUAIV0zcoiRCDRyrkeZ4QGQHw928QfxXPJp1nv2E6G+2RPEB3/G8CgczO4niiYOccPalLJY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqpNi9WEVNIbiS+syeY4qjrLOKAlgVEr1q1jt+HfbvM7jJXnHJ
	HP0jN3irGoCfECO2MzpgbW/aO+7ibM+cWxYdil4G89PXurf7YeADSAdAOXP7b3O70xQ6bFHQeGP
	rCooQKZ7/275mQhji3in7mzUkkZjnxOw=
X-Gm-Gg: AfdE7clJaWKZ4yW9A02t2uKFCS+VJs4d0TEvXcRAFm/8QWy5YdsBek8PDYI+Q4UhjlY
	KDXtzfIalg80caaQOREoOQr7msaKf2JeMRyVIm+nHULxmRawLiD+JxftiqGRxNQyWl9z6dX9w/e
	D9uOw3uG5h6Fskb7WrvnV5ypki6uD5O5XS2/TnKnfZaTRN03mcQnfF/vKN2c+5+o/5R2lePA16K
	cc0FsJG7NhVilT+S5YtCuEx7DlAUh1bncyis47Bygq+txtCYYnt1xdKWgPgqkDn
X-Received: by 2002:a17:907:3f22:b0:c15:9350:dfa6 with SMTP id
 a640c23a62f3a-c16619ad2b0mr539188966b.60.1784156508425; Wed, 15 Jul 2026
 16:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com> <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
 <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch> <CALj3r0gBnyEVwo3rK-dKssYN9F4nFn93QJ24FVv8YBLjNNgPmg@mail.gmail.com>
 <039c2cce-e76e-4321-ba4a-cd80801f136e@lunn.ch>
In-Reply-To: <039c2cce-e76e-4321-ba4a-cd80801f136e@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 07:01:37 +0800
X-Gm-Features: AUfX_mwFPn4a5IZZI8ivW-vw003zPra-aQ5NOk6yPm8eSjdntp4P_3w-2rjiAlg
Message-ID: <CALj3r0gmNudG2pCebGzd+453ORVakkyct4oDYR+SrqLPkx1nFg@mail.gmail.com>
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_160151_976729_C93E7375 
X-CRM114-Status: GOOD (  24.56  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE25pel5ZGo5ZubIDA2
OjI15YaZ6YGT77yaCj4KPiA+IFRoZSBjdXJyZW50IGRlc2lnbgo+ID4gPT09PT09PT09PT09PT09
PT09Cj4gPiBUaGUgZGVwZW5kZW5jeSBjaGFpbiBJIGNob3NlIGlzIHNpbXBsZToKPiA+Cj4gPiAg
ICAgc3RtbWFjIChHTUFDKSAtPiBwY3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtPiBwaHlzIC0+IFNl
ckRlcyBQSFkKPgo+IE1heWJlIHdlIG5lZWQgdG8gYmUgbW9yZSBhY2N1cmF0ZSBoZXJlLgo+Cj4g
SW4gUVNHTUlJIEkgX3RoaW5rXyBpdCBpcyBhY3R1YWxseQo+Cj4gc3RtbWFjIChHTUFDKSAtPiBw
Y3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtXAo+IHN0bW1hYyAoR01BQykgLT4gcGNzLWhhbmRsZSAt
PiBYUENTIG5vZGUgLS0tLS0tLT4gcGh5cyAtPiBTZXJEZXMgUEhZCj4gc3RtbWFjIChHTUFDKSAt
PiBwY3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtLyAvCj4gc3RtbWFjIChHTUFDKSAtPiBwY3MtaGFu
ZGxlIC0+IFhQQ1Mgbm9kZSAtLS8KPgo+IFRoZXJlIGFyZSBmb3VyIGluc3RhbmNlcyBvZiBzdG1t
YWMsIGZvdXIgaW5zdGFuY2VzIG9mIHRoZSBYUENTLCB3aGljaAo+IHRoZW4gYWxsIGNvbWUgdG9n
ZXRoZXIgaW50byBvbmUgUEhZLgo+Cj4gV2hlbiB1c2luZyBTR01JSSwgZG9lcyBpdCBsb29rIGxp
a2UgdGhpcyA/Cj4KPiBzdG1tYWMgKEdNQUMpIC0+IHBjcy1oYW5kbGUgLT4gWFBDUyBub2RlIC0t
LS0tLS0+IHBoeXMgLT4gU2VyRGVzIFBIWQo+IHN0bW1hYyAoR01BQykgLT4gcGNzLWhhbmRsZSAt
PiBYUENTIG5vZGUgLS0tLS0tLT4gcGh5cyAtPiBTZXJEZXMgUEhZCj4gc3RtbWFjIChHTUFDKSAt
PiBwY3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtLS0tLS0tPiBwaHlzIC0+IFNlckRlcyBQSFkKPiBz
dG1tYWMgKEdNQUMpIC0+IHBjcy1oYW5kbGUgLT4gWFBDUyBub2RlIC0tLS0tLS0+IHBoeXMgLT4g
U2VyRGVzIFBIWQo+Cj4gVGhlcmUgYXJlIGZvdXIgb2YgZXZlcnl0aGluZywgYWxsIHdvcmtpbmcg
aW5kZXBlbmRlbnRseS4KPgo+IElzIHRoZXJlIDEgUVNHTUlJIFBIWSBhbmQgNCBTR01JSSBQSFlz
PyBPciBkb2VzIG9uZSBvZiB0aGUgNCBwaHlzCj4gc3VwcG9ydCBTR01JSSArIFFTR01JSSwgd2hp
bGUgMyBhcmUgU0dNSUkgb25seT8KPgo+ID4gMi4gVXNlciBtaXNjb25maWd1cmF0aW9uOiBldmVu
IHdpdGggcmVmZXJlbmNlIGNvdW50aW5nLCBpZiBhIHVzZXIgc2V0cwo+ID4gICAgYHBoeXMgPSA8
JmNvbWJwaHkyIFBIWV9UWVBFX1NHTUlJPmAgZm9yIEdNQUMwIGFuZAo+ID4gICAgYHBoeXMgPSA8
JmNvbWJwaHkyIFBIWV9UWVBFX1FTR01JST5gIGZvciBHTUFDMSwgdGhlIHNhbWUgUEhZIHdvdWxk
Cj4gPiAgICBiZSBpbml0aWFsaXplZCBpbiB0d28gZGlmZmVyZW50IG1vZGVzLgo+Cj4gSSB3b3Vs
ZCBob3BlIHRoYXQgcmVzdWx0cyBpbiAtRUlOVkFMLgo+Cj4gICBBbmRyZXcKCkhpIEFuZHJldywK
ClRoYW5rcyBmb3IgdGhlIGZvbGxvdy11cC4gSSd2ZSBkdWcgdGhyb3VnaCBSb2NrY2hpcCdzIEJT
UCBhbmQgZm91bmQgdGhlCmV4YWN0IGRldmljZSB0cmVlIGNvbmZpZ3VyYXRpb25zIHRoZXkgdXNl
IGZvciB0aGVpciBFVkJzLCB3aGljaCBJIHRoaW5rCmNsZWFycyB1cCB0aGUgdG9wb2xvZ3kgcXVl
c3Rpb24uCgpGb3IgcmVmZXJlbmNlLCBoZXJlIGFyZSB0aGUgcmVsZXZhbnQgQlNQIGRldmljZSB0
cmVlIGZpbGVzOgotIFFTR01JSTogaHR0cHM6Ly9naXRodWIuY29tL2FybWJpYW4vbGludXgtcm9j
a2NoaXAvYmxvYi9yay02LjEtcmtyNi4xL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LWV2YjItbHA0eC12MTAuZHRzaSNMMTg1Ci0gU0dNSUk6IGh0dHBzOi8vZ2l0aHViLmNvbS9h
cm1iaWFuL2xpbnV4LXJvY2tjaGlwL2Jsb2IvcmstNi4xLXJrcjYuMS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmI1LWRkcjQtdjEwLmR0c2kjTDIwOAoKSGFyZHdhcmUgdG9w
b2xvZ3kgY29uZmlybWVkCj09PT09PT09PT09PT09PT09PT09PT09PT09PQpUaGUgQlNQIHNob3dz
IHRoYXQgZm9yIFJLMzU2OCwgdGhlIGhhcmR3YXJlIGlzIGluZGVlZCBhIHNoYXJlZCByZXNvdXJj
ZS4KCk9uZSBpbXBvcnRhbnQgY2xhcmlmaWNhdGlvbjogdGhlIFhQQ1MgYmxvY2sgaGFzIGZvdXIg
bG9naWNhbCBlbnRpdGllcwooY29ycmVzcG9uZGluZyB0byB0aGUgZm91ciBNSUkgcG9ydHMsIHBj
cy1taWlAMC4uMykuIEluIG15IGRyaXZlciwgdGhlc2UKYXJlIGFsbCBhdHRhY2hlZCB0byB0aGUg
c2FtZSBNRElPIGJ1cyBhbmQgZGlzdGluZ3Vpc2hlZCBieSBhZGRyZXNzLgoKVG8gY2xhcmlmeSB0
aGUgUEhZIHRvcG9sb2d5OiB0aGVyZSBpcyBvbmx5IG9uZSBwaHlzaWNhbCBTZXJEZXMgUEhZIG9u
ClJLMzU2OCAoY29tYnBoeTFfdXNxKS4gSW4gUVNHTUlJIG1vZGUsIHRoaXMgc2luZ2xlIFBIWSBw
cm92aWRlcyBmb3VyCmxvZ2ljYWwgcG9ydHMgdmlhIHRpbWUtZGl2aXNpb24gbXVsdGlwbGV4aW5n
LiBJbiB0aGUgZGV2aWNlIHRyZWUsIGFsbApmb3VyIHBvcnRzIGFyZSBhdHRhY2hlZCB0byB0aGUg
c2FtZSBNRElPIGJ1cyBhbmQgZGlzdGluZ3Vpc2hlZCBieQphZGRyZXNzIChwY3MtbWlpQDAuLjMp
LgoKU28gaXQncyBub3QgIjQgUEhZcyIgYnV0ICIxIFBIWSB3aXRoIDQgbG9naWNhbCBwb3J0cyIs
IGFsbCBhY2Nlc3NpYmxlCnRocm91Z2ggdGhlIHNhbWUgTURJTyBidXMgd2l0aCBkaWZmZXJlbnQg
YWRkcmVzcy4gVGhlIEJTUCBFVkIyCmNvbmZpZ3VyYXRpb24gY29uZmlybXMgdGhpczoKYm90aCBn
bWFjMCBhbmQgZ21hYzEgcmVmZXJlbmNlIHRoZSBzYW1lIGNvbWJwaHkxX3VzcSB3aXRoClBIWV9U
WVBFX1FTR01JSS4KClRvIGNsYXJpZnkgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBTR01JSSBhbmQg
UVNHTUlJOgotIFNHTUlJIGlzIGEgc2luZ2xlIHNlcmlhbCBsaW5rIGF0IDEuMjUgR2JhdWQsIHBy
b3ZpZGluZyBvbmUgR2lnYWJpdCBwb3J0LgotIFFTR01JSSBpcyBhIDUgR2JhdWQgU2VyRGVzIHBy
b3RvY29sIHRoYXQgbXVsdGlwbGV4ZXMgZm91ciBTR01JSSBsaW5rcwogIG9udG8gdGhlIHNhbWUg
cGh5c2ljYWwgbGFuZXMuCgpTbyBmb3IgUkszNTY4OiBvbmUgUEhZIGZvciBTR01JSSwgb3Igb25l
IFBIWSBmb3IgUVNHTUlJIChib3RoIEdNQUNzIHNoYXJlCnRoZSBzYW1lIFBIWSwgZWFjaCB1c2lu
ZyBhIGRlZGljYXRlZCBsb2dpY2FsIHBvcnQpLgoKRm9yIFNHTUlJIG1vZGUsIG9ubHkgb25lIG9m
IHRoZXNlIHBvcnRzIGNhbiBiZSB1c2VkIGF0IGEgdGltZSwgYW5kIG9ubHkKb25lIEdNQUMgY2Fu
IHVzZSB0aGUgU0dNSUkgbGluay4gVGhlIEJTUCBFVkI1IGNvbmZpZ3VyYXRpb24gc2hvd3MgdGhp
cwpjbGVhcmx5OiBnbWFjMCB1c2VzIFNHTUlJLCB3aGlsZSBnbWFjMSBmYWxscyBiYWNrIHRvIFJH
TUlJLgoKRm9yIFFTR01JSSBtb2RlLCB0aGUgQlNQIEVWQjIgY29uZmlndXJhdGlvbiBzaG93cyBi
b3RoIGdtYWMwIGFuZCBnbWFjMQpjb25maWd1cmVkIHdpdGggcGh5LW1vZGUgPSAicXNnbWlpIiwg
Ym90aCByZWZlcmVuY2luZyB0aGUgc2FtZSBjb21icGh5MV91c3EKYXMgdGhlaXIgcGh5cy4gVGhp
cyBjb25maXJtcyB5b3VyIGRpYWdyYW06IG11bHRpcGxlIE1BQ3MgY29udmVyZ2Ugb24gYQpzaW5n
bGUgU2VyRGVzIFBIWSB2aWEgdGhlIFhQQ1MsIHdpdGggdGhlIGZvdXIgbG9naWNhbCBwb3J0cyB0
aW1lLWRpdmlzaW9uCm11bHRpcGxleGVkIG9udG8gdGhlIHNpbmdsZSBQSFkuCgpXaHkgdGhpcyBt
YXR0ZXJzIGZvciB0aGUgZGVzaWduCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KVGhp
cyBCU1AgZXZpZGVuY2Ugc3VwcG9ydHMgbXkgY3VycmVudCBkZXNpZ24gd2hlcmUgdGhlIFhQQ1Mg
bm9kZSBvd25zCnRoZSBTZXJEZXMgUEhZOgoKMS4gSXQgbWF0Y2hlcyB0aGUgaGFyZHdhcmU6IHRo
ZSBYUENTIGlzIHRoZSBjZW50cmFsIG11bHRpcGxleGVyLgogICBQbGFjaW5nIHRoZSBQSFkgdW5k
ZXIgdGhlIFhQQ1Mgbm9kZSBpbiB0aGUgZGV2aWNlIHRyZWUgYWNjdXJhdGVseQogICByZWZsZWN0
cyB0aGlzIGhhcmR3YXJlIHJlYWxpdHkuCgoyLiBJdCdzIHRoZSBvbmx5IHZpYWJsZSBwYXRoIGZv
ciBRU0dNSUk6IGFzIHRoZSBCU1Agc2hvd3MsIFFTR01JSQogICByZXF1aXJlcyBtdWx0aXBsZSBN
QUNzIHRvIHNoYXJlIG9uZSBQSFkuIElmIHRoZSBQSFkgd2VyZSBvd25lZCBieSB0aGUKICAgTUFD
IGRyaXZlciAoZHdtYWMtcmspLCB3ZSdkIG5lZWQgY29tcGxleCByZWZjb3VudGluZyBhbmQgY3Jv
c3MtTUFDCiAgIGNvb3JkaW5hdGlvbi4gVGhlIFhQQ1Mtb3duZXIgbW9kZWwgc29sdmVzIHRoaXMg
Y2xlYW5seSBieSBtYWtpbmcgdGhlCiAgIFhQQ1MgdGhlIHNpbmdsZSBwb2ludCBvZiBjb250cm9s
LgoKMy4gSXQgYWxpZ25zIHdpdGggdGhlIEJTUCdzIG93biBsb2dpYzogZXZlbiB0aG91Z2ggdGhl
IEJTUCB1c2VzIGEKICAgbm9uLXN0YW5kYXJkIHByb3BlcnR5IChyb2NrY2hpcCx4cGNzKSwgdGhl
IHVuZGVybHlpbmcgaWRlYSBpcyB0aGUKICAgc2FtZTogdGhlIE1BQ3MgcG9pbnQgdG8gYSBzaGFy
ZWQgWFBDUyBub2RlLCB3aGljaCB0aGVuIG1hbmFnZXMgdGhlCiAgIFBIWS4gTXkgZGVzaWduIGp1
c3QgZG9lcyB0aGlzIHVzaW5nIHRoZSBzdGFuZGFyZCBrZXJuZWwgZnJhbWV3b3Jrcy4KClNvLCBJ
IGJlbGlldmUgdGhlIGN1cnJlbnQgZGVzaWduIGlzIGNvcnJlY3QuIEl0J3MgYmFzZWQgb24gdGhl
IGhhcmR3YXJlCnJlYWxpdHkgY29uZmlybWVkIGJ5IFJvY2tjaGlwJ3Mgb3duIEJTUCwgYW5kIGl0
IHVzZXMgdGhlIHN0YW5kYXJkIGtlcm5lbAppbnRlcmZhY2VzIHRvIGRvIHNvLiBJJ20gaGFwcHkg
dG8ga2VlcCB0aGUgWFBDUyBhcyB0aGUgb3duZXIgb2YgdGhlClNlckRlcyBQSFkgaW4gdjIgaWYg
eW91IGFncmVlLgoKVGhhbmtzLApDb2lhCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
