Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4BACCA0EFF
	for <linux-phy@archiver.kernel.org>; Sat, 30 Aug 2025 03:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CILTqGkLu8prgsqULXfpetzFZMSeLkybUjHEFUYcI0o=; b=E9xB5goAzKVurG
	iLaCs2DBFh5hA5t2UKw25ZcdXhDaNcdR6yXri80pySHA2Myl73//4lkpMswGWiZ+o6s1W8WtJvHDL
	2CBpldi2xPt4uDpQldA7SludJ6/6yMB7zZfSEWUsnp0l3MaFN72OEHJf4tqpJAUnF4Wb0/4zWq2yj
	yX5/K9pBbUkMKNQS7G1dg3W1ENaXKScaF+NET5CyKhQJTPOWLavYTWilbVAwNwvv3mC4oeaGgJhF/
	KbZGI4Lv1dojGzTgGF/e5sW+XMTJ3j8yxNNqnHKVKfYzgWFE13N1fGJjh/uzhuv6bn1Ume+Us1Yze
	wLPTFZgW08z9MTfdllBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usCCy-00000007NNY-0oJo;
	Sat, 30 Aug 2025 03:24:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usCAE-00000007NHQ-12gw;
	Sat, 30 Aug 2025 03:22:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3E6D560191;
	Sat, 30 Aug 2025 03:22:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAA81C4CEF0;
	Sat, 30 Aug 2025 03:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756524120;
	bh=uJCWLg8Xr/0C+/8ZRu6677VYEHkkf5iwokGEhBnGEiE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bvEbtI1ytCwUwam3rCM76cmTxjzFL004GOrQNw0nOxG3e7xUMl0Y2Xb3LISngBCrs
	 quhz/Siq8fyNOa/n5vOlMC3BsLo51jbgRMXLqI0YqhKBgre2UOyFzcPdhbS/qcovLu
	 ULPkFdUuWHYFvAJIaN6F9kSnNRSlb/E5rTnwOFLO6av/oInj11Jdu3KrdRK8pUeE+S
	 nYN2IvDhE6/pkaf4KBQWwLTMkFerx+2QWl9GeGBy5ltBDg0k+zps5rAIy01sNB+eSM
	 QuL2KyC9IMQc5gj/0iUdovvDdJ6or4DypUQ9GwZvEkJg7FLl4I+CtMDzx5A7Q6lQF9
	 hD8I6wodAF2yg==
Date: Sat, 30 Aug 2025 08:51:51 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: 'Krzysztof Kozlowski' <krzk@kernel.org>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com, 
	jingoohan1@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de, m.szyprowski@samsung.com, 
	jh80.chung@samsung.com, pankaj.dubey@samsung.com
Subject: Re: [PATCH v3 07/12] dt-bindings: PCI: Add support for Tesla FSD SoC
Message-ID: <3eykohfvqgkbvwirzx63bx65d5uv774gib65bcyjlpphrssfjp@74bqakxvnkmh>
References: <20250811154638.95732-1-shradha.t@samsung.com>
 <CGME20250811154725epcas5p428fa3370a32bc2b664a4fd8260078097@epcas5p4.samsung.com>
 <20250811154638.95732-8-shradha.t@samsung.com>
 <9e065582-9349-4f39-88b5-048d333ab8d7@kernel.org>
 <000901dc101c$917bf160$b473d420$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000901dc101c$917bf160$b473d420$@samsung.com>
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

