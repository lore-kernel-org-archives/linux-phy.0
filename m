Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD20CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 16:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCoXBXWWi85tOA7JoLfFZTnsqGy6y7rvcqxa6kOUusY=; b=pHJ4Pnb5WOQiRd
	jF2ZL21XJ9J6/39ocpVfzRfG/G4JXZVRyCl/MR2+N+teA1nuvVZAOIIUVDM4Tu470GB10KaoOMdgn
	fn5pJnLgkNUhzk89PHRbad6npLFmc5ZmQXMhYqA0Kqjhjciwa7YmmYtR4atRRKmRRXNLsDLeHqPJc
	1mX+p2QqfbQ0fNJDVc71U1RIK07GrTuF8PrF1/lghrMjTNQxVF2wBggSe5i+0Fx28c4PSJYJZw++p
	J29oxWwUPpEoCKOiOUpTtpOHimP5a0HvJkuLGvbdKCmkhacdD1cicz9qN4LyNXD65v83Mis3v6f7B
	1j9ABKIp1w0utZZeRR0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUo9m-0000000FURS-0dg2;
	Wed, 03 Jun 2026 16:09:26 +0000
Received: from outbound1.mail.transip.nl ([2a01:7c8:7c8::72])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUo9i-0000000FUQd-3IgD
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 16:09:25 +0000
Received: from submission12.mail.transip.nl (unknown [10.103.8.163])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 4gVt1V5zL9zRj44;
	Wed,  3 Jun 2026 18:09:18 +0200 (CEST)
Received: from transip.email (unknown [10.103.8.120])
	by submission12.mail.transip.nl (Postfix) with ESMTPA id 4gVt1V2Fs4z3SJ37R;
	Wed,  3 Jun 2026 18:09:18 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 03 Jun 2026 18:09:18 +0200
From: me@herrie.org
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Herman van Hazendonk <github.com@herrie.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn
 Andersson <andersson@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
Mail-Reply-To: github.com@herrie.org, me@herrie.org
In-Reply-To: <ti5p3oreibkae4pl5sn52g3ctv3ufcs6aklwgbterksrxvxrbj@b6scawz2cqmq>
References: <20260603054809.565723-1-github.com@herrie.org>
 <20260603054809.565723-2-github.com@herrie.org>
 <ti5p3oreibkae4pl5sn52g3ctv3ufcs6aklwgbterksrxvxrbj@b6scawz2cqmq>
User-Agent: Webmail
Message-ID: <66905f4914dc022629158ac02df1c7df@herrie.org>
X-Sender: me@herrie.org
X-Scanned-By: ClueGetter at submission12.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780502958; h=from:reply-to:subject:to:
 cc:references:in-reply-to:date:mime-version:content-type;
 bh=kTA/m61jv540sGh4xUbqI8X96qKnrTavHeGABcK34xw=;
 b=lBcog0a3vWRJhh5Ky6Y9a4K8n6uHWEOvdCEfoobPhYWIdclMzODAJG95ViJwVs+pvfW+hx
 j6Ju/8EU2kjdaeF5kFQzsBDvYCf9qWAlPGGdoCy58HzC+dePji8pWoxKSKYkeDi6nFBGSo
 eAr97llmtKoUrfnkvTnlip7wE93ssiw8yVdgTGajFG9Kc+XriWd6I2FKohIb/Kv4fBGAGL
 svWzxcESHL2k86gSNnpZoaJBFSexeUi0uf/TuMkQ1CX/t43ptKJzXJq6EXTT6Gv+gwQH41
 WSP33Be/mXkW761Tc85FHqCZ6XhpAcmixSSgUGg8XKHly3abBeZ/zpMl69JHoQ==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_090923_644777_6F4D3068 
