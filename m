Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2557C88E41
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9gO8C6x1Bavu4CRqpYK3v2XF0WTrVGrREic004lpWc=; b=2MgWw8qGiLzO7W
	LYgMItz9basE9PT6ChNE/0I4VCVuZqpOfouniDj+Wr2RJkM+5gYU0UzwmuN+w7ItyR4cFhjPc8shx
	d387jxYrjvUCcsdf2PJarrhPg58yZwfqNal2DG2YxOJx4KeGYJarWtrFJjBPknT0Y5Y4mt7D64znI
	h9252s7f9s6eWcwMxKKbvjBhv/gtZ50dyOHUSoAj3K1voKMNLynn3O3KvhvcbHV9ejCM6FnZ/rHOO
	h/wYjhADsZ93WuMyEm6eld9Gty0Gg8zqJqQ89HOneCdZXac2YuiqCGAqX9PtoCxVYdzukArJn/0Dd
	J4Sj4wwMHCBCrGhDKveA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tq9-0000000FsPF-1qhQ;
	Fri, 11 Sep 2026 05:30:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tq8-0000000FsP5-2QXa
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 05:30:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1207841FF2;
	Fri, 11 Sep 2026 05:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3458D1F000FF;
	Fri, 11 Sep 2026 05:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789104618;
	bh=aAEQkMu/TV7j/670viXKSJtglxVTRR7CotfrQlJUCTw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lbFWDbIisbjRFiHlu2iZqaRYMWR/Kyv8BYPftCIsnwEpJoHj0JgP3U7BMlJGAaG6a
	 n/NIdbfzbCkgQ9rqcgDq3bJwXU+ueoinu+6Ty2tgSLNrs8I78AqESEZBXNGhN63JTP
	 o+HEL5HF2hzQCqm1+hlcc4FqavuyLmYqXwiCoWrz+2R+PXjvaz0lhvjqeWSvb3tbn3
	 pv4s1d8O+YEY6H9MV82riiqDaHJ27WkzO46dg7ly+yeJjojWY72TjlZ8Jw+c23p+Ao
	 ytqCKLmtNMgzq29nFKA+xIpwwn3Xyt0p14vZrKH1b/zVaElidPbFsUnhJrCxS7fVQl
	 93oAC20F5oVmQ==
Date: Fri, 11 Sep 2026 07:30:11 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v4 6/9] phy: qualcomm: qmp-combo: Extract common DP PHY
 init sequence
