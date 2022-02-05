Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2844EC4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 03:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/tk8Fzt46yJakmYC/4YNhL0X73iFnMZH9tWJ9kSIaM=; b=qsB2r/sKqmPuya
	rjb7tZShrB2O4M4IgJOwgg9IWK2xupRnVSvORLr9kXSLzWC4CMPlXLLKy3KS7w1Jw3LB0QckWJAOJ
	cbtE3niGT1f1eZrW/9OSIg9FxB/XE2G5uRU/ieudPPYL2T51F6uFJ9T8IKKvzbesPcF4+SU3uzEoD
	U48L+fWKfhgU3A+C+v92dzoGLZASQbioYBDmEaLynHAxI5opziS/OgcQ/1mYWQx6NS+yBI3A70mU5
	Fahv18JvEYbZAAhQfCBKzcrUN1LYDkjW0LdrZSSm5y+PbSwEQd5sEBi1rB0aR4SrKouwoSFYCzd+W
	8zyYsA25kaAhgZ8nBOWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGBas-0060ZX-GN; Sat, 05 Feb 2022 03:18:34 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGBap-0060Yl-5G
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 03:18:32 +0000
Received: by mail-pf1-x436.google.com with SMTP id y5so5759242pfe.4
 for <linux-phy@lists.infradead.org>; Fri, 04 Feb 2022 19:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=R7incvgluYs5dTKR2o83cZ4xjLUlYz2zw4AZmoxYKh0=;
 b=CruTIdnN0MOxwfdWronF0oZDLrIx9+ejQZH03EMu/p/DMVEu2ZYE9W28nRI2xeCuuz
 9PQ9G43A0iq58Q7HnnjhtuXnltzAynm1kAw6Eyq6hbu6W7NxjTwN4CLeKL1ytizDGPuq
 FnqX8WUTNOJDS9lpIdYS/VTLHnsc0LPXj0ro0JO30Gly3KKWwMsO3qTRYk9fay89dKKe
 HVaBVptsa70kgMMMZ9+qB5JWVRfkuyljPQw853tTksh8CBHwtNQeHtL/aDDzhKgOhM7R
 gHFnw0t26rvNApUUdVZnhnQr8Cwf3cqNWHGfTowxXT4tUYXQsbFUKI8qx1Ob+1TC2GcB
 efjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=R7incvgluYs5dTKR2o83cZ4xjLUlYz2zw4AZmoxYKh0=;
 b=L/TU2aUTk0MUkQvaZq1Psq0d1LDmxwFMSxDKQqZsht/9Rmc97IDKCPXYHoRgtBXod8
 mV7p08tzb3iOcrpIzjPct2BHUmm7f7Kg7MLi9Ltci4/acZ29hbH5jqS6R0wRbncLrAF1
 a+RQlNVmNB7nLCGXW7KovnuthD5g8u/pDnjsnp+WNKca9z2/B0ac+ikE26FP+8Ib9vJz
 wY/IvCk06QV2yp1F3xxQ3mSmESRFEqSkw3dC8Gk4L7f/KCbIX7UPF8wgaN11GTBCOGgq
 LGak00jeebGQoc4NCVyyVqbVh1+nomFfnUY7+NPFsNWsk1fkLZJ5iIGh3Ojb1q/viBhI
 zJQA==
X-Gm-Message-State: AOAM531nCqzbdvEkvhf/sb61mXuv5OcG66bEkJKVYh+fAuUhGVNQvZaJ
 0bTzgprODP7QwlbXu08Gl4Y=
X-Google-Smtp-Source: ABdhPJz0qcDgW8+C4I/2MCh/cmTTsVEqPv/CztD4vzde27m+23EhRqV4bgrd6uiOBpW+l1Xcx0V59w==
X-Received: by 2002:a63:8ac9:: with SMTP id y192mr1630526pgd.598.1644031110164; 
 Fri, 04 Feb 2022 19:18:30 -0800 (PST)
Received: from ?IPV6:2600:8802:b00:4a48:d9cb:da6e:2448:2d1c?
 ([2600:8802:b00:4a48:d9cb:da6e:2448:2d1c])
 by smtp.gmail.com with ESMTPSA id s6sm2682161pgk.44.2022.02.04.19.18.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Feb 2022 19:18:29 -0800 (PST)
Message-ID: <d34fc733-d8ee-5e11-92b2-11a948d656cf@gmail.com>
Date: Fri, 4 Feb 2022 19:18:27 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
 devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn
 <andrew@lunn.ch>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
References: <20220119131117.30245-1-kabel@kernel.org>
 <74566284-ff3f-8e69-5b7d-d8ede75b78ad@gmail.com>
 <Yf3egEVYyyXUkklM@robh.at.kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <Yf3egEVYyyXUkklM@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_191831_239713_E0ADE9CC 
