Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02C39C982C1
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 05:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvNJekuZUG9BxjoD10RhPc1qwlNgOKzcxj0ptPZZBmc=; b=zfgNWqFPlYvpVj
	0535RHTX9vtv44a9BpwGIf8LnDIW5IN4gt56tCF9b6fve7tpSwbLC0zqMhebR7k1h9LsRmcM/WZ2d
	QiN0sWF1kKXxqP6DnOZ2nifOk7Aj1pKWg/hoxRJTg26L6WwF4bFWGbu8cvXDNUX+cZxBPBjcuPamb
	gbxegSHPZQKX4KjV19s0jMv55QcFuL2HLzNcZVimWr59PLRZ95KWll36IaWz0M7CIuiyXc00egw5T
	3Ls3t1WtKPqfssb6XoH8zXTVdWrJFmiVpXnwsYTEEy26dhuj4rCBclH+3kSczH8CyqcpX1PSbgHKj
	d3/7qSStNIMuo1NJ4K5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74Hg-0000000AaOt-27Ql;
	Thu, 17 Sep 2026 05:03:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74Hf-0000000AaOn-0PSY
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 05:03:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 880A160A54;
	Thu, 17 Sep 2026 05:03:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 547731F000FF;
	Thu, 17 Sep 2026 05:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789621422;
	bh=lBig9i/ayJ1h6VvtcFLZfRuPKLDOV9hUaNacr0L+UrU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=S3MxpICFljcJbCYnAydDlp3dSxXg395h3CyI0/LaSxoGROok0gVtnPn3sLaY83w+s
	 sK9xgEJzB63dnhMRhCvLxqgBOlcj0ryKfjcW/KxL5kzKfKeEQSz+jYL7Xc4MK5Ocfu
	 fIOGuPsZUZz70ZxFiEcKvhpfMF9lNyruyN9+JVezxIKokeolvQbKdwE4PcgphuWQiH
	 PqQC3vO1AWcv0lVtDeXRQsuY6ePawU/C0u+D37zToBiKoNGrNWFs5F9PGGFvzOYFd5
	 YF16NOX+KKPuXH9zlZaxuslhJ3TVJ1ZMZmlqSGG+LqUX18HmJ4y+dCgLsmfBhPxsDF
	 5sApy1nGS1Ixw==
Date: Thu, 17 Sep 2026 07:03:20 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v17 2/5] phy: core: Add phy_get_by_of_node()
Message-ID: <rn7ednekhhqbvmqwg3ut5sdp7t4q3lwqfjzjsio272x53fodch@xavtzo6cwblm>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-2-e2197a3e2551@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-2-e2197a3e2551@linaro.org>
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

