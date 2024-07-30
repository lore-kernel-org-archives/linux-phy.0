Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B013FC3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jul 2024 08:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUuMfwygs9KteLUPzOGE+iMzt+GLQtckYU00Ik7GvMA=; b=0oTHfyljXHULUl
	zghuBC+dFv3oXt7mIFooDxPKAm15npuYJ9ABhqIA85P21bsP30uhY2W+oQAkRw6H4RoM7d6e3Z+nM
	FVn3XHQeE1KFI4g3ITsDvXZqY+U7H/IgY63Kq6Rz3PvADD9XqnEWHXU1n7a5grfvvtL/TPBJFy/+O
	qpHfSUT1AZV9UolCFMrXbof3O/tQqEs9d/MCUdXEm3HEHu1GDtGu0Lrv1gfP6zGLJXjPGXSJm5qbP
	5TpSscvd4f+lh0hpSZcBqdCmXxG1XW9iSuKLo8oK2WoALa9ZvkiTLg0DJd9meXQLDhw3fEZsqL922
	zXJWUvaUuo+Dy0LthI+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhqA-0000000E9pM-0uVu;
	Tue, 30 Jul 2024 08:04:14 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhpc-0000000E9eA-0MYk;
	Tue, 30 Jul 2024 08:03:42 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1fc6a017abdso24863605ad.0;
        Tue, 30 Jul 2024 01:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722326619; x=1722931419; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9OVNGQMe/C64240V64c1zunaFPC+HkZVviRBxRM9hd0=;
        b=KZiTlhPd5IgrSiBm0l9YYJXzhXet2yeoyLARzbN4fC9HiyJNRL8kg6PfYID06ityHP
         e0kXAbD5zRg6j/uPkzS/Jxv+/5pCcMISXx6xsUHILBeO8b2IzDB2GOVErqVyH890/NCe
         jyk7WXVfBK1YH0FWxhejOvFSlvRWJOcZnHsI/lhcXX03tz5xrv/3M8jO/A6vRYc176nQ
         YmA5RHI0yA2lLzjJd7wEW/tQFJ7dCFVycU5dMbMVIRgJUnB5vkP4CKVt0iBdwOJKDhCu
         fuHjkSpD6d1WvUOc34Zwk/U/fdsv4l/WAPitdvrC7vOLzLacJ404mr5yRjJAiHQruGxu
         I3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722326619; x=1722931419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9OVNGQMe/C64240V64c1zunaFPC+HkZVviRBxRM9hd0=;
        b=SZPypQZCEIfx9m6Iobe8ugk8QQ7qjg3NnzXH3i3F9awlG9aKKphts5oUgoSQN1tsSk
         BqV8QaRIIImgf46mPWqfvQRueF/XPdhx5ZpipfUFgD2p69c1yNoWrj6UgibRUVT5Bk86
         QhqNG5H2CpEw0tZDF7sRMrDYgv7/rQhCErNx1ydfzXQail57a8PtN9vRVjHpIb4yqErS
         dBdD4jdhXXXOoGJE7eETpRiPhKFMTdrUYYvK3OgR9dZSf9+p4STbWsUqCucP1lDffQFE
         8p0zUQtoreO6RYVCPMzdfrmerzA9z//t+gTvyCPTOHb/INPKKnf2PwzVaqjAUo5y/E9r
         cwCw==
X-Forwarded-Encrypted: i=1; AJvYcCUIqP2OHBpXFICIJGRS+6BRmjSOIyNsfKdyii1gNLXOhN/jcNb930sbWAHZ0kNbr3SVUXacHbnOj8uq5BxebiZw+1ZFmM1v+27LaUicTQ==
X-Gm-Message-State: AOJu0YwqCnPLKUa1EAUrMOjsTCQ11KVMRAlVK93U08DLuTP9Jn3pAYa+
	dRXFQs8UHWqIkrDwhOrGCraqQvd4dtJlzjSVQUntEkP2itWeez0H
