Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 115A0E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 13:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ9VYmfOiz3EQk35jOfuK4h9TAcKTojvQWPhHUBG5jQ=; b=eT48D/k01DALOt
	LU/EM7ApxPrRwM3GsIzAZbf+eN8tqcBcc0gsGVRJ06WnoWiR1Wcf2i1cXIBoqv/8KRi1Pj5DcvDt2
	CIDnhP6Qf+3D39ghwfinJnS2cdcPPW+qN68ykDtMgcyBPxDv9mXZozc2A+oU4+nMC6QIdhAKBrqQg
	94In+sTgK4YerCXaveuQOFDUNq8JulzxmKcwkN/nUv7S2pQaL37zm0h3CoBi0Kt4CPUEB1oeas5+d
	1LnhaMj1CB4X461riU/Rb6xRuGS8KVhTrEzpbqGHqOTVwxzvQ02NKvl+xZHGEpdYxBcnmnuN0REAJ
	1hQVm0FIoLyrId+u9vLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMoW-0000000EzCp-3NOg;
	Wed, 11 Dec 2024 13:31:40 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMmf-0000000EyrH-3TJj
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 13:29:46 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-434e69857d9so4212805e9.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 05:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733923784; x=1734528584; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZAzVPgqaMUfEWjQsC1i4irC02Ex7gL3bmsg03DGegR0=;
        b=QJenjq/GOjhNjfhpIg8WVEw8RGRf9w+wmBNgvjdG8WkYZpN2Wpy/uZxAr9cS/xBVYw
         bxyMJa+TNWQXkwPxfEzCzkse2zLs90Lu9tebVGOVrJLL2ApiqS8SzS30cktrP7lXaK+n
         MH60uDHcHsTy0ur3RT4iEPWZhoOYnCfBDPrDmnwYbHGhlnMe/UuJUCeT7Hlvk6NaA9BI
         +jiDCOOakk05Up2fd7v+XRDwinLv/cM5P+iZ8F3sU6THCk8InLXeWrWIowRWBSXH9xId
         waQg4baVWrmDEIByWHUj7KBjPiCp6Qm3q/NCgHv2Wfs6zcVMaRY7SQDnUvuvy0C6HNEt
         2SXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733923784; x=1734528584;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZAzVPgqaMUfEWjQsC1i4irC02Ex7gL3bmsg03DGegR0=;
        b=qLW/ags6za+7mBb5dxXhrD0Amhca3io5+HeFRcj++3sqrNIpCJziXkuBiVAa0zf4e9
         CoSO5aVwKHeKtA+DjZsIfe46hcLInUjlsYvytHBw3BC19/ILgwx+Ft3yznhoRIV1+A2Z
         OeFyQtQtHI2eKvTXE/pKM3Xw3alDBgYQMOTiqA+A0uXf+B6xM29BVmV1x41B27k/I7cY
         f+wFg0aTcxQ3kTNfeoxZdBKDy6ERNy6qg2SA2MeDGwgoiIMsfePD7PwszdAxHn2jGk5b
         xK+SNyduztIPKzXwmVCilKSoL7brh5xjKK59l+HZ2FT7Bi8IksaL3aVl9NK+IIOL5G6a
         gmHA==
X-Forwarded-Encrypted: i=1; AJvYcCWQaed661Bng73171alSJcSajEWI2IiZiJ9v08k/n/1u0U0nN4M4TNvYv6CcyFduSIXsFlGzn0PSeY=@lists.infradead.org
X-Gm-Message-State: AOJu0YytixmiHuF/cDwxclcQcG/M9OospPWFrYjYtY6F7c3bggrgC5ro
	4CiyKK3jy++p8sLUmrxCZclfK4gCzRLh62w2Ob/aDOhKCj8j2X30IeMOQ5j7EIsV6IWKIMWUV1e
	3
