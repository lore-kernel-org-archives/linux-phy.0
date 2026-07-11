Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6541C43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 18:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCumOw4rpK0k/C/8fhwQDHxTKYcB1Ym4ImdaF7rwZhI=; b=3G9uBwASxeLLzA
	wyTvpdq+Iz5fLT5n4PO/JHGSsEaMKEyZH9sIV0PLoeMvdqlXcDSDeoXRXTDGWb+DqlJS7Lr05Kh/R
	x+K2S1Kt6Pexm3qr50MmBAwpaOB9WDKIDdeW4ZS9qnnI79llUWXNtqZmEpAmgrbj/4k7gXxQZT3iW
	1zPLQfJVKfhByWmN1XXaqjBRs6k0liFio7n20wxzMkioQbFCJfwhR6dLxagFN/9d3jCOjf9/flw91
	Bm+WQV4mQ+b5yvs5eNiv//gAfoaVIgFOLLonFLtRA8rxBgIm9elCO9PDhEo/btEH/ZGhz9GfEXlV5
	CUKAvCvbaMFtXxKulm2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wicNK-00000006kxw-04Ah;
	Sat, 11 Jul 2026 18:24:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wicNJ-00000006kxn-1Q5h
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 18:24:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6476960052;
	Sat, 11 Jul 2026 18:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E013E1F000E9;
	Sat, 11 Jul 2026 18:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783794268;
	bh=MOnSftGWUGx7G7EEKEGekpV83XZP1z2R+lUyQigUCk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U3Rzk49z0V7YEdDrT9DK2kUB6O71gJWmLsyevpMMm9SaBRhICzGz8n1VRKb4LnA5b
	 WyUtZLC1F4aHGqetwB37fN0iO4OGt0/iwa2J9zFlpUwGZQYIuB6tHmJb9b6w9tcJSQ
	 rmHtunoBnyhLfjzocpbCHS8flFhIo9dyHjrB1J2Fv1+XJR/VkqVuM8lGl8U9GHlIbC
	 hZ7D3UT3hJ4mHQabMyaEkj9RD50dz65yFa/lhldOkKlUCDbRf1zuvcYVZyk8l1Zx6r
	 mVmV40Psg0+nLJdNBhV8L6Eel95dmb/LxKcfI3o19L9XLMy4AgHfOyz5pZLCOwr6tv
	 5lZLgovzYB6Dw==
Date: Sat, 11 Jul 2026 13:24:24 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Michael Scott <mike.scott@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com, abelvesa@kernel.org, 
	faisal.hassan@oss.qualcomm.com, linux-phy@lists.infradead.org, konradybcio@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, val@packett.cool, laurentiu.tudor1@dell.com, 
	alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1-dell-thena: bump linux,cma
 to 256 MiB
