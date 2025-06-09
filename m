Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB571C5B552
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jun 2025 08:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGy4MmZiCGT4m2ztjoAf6TVv747WrYI+98vKMx63o6M=; b=VU4Dwa0F37n5KU
	vD/XcYKs8ZSLcSyurX1mz2Q+eh3WtZWG45xnQPaibKSlzQ80ID8JHQDWS/l5xo9oAxwzRc+M0n0o3
	brHO27EoFGFFn1t1Kw0cHXvMKEuNSN1ACgvkUNG6zHCpbtCHN9p4I9YppV9WCdkZVSB4DEm7U0pNu
	gzyuw/1u52pke3TchOF1GsellTr0z/GmHW60EvExE58QwNJt2TsjBV5e5AKaI7+NNv78zxVnh1Xps
	axmhrXMHWiaqICaNwhC34rbkQermlKollzDozvQ5E4jBPSsRaGCSXgOsyh6BwPJd9QrLPjKjXGNIX
	MTeQq9E4k9welPrqKDlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOXSD-00000003csj-0XfY;
	Mon, 09 Jun 2025 08:02:01 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOXS9-00000003cs5-1c0B
	for linux-phy@lists.infradead.org;
	Mon, 09 Jun 2025 08:02:00 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id C57764333B;
	Mon,  9 Jun 2025 08:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1749456113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GWMslWGSvoXsYcCfEH9wUjkx8wd0acfIMyXXSa7t8/4=;
	b=LAwvyavXcxrHqdfx592VzTiRYZDjiiyHOItXX+9IsLrxlfW16mH7AVND/ggJfFdVKDFlOq
	bUrvazCd7FNsk229JN28YMyUqU37OSzPFoj0I5D1tEkkQhu2tS9j0D8mnEi5PUqTufcJ9n
	3sPYSsaFjm/lYW/Dk7DC6+8pECqM9ojyI/O4WJOoTrhJZQ1lzGrmnV6Su2ZNL6SEaKaLJf
	q3Kl0tt4/jmisbzbrkdgeftjk9z7sS9LC4d10luDgabF44arG/dqXPhFYn2T6XzpDVOwhF
	Y/HWoZI1P15beL58qYOo5Uo2tpQ9rXKkWYdAzemAFISi52473WMEVCO66+ST1A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,  Kishon Vijay Abraham I
 <kishon@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  linux-phy@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Convert marvell,comphy-cp110 to DT
 schema
In-Reply-To: <20250607212605.743176-1-robh@kernel.org> (Rob Herring's message
	of "Sat, 7 Jun 2025 16:26:03 -0500")
References: <20250607212605.743176-1-robh@kernel.org>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Mon, 09 Jun 2025 10:01:50 +0200
Message-ID: <87ikl51gy9.fsf@bootlin.com>
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdeltdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufgjfhgffffkgggtgfesthhqredttderjeenucfhrhhomhepofhiqhhuvghlucftrgihnhgrlhcuoehmihhquhgvlhdrrhgrhihnrghlsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeffgefhjedtfeeigeduudekudejkedtiefhleelueeiueevheekvdeludehiedvfeenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghloheplhhotggrlhhhohhsthdpmhgrihhlfhhrohhmpehmihhquhgvlhdrrhgrhihnrghlsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeekpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehvkhhouhhlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkihhshhhonheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhphhihsehlihhsthhsrdhinhhfr
 hgruggvrggurdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_010158_199990_C3DF7553 
X-CRM114-Status: GOOD (  10.59  )
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