X-Gm-Gg: ASbGnctifr9fTD+75HTLOk8otEsrAB90P4kdn1IUnju6TXdswtiFBTPkjvFra3TdiOy
	lGdbhySoF9wxBxijyIelKXOjBdbxVRMImCO9Cbc9IKdaOoEaVr2a/oTUqkVwSa67RmfXCEp870x
	JTcKcgq7cooL+6X/WZh44IGT5jPIqJE6SvvPuxBgRU9fXD2eLtbkpy99BwNLEvpMyjiu8I+syV7
	y/W7KxJhKg9fj1pnbOC1WuyDEGcE/EZf6IBy8AUvuhpo8/faby2Tq/wnSEGxlE=
X-Google-Smtp-Source: AGHT+IGcI12gDXybQxwcAzQEejE9ZVyUNB6RappGD5rtEDkW1ikp9QuBYtlqVjXICVCqXZ+/45HwDA==
X-Received: by 2002:a05:600c:8a3:b0:42c:baf1:4c7 with SMTP id 5b1f17b1804b1-4361c5a2ec2mr18849105e9.4.1733923783947;
        Wed, 11 Dec 2024 05:29:43 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f063357csm141361975e9.22.2024.12.11.05.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 05:29:43 -0800 (PST)
Message-ID: <5418a6e3-0f90-4922-ac91-c16da9677b32@tuxon.dev>
Date: Wed, 11 Dec 2024 15:29:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org,
 yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
 <20241210184542.GA4077820-robh@kernel.org>
 <437b8d13-8ec1-40c7-b95c-ddb836e123d6@tuxon.dev>
 <CAL_Jsq+sdX+3R0USwfYT2yqC9aTGc+LzwyPsQiT770fJ1BgEAw@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAL_Jsq+sdX+3R0USwfYT2yqC9aTGc+LzwyPsQiT770fJ1BgEAw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_052945_869266_2D9B230D 
X-CRM114-Status: GOOD (  25.62  )
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