T24gTW9uLCBBdWcgMTgsIDIwMjUgYXQgMDI6MTY6MTZQTSBHTVQsIFNocmFkaGEgVG9kaSB3cm90
ZToKPiA+ID4gKwo+ID4gPiArICBwaHlzOgo+ID4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ICsK
PiA+ID4gKyAgc2Ftc3VuZyxzeXNjb24tcGNpZToKPiA+ID4gKyAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlLWFycmF5Cj4gPiA+ICsgICAgZGVzY3JpcHRp
b246IHBoYW5kbGUgZm9yIHN5c3RlbSBjb250cm9sIHJlZ2lzdGVycywgdXNlZCB0bwo+ID4gPiAr
ICAgICAgICAgICAgICAgICBjb250cm9sIHNpZ25hbHMgYXQgc3lzdGVtIGxldmVsCj4gPiAKPiA+
IFdoYXQgaXMgInN5c3RlbSBsZXZlbCI/IGFuZCB3aGF0IGFyZSB0aGVzZSAic2lnbmFscyIgYmVp
bmcgY29udHJvbGxlZD8KPiA+IAo+IAo+IEkgd2lsbCBhZGQgYSBtb3JlIGRldGFpbGVkIGRlc2Ny
aXB0aW9uIGZvciB3aHkgdGhlIHN5c2NvbiBpcyBiZWluZyB1c2VkCj4gCj4gPiAKPiA+ID4gK3Rp
dGxlOiBUZXNsYSBGU0QgU29DIHNlcmllcyBQQ0llIEhvc3QgQ29udHJvbGxlcgo+ID4gPiArCj4g
PiA+ICttYWludGFpbmVyczoKPiA+ID4gKyAgLSBTaHJhZGhhIFRvZGkgPHNocmFkaGEudEBzYW1z
dW5nLmNvbT4KPiA+ID4gKwo+ID4gPiArZGVzY3JpcHRpb246Cj4gPiA+ICsgIFRlc2xhIEZTRCBT
b0NzIFBDSWUgaG9zdCBjb250cm9sbGVyIGluaGVyaXRzIGFsbCB0aGUgY29tbW9uCj4gPiA+ICsg
IHByb3BlcnRpZXMgZGVmaW5lZCBpbiBzYW1zdW5nLGV4eW5vcy1wY2llLnlhbWwKPiA+ID4gKwo+
ID4gPiArYWxsT2Y6Cj4gPiA+ICsgIC0gJHJlZjogL3NjaGVtYXMvcGNpL3NhbXN1bmcsZXh5bm9z
LXBjaWUueWFtbCMKPiA+ID4gKwo+ID4gPiArcHJvcGVydGllczoKPiA+ID4gKyAgY29tcGF0aWJs
ZToKPiA+ID4gKyAgICBjb25zdDogdGVzbGEsZnNkLXBjaWUKPiA+ID4gKwo+ID4gPiArICBjbG9j
a3M6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDQKPiA+ID4gKwo+ID4gPiArICBjbG9jay1uYW1lczoK
PiA+ID4gKyAgICBpdGVtczoKPiA+ID4gKyAgICAgIC0gY29uc3Q6IGF1eAo+ID4gPiArICAgICAg
LSBjb25zdDogZGJpCj4gPiA+ICsgICAgICAtIGNvbnN0OiBtc3RyCj4gPiA+ICsgICAgICAtIGNv
bnN0OiBzbHYKPiA+ID4gKwo+ID4gPiArICBudW0tbGFuZXM6Cj4gPiA+ICsgICAgbWF4aW11bTog
NAo+ID4gPiArCj4gPiA+ICsgIHNhbXN1bmcsc3lzY29uLXBjaWU6Cj4gPiA+ICsgICAgJHJlZjog
L3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZS1hcnJheQo+ID4gPiArICAg
IGRlc2NyaXB0aW9uOiBwaGFuZGxlIGZvciBzeXN0ZW0gY29udHJvbCByZWdpc3RlcnMsIHVzZWQg
dG8KPiA+ID4gKyAgICAgICAgICAgICAgICAgY29udHJvbCBzaWduYWxzIGF0IHN5c3RlbSBsZXZl
bAo+ID4gPiArCj4gPiA+ICtyZXF1aXJlZDoKPiA+ID4gKyAgLSBzYW1zdW5nLHN5c2Nvbi1wY2ll
Cj4gPiAKPiA+IGNsb2NrcyBhcmUgcmVxdWlyZWQsIGNvbXBhdGlibGUgYXMgd2VsbC4KPiA+IAo+
IAo+IFNpbmNlIHRoaXMgd2FzIGluaGVyaXRpbmcgdGhlIGNvbW1vbiBleHlub3MgeWFtbCBmaWxl
IGFuZCB0aGF0IGhhZCB0aGVzZSBwcm9wZXJ0aWVzCj4gdW5kZXIgcmVxdWlyZWQsIEkgZGlkIG5v
dCBtZW50aW9uIGFnYWluLiBXaWxsIHRha2UgY2FyZSBpbiBuZXh0IHZlcnNpb24uCj4gCgpkbWEt
Y29oZXJlbnQgbmVlZHMgdG8gYmUgYSByZXF1aXJlZCBwcm9wZXJ0eSBhcyB3ZWxsIHNpbmNlIHRo
aXMgYmluZGluZyBpcwpzdXBwb3J0aW5nIG9ubHkgb25lIGNvbnRyb2xsZXIsIHRoYXQgc2VlbSB0
byBoYXZlIGNhY2hlIGNvaGVyZW50IERNQS4KCj4gPiBNaXNzaW5nIHN1cHBsaWVzLCBib3RoIGFz
IHByb3BlcnRpZXMgYW5kIHJlcXVpcmVkLiBQQ0kgZGV2aWNlcyBkbyBub3QKPiA+IHdvcmsgd2l0
aG91dCBwb3dlci4KPiA+IAo+IAo+IEFjY29yZGluZyB0byB0aGUgSFcgZGVzaWduIG9mIEZTRCBT
b0MsIHRoZSBjb250cm9sIHRvIG1hbmFnZSBQQ0llIHBvd2VyIGlzIGdpdmVuIHRvCj4gYSBzZXBh
cmF0ZSBDUFUgd2hlcmUgY3VzdG9tIGZpcm13YXJlIHJ1bnMuIFRoZXJlZm9yZSwgdGhlIExpbnV4
IHNpZGUgZG9lcyBub3QgY29udHJvbAo+IHRoZSBQQ0llIHBvd2VyIHN1cHBsaWVzIGRpcmVjdGx5
IGFuZCBhcmUgaGVuY2Ugbm90IGluY2x1ZGVkIGluIHRoZSBkZXZpY2UgdHJlZS4KCldoYXQgZG8g
eW91IG1lYW4gYnkgJ1BDSWUgcG93ZXInPyBTdXBwbHkgdG8gdGhlIFBDSWUgY29udHJvbGxlci9i
dXMgb3IgdGhlCmRldmljZXMgY29ubmVjdGVkIHRvIHRoZSBidXM/CgotIE1hbmkKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
