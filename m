Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B309C44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 08:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YkCRHlIZw2fDG2n7U+I09OijEEIM9waUJ+ocMi6Qa8=; b=I4buHVpG6GANzB
	UUb2P+qgK+yO44oLwDUDG3rVw9PYmlt/nCtU4K4o1lCDNzPNX8F4dP5b4/cdDc4aq/EE17T/K8ElH
	VfCWDF/FosZYN6tGjIBUeBexaCvoSGkoL2J02WUb01zm+OKMG/cyqmXjKYbubF4hrbRehDhmFWjty
	byFSUgmfJrmVQgu/0xzD4K1WCLhSSMh0i7pLPAX3mv8shMe8/QmYKFjyrcBvyEb8vnm4p9Bs81aKG
	VtQi6sGhSOZnas7e70vWlA0vUrC/A3CX+74HJxmqXBF6MSteUD7+07TBfAbymD4wbOc4YOcsw8RmC
	14Ti7FkIPmd5xhFu5aqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjvER-0000000EBkm-0lYh;
	Wed, 15 Jul 2026 08:44:43 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjvEM-0000000EBin-37xX
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 08:44:41 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-493c7902f47so44445645e9.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 01:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784105076; x=1784709876; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:subject:cc:to:from:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6hz7WPKd8nuv0g834JzI7w/vUzS6TIu2DOFmMdBw0Pc=;
        b=IHeGtjFgKxM6wKVJvCWg7Ty4ehybxlanCY0XsAEbxoyAyiejUhZiJCEUdutd85Dvkr
         QiOgSrfXHBOKturb3CWS90kY3PcHs0tPx9+Tkf/SVb5FAsYYYDR6Ay9Gh0DkcXRDa9jk
         sf0Nf8uoKvZf5hqvzMAw6duNkzdUVLykDfAPM4iYpoJ0f4GnR67PnQFvKRjEhNHSvki+
         UIrrVKj8Hx1PpZtp9u/YxDNA+JsFjL4H+I4zhTfiRtiK9qPYvpZSYQfkWOtye32ZH4eD
         l6FBmnq4JQR2h1Zfbv2owEnD9RtKPz5O35l60Cf54YVXl+rbtd/CRYJSOOV/bcgnBe6h
         js+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784105076; x=1784709876;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:subject:cc:to:from:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6hz7WPKd8nuv0g834JzI7w/vUzS6TIu2DOFmMdBw0Pc=;
        b=grMEBVNWkYxSBsfSjnfK0+hzu5DP8yVdQ6s/CYpM9PBFw6H+eg/KfBs5Z/sTQQ09mb
         vsePD0vQ+ZGIIR1IlGsY8syxGGlWwA7tEHrPzfFfNf5wXTgva6ruxdKyUQbKL1e1gk0t
         spAvzbRdPdBoZQ+bwhLFD8basX+qQRWL7O7a8JRJtkmhvV3MRCbDK10d6L5bi3rQmmlk
         K8VOqurYOVobBG4zvmF5eesXNxHXO992KNDh8A38Sgs/CWDQ84QI0IL4a/6eTUH5PFDj
         WhYMVeaFZiHAC04z9x/GGU2N8DmEb+fAUbPWln4bBE1YeVOQPB7/yznyg/zMcbLKGuuo
         nKww==
X-Forwarded-Encrypted: i=1; AHgh+RpV5hoNGg4nTI4vYFe6+Hm7UEPgkKIvlXg2AVl+vCKUOzfBbMYP7yo5g8jYnOCNJsndGH/bSPuhSss=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/AQ64aD6GuZgJD/Ml7/qyHFP3P+jVopo0dp79ufWsb6JHp/pZ
	qNemo/f8tkUYox45IUECfNZGI5lgnIa8gEmhSwabSgumLsmENqYycv8X
