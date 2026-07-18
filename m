Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A575DC4451C
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 03:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTIERVxCYq1G7zU0axdbE/9e9oMbeZcFLb0IX2DHBRg=; b=U1dP7joinAwgDs
	41Xa+YjSLw5OsO7LAZx90+m0nBvDt7DdeJVTMyvlllPd4uOZskpxQCyKsa3Z0X4QJOECXxUzEohVj
	51XrN1bEv841wu6hCFgORvOLJeWiHBEsh1+3eFBLQv1xkyWouqBfKkYqWWODvNOmcGvXH5heaXeK+
	wpzjupASTa9ovVyjTYc0NqRxYPDSlsCAU2x+92EsRF5OUOphbsV6QEaLRooIMNB/4DTWXXC2nDqx5
	CZbilZoNHls6HU81ghae2QtUx1fc9IIEEastu37tiiGJ23dky4YrcWCPaY6QY01VldHnpnl7n+LH3
	dqB2Uf2ZI93VhMLCAuKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkvnj-00000003czc-0Y2L;
	Sat, 18 Jul 2026 03:33:19 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkvng-00000003cz2-2IaN
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 03:33:17 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4954c9f380bso6759725e9.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 20:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784345593; x=1784950393; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0oED1FrZVUrTl2AQuQZdpXVSq6u4FM7QrMIHjereqjI=;
        b=Ojg0xJ3ob0lrxOxGgdq30jhQrEhj8+s8iLrQ1qTebi2fSxTNmLN24w9xRv4r05O6MD
         T0SqoVsHrhf3p9teOf0tgZiTOeRQE+ARHJ137/vUzErNLZDro63gU3Y7PAvYRJSU5vha
         uhbVqTBtsC2F6ZZ5AAkat0my0S1UFBRmUuA+EsUbdGijgRAVI5ETE89tCcAZXmhAo+t7
         IQFkOHZ7/BEPpblwwZNVSBAPCk7t5pL2wbIFYCjGwYzGNyycy9EZGp6mDerWXZ+JxP1t
         +IZRX9tnrqGdoXGVkc/8n2xbiRSzQQ+1Y4UpiVfBoejWzeXRPvUU2IngTA512PIn9a2x
         TNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784345593; x=1784950393;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0oED1FrZVUrTl2AQuQZdpXVSq6u4FM7QrMIHjereqjI=;
        b=gfe7zZjepzo1KyTknk7E8wqfm0RALp6CJtKJDvYRB0X+TcWQEMpPN93BF7wGezaXeP
         BjpqmFeXwKPV+cgv1btumcmGCPoQu0Bt0Ztvu/shvKsiYKebrAkufC0M/QbrLeb3KnGe
         BMu69ddX65TaM3MwqqbHJEwk34Kz4OWsHM2QmZQs6HZHjkEIiHpKC+13FqExAnghVDEr
         WPtNPS83YiLs+pvAsqgc7kp3OJSedBwreov/YpxM9N7OPOGx69ZLOaTNtKmIXuO0aKbD
         GRLbbO+xrDoS4Ibfs2EhTTMLpOivJ+PIHTyWKlgCjDOJ8EV9szGqNpORb+fUFgaqxXb+
         Nc9g==
X-Forwarded-Encrypted: i=1; AHgh+Rp3bTue4LMgE+4ESH7Y8s7UT6wXMlu5AvaED68oM2/R5jtfzklg1nCeDBEBLWWmgGIhbX647sk2gfo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxTfUnrfr5rjx7GLo7U3XnLbJEn/R1aOIbwnY0dKsJMf5vIM98j
	Cq9UIcmwUWc6bNe1ffkSuDba6xty/tiu+p/iMKOHBUe6irJG+qHXzmJ/cL19qc0KjjE=
X-Gm-Gg: AfdE7cmNVXd6v6lT3pT58ygzsNRbjD2XJtTmFVZfK0bKD2mBrgGxQH+ujraDUuDD2ce
	h/yGXip3uebNFHqL3JloRyViFncvcf/tE2HogcQszBjNyQUq2c3tobrjBvNLZHH03pTngdnjP46
	bQptz8KTONOIPn0XmHFGJWpkJNPGOPbr/qbFhlEd7T48dtfDo95lHGbL2iSE+lrvWpJuZX8nkMA
	eTmD9/CC+V1bUa/fVBvx9bcOqfNAl+E8QvZ1iNQlNdrc9Y5w+DttWXp+WKyP1sPXQwl+UqlPTV2
	7qsE5Ld50kAsWfcidvIi0I/KzRhHAEP/SvJ8VQ22twfY9SU48OGEabP6AgwNgiLcGdJj+uXwVxc
	b4Or2z1D/WdrcHjWPmEPpKGyas6MpD3X2mvcAuQNoOQXh5+tTMXqKSWExgPMda0+xmFQEdJ5LTA
	/DRABLWavXhjru7VXXLMFRP/s=