Message-ID: <alKJcT5d7SI-iOgz@baldur>
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-5-mike.scott@oss.qualcomm.com>
 <ac559877-f4f2-48d7-b00c-4cf24fc64489@linaro.org>
 <581cc180-b993-4b86-81ae-17822a35a1fb@oss.qualcomm.com>
 <a03fa27c-57ad-48e3-9223-b4d30978ded5@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a03fa27c-57ad-48e3-9223-b4d30978ded5@linaro.org>
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMTA6MzM6NDVQTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBPbiAyMi8wNS8yMDI2IDE4OjE2LCBNaWNoYWVsIFNjb3R0IHdyb3RlOgo+ID4g
PiDilJTilIBbJF0gPGdpdDooMC43LjAtbXVsdGlwYXNzLXYwKik+Cj4gPiAKPiA+IEdvb2QgcG9p
bnQgYWJvdXQgdGhlIGxpYmNhbWVyYSB2ZXJzaW9uLiBJIGRlYnVnZ2VkIHRoaXMgb24gVWJ1bnR1
IDI2LjA0Cj4gPiAodjAuNy4wK3BhdGNoZXMpLiBJIHRyaWVkIHRlc3RpbmcgdjAuNy4xLCBidXQg
aXQgY2F1c2VkIGEgY3Jhc2ggZHVlIHRvCj4gPiBBUEkgY2hhbmdlcyB3aXRoIG90aGVyIHBhcnRz
IG9mIHRoZSBzdWJzeXN0ZW0uwqAgSSBjaGVja2VkIHRoZSBkaWZmIG9mCj4gPiB1cHN0cmVhbSBi
ZXR3ZWVuIHYwLjcuMCBhbmQgdjAuNy4xIGZvciB0aGUgZG1hIGFsbG9jYXRvciBjb2RlIGFuZCBJ
Cj4gPiBkaWRuJ3Qgc2VlIGFueSBjaGFuZ2VzLCBidXQgSSB3YXNuJ3QgbG9va2luZyBhdCB0aGUg
c29mdHdhcmUgSVNQCj4gPiBjaGFuZ2VzLgo+ID4gCj4gPiBUaGlzIGhpZ2hsaWdodHMgdGhhdCAi
SSdtIGRvaW5nIHRoaXMgd3JvbmciLiBJJ2xsIG1vdmUgdG8gYSBjbGVhbmVyCj4gPiByb2xsaW5n
IGRpc3RybyB3aGVyZSBzdGF5aW5nIGN1cnJlbnQgaXMgYSBsb3QgZWFzaWVyLgo+ID4gCj4gPiBU
aGUgR1BVSVNQIHN1cHBvcnQgbG9va3MgZ3JlYXQhCj4gPiAKPiA+IERyb3BwaW5nIHRoaXMgcGF0
Y2ggYXMgSSdtIG5vdCB1bmRlcnN0YW5kaW5nIHRoZSBmdWxsIGFsbG9jYXRvciBzdG9yeS4KPiA+
IFNvcnJ5IGZvciB0aGUgbm9pc2UuCj4gCj4gVGhlIHdob2xlIG1ha2UgQ01BIGJpZ2dlciB0aGlu
ZyBpcyBhbiBlcnJvciBJIHdhcyBwdXNoaW5nIG15c2VsZi4KPiAKPiBDTUEgaXMgcmVxdWlyZWQg
Zm9yIHNvbWUgc3lzdGVtcyBsaWtlIHNheSBIYW50cm8gb24gaS5NWCB3aGVyZSAtIHRoZSBlbmNv
ZGVyCj4gZG9lc24ndCBrbm93IGhvdyB0byBkZWFsIHdpdGggbm9uIFBIWVMgY29udGlnIG1lbW9y
eSBzbyB3aGVuIHlvdSBhcmUgcGFzc2luZwo+IGZyYW1lYnVmZmVycyBhcm91bmQgZnJvbSBvbmNl
IGh3IGJsb2NrIHRvIGFub3RoZXIsIHlvdSBuZWVkIHRvIG1ha2UgdGhlbQo+IHBoeXNpY2FsbHkg
Y29udGlndW91cy4KPiAKPiBOb3QgYSBwcm9ibGVtIGZvciB1cyBvbiBRY29tIGh3IHRob3VnaC4g
TGlrZSBSb2Igc2FpZCwgSSdtIGFjdHVhbGx5IG5vdCBzdXJlCj4gd2h5IHdlIG5lZWQgYSBDTUEg
YmxvY2sgb24gUWNvbSBoYXJkd2FyZSBhdCBhbGwuCj4gCgomcGNpZV9zbW11IHsgc3RhdHVzID0g
InJlc2VydmVkIiB9OyBtZWFucyB0aGF0IHR5cGljYWwgTWFrZW5hIGFuZCBIYW1vYQptYWNoaW5l
cyBuZWVkIENNQS4gV2hpY2ggc2hvdWxkIGJlIHVucmVsYXRlZC4uLgoKUmVnYXJkcywKQmpvcm4K
Cj4gR1BVIG9yIFdpRmkgSSB0aGluayBidXQgbm90IGZvciBDYW1lcmEgYW55bW9yZSBhbnl3YXku
Cj4gCj4gLS0tCj4gYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