Message-ID: <rtpmf4gfixtn3ka44reaurodo7fgsaj4amajklef22ersizweg@a2drblb654bv>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-6-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-glymur-phy-v3-v4-6-ff22e5150538@oss.qualcomm.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDc6MzA6NTlQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBFeHRyYWN0IHRoZSBjb21tb24gRFAgUEhZIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlIHNo
YXJlZCBiZXR3ZWVuCj4gcW1wX3Y0NTZfY29uZmlndXJlX2RwX3BoeSgpIGFuZCBxbXBfdjhfY29u
ZmlndXJlX2RwX3BoeSgpIGludG8gYSBuZXcKPiBxbXBfY29tYm9fY29uZmlndXJlX2RwX3BoeV9j
b21tb24oKSBmdW5jdGlvbi4KPiAKPiBUaGUgY29tbW9uIHNlcXVlbmNlIGNvdmVyczoKPiAtIFZh
bGlkYXRpb24gdGhhdCBkcF9hdXhfY2ZnMiBpcyBjb25maWd1cmVkIGZvciB0aGUgcGxhdGZvcm0K
PiAtIFdyaXRpbmcgZHBfcGh5X2NmZzEgYW5kIGRwX2F1eF9jZmcyIGhhcmR3YXJlLXNwZWNpZmlj
IHJlZ2lzdGVyIHZhbHVlcwo+IC0gQ2FsbGluZyBjb25maWd1cmVfZHBfbW9kZSgpIGZvciBUeXBl
QyBsYW5lIG9yaWVudGF0aW9uCj4gLSBQcm9ncmFtbWluZyBBVVhfQ0ZHMSwgVFggbGFuZSBjb250
cm9sIHJlZ2lzdGVycwo+IC0gSW52b2tpbmcgY29uZmlndXJlX2RwX2Nsb2NrcygpIGNhbGxiYWNr
Cj4gLSBQSFlfQ0ZHIHJlc2V0L2VuYWJsZSBzZXF1ZW5jZQo+IC0gUG9sbGluZyBDT01fQ19SRUFE
WV9TVEFUVVMgYW5kIENPTV9DTU5fU1RBVFVTIGZvciBQTEwgbG9jawo+IAo+IFJlZmFjdG9yIHFt
cF92NDU2X2NvbmZpZ3VyZV9kcF9waHkoKSB0byBjYWxsIHRoZSBjb21tb24gZnVuY3Rpb24sCj4g
cmVtb3ZpbmcgdGhlIGR1cGxpY2F0ZWQgaW5pdGlhbGl6YXRpb24gY29kZS4gVXBkYXRlCj4gcW1w
X3Y4X2NvbmZpZ3VyZV9kcF9waHkoKSB0byBjYWxsIHFtcF9jb21ib19jb25maWd1cmVfZHBfcGh5
X2NvbW1vbigpCj4gZGlyZWN0bHkgaW5zdGVhZCBvZiBnb2luZyB0aHJvdWdoIHFtcF92NDU2X2Nv
bmZpZ3VyZV9kcF9waHkoKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSaXRlc2ggS3VtYXIgPHJpdGVz
aC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1haGFkZXZhbiBQIDxt
YWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IE5hYmlnZSBBYWxh
IDxuYWJpZ2UuYWFsYUBvc3MucXVhbGNvbW0uY29tPgoKT25lIGNvbW1lbnQgYmVsb3cuIFdpdGgg
dGhhdCBhZGRyZXNzZWQsCgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
dmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIHwgOTkgKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiBp
bmRleCAwZWMzODJhZWJlMmIuLjc5MDA2NDY5ZjNkNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gQEAgLTM0NTksNiArMzQ1OSw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgZ2x5bXVyX3VzYjNkcHBoeV9jZmcgPSB7Cj4gIAkuY29u
ZmlndXJlX2RwX3R4CT0gcW1wX3Y0X2NvbmZpZ3VyZV9kcF90eCwKPiAgCS5jb25maWd1cmVfZHBf
Y2xvY2tzCT0gcW1wX3Y4X2NvbmZpZ3VyZV9kcF9jbG9ja3MsCj4gIAkuY29uZmlndXJlX2RwX3Bo
eQk9IHFtcF92OF9jb25maWd1cmVfZHBfcGh5LAo+ICsKPiAgCS5kcF9hdXhfY2ZnMgkJPSBRU0VS
REVTX0RQX1BIWV9BVVhfQ0ZHMl9WOCwKPiAgCS5kcF9waHlfY2ZnMQkJPSBRU0VSREVTX0RQX1BI
WV9DRkcxX1Y4LAo+ICAJLmRwX21vZGVfaWdub3JlX3JldmVyc2UJPSB0cnVlLAo+IEBAIC0zNzY2
LDYgKzM3NjcsNjIgQEAgc3RhdGljIHZvaWQgcW1wX3Y0X2RwX2F1eF9pbml0KHN0cnVjdCBxbXBf
Y29tYm8gKnFtcCkKPiAgCSAgICAgICBxbXAtPmRwX2RwX3BoeSArIFFTRVJERVNfVjRfRFBfUEhZ
X0FVWF9JTlRFUlJVUFRfTUFTSyk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgcW1wX2NvbWJvX2Nv
bmZpZ3VyZV9kcF9waHlfY29tbW9uKHN0cnVjdCBxbXBfY29tYm8gKnFtcCkKPiArewo+ICsJY29u
c3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPiArCXUzMiBzdGF0dXM7Cj4g
KwlpbnQgcmV0Owo+ICsKPiArCWlmICghY2ZnLT5kcF9hdXhfY2ZnMikgewo+ICsJCWRldl9lcnIo
cW1wLT5kZXYsICJEUCBBVVggQ0ZHMiB2YWx1ZSBub3QgY29uZmlndXJlZFxuIik7Cj4gKwkJcmV0
dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gKwo+ICsJd3JpdGVsKGNmZy0+ZHBfcGh5X2NmZzEsIHFtcC0+
ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfQ0ZHXzEpOwo+ICsKPiArCXFtcF9jb21ib19jb25m
aWd1cmVfZHBfbW9kZShxbXApOwo+ICsKPiArCXdyaXRlbCgweDEzLCBxbXAtPmRwX2RwX3BoeSAr
IFFTRVJERVNfRFBfUEhZX0FVWF9DRkcxKTsKPiArCXdyaXRlbChjZmctPmRwX2F1eF9jZmcyLCBx
bXAtPmRwX2RwX3BoeSArIFFTRVJERVNfRFBfUEhZX0FVWF9DRkcyKTsKPiArCj4gKwl3cml0ZWwo
MHgwNSwgcW1wLT5kcF9kcF9waHkgKyBRU0VSREVTX1Y0X0RQX1BIWV9UWDBfVFgxX0xBTkVfQ1RM
KTsKPiArCXdyaXRlbCgweDA1LCBxbXAtPmRwX2RwX3BoeSArIFFTRVJERVNfVjRfRFBfUEhZX1RY
Ml9UWDNfTEFORV9DVEwpOwo+ICsKPiArCXJldCA9IHFtcC0+Y2ZnLT5jb25maWd1cmVfZHBfY2xv
Y2tzKHFtcCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJd3JpdGVsKDB4
MDEsIHFtcC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfQ0ZHKTsKPiArCXdyaXRlbCgweDA1
LCBxbXAtPmRwX2RwX3BoeSArIFFTRVJERVNfRFBfUEhZX0NGRyk7Cj4gKwl3cml0ZWwoMHgwMSwg
cW1wLT5kcF9kcF9waHkgKyBRU0VSREVTX0RQX1BIWV9DRkcpOwo+ICsJd3JpdGVsKDB4MDksIHFt
cC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlfQ0ZHKTsKPiArCj4gKwl3cml0ZWwoMHgyMCwg
cW1wLT5kcF9zZXJkZXMgKyBjZmctPnJlZ3NbUVBIWV9DT01fUkVTRVRTTV9DTlRSTF0pOwo+ICsK
PiArCWlmIChyZWFkbF9wb2xsX3RpbWVvdXQocW1wLT5kcF9zZXJkZXMgKyBjZmctPnJlZ3NbUVBI
WV9DT01fQ19SRUFEWV9TVEFUVVNdLAo+ICsJCQlzdGF0dXMsCj4gKwkJCSgoc3RhdHVzICYgQklU
KDApKSA+IDApLAo+ICsJCQk1MDAsCj4gKwkJCTEwMDAwKSkKPiArCQlyZXR1cm4gLUVUSU1FRE9V
VDsKCkRpZG4ndCBJIHN1Z2dlc3QgdGhhdCB5b3Ugc2hvdWxkIGp1c3QgcmV0dXJuIHdoYXQgcmVh
ZGxfcG9sbF90aW1lb3V0KCkgcmV0dXJucz8gCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