X-Received: by 2002:a05:600c:3512:b0:493:cfe8:5b36 with SMTP id 5b1f17b1804b1-4954a3eec4bmr60734855e9.8.1784345593339;
        Fri, 17 Jul 2026 20:33:13 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.77.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954a2e8529sm91284285e9.11.2026.07.17.20.33.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2026 20:33:12 -0700 (PDT)
Message-ID: <e8e9c2c8-b0a5-446b-860c-a693f33a03c5@linaro.org>
Date: Sat, 18 Jul 2026 04:33:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
 olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org,
 conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org
References: <20260718-x1e-csi2-phy-v10-0-5720a7888953@linaro.org>
 <20260718-x1e-csi2-phy-v10-2-5720a7888953@linaro.org>
 <20260718025109.EED601F000E9@smtp.kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260718025109.EED601F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_203316_640225_C32B7B15 
X-CRM114-Status: GOOD (  27.51  )
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

T24gMTgvMDcvMjAyNiAwMzo1MSwgc2FzaGlrby1ib3RAa2VybmVsLm9yZyB3cm90ZToKPiBUaGFu
ayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCAzIHBv
dGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtIaWdoXSBJbmNvcnJlY3QgdHJhbnNs
YXRpb24gb2YgbG9naWNhbCB0byBwaHlzaWNhbCBsYW5lcyBjYXVzZXMgcmVnaXN0ZXIgb2Zmc2V0
IGVycm9ycyBhbmQgYml0d2lzZSB0cnVuY2F0aW9uLgo+IC0gW0hpZ2hdIEludGVnZXIgdHJ1bmNh
dGlvbiBpbiBkaXZpc2lvbiBsZWFkcyB0byBwb3RlbnRpYWwgZGl2aXNpb24tYnktemVybyBwYW5p
YyBpbiBzZXR0bGUgY291bnQgY2FsY3VsYXRpb24uCj4gLSBbTG93XSBIYXJkd2FyZSB2ZXJzaW9u
IHJlZ2lzdGVyIHJlYWQgZG9lcyBub3QgbWFzayB1cHBlciBiaXRzLCBwb3RlbnRpYWxseSBjb3Jy
dXB0aW5nIHRoZSB2ZXJzaW9uIHN0cnVjdC4KPiAtLQo+IAo+IC0tLSBQYXRjaCBbMl06IFtQQVRD
SCB2MTAgMi8yXSBwaHk6IHFjb20tbWlwaS1jc2kyOiBBZGQgYSBDU0kyIE1JUEkgRFBIWSBkcml2
ZXIgLS0tCj4gY29tbWl0IDNhNGVmNTEzYmJlZWZlNTE4NWIwZjA4ZDM0M2Y5ODg4M2NiZTY2Y2EK
PiBBdXRob3I6IEJyeWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+
IAo+IHBoeTogcWNvbS1taXBpLWNzaTI6IEFkZCBhIENTSTIgTUlQSSBEUEhZIGRyaXZlcgo+IAo+
IFRoaXMgY29tbWl0IGFkZHMgYSBuZXcgTUlQSSBDU0kyIGRyaXZlciBpbiBEUEhZIG1vZGUgaW5p
dGlhbGx5LiBJdCBzdXBwb3J0cwo+IGRldmljZXMgbGlrZSAicWNvbSx4MWU4MDEwMC1jc2kyLXBo
eSIgYW5kIGltcG9ydHMgQ0FNU1MgQ1NJIFBIWSBpbml0IHNlcXVlbmNlcy4KPiAKPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5j
IGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmMKPj4g
aW5kZXggMDAwMDAwMDAwMDAwMC4uNWFjMGQwNDFiMzZiNwo+PiAtLS0gL2Rldi9udWxsCj4+ICsr
KyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCj4g
Cj4gWyAuLi4gXQo+IAo+PiArc3RhdGljIHZvaWQgcGh5X3Fjb21fbWlwaV9jc2kyX2h3X3ZlcnNp
b25fcmVhZChzdHJ1Y3QgbWlwaV9jc2kycGh5X2RldmljZSAqY3NpMnBoeSkKPj4gK3sKPj4gKwlj
b25zdCBzdHJ1Y3QgbWlwaV9jc2kycGh5X2RldmljZV9yZWdzICpyZWdzID0gY3NpMnBoeV9kZXZf
dG9fcmVncyhjc2kycGh5KTsKPj4gKwl1MzIgdG1wOwo+PiArCj4+ICsJd3JpdGVsKENTSVBIWV8z
UEhfQ01OX0NTSV9DT01NT05fQ1RSTDZfU0hPV19SRVZfSUQsIGNzaTJwaHktPmJhc2UgKwo+PiAr
CSAgICAgICBDU0lQSFlfM1BIX0NNTl9DU0lfQ09NTU9OX0NUUkxuKHJlZ3MtPmNvbW1vbl9yZWdz
X29mZnNldCwgNikpOwo+PiArCj4+ICsJdG1wID0gcmVhZGxfcmVsYXhlZChjc2kycGh5LT5iYXNl
ICsKPj4gKwkJCSAgICBDU0lQSFlfM1BIX0NNTl9DU0lfQ09NTU9OX1NUQVRVU24ocmVncy0+Y29t
bW9uX3JlZ3Nfb2Zmc2V0LCAxMikpOwo+PiArCWNzaTJwaHktPmh3X3ZlcnNpb24gPSB0bXA7Cj4g
Cj4gW1NldmVyaXR5OiBMb3ddCj4gSXMgaXQgcG9zc2libGUgZm9yIHRoZSBoYXJkd2FyZSByZWdp
c3RlciB0byByZXR1cm4gZ2FyYmFnZSBvciByZXNlcnZlZCBiaXRzIGluCj4gdGhlIHVwcGVyIGJ5
dGVzIGhlcmU/IFNpbmNlIHRoaXMgZmlyc3QgcmVhZCBpcyBhc3NpZ25lZCBkaXJlY3RseSB3aXRo
b3V0Cj4gbWFza2luZyAoZS5nLiwgdG1wICYgMHhGRiksIGFueSB1cHBlciBnYXJiYWdlIGJpdHMg
d291bGQgcmVtYWluIGluIGh3X3ZlcnNpb24KPiBhbmQgd291bGRuJ3QgYmUgY2xlYXJlZCBieSB0
aGUgc3Vic2VxdWVudCBiaXR3aXNlIE9SIG9wZXJhdGlvbnMuCgpUaGlzIGlzIG5vdCBjcmVkaWJs
ZS4KCj4+ICsKPj4gKwl0bXAgPSByZWFkbF9yZWxheGVkKGNzaTJwaHktPmJhc2UgKwo+PiArCQkJ
ICAgIENTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05fU1RBVFVTbihyZWdzLT5jb21tb25fcmVnc19v
ZmZzZXQsIDEzKSk7Cj4+ICsJY3NpMnBoeS0+aHdfdmVyc2lvbiB8PSAodG1wIDw8IDgpICYgMHhG
RjAwOwo+IAo+IFsgLi4uIF0KPiAKPj4gK3N0YXRpYyB1OCBwaHlfcWNvbV9taXBpX2NzaTJfc2V0
dGxlX2NudF9jYWxjKHM2NCBsaW5rX2ZyZXEsIHUzMiB0aW1lcl9jbGtfcmF0ZSkKPj4gK3sKPj4g
Kwl1MzIgdF9oc19wcmVwYXJlX21heF9wczsKPj4gKwl1MzIgdGltZXJfcGVyaW9kX3BzOwo+PiAr
CXUzMiB0X2hzX3NldHRsZV9wczsKPj4gKwl1OCBzZXR0bGVfY250Owo+PiArCXUzMiB1aV9wczsK
Pj4gKwo+PiArCWlmIChsaW5rX2ZyZXEgPD0gMCkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4gKwl1
aV9wcyA9IGRpdl91NjQoUFNFQ19QRVJfU0VDLCBsaW5rX2ZyZXEpOwo+IAo+IFtTZXZlcml0eTog
SGlnaF0KPiBEb2VzIHRoaXMgY29kZSBzaWxlbnRseSB0cnVuY2F0ZSBsaW5rX2ZyZXE/Cj4gCj4g
VGhlIGRpdl91NjQoKSBtYWNybyBleHBlY3RzIGEgdTMyIGRpdmlzb3IsIGJ1dCBsaW5rX2ZyZXEg
aXMgYW4gczY0LiBUaGlzIHdpbGwKPiBpbXBsaWNpdGx5IHRydW5jYXRlIHRoZSA2NC1iaXQgbGlu
a19mcmVxIHZhbHVlIHRvIDMyIGJpdHMuCj4gCj4gSWYgbGlua19mcmVxIGhhcHBlbnMgdG8gYmUg
YW4gZXhhY3QgbXVsdGlwbGUgb2YgMl4zMiwgdGhlIHRydW5jYXRlZCBkaXZpc29yCj4gYmVjb21l
cyBleGFjdGx5IDAsIHdoaWNoIHdvdWxkIGNhdXNlIGEgZGl2aXNpb24tYnktemVybyBwYW5pYy4g
RnJlcXVlbmNpZXMKPiBleGNlZWRpbmcgNC4yOSBHSHogd291bGQgYWxzbyBiZSBzaWxlbnRseSBj
b3JydXB0ZWQuCj4gCj4gQ291bGQgdGhpcyBiZSB1cGRhdGVkIHRvIHVzZSBkaXY2NF91NjQoKSBv
ciBzaW1pbGFyIHRvIGF2b2lkIHRydW5jYXRpb24/CgpUaGlzIGlzIGEgcHJldHR5IG91dGxhbmRp
c2ggbGV2ZWwgb2YgZGVmZW5zaXZlIGNvZGluZy4gTm9wZSwgbm90IGRvaW5nIGl0LgoKPiAKPj4g
Kwl1aV9wcyAvPSAyOwo+PiArCXRfaHNfcHJlcGFyZV9tYXhfcHMgPSA4NTAwMCArIDYgKiB1aV9w
czsKPiAKPiBbIC4uLiBdCj4gCj4+ICtzdGF0aWMgaW50IHBoeV9xY29tX21pcGlfY3NpMl9sYW5l
c19lbmFibGUoc3RydWN0IG1pcGlfY3NpMnBoeV9kZXZpY2UgKmNzaTJwaHksCj4+ICsJCQkJCSAg
IHN0cnVjdCBtaXBpX2NzaTJwaHlfc3RyZWFtX2NmZyAqY2ZnKQo+PiArewo+PiArCWNvbnN0IHN0
cnVjdCBtaXBpX2NzaTJwaHlfZGV2aWNlX3JlZ3MgKnJlZ3MgPSBjc2kycGh5X2Rldl90b19yZWdz
KGNzaTJwaHkpOwo+PiArCXN0cnVjdCBtaXBpX2NzaTJwaHlfbGFuZXNfY2ZnICpsYW5lX2NmZyA9
ICZjZmctPmxhbmVfY2ZnOwo+PiArCXU4IHNldHRsZV9jbnQ7Cj4+ICsJdTggdmFsOwo+PiArCWlu
dCBpOwo+PiArCj4+ICsJc2V0dGxlX2NudCA9IHBoeV9xY29tX21pcGlfY3NpMl9zZXR0bGVfY250
X2NhbGMoY2ZnLT5saW5rX2ZyZXEsIGNzaTJwaHktPnRpbWVyX2Nsa19yYXRlKTsKPj4gKwlpZiAo
IXNldHRsZV9jbnQpCj4+ICsJCXJldHVybiAtRUlOVkFMOwo+PiArCj4+ICsJLyoKPj4gKwkgKiBD
U0lfQ09NTU9OX0NUUkw1IGlzIGEgcGh5c2ljYWwgbGFuZSBwb3dlci11cCBiaXRtYXA6Cj4+ICsJ
ICogLSBCaXRzIFswLDIsNCw2XSDihpIgRC1QSFkgZGF0YSBsYW5lcyhMTjAsIExOMiwgTE40LCBM
TjYpCj4+ICsJICogLSBCaXRzIFsxLDMsNV0g4oaSIEMtUEhZIHRyaW8gbGFuZXMoTE4xLCBMTjMs
IExONSkKPj4gKwkgKiAtIEJpdCBbN10g4oaSIEQtUEhZIGNsb2NrIGxhbmUoTE5DSykgZGVkaWNh
dGVkIGNsb2NrIGVuYWJsZQo+PiArCSAqLwo+PiArCXZhbCA9IEJJVChsYW5lX2NmZy0+Y2xrLnBv
cyk7Cj4+ICsJZm9yIChpID0gMDsgaSA8IGNmZy0+bnVtX2RhdGFfbGFuZXM7IGkrKykKPj4gKwkJ
dmFsIHw9IEJJVChsYW5lX2NmZy0+ZGF0YVtpXS5wb3MgKiAyKTsKPiAKPiBbU2V2ZXJpdHk6IEhp
Z2hdCj4gQ2FuIHRoaXMgYml0bWFzayBvdmVyZmxvdyB0aGUgdTggdmFsPwo+IAo+IElmIHRoZSBk
ZXZpY2UgdHJlZSB1c2VzIHBoeXNpY2FsIGluZGljZXMgKGUuZy4sIDQgb3IgNikgZm9yIHBvcywg
cG9zICogMgo+IGJlY29tZXMgOCBvciAxMi4gU2luY2UgdmFsIGlzIGEgdTgsIHVzaW5nIEJJVCg4
KSBvciBCSVQoMTIpIHdpbGwgb3ZlcmZsb3cKPiBhbmQgc2lsZW50bHkgdHJ1bmNhdGUgdG8gMCwg
ZmFpbGluZyB0byBlbmFibGUgdGhlIGNvcnJlc3BvbmRpbmcgaGFyZHdhcmUgbGFuZS4KPiAKCkFj
dHVhbGx5IG5vIC0gdGhlIGN1cnJlbnQgeWFtbCBoYXMgYSByYW5nZSBvZiBkYXRhLWxhbmVzID0g
PDAgMSAyIDM+ID0+IAozICogMiA9PSA2Cgo+PiArCj4+ICsJd3JpdGVsKHZhbCwgY3NpMnBoeS0+
YmFzZSArCj4+ICsJICAgICAgIENTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05fQ1RSTG4ocmVncy0+
Y29tbW9uX3JlZ3Nfb2Zmc2V0LCA1KSk7Cj4+ICsKPj4gKwkvKiBMYW5lIGNvbmZpZ3VyYXRpb24g
Zm9yIHBvbGFyaXR5IEAgQ1NJUEhZLWJhc2UgKyBDVFJMOSAqLwo+PiArCWZvciAoaSA9IDA7IGkg
PCBjZmctPm51bV9kYXRhX2xhbmVzOyBpKyspIHsKPj4gKwkJaWYgKGxhbmVfY2ZnLT5kYXRhW2ld
LnBvbCkgewo+PiArCQkJdTggcG9zID0gbGFuZV9jZmctPmRhdGFbaV0ucG9zOwo+PiArCj4+ICsJ
CQl3cml0ZWwoQklUKDIpLCBjc2kycGh5LT5iYXNlICsgQ1NJUEhZXzJQSF9MTl9DU0lfMlBIQVNF
X0NUUkw5bihwb3MpKTsKPiAKPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gRG9lcyB0aGlzIGNvcnJlY3Rs
eSBtYXAgbG9naWNhbCB0byBwaHlzaWNhbCBsYW5lcz8KPiAKPiBUaGUgQ1NJUEhZXzJQSF9MTl9D
U0lfMlBIQVNFX0NUUkw5bihwb3MpIG1hY3JvIGNvbXB1dGVzIDB4MjAwICogcG9zICsgMHgyNC4K
PiBIb3dldmVyLCBELVBIWSBkYXRhIGxhbmUgYmxvY2tzIGFyZSBzcGFjZWQgYXQgb2Zmc2V0cyAw
LCAweDQwMCwgMHg4MDAsIGFuZAo+IDB4QzAwLgo+IAo+IElmIHBvcyBpcyBhIGxvZ2ljYWwgaW5k
ZXggbGlrZSAxLCB0aGlzIHdvdWxkIGFjY2VzcyBvZmZzZXQgMHgyMDAgKHdoaWNoIGlzIGEKPiBD
LVBIWSBsYW5lKSBpbnN0ZWFkIG9mIHRoZSBpbnRlbmRlZCAweDQwMC4KClRydWUuCgpCYWJ5IGRv
bid0IGJlIHNhZCwgY2F1c2UgMS80IGFpbid0IGJhZC4KPiAKPj4gKwkJfQo+PiArCX0KPj4gKwo+
PiArCWlmIChsYW5lX2NmZy0+Y2xrLnBvbCkKPj4gKwkJd3JpdGVsKEJJVCgyKSwgY3NpMnBoeS0+
YmFzZSArIENTSVBIWV8yUEhfTE5fQ1NJXzJQSEFTRV9DVFJMOW4obGFuZV9jZmctPmNsay5wb3Mp
KTsKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