X-Gm-Gg: AfdE7clOmdNaD7JMZv8fbJIXIFINb5HEF1COjGMmwStuyGRGq18wTVBFqvB74PI/Z82
	eGJ7ZCqBDuHP7ddFeQWFDepank7x8bj06FeEH4HYDXNrb89gg2U0k7lXbqV8aaojx/V2TjSsEKL
	ixWwF/vFKffR+8oTOBLm/De/mVYrBwqu36GHC8yBaKNUO5VrnQtiX1E4qrt1becoanoNE9/IAQO
	NZvbSUbx611ZZ/idonX/3UTZ7c6vK1yj8e2/iVL59YAfY2LAEnNBnOH5yYjfxmJfYwV8n0Ig4x6
	Ley1SAYZ9cIlpjxS0bL1nvh1hHkNCLuCz583bxj/qSGEA57cwASiEVyVMUg/E7OxU9djAtv+JMe
	pEvMGF1sRBYN7Vg6FNN3JuefFzUsNoDA4A29+TCUVkm+PTQWJHYLSwrdTgwZLVhLD4wFPhnN6dM
	BzYyb+GdcGXlmgsnlKu8s334xkbsCcYpDkG1O+FYB3J55v
X-Received: by 2002:a7b:c38b:0:b0:493:c4e1:40a6 with SMTP id 5b1f17b1804b1-4953c28b6bdmr14477935e9.32.1784105076212;
        Wed, 15 Jul 2026 01:44:36 -0700 (PDT)
Received: from Ansuel-XPS. (93-34-89-239.ip49.fastwebnet.it. [93.34.89.239])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4953f643acdsm3214055e9.3.2026.07.15.01.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 01:44:35 -0700 (PDT)
Message-ID: <6a574873.3027643f.39eab0.b4c0@mx.google.com>
X-Google-Original-Message-ID: <aldIcfPxkeociXyX@Ansuel-XPS.>
Date: Wed, 15 Jul 2026 10:44:33 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org,
	davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
	andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org,
	heiko@sntech.de, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
 <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_014438_941643_B180610F 
X-CRM114-Status: GOOD (  31.37  )
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