CgpPbiAxMS4xMi4yMDI0IDE0OjQ2LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBXZWQsIERlYyAx
MSwgMjAyNCBhdCA2OjIz4oCvQU0gQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhQHR1eG9u
LmRldj4gd3JvdGU6Cj4+Cj4+IEhpLCBSb2IsCj4+Cj4+IE9uIDEwLjEyLjIwMjQgMjA6NDUsIFJv
YiBIZXJyaW5nIHdyb3RlOgo+Pj4gT24gVHVlLCBOb3YgMjYsIDIwMjQgYXQgMTE6MjA6MzZBTSAr
MDIwMCwgQ2xhdWRpdSB3cm90ZToKPj4+PiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5i
ZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4+Pj4KPj4+PiBUaGUgUlovRzNTIHN5c3RlbSBjb250
cm9sbGVyIChTWVNDKSBoYXMgcmVnaXN0ZXJzIHRvIGNvbnRyb2wgc2lnbmFscyB0aGF0Cj4+Pj4g
YXJlIHJvdXRlZCB0byB2YXJpb3VzIElQcy4gVGhlc2Ugc2lnbmFscyBtdXN0IGJlIGNvbnRyb2xs
ZWQgZHVyaW5nCj4+Pj4gY29uZmlndXJhdGlvbiBvZiB0aGUgcmVzcGVjdGl2ZSBJUHMuIE9uZSBz
dWNoIHNpZ25hbCBpcyB0aGUgVVNCIFBXUlJEWSwKPj4+PiB3aGljaCBjb25uZWN0cyB0aGUgU1lT
QyBhbmQgdGhlIFVTQiBQSFkuIFRoaXMgc2lnbmFsIG11c3QgdG8gYmUgY29udHJvbGxlZAo+Pj4+
IGJlZm9yZSBhbmQgYWZ0ZXIgdGhlIHBvd2VyIHRvIHRoZSBVU0IgUEhZIGlzIHR1cm5lZCBvZmYv
b24uCj4+Pj4KPj4+PiBPdGhlciBzaW1pbGFyIHNpZ25hbHMgaW5jbHVkZSB0aGUgZm9sbG93aW5n
IChhY2NvcmRpbmcgdG8gdGhlIFJaL0czUwo+Pj4+IGhhcmR3YXJlIG1hbnVhbCk6Cj4+Pj4KPj4+
PiAqIFBDSWU6Cj4+Pj4gLSBBTExPV19FTlRFUl9MMSBzaWduYWwgY29udHJvbGxlZCB0aHJvdWdo
IHRoZSBTWVNfUENJRV9DRkcgcmVnaXN0ZXIKPj4+PiAtIFBDSUVfUlNUX1JTTV9CIHNpZ25hbCBj
b250cm9sbGVkIHRocm91Z2ggdGhlIFNZU19QQ0lFX1JTVF9SU01fQgo+Pj4+ICAgcmVnaXN0ZXIK
Pj4+PiAtIE1PREVfUlhURVJNSU5BVElPTiBzaWduYWwgY29udHJvbGxlZCB0aHJvdWdoIFNZU19Q
Q0lFX1BIWSByZWdpc3Rlcgo+Pj4+Cj4+Pj4gKiBTUEk6Cj4+Pj4gLSBTRUxfU1BJX09DVEEgc2ln
bmFsIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfSVBDT05UX1NFTF9TUElfT0NUQQo+Pj4+ICAgcmVn
aXN0ZXIKPj4+Pgo+Pj4+ICogSTJDL0kzQzoKPj4+PiAtIGFmX2J5cGFzcyBJMkMgc2lnbmFscyBj
b250cm9sbGVkIHRocm91Z2ggU1lTX0kyQ3hfQ0ZHIHJlZ2lzdGVycwo+Pj4+ICAgKHg9MC4uMykK
Pj4+PiAtIGFmX2J5cGFzcyBJM0Mgc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfSTNDX0NG
RyByZWdpc3Rlcgo+Pj4+Cj4+Pj4gKiBFdGhlcm5ldDoKPj4+PiAtIEZFQ19HSUdBX0VOQUJMRSBF
dGhlcm5ldCBzaWduYWxzIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfR0VUSHhfQ0ZHCj4+Pj4gICBy
ZWdpc3RlcnMgKHg9MC4uMSkKPj4+Pgo+Pj4+IEFkZCAjcmVuZXNhcyxzeXNjLXNpZ25hbC1jZWxs
cyBEVCBwcm9wZXJ0eSB0byBhbGxvdyBkaWZmZXJlbnQgU1lTQyBzaWduYWxzCj4+Pj4gY29uc3Vt
ZXJzIHRvIG1hbmFnZSB0aGVzZSBzaWduYWxzLgo+Pj4+Cj4+Pj4gVGhlIGdvYWwgaXMgdG8gZW5h
YmxlIGNvbnN1bWVycyB0byBzcGVjaWZ5IHRoZSByZXF1aXJlZCBhY2Nlc3MgZGF0YSBmb3IKPj4+
PiB0aGVzZSBzaWduYWxzICh0aHJvdWdoIGRldmljZSB0cmVlKSBhbmQgbGV0IHRoZWlyIHJlc3Bl
Y3RpdmUgZHJpdmVycwo+Pj4+IGNvbnRyb2wgdGhlc2Ugc2lnbmFscyB2aWEgdGhlIHN5c2NvbiBy
ZWdtYXAgcHJvdmlkZWQgYnkgdGhlIHN5c3RlbQo+Pj4+IGNvbnRyb2xsZXIgZHJpdmVyLiBGb3Ig
ZXhhbXBsZSwgdGhlIFVTQiBQSFkgd2lsbCBkZXNjcmliZSB0aGlzIHJlbGF0aW9uCj4+Pj4gdXNp
bmcgdGhlIGZvbGxvd2luZyBEVCBwcm9wZXJ0eToKPj4+Pgo+Pj4+IHVzYjJfcGh5MTogdXNiLXBo
eUAxMWUzMDIwMCB7Cj4+Pj4gICAgICAvLyAuLi4KPj4+PiAgICAgIHJlbmVzYXMsc3lzYy1zaWdu
YWwgPSA8JnN5c2MgMHhkNzAgMHgxPjsKPj4+PiAgICAgIC8vIC4uLgo+Pj4+IH07Cj4+Pj4KPj4+
PiBBbG9uZyB3aXRoIGl0LCBhZGQgdGhlIHN5c2NvbiB0byB0aGUgY29tcGF0aWJsZSBsaXN0IGFz
IGl0IHdpbGwgYmUKPj4+PiByZXF1ZXN0ZWQgYnkgdGhlIGNvbnN1bWVyIGRyaXZlcnMuIFRoZSBz
eXNjb24gd2FzIGFkZGVkIHRvIHRoZSByZXN0IG9mCj4+Pj4gc3lzdGVtIGNvbnRyb2xsZXIgdmFy
aWFudHMgYXMgdGhlc2UgYXJlIHNpbWlsYXIgd2l0aCBSWi9HM1MgYW5kIGNhbgo+Pj4+IGJlbmVm
aXQgZnJvbSB0aGUgaW1wbGVtZW50YXRpb24gcHJvcG9zZWQgaW4gdGhpcyBzZXJpZXMuCj4+Pj4K
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAu
cmVuZXNhcy5jb20+Cj4+Pj4gLS0tCj4+Pj4KPj4+PiBDaGFuZ2VzIGluIHYyOgo+Pj4+IC0gbm9u
ZTsgdGhpcyBwYXRjaCBpcyBuZXcKPj4+Pgo+Pj4+Cj4+Pj4gIC4uLi9zb2MvcmVuZXNhcy9yZW5l
c2FzLHJ6ZzJsLXN5c2MueWFtbCAgICAgICB8IDIzICsrKysrKysrKysrKysrLS0tLS0KPj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pj4KPj4+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yZW5l
c2FzL3JlbmVzYXMscnpnMmwtc3lzYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9yZW5lc2FzL3JlbmVzYXMscnpnMmwtc3lzYy55YW1sCj4+Pj4gaW5kZXggNDM4
NmIyYzNmYTRkLi45MGY4MjdlOGRlM2UgMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yZW5lc2FzL3JlbmVzYXMscnpnMmwtc3lzYy55YW1sCj4+
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yZW5lc2FzL3Jl
bmVzYXMscnpnMmwtc3lzYy55YW1sCj4+Pj4gQEAgLTE5LDExICsxOSwxMyBAQCBkZXNjcmlwdGlv
bjoKPj4+Pgo+Pj4+ICBwcm9wZXJ0aWVzOgo+Pj4+ICAgIGNvbXBhdGlibGU6Cj4+Pj4gLSAgICBl
bnVtOgo+Pj4+IC0gICAgICAtIHJlbmVzYXMscjlhMDdnMDQzLXN5c2MgIyBSWi9HMlVMIGFuZCBS
Wi9GaXZlCj4+Pj4gLSAgICAgIC0gcmVuZXNhcyxyOWEwN2cwNDQtc3lzYyAjIFJaL0cye0wsTEN9
Cj4+Pj4gLSAgICAgIC0gcmVuZXNhcyxyOWEwN2cwNTQtc3lzYyAjIFJaL1YyTAo+Pj4+IC0gICAg
ICAtIHJlbmVzYXMscjlhMDhnMDQ1LXN5c2MgIyBSWi9HM1MKPj4+PiArICAgIGl0ZW1zOgo+Pj4+
ICsgICAgICAtIGVudW06Cj4+Pj4gKyAgICAgICAgICAtIHJlbmVzYXMscjlhMDdnMDQzLXN5c2Mg
IyBSWi9HMlVMIGFuZCBSWi9GaXZlCj4+Pj4gKyAgICAgICAgICAtIHJlbmVzYXMscjlhMDdnMDQ0
LXN5c2MgIyBSWi9HMntMLExDfQo+Pj4+ICsgICAgICAgICAgLSByZW5lc2FzLHI5YTA3ZzA1NC1z
eXNjICMgUlovVjJMCj4+Pj4gKyAgICAgICAgICAtIHJlbmVzYXMscjlhMDhnMDQ1LXN5c2MgIyBS
Wi9HM1MKPj4+PiArICAgICAgLSBjb25zdDogc3lzY29uCj4+Pj4KPj4+PiAgICByZWc6Cj4+Pj4g
ICAgICBtYXhJdGVtczogMQo+Pj4+IEBAIC00Miw5ICs0NCwxNyBAQCBwcm9wZXJ0aWVzOgo+Pj4+
ICAgICAgICAtIGNvbnN0OiBjbTMzc3RieXJfaW50Cj4+Pj4gICAgICAgIC0gY29uc3Q6IGNhNTVf
ZGVueQo+Pj4+Cj4+Pj4gKyAgIiNyZW5lc2FzLHN5c2Mtc2lnbmFsLWNlbGxzIjoKPj4+PiArICAg
IGRlc2NyaXB0aW9uOgo+Pj4+ICsgICAgICBUaGUgbnVtYmVyIG9mIGNlbGxzIG5lZWRlZCB0byBj
b25maWd1cmUgYSBTWVNDIGNvbnRyb2xsZWQgc2lnbmFsLiBGaXJzdAo+Pj4+ICsgICAgICBjZWxs
IHNwZWNpZmllcyB0aGUgU1lTQyBvZmZzZXQgb2YgdGhlIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXIs
IHNlY29uZCBjZWxsCj4+Pj4gKyAgICAgIHNwZWNpZmllcyB0aGUgYml0bWFzayBpbiByZWdpc3Rl
ci4KPj4+PiArICAgIGNvbnN0OiAyCj4+Pgo+Pj4gSWYgdGhlcmUncyBvbmx5IG9uZSBwb3NzaWJs
ZSB2YWx1ZSwgdGhlbiBqdXN0IGZpeCB0aGUgc2l6ZSBpbiB0aGUgdXNlcnMuCj4+PiBXZSBkb24n
dCBuZWVkICNmb28tY2VsbHMgdW50aWwgdGhpbmdzIGFyZSByZWFsbHkgZ2VuZXJpYy4gUGx1cyBw
YXRjaAo+Pj4gOCBhbHJlYWR5IGlnbm9yZXMgdGhpcyBiYXNlZCBvbiB0aGUgc2NoZW1hLiBBbmQg
dGhlcmUncyBpbXBsaWNhdGlvbnMgdG8KPj4+IGRlZmluaW5nIHRoZW0uIEZvciBleGFtcGxlLCB0
aGUgcGF0dGVybiBpcyB0aGF0IHRoZSBjb25zdW1lciBwcm9wZXJ0eQo+Pj4gbmFtZSBpcyByZW5l
c2FzLHN5c2Mtc2lnbmFscywgbm90IHJlbmVzYXMsc3lzYy1zaWduYWwuCj4+Cj4+IE9LLCBJJ2xs
IGZpeCB0aGUgc2l6ZSBpbiB1c2Vycy4KPiAKPiBZb3UgYWxyZWFkeSBkaWQgZm9yIHRoZSBvbmUg
aW4gdGhpcyBzZXJpZXMuCj4gCj4+Pgo+Pj4gTWF5YmUgc29tZW9uZSB3YW50cyB0byBjcmVhdGUg
YSAnaC93IChzaWduYWwpIGNvbnRyb2wnIHN1YnN5c3RlbSAoYW5kCj4+PiBiaW5kaW5nKSB0aGF0
IGlzIGp1c3QgJ3JlYWQsIGFzc2VydCwgb3IgZGVhc3NlcnQgYSBoL3cgc2lnbmFsJy4gUGVyaGFw
cwo+Pgo+PiBVbnRpbCB0aGVuLCBpcyBpdCBPSyBmb3IgeW91IHRvIGtlZXAgaXQgYXMgcHJvcG9z
ZWQgaGVyZT8KPiAKPiBZZXMuCj4gCj4+PiBldmVuIHRoZSByZXNldCBzdWJzeXN0ZW0gY291bGQg
YmUgbW9ycGhlZCBpbnRvIHRoYXQgYXMgSSB0aGluayB0aGVyZQo+Pj4gd291bGQgYmUgYSBsb3Qg
b2Ygb3ZlcmxhcC4KPj4KPj4gVGhlIFVTQiBQV1JSRFkgc2lnbmFsIGhhbmRsaW5nIGhhcyBiZWVu
IGluaXRpYWxseSBpbXBsZW1lbnRlZCB0aG91Z2ggYQo+PiByZXNldCBjb250cm9sbGVyIGRyaXZl
ciBidXQsIGFmdGVyIGRpc2N1c3Npb24gd2l0aCBQaGlsaXBwIGl0IGhhcyBiZWVuCj4+IGNvbmNs
dWRlZCB0aGF0IGl0IHNob3VsZCBiZSBoYW5kbGVkIGRpZmZlcmVudGx5LCBzaW5jZSBpdCBpcyBu
b3QgYSByZXNldAo+PiBzaWduYWwuCj4gCj4gRXZlcnkgcmVzZXQgaXMgYSBzaWduYWwsIGJ1dCBl
dmVyeSBzaWduYWwgaXMgbm90IGEgcmVzZXQuCj4gCj4+PiBNYXliZSB0aGF0IHdvdWxkIGN1dCBk
b3duIG9uIGEgbG90IG9mIHRoZXNlCj4+PiBzeXNjb24gcGhhbmRsZSBwcm9wZXJ0aWVzLiBJIHdv
dWxkIGZpbmQgdGhhdCBhIGxvdCBtb3JlIGFjY2VwdGFibGUgdGhhbgo+Pj4gdGhlIGdlbmVyaWMg
J3N5c2NvbnMnIGFuZCAnI3N5c2Nvbi1jZWxscycgYmluZGluZyB0aGF0IHdhcyBwcm9wb3NlZCBh
dAo+Pj4gc29tZSBwb2ludC4KPj4+Cj4+Pgo+Pj4+ICsKPj4+PiAgcmVxdWlyZWQ6Cj4+Pj4gICAg
LSBjb21wYXRpYmxlCj4+Pj4gICAgLSByZWcKPj4+PiArICAtICIjcmVuZXNhcyxzeXNjLXNpZ25h
bC1jZWxscyIKPj4+Cj4+PiBOZXcgcmVxdWlyZWQgcHJvcGVydGllcyBhcmUgYW4gQUJJIGJyZWFr
Lgo+Pgo+PiBJJ3ZlIGFkZGVkIGl0IGFzIGluIHRoZSBvbGQgRFRzIHRoZSBzeXN0ZW0tY29udHJv
bGxlciBub2RlIGlzIGRpc2FibGVkLgo+IAo+IE9rLCBzbyBpdCBkZXBlbmRzIGlmIHRoZSBjb25z
dW1lcnMgdHJlYXQgdGhpcyBub2RlIGFzIHJlcXVpcmVkIG9yIG5vdC4KClRoZSBvbmx5IGN1cnJl
bnQgY29uc3VtZXIgaXMgdGhlIHRoZSBSWi9HM1MgVVNCIFBIWSB3aGljaCBpcyBhZGRlZCBhbG9u
Zwp3aXRoIHRoaXMgc2VyaWVzLgoKPiBPciBtYXliZSB0aGV5IGFyZSBhbGwgZGlzYWJsZWQgdG9v
Lgo+IAo+PiBXaXRoIHRoYXQsIGRvIHlvdSBjb25zaWRlciBpdCBPSyB0byBrZWVwIGl0Pwo+IAo+
IE5vLCBhcyB3ZSdyZSBkcm9wcGluZyB0aGUgcHJvcGVydHkgYXJlbid0IHdlPwoKWW91J3JlIHJp
Z2h0ISBTdHVwaWQgcXVlc3Rpb24gZnJvbSBtZSwgc29ycnkuCgpUaGFuayB5b3UgZm9yIHlvdXIg
cmV2aWV3LApDbGF1ZGl1Cgo+IAo+IFJvYgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