X-CRM114-Status: GOOD (  10.66  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAyLzQvMjAyMiA2OjE4IFBNLCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBGcmksIEphbiAy
MSwgMjAyMiBhdCAxMToxODowOUFNIC0wODAwLCBGbG9yaWFuIEZhaW5lbGxpIHdyb3RlOgo+PiBP
biAxLzE5LzIyIDU6MTEgQU0sIE1hcmVrIEJlaMO6biB3cm90ZToKPj4+IENvbW1vbiBQSFlzIGFu
ZCBuZXR3b3JrIFBDU2VzIG9mdGVuIGhhdmUgdGhlIHBvc3NpYmlsaXR5IHRvIHNwZWNpZnkKPj4+
IHBlYWstdG8tcGVhayB2b2x0YWdlIG9uIHRoZSBkaWZmZXJlbnRpYWwgcGFpciAtIHRoZSBkZWZh
dWx0IHZvbHRhZ2UKPj4+IHNvbWV0aW1lcyBuZWVkcyB0byBiZSBjaGFuZ2VkIGZvciBhIHBhcnRp
Y3VsYXIgYm9hcmQuCj4+Pgo+Pj4gQWRkIHByb3BlcnRpZXMgYHR4LXAycC1taWNyb3ZvbHRgIGFu
ZCBgdHgtcDJwLW1pY3Jvdm9sdC1uYW1lc2AgZm9yIHRoaXMKPj4+IHB1cnBvc2UuIFRoZSBzZWNv
bmQgcHJvcGVydHkgaXMgbmVlZGVkIHRvIHNwZWNpZnkgdGhlIG1vZGUgZm9yIHRoZQo+Pj4gY29y
cmVzcG9uZGluZyB2b2x0YWdlIGluIHRoZSBgdHgtcDJwLW1pY3Jvdm9sdGAgcHJvcGVydHksIGlm
IHRoZSB2b2x0YWdlCj4+PiBpcyB0byBiZSB1c2VkIG9ubHkgZm9yIHNwZWZpY2ljIG1vZGUuIE1v
cmUgdm9sdGFnZS1tb2RlIHBhaXJzIGNhbiBiZQo+Pj4gc3BlY2lmaWVkLgo+Pj4KPj4+IEV4YW1w
bGUgdXNhZ2Ugd2l0aCBvbmx5IG9uZSB2b2x0YWdlIChpdCB3aWxsIGJlIHVzZWQgZm9yIGFsbCBz
dXBwb3J0ZWQKPj4+IFBIWSBtb2RlcywgdGhlIGB0eC1wMnAtbWljcm92b2x0LW5hbWVzYCBwcm9w
ZXJ0eSBpcyBub3QgbmVlZGVkIGluIHRoaXMKPj4+IGNhc2UpOgo+Pj4KPj4+ICAgIHR4LXAycC1t
aWNyb3ZvbHQgPSA8OTE1MDAwPjsKPj4+Cj4+PiBFeGFtcGxlIHVzYWdlIHdpdGggdm9sdGFnZXMg
Zm9yIG11bHRpcGxlIG1vZGVzOgo+Pj4KPj4+ICAgIHR4LXAycC1taWNyb3ZvbHQgPSA8OTE1MDAw
PiwgPDExMDAwMDA+LCA8MTIwMDAwMD47Cj4+PiAgICB0eC1wMnAtbWljcm92b2x0LW5hbWVzID0g
IjI1MDBiYXNlLXgiLCAidXNiIiwgInBjaWUiOwo+Pj4KPj4+IEFkZCB0aGVzZSBwcm9wZXJ0aWVz
IGludG8gYSBzZXBhcmF0ZSBmaWxlIHBoeS90cmFuc21pdC1hbXBsaXR1ZGUueWFtbCwKPj4+IHdo
aWNoIHNob3VsZCBiZSByZWZlcmVuY2VkIGJ5IGFueSBiaW5kaW5nIHRoYXQgdXNlcyBpdC4KPj4K
Pj4gcDJwIGNvbW1vbmx5IG1lYW5zIHBlZXIgdG8gcGVlciB3aGljaCBpbmNpZGVudGFsbHkgY291
bGQgYmUgY29uZnVzaW5nLAo+PiBjYW4geW91IHNwZWxsIG91dCB0aGUgcHJvcGVydHkgZW50aXJl
Ogo+Pgo+PiB0eC1wZWFrdG9wZWFrLW1pY3Jvdm9sdCBvcjoKPj4KPj4gdHgtcGsycGstbWljcm92
b2x0IGZvciBhIG1vcmUgY29tcGFjdCBuYW1lIG1heWJlPwo+IAo+IFBlZXIgdG8gcGVlciBtYWtl
cyBsaXR0bGUgc2Vuc2UgaW4gdGVybXMgb2YgYSB2b2x0YWdlLiBJIHRoaW5rIHRoaXMgaXMKPiBm
aW5lIGFzLWlzLgoKVW5kZXJzdG9vZCwgbXkgcG9pbnQgd2FzIHRoYXQgcGVlciBpcyBhIHdvcmQg
dGhhdCBpcyBjb21tb25seSB1c2VkIGluIGFuIAplbnZpcm9ubWVudCB3aGVyZSB5b3UgYXJlIHRh
bGtpbmcgYWJvdXQgbmV0d29ya2luZyBlcXVpcG1lbnQgYXQgbGFyZ2UuIApBbnl3YXksIGZlZWwg
ZnJlZSB0byBpZ25vcmUgaXQuCi0tIApGbG9yaWFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