T24gV2VkLCBKdWwgMTUsIDIwMjYgYXQgMDQ6MTc6NTBQTSArMDgwMCwgQ29pYSBQcmFudCB3cm90
ZToKPiBNYXhpbWUgQ2hldmFsbGllciA8bWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20+IOS6
jjIwMjblubQ35pyIMTXml6XlkajkuIkgMTU6MzHlhpnpgZPvvJoKPiA+Cj4gPiBIaSwKPiA+Cj4g
PiArQ2hyaXN0aWFuCj4gPgo+ID4gT24gNy8xNC8yNiAyMTowOCwgQ29pYSBQcmFudCB3cm90ZToK
PiA+ID4gVGhlIGN1cnJlbnQgWFBDUyBjcmVhdGlvbiBsb2dpYyBpbiBzdG1tYWNfcGNzX3NldHVw
KCkgaXMgcHJvYmxlbWF0aWMKPiA+ID4gZm9yIHNldmVyYWwgcmVhc29ucy4KPiA+ID4KPiA+ID4g
Rmlyc3QsIGlmIGEgZGV2aWNlIHRyZWUgc3BlY2lmaWVzIGEgInBjcy1oYW5kbGUiIGJ1dCBubyBz
ZWxlY3RfcGNzKCkKPiA+ID4gY2FsbGJhY2sgaXMgcHJvdmlkZWQgYnkgdGhlIHBsYXRmb3JtIGRy
aXZlciwgdGhlIGNyZWF0ZWQgWFBDUyBpcyBuZXZlcgo+ID4gPiB1c2VkLiBUaGUgcGh5bGluayBm
cmFtZXdvcmsgcmVxdWlyZXMgc2VsZWN0X3BjcygpIHRvIGFjdHVhbGx5IHJldHVybgo+ID4gPiB0
aGUgUENTIHRvIHRoZSBjb3JlLCBzbyB0aGUgcGNzLWhhbmRsZSBwcm9wZXJ0eSBiZWNvbWVzIGVm
ZmVjdGl2ZWx5Cj4gPiA+IHVzZWxlc3Mgd2l0aG91dCB0aGUgbWF0Y2hpbmcgY2FsbGJhY2suIFRo
aXMgaXMgY29uZnVzaW5nIGZvciBkZXZlbG9wZXJzCj4gPiA+IHdobyBleHBlY3QgdGhhdCBzcGVj
aWZ5aW5nIGEgcGNzLWhhbmRsZSBpbiB0aGVpciBkZXZpY2UgdHJlZSBzaG91bGQgYmUKPiA+ID4g
c3VmZmljaWVudCB0byBlbmFibGUgdGhlIFBDUy4KPiA+Cj4gPiBJIHRoaW5rIENocmlzdGlhbidz
IHdvcmsgb24gZndub2RlIFBDUyB3b3VsZCBoZWxwIGEgbG90IHdpdGggdGhhdCBQQ1MKPiA+IGhh
bmRsaW5nIGluIHN0bW1hYzoKPiA+Cj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
MjAyNjA2MTgxMjU3NTIuMTIyMy0xLWFuc3VlbHNtdGhAZ21haWwuY29tLwo+ID4KPiA+IEkgZG9u
J3Qga25vdyB3aGVuIENocmlzdGlhbiBwbGFucyB0byBpdGVyYXRlLCBpdCBjb3VsZCBiZSB3b3J0
aCB1c2luZwo+ID4gdGhhdCBuZXcgZndub2RlIG1lY2hhbmlzbSBoZXJlID8KPiA+Cj4gPiBNYXhp
bWUKPiAKPiBIaSBNYXhpbWUsCj4gCj4gVGhhbmtzIGZvciBwb2ludGluZyBtZSB0byBDaHJpc3Rp
YW4ncyB3b3JrLiBUaGlzIGxvb2tzIGxpa2UgYQo+IG11Y2gtbmVlZGVkIGltcHJvdmVtZW50Lgo+
IAo+IEkgYWN0dWFsbHkgc3BlbnQgYWxsIG5pZ2h0IGRlYnVnZ2luZyBjYWxsIHRyYWNlcyBjYXVz
ZWQgYnkgdGhlIGN1cnJlbnQKPiBzdG1tYWMgUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQsIGFuZCBp
dCB3YXMgbm90IGEgcGxlYXNhbnQgZXhwZXJpZW5jZS4KPiBUaGUgY29kZSBmZWVscyBsaWtlIGFj
Y3VtdWxhdGVkIHRlY2huaWNhbCBkZWJ0IHRoYXQgc2hvdWxkIGJlIGNsZWFuZWQKPiB1cC4KPgoK
WWVzIHdlIGFsc28gZ290IGEgc2ltaWxhciBzaXR1YXRpb24gd2l0aCBhbiBpcHE1MHh4IFNvQyB3
aGVyZSB0aGUKc3RhbmRhbG9uZSBQQ1MgZmVhdHVyZSB3YXMgaW1wbGVtZW50ZWQgKEkgY2FuIGFk
ZCByZWZlcmVuY2UgdG8gT3BlbldydApjb2RlKSBhbmQgd2UgYWxzbyBoYWQgc29tZSAiIm1hZ2lj
IiIgY29kZSB0byBpbXBsZW1lbnQgUENTIGFzIGl0IGRvZXMgdXNlCnRoZSBEV01BQyBwbGF0LiBJ
dCBzZWVtcyBmb3IgRFdNQUMgUENTIGlzIHZlcnkgYWJzdHJhY3RlZCBhbmQgaGF2ZSBhdCBsZWFz
dAozIGRpZmZlcmVudCBpbXBsZW1lbnRhdGlvbiBhc2lkZSBmcm9tIHRoZSBjb21tb24gInNlbGVj
dF9wY3MiIG9uZS4KIAo+IFJlZ2FyZGluZyB0aW1lbGluZTogc2luY2UgQ2hyaXN0aWFuJ3Mgc2Vy
aWVzIGlzIHN0aWxsIGluIFJGQyB3aXRoIGFuCj4gdW5jZXJ0YWluIG1lcmdlIGRhdGUsIEknZCBw
cmVmZXIgdG8ga2VlcCB0aGlzIHNlcmllcyBhcy1pcyBmb3Igbm93LCBhcwo+IGl0IHNvbHZlcyB0
aGUgcHJvYmxlbSBmb3IgUm9ja2NoaXAgYW5kIGhhcyBhbHJlYWR5IHN0YXJ0ZWQgcmVjZWl2aW5n
Cj4gcmV2aWV3IGZlZWRiYWNrLiBPbmNlIENocmlzdGlhbidzIGZ3bm9kZSBQQ1Mgd29yayBsYW5k
cyBpbiBuZXQtbmV4dCwKPiBJJ20gaGFwcHkgdG8gcmViYXNlIGFuZCBjb252ZXJ0IHRoZSBSb2Nr
Y2hpcCBnbHVlIGRyaXZlciB0byB0aGUgbmV3Cj4gaW50ZXJmYWNlLgoKVGhlIHNlcmllcyBpbiBS
RkMganVzdCBiZWNhdXNlIGkgcG9zdGVkIHdoaWxlIG5ldC1uZXh0IHdhcyBjbG9zZWQgYnV0IGl0
J3MKbm90IGluIFJGQyBzdGF0ZS4gKHNhc2hpa28gaXMgc3RhcnRpbmcgdG8gaGFsbHVjaW5hdGUg
cHJvYmxlbXMpIEkgcGxhbiB0bwpwb3N0IHYxMCB0b2RheSBidXQgc3RpbGwgbG93IHJldmlldyBh
c2lkZSBmcm9tICIibG92ZWx5IiIgYm90LgoKPiAKPiBPbmUgdGhpbmcgSSdkIHJlYWxseSBsaWtl
IHRvIHNlZTogdGhlIGFiaWxpdHkgdG8gc3BlY2lmeSB0aGUgbG9naWNhbAo+IE1JSSBwb3J0IGlu
c3RhbmNlIHZpYSBzb21ldGhpbmcgbGlrZToKPiAKPiAgICAgcGNzLWhhbmRsZSA9IDwmcGNzIE1J
SV9Qb3J0WD47Cj4gCj4gVGhhdCB3b3VsZCBtYWtlIHRoZSBEVCBiaW5kaW5nIG11Y2ggY2xlYW5l
ciBhbmQgbW9yZSBmbGV4aWJsZSBmb3IKPiBtdWx0aS1wb3J0IGNvbmZpZ3VyYXRpb25zLgoKVGhh
dCBpcyBleGFjdGx5IG9uZSBvZiB0aGUgbWFpbiBmZWF0dXJlIG9mIHRoaXMgbmV3IGltcGxlbWVu
dGF0aW9uIGFzIGlzCmFscmVhZHkgdXNlZCBkb3duc3RyZWFtIGJ5IEFpcm9oYSBTb0Mgd2hlcmUg
YSBQQ0llIFBDUyBleHBvc2UgMiBQQ1MgZnJvbSBhCnNpbmdsZSBwcm92aWRlci4gKHRoZSBjb2Rl
IHVzZSB0aGUgc2ltcGxlIGNvbnN1bWVyL3Byb3ZpZGVyIHBhdHRlcm4gYW5kIHRoZQpkcml2ZXIg
aGF2ZSBjb21wbGV0ZSBmcmVlZG9tIG9mIGFwcGx5aW5nIHdoYXRldmVyIGxvZ2ljIGlzIG5lZWRl
ZCB3aGVuCnJldHVybmluZyB0aGUgY29ycmVjdCBjZWxsKQoKSSB0aGluayB0aGUgaWRlYSBvZiBN
YXhpbWUgaXMgdG8gdGVzdCB0aGF0IHNlcmllcyBvbiBtb3N0IFNjZW5hcmlvIGFzCnBvc3NpYmxl
IHRvIHZlcmlmeSBmb3IgZnJhZ2lsaXR5IG9yIHJlZ3Jlc3Npb24gb24gaXQuCgooYnV0IGp1c3Qg
Zm9yIE1heGltZSB0aGUgZmVhdHVyZSBpcyBnZXR0aW5nIGFjdGl2ZWx5IHVzZWQgb24gT3Blbldy
dCBieSAzCmRpZmZlcmVudCBTb0MgYW5kIG5vIGNvbXBsYWluIGZvciBub3cpCgotLSAKCUFuc3Vl
bAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