SGkgUm9iLAoKVGhhbmtzIGZvciB0aGUgY29udmVyc2lvbi4KCk9uIDA3LzA2LzIwMjUgYXQgMTY6
MjY6MDMgLTA1LCAiUm9iIEhlcnJpbmcgKEFybSkiIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgoK
PiBDb252ZXJ0IHRoZSBNYXJ2ZWxsIENQMTEwIGNvbWJvIFBIWSBiaW5kaW5nIHRvIERUIHNjaGVt
YSBmb3JtYXQuIEl0J3MgYQo+IHN0cmFpZ2h0IGZvcndhcmQgY29udmVyc2lvbi4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+CgpbLi4uXQoKPiAr
cHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgZW51bToKPiArICAgICAgLSBtYXJ2
ZWxsLGNvbXBoeS1jcDExMAo+ICsgICAgICAtIG1hcnZlbGwsY29tcGh5LWEzNzAwCj4gKwo+ICsg
IHJlZzoKPiArICAgIG1pbkl0ZW1zOiAxCj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlw
dGlvbjogR2VuZXJpYyBDT01QSFkgcmVnaXN0ZXJzCgpXb3VsZCB5b3UgbWluZCB0byBhZGQgIihB
cm1hZGEgN2svOGspIiBoZXJlPyBUaGlzIGluZm9ybWF0aW9uIHdhcyBpbiB0aGUKZGVzY3JpcHRp
b24gYW5kIGdvdCBsb3N0LiBBcm1hZGEgN2svOGsgaGFkIChJSVJDKSBhIG51bWJlciBvZgpBcHBs
aWNhdGlvbiBQcm9jZXNzb3JzIGFuZCBDby1Qcm9jZXNzb3JzLCBpdCBtaWdodCBub3QgYmUKc3Ry
YWlnaHRmb3J3YXJkIHRvIGd1ZXNzIHdoYXQgImNwMTEwIiBtZWFucyB0byBwZW9wbGUgbm90IGZh
bWlsaWFyIHdpdGgKTWFydmVsbCBuYW1pbmcgb3RoZXJ3aXNlPwoKPiArICAgICAgLSBkZXNjcmlw
dGlvbjogTGFuZSAxIChQQ0llL0diRSkgcmVnaXN0ZXJzIChBcm1hZGEgMzcwMCkKPiArICAgICAg
LSBkZXNjcmlwdGlvbjogTGFuZSAwIChVU0IzL0diRSkgcmVnaXN0ZXJzIChBcm1hZGEgMzcwMCkK
PiArICAgICAgLSBkZXNjcmlwdGlvbjogTGFuZSAyIChTQVRBL1VTQjMpIHJlZ2lzdGVycyAoQXJt
YWRhIDM3MDApCj4gKwo+ICsgIHJlZy1uYW1lczoKPiArICAgIG1pbkl0ZW1zOiAxCgptaW5JdGVt
cyBzaG91bGQgcHJvYmFibHkgYmUgNCBhcyBpdCBpcyBvbmx5IHJlcXVpcmVkIChhbmQgbWFuZGF0
b3J5KSBmb3IKdGhlIG1hcnZlbGwsY29tcGh5LWEzNzAwIGNvbXBhdGlibGU/IEkgZG8gbm90IHRo
aW5rIHdlIGludGVuZGVkIHRvIGFzawpmb3IgYSByZWctbmFtZXMgcHJvcGVydHkgd2hlbiB0aGVy
ZSB3YXMganVzdCBvbmUgZW50cnkgKHNlZQphcm1hZGEtY3AxMXguZHRzaSkuCgo+ICsgICAgaXRl
bXM6Cj4gKyAgICAgIC0gY29uc3Q6IGNvbXBoeQo+ICsgICAgICAtIGNvbnN0OiBsYW5lMV9wY2ll
X2diZQo+ICsgICAgICAtIGNvbnN0OiBsYW5lMF91c2IzX2diZQo+ICsgICAgICAtIGNvbnN0OiBs
YW5lMl9zYXRhX3VzYjMKPiArCj4gKyAgJyNhZGRyZXNzLWNlbGxzJzoKPiArICAgIGNvbnN0OiAx
CgpTaG91bGQgYmUgcmVxdWlyZWQ/Cgo+ICsKPiArICAnI3NpemUtY2VsbHMnOgo+ICsgICAgY29u
c3Q6IDAKClNob3VsZCBiZSByZXF1aXJlZCBhcyB3ZWxsPwoKPiArCj4gKyAgY2xvY2tzOgo+ICsg
ICAgbWF4SXRlbXM6IDMKPiArICAgIGRlc2NyaXB0aW9uOiBSZWZlcmVuY2UgY2xvY2tzIGZvciBD
UDExMDsgTUcgY2xvY2ssIE1HIENvcmUgY2xvY2ssIEFYSSBjbG9jawo+ICsKPiArICBjbG9jay1u
YW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBtZ19jbGsKPiArICAgICAgLSBj
b25zdDogbWdfY29yZV9jbGsKPiArICAgICAgLSBjb25zdDogYXhpX2Nsawo+ICsKPiArICBtYXJ2
ZWxsLHN5c3RlbS1jb250cm9sbGVyOgo+ICsgICAgZGVzY3JpcHRpb246IFBoYW5kbGUgdG8gdGhl
IE1hcnZlbGwgc3lzdGVtIGNvbnRyb2xsZXIgKENQMTEwIG9ubHkpCj4gKyAgICAkcmVmOiAvc2No
ZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4gKwo+ICtwYXR0ZXJuUHJvcGVy
dGllczoKPiArICAnXnBoeUBbMC0yXSQnOgoKVGVjaG5pY2FsbHksIHRoZXNlIG5vZGVzIGFyZSBh
bHNvIG1hbmRhdG9yeSwgSSBkb24ndCByZW1lbWJlciBpZiB3ZSBjYW4KbWFyayB0aGVtIGFzIHN1
Y2ggaW4gdGhlICJyZXF1aXJlZCIgc2VjdGlvbiB0aG91Z2guCgo+ICsgICAgZGVzY3JpcHRpb246
IEEgQ09NUEhZIGxhbmUgY2hpbGQgbm9kZQo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKyAgICBhZGRp
dGlvbmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gKyAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICBy
ZWc6Cj4gKyAgICAgICAgZGVzY3JpcHRpb246IENPTVBIWSBsYW5lIG51bWJlcgo+ICsKPiArICAg
ICAgJyNwaHktY2VsbHMnOgo+ICsgICAgICAgIGNvbnN0OiAxCj4gKwo+ICsgICAgcmVxdWlyZWQ6
Cj4gKyAgICAgIC0gcmVnCj4gKyAgICAgIC0gJyNwaHktY2VsbHMnCj4gKwo+ICtyZXF1aXJlZDoK
PiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6
IGZhbHNlCgpUaGFua3MsCk1pcXXDqGwKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