X-CRM114-Status: GOOD (  19.76  )
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
Reply-To: github.com@herrie.org, me@herrie.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjAyNi0wNi0wMyAxNTo1NywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBXZWQsIEp1
biAwMywgMjAyNiBhdCAwNzo0ODowOEFNICswMjAwLCBIZXJtYW4gdmFuIEhhemVuZG9uayB3cm90
ZToKPj4gQWRkIGFuIG9wdGlvbmFsICJxY29tLHZlbmRvci1pbml0LXNlcSIgcHJvcGVydHkgY2Fy
cnlpbmcgcmF3IFVMUEkKPj4gKGFkZHJlc3MsIHZhbHVlKSBwYWlycyB0aGF0IGFyZSB3cml0dGVu
IGFmdGVyIFBIWSByZXNldC4KPj4gCj4+IFVubGlrZSB0aGUgZXhpc3RpbmcgInFjb20saW5pdC1z
ZXEiIHByb3BlcnR5LCB0aGUgYWRkcmVzcyBmaWVsZCBpcwo+PiBOT1Qgb2Zmc2V0IGJ5IFVMUElf
RVhUX1ZFTkRPUl9TUEVDSUZJQywgc28gdGhlIG5ldyBwcm9wZXJ0eSBjYW4KPj4gcmVhY2ggdGhl
IHN0YW5kYXJkIFVMUEkgdmVuZG9yIHJlZ2lzdGVyIHJhbmdlICgweDMwLTB4M2YpLiBNU004eDYw
LQo+PiBjbGFzcyBoYXJkd2FyZSBuZWVkcyB0aGlzIHJhbmdlIHRvIHByb2dyYW1tZSBwcmUtZW1w
aGFzaXMsIEhTIGRyaXZlcgo+PiBzbG9wZSBhbmQgQ0RSIGF1dG8tcmVzZXQgYml0cyB0aGUgbGVn
YWN5IG1zbV9vdGcgZHJpdmVyIHVzZWQgdG8gc2V0Cj4+IHZpYSBwbGF0Zm9ybSBkYXRhLgo+IAo+
IEFyZSB0aG9zZSByZWdpc3RlciB3cml0ZXMgc3BlY2lmaWMgdG8gdGhlIGRldmljZSBvciB0byB0
aGUgd2hvbGUKPiBwbGF0Zm9ybT8gSW4gdGhlIGxhdHRlciBjYXNlIHBsZWFzZSBleHRlbmQgdGhl
IGRyaXZlciB0byB3cml0ZSB0aGVtLgoKTG9va2luZyBhdCBldmVyeSBNU004eDYwIHJlZmVyZW5j
ZSBrZXJuZWwgSSBjb3VsZCBmaW5kIChRdWFsY29tbSdzIG93bgptc204eDYwIGJvYXJkLCBIUCBU
b3VjaFBhZCAvIEFQUTgwNjAsIGFuZCBzb21lIEhUQy9TYXVtc3VuZyBNU004NjYwCmRldmljZXMp
LCB0aGUgd3JpdGVzIHNwbGl0IGludG8gdHdvIGdyb3VwczoKClBsYXRmb3JtLWxldmVsIChzYW1l
IGFjcm9zcyBhbGwgTVNNOHg2MCBoYXJkd2FyZSk6CiAgLSByZWcgMHgzNiBiaXRzIDErMjogQ0RS
IGF1dG8tcmVzZXQgZGlzYWJsZWQsIFNFMSBnYXRpbmcgZGlzYWJsZWQKICAtIHJlZyAweDMyIGJp
dHMgWzU6NF06IHByZS1lbXBoYXNpcyBhdCAyMCUKCkJvYXJkLXNwZWNpZmljOgogIC0gcmVnIDB4
MzIgYml0cyBbMzowXTogSFMgZHJpdmVyIHNsb3BlIOKAlCBIUCBUb3VjaFBhZCB1c2VzIDUsIEhU
QwogICAgZGV2aWNlcyB1c2UgMS4gVGhpcyBjbGVhcmx5IGRlcGVuZHMgb24gYm9hcmQgbGF5b3V0
ICh0cmFjZSBsZW5ndGgsCiAgICBjb25uZWN0b3IgbG9hZGluZywgZXRjLikuCgpTbyB0aGUgcGxh
dGZvcm0tbGV2ZWwgd3JpdGVzIHNob3VsZCBtb3ZlIHVuY29uZGl0aW9uYWxseSBpbnRvIHRoZSBk
cml2ZXIKYmVoaW5kIGEgbWF0Y2gtZGF0YSBmbGFnIGZvciB0aGUgTVNNOHg2MC1jbGFzcyBjb21w
YXRpYmxlLCBhbmQgb25seSB0aGUKSFMgZHJpdmVyIHNsb3BlIHZhbHVlIGJlbG9uZ3MgaW4gRFQu
Cgo+IEFsc28gcGxlYXNlIG5vdGUgdGhhdCB3cml0aW5nIHJhdyByZWdpc3RlciB2YWx1ZXMgaXMg
Z2VuZXJhbGx5IGZyb3duZWQKPiB1cG9uIGluIHRoZSB1cHN0cmVhbS4gSXQncyBub3QgZWFzeSB0
byBmb2xsb3cgdGhvc2UgYW5kIG5vdCBuaWNlIHRvCj4gbW9kaWZ5LiBJbnN0ZWFkLCBpZiBzb21l
IHRoZSB2YWx1ZXMgYXJlIHJlcXVpcmVkIGZvciB0aGUgcGFydGljdWxhcgo+IGRldmljZSwgcGxl
YXNlIGFkZCBjb3JyZXNwb25kaW5nIHZhbHVlcyB0byB0aGUgRFQgdXNpbmcgdGhlCj4gaHVtYW4t
b3JpZW50ZWQgdmFsdWVzIHJhdGhlciB0aGFuIHRoZSByZWdpc3RlciB2YWx1ZXMuCgpBZ3JlZWQu
IFRoZSBvbGQgcGxhdGZvcm0tZGF0YSBtc21fb3RnIGRyaXZlciBhbHJlYWR5IGRpZCBleGFjdGx5
IHRoaXMKd2l0aCBuYW1lZCBmaWVsZHMgKGhzZHJ2c2xvcGUsIHBlbXBfbGV2ZWwsIGNkcl9hdXRv
cmVzZXQsIHNlMV9nYXRpbmcpLgoKSSBjYW4gZHJvcCBxY29tLHZlbmRvci1pbml0LXNlcSBlbnRp
cmVseSBhbmQgcmVwbGFjZSBpdCB3aXRoIGEgbmFtZWQKcHJvcGVydHkg4oCUIHNvbWV0aGluZyBs
aWtlIHFjb20saHMtZHJpdmVyLXNsb3BlIOKAlCBmb3IgdGhlIG9uZSB2YWx1ZSB0aGF0CmdlbnVp
bmVseSB2YXJpZXMgcGVyIGJvYXJkLgoKPiBJZiB5b3UgaGF2ZSBxdWVzdGlvbnMgcmVnYXJkaW5n
IGFueSBvZiB0aGUgYml0ZmllbGRzLCBwbGVhc2UgYXNrIGhlcmUsCj4gd2UgY2FuIHRyeSBmaW5k
aW5nIHRoZSBkYXRhIGZvciB0aG9zZS4KCk9uZSB0aGluZyBJIGhhdmVuJ3QgYmVlbiBhYmxlIHRv
IG5haWwgZG93bjogZXZlcnkgSFRDIE1TTTg2NjAgYm9hcmQgYWxzbwp3cml0ZXMgMHgwQyAoYml0
cyAyIGFuZCAzKSB0byBVTFBJIHJlZ2lzdGVyIDB4MzEgdmlhIHBoeV9pbml0X3NlcSwgYnV0CnRo
ZSBIUCBUb3VjaFBhZCB3ZWJPUyBrZXJuZWwgbmV2ZXIgc2V0cyB0aGF0IHJlZ2lzdGVyIHRocm91
Z2ggaXRzIG5hbWVkCnBsYXRmb3JtIGZpZWxkcyDigJQgYW5kIFVTQiB3b3JrcyBmaW5lIG9uIHRo
ZSBUb3VjaFBhZCB3aXRob3V0IGl0LiBEbyB5b3UKa25vdyB3aGF0IHRob3NlIHR3byBiaXRzIGlu
IDB4MzEgY29udHJvbD8gSWYgdGhleSBhcmUgbmVlZGVkIG9uIENJIDQ1bm0KUEhZIHNpbGljb24g
YnV0IG5vdCBvbiB0aGUgQVBRODA2MCBQSFkgdmFyaWFudCwgSSBzaG91bGQgcHJvYmFibHkgbGVh
dmUKdGhlbSBvdXQgb2YgdGhlIGRyaXZlciBhbmQgbm90ZSB3aHkuCgpJIGRvbid0IGhhdmUgYW55
IHRlY2huaWNhbCBkb2N1bWVudGF0aW9uIGZvciB0aGUgUzMgU29DIGZhbWlseSwgZXhjZXB0IApm
b3IgdGhlIGxlZ2FjeSBrZXJuZWxzIChIUCwgU2Ftc3VuZywgSFRDKSBhbmQgYSBidW5jaCBvZiB2
YXJpb3VzIEhQIApUb3VjaFBhZCB2YXJpYW50cy4KCkxldCBtZSBrbm93IHdoYXQgeW91IGV4cGVj
dCBhbmQgSSdsbCB3cml0ZSB1cCBhIHYyLgoKVGhhbmtzLApIZXJtYW4KCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