X-Google-Smtp-Source: AGHT+IHzrH25cPutln0r6hKGEy+zOvRDkcSSoWRSjTAN0Fvh/KG4hSP/q7SqXRvaVQfALvD8yJBdcQ==
X-Received: by 2002:a17:902:d4cd:b0:1fb:68a2:a948 with SMTP id d9443c01a7336-1ff04809ab3mr67129815ad.15.1722326618767;
        Tue, 30 Jul 2024 01:03:38 -0700 (PDT)
Received: from [172.19.1.53] (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ff067esm95122855ad.295.2024.07.30.01.03.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 01:03:38 -0700 (PDT)
Message-ID: <85a4b5c2-89f1-40d1-baec-b17479f5cae2@gmail.com>
Date: Tue, 30 Jul 2024 16:03:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240729061509.83828-1-hpchen0nvt@gmail.com>
 <20240729061509.83828-2-hpchen0nvt@gmail.com>
 <c4c2b30a-8ff9-4fc4-a1ed-adcd366d15a7@kernel.org>
Content-Language: en-US
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
In-Reply-To: <c4c2b30a-8ff9-4fc4-a1ed-adcd366d15a7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_010340_190770_EFF46A09 
X-CRM114-Status: GOOD (  19.26  )
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

RGVhciBLcnp5c3p0b2YsCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgoKCk9uIDIwMjQvNy8y
OSDkuIvljYggMDM6MjksIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjkvMDcvMjAy
NCAwODoxNSwgaHBjaGVuMCB3cm90ZToKPj4gQWRkIGR0LWJpbmRpbmdzIGZvciBVU0IyIFBIWSBm
b3VuZCBvbiB0aGUgTnV2b3RvbiBNQTM1IFNvQy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogaHBjaGVu
MCA8aHBjaGVuMG52dEBnbWFpbC5jb20+Cj4gUGxlYXNlIHVzZSBwcm9wZXIgbmFtZS4KCk9rYXks
IEkgd2lsbCBtYWtlIHRoZSBjb3JyZWN0aW9uIGFuZCB1c2UgdGhlIGNvcnJlY3QgbmFtZS4KCgoK
Pj4gLS0tCj4+ICAgLi4uL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzUtdXNiMi1waHkueWFtbCAg
IHwgNTEgKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRp
b25zKCspCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvbnV2b3RvbixtYTM1LXVzYjItcGh5LnlhbWwKPj4KPj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnV2b3RvbixtYTM1LXVzYjIt
cGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L251dm90b24s
bWEzNS11c2IyLXBoeS55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uNDE1ZWEyYzQ1OTc1Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzUtdXNiMi1waHkueWFtbAo+
PiBAQCAtMCwwICsxLDUxIEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9udXZvdG9uLG1hMzUtdXNiMi1waHkueWFt
bCMKPj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIwo+PiArCj4+ICt0aXRsZTogTnV2b3RvbiBNQTM1IFVTQjIgcGh5Cj4+ICsKPj4gK21haW50
YWluZXJzOgo+PiArICAtIGhwY2hlbjAgPGhwY2hlbjBudnRAZ21haWwuY29tPgo+IFNhbWUgaGVy
ZQoKT2theSwgSSB3aWxsIG1ha2UgdGhlIGNvcnJlY3Rpb24gYW5kIHVzZSB0aGUgY29ycmVjdCBu
YW1lLgoKCgo+PiArCj4+ICtwcm9wZXJ0aWVzOgo+PiArICBjb21wYXRpYmxlOgo+PiArICAgIGVu
dW06Cj4+ICsgICAgICAtIG51dm90b24sbWEzNS11c2IyLXBoeQo+IEFsbCBvdGhlciBkZXZpY2Vz
IGhhdmUgbmFtZSBtYTM1ZDEuIElzIHRoaXMgYSBkaWZmZXJlbnQgU29DPwoKVGhlIFNvQyBpcyB0
aGUgc2FtZSBhcyBtYTM1ZDEuIEkgd2lsbCBtb2RpZnkgbWEzNSB0byBtYTM1ZDEuCgpPcmlnaW5h
bGx5LCBJIGludGVuZGVkIHRvIGNyZWF0ZSBhIHNlcmllcyBvZiBzaGFyZWQgZHJpdmVycy4KCgoK
Pj4gKwo+PiArICAiI3BoeS1jZWxscyI6Cj4+ICsgICAgY29uc3Q6IDAKPj4gKwo+PiArICBjbG9j
a3M6Cj4+ICsgICAgbWF4SXRlbXM6IDEKPj4gKyAgICBkZXNjcmlwdGlvbjogVVNCIFBIWSBjbG9j
awo+IERyb3AgZGVzY3JpcHRpb24sIGl0J3Mgb2J2aW91cy4KCk9rYXksIEkgd2lsbCByZW1vdmUg
dGhlIGRlc2NyaXB0aW9uLgoKCgo+PiArCj4+ICsgIGNsb2NrLW5hbWVzOgo+PiArICAgIGNvbnN0
OiB1c2JkX2dhdGUKPiBEcm9wIGNsb2NrLW5hbWVzLCB5b3UgZG8gbm90IGJyaW5nIGFueSBuZXcg
aW5mb3JtYXRpb24uCgpPa2F5LCBJIHdpbGwgcmVtb3ZlIHRoZSBjbG9jay1uYW1lcy4KCgoKPj4g
Kwo+PiArICBudXZvdG9uLHN5czoKPj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9k
ZWZpbml0aW9ucy9waGFuZGxlCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBwaGFuZGxl
IG9mIHRoZSBzeXN0ZW0tbWFuYWdlbWVudCBub2RlLgo+IERlc2NyaWJlIHdoYXQgaXMgaXQgZm9y
LgoKQmVjYXVzZSB0aGlzIGRyaXZlciBoYXMgc29tZSBzdGF0dXMgYml0cyBsb2NhdGVkIGluIHRo
ZSBzeXMsIGl0IGlzIApuZWNlc3NhcnkgdG8gcmVmZXJlbmNlIHRoZSBzeXMgbGluay4KCgoKPj4g
Kwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0gY29tcGF0aWJsZQo+PiArICAtIGNsb2Nrcwo+PiArICAt
IG51dm90b24sc3lzCj4+ICsgIC0gIiNwaHktY2VsbHMiCj4gS2VlcCB0aGUgc2FtZSBvcmRlciBh
cyBpbiBwcm9wZXJ0aWVzLgoKT2theSwgSSB3aWxsIGNvcnJlY3QgdGhpcyBpc3N1ZS4KCgoKPj4g
Kwo+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+ICsKPj4gK2V4YW1wbGVzOgo+PiAr
ICAtIHwKPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIv
YXJtLWdpYy5oPgo+IFdoZXJlIGRvIHlvdSB1c2UgaXQ/CgpUaGlzIGlzIG5vdCB1c2VkIGFuZCB3
aWxsIGJlIHJlbW92ZWQuIFRoYW5rcyBmb3IgdGhlIHJlbWluZGVyLgoKCgo+PiArICAgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9jbG9jay9udXZvdG9uLG1hMzVkMS1jbGsuaD4KPj4gKwo+PiArICAg
IHVzYl9waHk6IHVzYi1waHkgewo+PiArICAgICAgICBjb21wYXRpYmxlID0gIm51dm90b24sbWEz
NS11c2IyLXBoeSI7Cj4+ICsgICAgICAgIGNsb2NrcyA9IDwmY2xrIFVTQkRfR0FURT47Cj4+ICsg
ICAgICAgIGNsb2NrLW5hbWVzID0gInVzYmRfZ2F0ZSI7Cj4+ICsgICAgICAgIG51dm90b24sc3lz
ID0gPCZzeXM+Owo+PiArICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+PiArICAgIH07Cj4gQmVz
dCByZWdhcmRzLAo+IEtyenlzenRvZgoKCkJlc3QgcmVnYXJkcywKCkh1aS1QaW5nIENoZW4KCgoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