T24gU3VuLCBTZXAgMDYsIDIwMjYgYXQgMDM6MTc6MDZQTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBBZGQgbmV3IGZ1bmN0aW9uIHBoeV9nZXRfYnlfb2Zfbm9kZSgpIGFsbG93aW5n
IGxvb2t1cCBvZiBhIHBoeSBieQo+IGRldmljZV9ub2RlLiBTZXBhcmF0ZXMgZXhpc3RpbmcgbG9n
aWMgaW4gX29mX3BoeV9nZXQoKSBpbnRvIGFuIGludGVybmFsCj4gaGVscGVyIG1ldGhvZCBfb2Zf
cGh5X2dldF93aXRoX2FyZ3MoKSB0byBhbGxvdyBmb3IgcmV1c2UgaW4gbmV3IG1ldGhvZC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJv
Lm9yZz4KPiAtLS0KPiAgZHJpdmVycy9waHkvcGh5LWNvcmUuYyAgfCA5NSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvcGh5
L3BoeS5oIHwgIDYgKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKyksIDIz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIv
ZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IGluZGV4IDg5YWRkZDczMmJmZjMuLjQ5MGE3Y2RlNmQ0
MGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3BoeS1jb3JlLmMKPiBAQCAtNjA2LDIyICs2MDYsNTEgQEAgaW50IHBoeV92YWxpZGF0ZShz
dHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X21vZGUgbW9kZSwgaW50IHN1Ym1vZGUsCj4gIH0KPiAg
RVhQT1JUX1NZTUJPTF9HUEwocGh5X3ZhbGlkYXRlKTsKPiAgCj4gKy8qKgo+ICsgKiBfb2ZfcGh5
X2dldF93aXRoX2FyZ3MoKSAtIGxvb2t1cCBhbmQgb2J0YWluIGEgcmVmZXJlbmNlIHRvIGEgcGh5
IGJ5IG9mX3BoYW5kbGVfYXJncwo+ICsgKiBAYXJnczogb2ZfcGhhbmRsZV9hcmdzIHRvIHRoZSBw
aHkKPiArICoKPiArICogUmV0dXJucyB0aGUgcGh5IGZyb20gdGhlIHByb3ZpZGVyJ3Mgb2ZfeGxh
dGUsIC1FTk9ERVYgaWYgZGlzYWJsZWQsCgpOaXQ6IEtlcm5lbC1kb2MgZXhwZWN0cyAnOicgYWZ0
ZXIgJ1JldHVybnMnLgoKPiArICogLUVQUk9CRV9ERUZFUiBpZiB0aGUgcHJvdmlkZXIgaXMgbm90
IHlldCByZWdpc3RlcmVkLgo+ICsgKi8KPiArc3RhdGljIHN0cnVjdCBwaHkgKl9vZl9waHlfZ2V0
X3dpdGhfYXJncyhzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICphcmdzKQo+ICt7Cj4gKwlzdHJ1Y3Qg
cGh5ICpwaHk7Cj4gKwlzdHJ1Y3QgcGh5X3Byb3ZpZGVyICpwaHlfcHJvdmlkZXI7Cj4gKwo+ICsJ
bG9ja2RlcF9hc3NlcnRfaGVsZCgmcGh5X3Byb3ZpZGVyX211dGV4KTsKPiArCj4gKwlwaHlfcHJv
dmlkZXIgPSBvZl9waHlfcHJvdmlkZXJfbG9va3VwKGFyZ3MtPm5wKTsKPiArCWlmIChJU19FUlIo
cGh5X3Byb3ZpZGVyKSB8fCAhdHJ5X21vZHVsZV9nZXQocGh5X3Byb3ZpZGVyLT5vd25lcikpCj4g
KwkJcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4gKwo+ICsJaWYgKCFvZl9kZXZpY2Vf
aXNfYXZhaWxhYmxlKGFyZ3MtPm5wKSkgewo+ICsJCWRldl93YXJuKHBoeV9wcm92aWRlci0+ZGV2
LCAiUmVxdWVzdGVkIFBIWSBpcyBkaXNhYmxlZFxuIik7Cj4gKwkJcGh5ID0gRVJSX1BUUigtRU5P
REVWKTsKPiArCQlnb3RvIG91dF9wdXRfbW9kdWxlOwo+ICsJfQo+ICsKPiArCXBoeSA9IHBoeV9w
cm92aWRlci0+b2ZfeGxhdGUocGh5X3Byb3ZpZGVyLT5kZXYsIGFyZ3MpOwo+ICsKPiArb3V0X3B1
dF9tb2R1bGU6Cj4gKwltb2R1bGVfcHV0KHBoeV9wcm92aWRlci0+b3duZXIpOwo+ICsKPiArCXJl
dHVybiBwaHk7Cj4gK30KPiArCj4gIC8qKgo+ICAgKiBfb2ZfcGh5X2dldCgpIC0gbG9va3VwIGFu
ZCBvYnRhaW4gYSByZWZlcmVuY2UgdG8gYSBwaHkgYnkgcGhhbmRsZQo+ICAgKiBAbnA6IGRldmlj
ZV9ub2RlIGZvciB3aGljaCB0byBnZXQgdGhlIHBoeQo+ICAgKiBAaW5kZXg6IHRoZSBpbmRleCBv
ZiB0aGUgcGh5Cj4gICAqCj4gLSAqIFJldHVybnMgdGhlIHBoeSBhc3NvY2lhdGVkIHdpdGggdGhl
IGdpdmVuIHBoYW5kbGUgdmFsdWUsCj4gLSAqIGFmdGVyIGdldHRpbmcgYSByZWZjb3VudCB0byBp
dCBvciAtRU5PREVWIGlmIHRoZXJlIGlzIG5vIHN1Y2ggcGh5IG9yCj4gLSAqIC1FUFJPQkVfREVG
RVIgaWYgdGhlcmUgaXMgYSBwaGFuZGxlIHRvIHRoZSBwaHksIGJ1dCB0aGUgZGV2aWNlIGlzCj4g
LSAqIG5vdCB5ZXQgbG9hZGVkLiBUaGlzIGZ1bmN0aW9uIHVzZXMgb2ZfeGxhdGUgY2FsbCBiYWNr
IGZ1bmN0aW9uIHByb3ZpZGVkCj4gLSAqIHdoaWxlIHJlZ2lzdGVyaW5nIHRoZSBwaHlfcHJvdmlk
ZXIgdG8gZmluZCB0aGUgcGh5IGluc3RhbmNlLgo+ICsgKiBSZXR1cm5zIHRoZSBwaHkgYXNzb2Np
YXRlZCB3aXRoIHRoZSBnaXZlbiBwaGFuZGxlIHZhbHVlIGFmdGVyIGdldHRpbmcKPiArICogYSBy
ZWZjb3VudCB0byBpdDsgLUVOT0RFViBpZiB0aGVyZSBpcyBubyBzdWNoIHBoeSBvciB0aGUgcGh5
IGlzCj4gKyAqIGRpc2FibGVkOyAtRVBST0JFX0RFRkVSIGlmIHRoZSBwaHkgcHJvdmlkZXIgaXMg
bm90IHlldCBhdmFpbGFibGUuCj4gICAqLwo+ICBzdGF0aWMgc3RydWN0IHBoeSAqX29mX3BoeV9n
ZXQoc3RydWN0IGRldmljZV9ub2RlICpucCwgaW50IGluZGV4KQo+ICB7Cj4gIAlpbnQgcmV0Owo+
IC0Jc3RydWN0IHBoeV9wcm92aWRlciAqcGh5X3Byb3ZpZGVyOwo+IC0Jc3RydWN0IHBoeSAqcGh5
ID0gTlVMTDsKPiArCXN0cnVjdCBwaHkgKnBoeTsKPiAgCXN0cnVjdCBvZl9waGFuZGxlX2FyZ3Mg
YXJnczsKPiAgCj4gIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+
IEBAIC02MzcsMjIgKzY2Niw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGh5ICpfb2ZfcGh5X2dldChzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wLCBpbnQgaW5kZXgpCj4gIAkJZ290byBvdXRfcHV0X25vZGU7Cj4g
IAl9Cj4gIAo+IC0JcGh5X3Byb3ZpZGVyID0gb2ZfcGh5X3Byb3ZpZGVyX2xvb2t1cChhcmdzLm5w
KTsKPiAtCWlmIChJU19FUlIocGh5X3Byb3ZpZGVyKSB8fCAhdHJ5X21vZHVsZV9nZXQocGh5X3By
b3ZpZGVyLT5vd25lcikpIHsKPiAtCQlwaHkgPSBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+IC0J
CWdvdG8gb3V0X3B1dF9ub2RlOwo+IC0JfQo+IC0KPiAtCWlmICghb2ZfZGV2aWNlX2lzX2F2YWls
YWJsZShhcmdzLm5wKSkgewo+IC0JCWRldl93YXJuKHBoeV9wcm92aWRlci0+ZGV2LCAiUmVxdWVz
dGVkIFBIWSBpcyBkaXNhYmxlZFxuIik7Cj4gLQkJcGh5ID0gRVJSX1BUUigtRU5PREVWKTsKPiAt
CQlnb3RvIG91dF9wdXRfbW9kdWxlOwo+IC0JfQo+IC0KPiAtCXBoeSA9IHBoeV9wcm92aWRlci0+
b2ZfeGxhdGUocGh5X3Byb3ZpZGVyLT5kZXYsICZhcmdzKTsKPiAtCj4gLW91dF9wdXRfbW9kdWxl
Ogo+IC0JbW9kdWxlX3B1dChwaHlfcHJvdmlkZXItPm93bmVyKTsKPiArCXBoeSA9IF9vZl9waHlf
Z2V0X3dpdGhfYXJncygmYXJncyk7Cj4gIAo+ICBvdXRfcHV0X25vZGU6Cj4gIAlvZl9ub2RlX3B1
dChhcmdzLm5wKTsKPiBAQCAtMTAwMSw2ICsxMDE1LDQxIEBAIHN0cnVjdCBwaHkgKmRldm1fb2Zf
cGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAsCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KTsK
PiAgCj4gKy8qKgo+ICsgKiBwaHlfZ2V0X2J5X29mX25vZGUoKSAtIGxvb2t1cCBhbmQgb2J0YWlu
IGEgcmVmZXJlbmNlIHRvIGEgcGh5IGJ5IGRldmljZV9ub2RlCj4gKyAqIEBucDogbm9kZSBjb250
YWluaW5nIHRoZSBwaHkKPiArICoKPiArICogUmV0dXJucyB0aGUgcGh5IGFzc29jaWF0ZWQgd2l0
aCB0aGUgZGV2aWNlIG5vZGUgb3IgRVJSX1BUUi4KClNhbWUgY29tbWVudC4KCj4gKyAqLwo+ICtz
dHJ1Y3QgcGh5ICpwaHlfZ2V0X2J5X29mX25vZGUoc3RydWN0IGRldmljZV9ub2RlICpucCkKPiAr
ewo+ICsJc3RydWN0IG9mX3BoYW5kbGVfYXJncyBhcmdzID0geyAubnAgPSBucCwgLmFyZ3NfY291
bnQgPSAwIH07Cj4gKwlzdHJ1Y3QgcGh5ICpwaHk7Cj4gKwo+ICsJaWYgKCFucCkKPiArCQlyZXR1
cm4gRVJSX1BUUigtRUlOVkFMKTsKCklzIHRoaXMgY2hlY2sgcmVhbGx5IG5lZWRlZD8gTm9uZSBv
ZiB0aGUgb3RoZXIgcGh5X2dldCooKSBmdW5jdGlvbnMgaGF2ZSB0aGlzCmNoZWNrLgoKPiArCj4g
KwltdXRleF9sb2NrKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+ICsKPiArCXBoeSA9IF9vZl9waHlf
Z2V0X3dpdGhfYXJncygmYXJncyk7Cj4gKwoKTml0OiBEcm9wIHRoZSBuZXdsaW5lLgoKLSBNYW5p
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
