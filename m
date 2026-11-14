Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A147606A323
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1NQD01yT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EPQ5YN5i
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7cEVSk8WHl+d/q/Ihq70Pnn09Bh7UVSkD54DIn0t+UA=; b=1NQD01yTMDB/Wi9IxXMBa79Yen
	S+gz9l1x4gNPLhyKmiwYngXwG+ytrA9prrvKx4cjb9zUzXqtk68ZYNHNDIBexVnNquxIjpwNB/pX8
	wU17i9Jfdx32GVbArx2iI2PUfZofiwf0JnBHIxgOGJfvoO2qD/XOYYGKi4DLFOrfeedt1tXZB6a1V
	R/9QplDYzPHwlexiddt62ej+T0q/nlWIfIydRJUZbswtr9a5k8BHBxqYTg0gGj+6GZIujfUMQhhkY
	REb87F5bZt2dXcnPJ6NlcVjYkb1T2/iec2DkC1dzS2vHz1oDjq+xMDeK3WHGjm+GqQ567FChiCEjH
	Z5XyKcvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2d5-0000000F1QK-2kOr;
	Sat, 14 Nov 2026 01:32:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2d4-0000000F1Q8-0m6e
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:32:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9DD6643E18;
	Sat, 14 Nov 2026 01:32:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 108351F000C4;
	Sat, 14 Nov 2026 01:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794619949;
	bh=gWz1rPPKkQfCodscL4IKUEZl5uZsAUwtGaxC+435BLU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EPQ5YN5iUYKbted/l5NUiRljqYSXk8ZT+ymrT2+D9nbBQYky9Ub45w86ErcojrWa2
	 JfDKo/emXajnP67oJQ8qgMYE2V5GwQUmN6NBt9aXCrzy1cf+UmqSZmqiTHpvY1QrZN
	 wenZLaisytOpLoRYiyKqO5t4MRhqdMwXhAYprTSFUBtaUTbpTPbXqXxKWufLI4IMNa
	 YZh+WUuhjTleIrsioDvw1Sl90wLMZcy8hW3HosXLGbx0lhpZV1s6raYRnb+2TPTqgx
	 +Owh9K6KkBQw8SpP/QYcMr1Nf2xJ7RV4yaVdazfyWODlMPS/7u4zyoMrY/oO7IAy5P
	 td8/oN6Y0nVuA==
Message-ID: <sashiko-outbox-214007@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/6] arm64: qcom: monaco: Add PCIe Endpoint nodes
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114-monaco_ep-v3-6-7fe227cdfac0@oss.qualcomm.com>
References: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
 <20261114-monaco_ep-v3-6-7fe227cdfac0@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 01:32:28 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIGFybTY0OiBkdHM6IHFj
b206IG1vbmFjbzogZGlzYWxsb3dlZCBpbnB1dC1lbmFibGUgaW4gcGNpZSBlcAogIHRsbW0gc3Rh
dGVzCi0gW0xvd10gYXJtNjQ6IGR0czogcWNvbTogbW9uYWNvOiBib2FyZC1zcGVjaWZpYyBQQ0ll
IEVQIEdQSU9zIGFuZAogIHBpbmN0cmwgaW4gU29DIGR0c2kKLS0KCmNvbW1pdCBlMmU1MTNkODE2
YWU5ZTg2ODNhMjE0MTQxOGU1ZjA5Mjk3ZjhkYmQyCkF1dGhvcjogS3Jpc2huYSBDaGFpdGFueWEg
Q2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogcWNvbTog
bW9uYWNvOiBBZGQgUENJZSBFbmRwb2ludCBub2RlcwoKVGhpcyBjb21taXQgYWRkcyBEZXZpY2VU
cmVlIG5vZGVzIGFuZCBUTE1NIHBpbiBjb25maWd1cmF0aW9ucyBmb3IgdGhlIHR3bwpQQ0llIEVu
ZHBvaW50IGNvbnRyb2xsZXJzIG9uIFF1YWxjb21tIE1vbmFjbyAoUUNTODMwMCkuCgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbW9uYWNvLmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vbW9uYWNvLmR0c2kKPiBpbmRleCBmMjdmMDk1M2FiOWUwLi40YTEzMjVh
YWYwNzI2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28uZHRz
aQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28uZHRzaQoKWyAuLi4gXQoK
PiBAQCAtMjQwNiw2ICsyNDA3LDU3IEBAIHBjaWVwb3J0MDogcGNpZUAwIHsKPiAgCQkJfTsKPiAg
CQl9Owo+ICAKPiArCQlwY2llMF9lcDogcGNpZS1lcEAxYzAwMDAwIHsKClsgLi4uIF0KCj4gKwkJ
CXBoeXMgPSA8JnBjaWUwX3BoeT47Cj4gKwkJCXBoeS1uYW1lcyA9ICJwY2llcGh5IjsKPiArCQkJ
cmVzZXQtZ3Bpb3MgPSA8JnRsbW0gMiBHUElPX0FDVElWRV9MT1c+Owo+ICsJCQl3YWtlLWdwaW9z
ID0gPCZ0bG1tIDAgR1BJT19BQ1RJVkVfTE9XPjsKPiArCQkJcGluY3RybC0wID0gPCZwY2llMF9l
cF9kZWZhdWx0X3N0YXRlPjsKPiArCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQkJ
bnVtLWxhbmVzID0gPDI+Owo+ICsJCQlsaW51eCxwY2ktZG9tYWluID0gPDA+Owo+ICsKPiArCQkJ
c3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9OwoKW1NldmVyaXR5OiBMb3ddClNob3VsZCByZXNl
dC1ncGlvcywgd2FrZS1ncGlvcywgYW5kIHRoZSBHUElPIHBpbiBjb25maWd1cmF0aW9ucyBpbgpw
Y2llMF9lcF9kZWZhdWx0X3N0YXRlIGFuZCBwY2llMV9lcF9kZWZhdWx0X3N0YXRlIGxpdmUgaW4g
Ym9hcmQgRFRTIGZpbGVzCnJhdGhlciB0aGFuIG1vbmFjby5kdHNpPwoKT25seSBncGlvMSAocGNp
ZTBfY2xrcmVxKSBhbmQgZ3BpbzIyIChwY2llMV9jbGtyZXEpIGhhdmUgZGVkaWNhdGVkIFBDSWUK
cGlubXV4IGZ1bmN0aW9ucyBpbiB0aGUgUUNTODMwMCBUTE1NLiAgVGhlIFBFUlNUIyBhbmQgb3B0
aW9uYWwgV0FLRSMgcGlucwooZ3BpbzAsIGdwaW8yLCBncGlvMjEsIGFuZCBncGlvMjMpIHVzZSBn
ZW5lcmljIEdQSU8gbXV4aW5nIHRoYXQgdmFyaWVzIGFjcm9zcwpNb25hY28gYm9hcmRzLCBhbmQg
dGhlIFJvb3QgQ29tcGxleCBwY2llMCBhbmQgcGNpZTEgbm9kZXMgaW4gbW9uYWNvLmR0c2kgbGVh
dmUKdGhvc2UgcHJvcGVydGllcyB0byB0aGUgYm9hcmQgZmlsZXMuCgpJbiBhZGRpdGlvbiwgcGVy
c3QtcGlucyBpbiBwY2llMF9lcF9kZWZhdWx0X3N0YXRlIGFuZCBwY2llMV9lcF9kZWZhdWx0X3N0
YXRlCnNldHMgYmlhcy1wdWxsLXVwIG9uIHRoZSBHUElPX0FDVElWRV9MT1cgcmVzZXQgaW5wdXRz
LCB3aGljaCBwdWxscyBhbgp1bmRyaXZlbiBQRVJTVCMgbGluZSBpbnRvIHRoZSBkZWFzc2VydGVk
IHN0YXRlIGFuZCB0cmlnZ2VycyBsaW5rIHRyYWluaW5nIGluCnFjb21fcGNpZV9lcF9wZXJzdF9p
cnFfdGhyZWFkKCkgaW5zdGVhZCBvZiBrZWVwaW5nIHJlc2V0IGFzc2VydGVkIHdpdGgKYmlhcy1w
dWxsLWRvd24uICBJZiBhbnkgcGluY3RybCBub2RlcyByZW1haW4gdW5kZXIgdGxtbSBpbiBtb25h
Y28uZHRzaSwgdGhleQpzaG91bGQgYWxzbyBiZSBwbGFjZWQgaW4gYWxwaGFiZXRpY2FsIG9yZGVy
IGFmdGVyIGNhbTAtZGVmYXVsdC1zdGF0ZS4KClsgLi4uIF0KCj4gQEAgLTYyMzksNiArNjM0Miw1
MCBAQCB0bG1tOiBwaW5jdHJsQGYxMDAwMDAgewo+ICAJCQkjaW50ZXJydXB0LWNlbGxzID0gPDI+
Owo+ICAJCQl3YWtldXAtcGFyZW50ID0gPCZwZGM+Owo+ICAKPiArCQkJcGNpZTBfZXBfZGVmYXVs
dF9zdGF0ZTogcGNpZTAtZXAtZGVmYXVsdC1zdGF0ZSB7Cj4gKwkJCQl3YWtlLXBpbnMgewo+ICsJ
CQkJCXBpbnMgPSAiZ3BpbzAiOwo+ICsJCQkJCWZ1bmN0aW9uID0gImdwaW8iOwo+ICsJCQkJCWRy
aXZlLXN0cmVuZ3RoID0gPDI+Owo+ICsJCQkJfTsKPiArCj4gKwkJCQljbGtyZXEtcGlucyB7Cj4g
KwkJCQkJcGlucyA9ICJncGlvMSI7Cj4gKwkJCQkJZnVuY3Rpb24gPSAicGNpZTBfY2xrcmVxIjsK
PiArCQkJCQlkcml2ZS1zdHJlbmd0aCA9IDwyPjsKPiArCQkJCQliaWFzLXB1bGwtdXA7Cj4gKwkJ
CQl9Owo+ICsKPiArCQkJCXBlcnN0LXBpbnMgewo+ICsJCQkJCXBpbnMgPSAiZ3BpbzIiOwo+ICsJ
CQkJCWZ1bmN0aW9uID0gImdwaW8iOwo+ICsJCQkJCWlucHV0LWVuYWJsZTsKPiArCQkJCQliaWFz
LXB1bGwtdXA7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsKPiArCQkJcGNpZTFfZXBfZGVmYXVsdF9z
dGF0ZTogcGNpZTEtZXAtZGVmYXVsdC1zdGF0ZSB7Cj4gKwkJCQl3YWtlLXBpbnMgewo+ICsJCQkJ
CXBpbnMgPSAiZ3BpbzIxIjsKPiArCQkJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiArCQkJCQlkcml2
ZS1zdHJlbmd0aCA9IDwyPjsKPiArCQkJCX07Cj4gKwo+ICsJCQkJY2xrcmVxLXBpbnMgewo+ICsJ
CQkJCXBpbnMgPSAiZ3BpbzIyIjsKPiArCQkJCQlmdW5jdGlvbiA9ICJwY2llMV9jbGtyZXEiOwo+
ICsJCQkJCWRyaXZlLXN0cmVuZ3RoID0gPDI+Owo+ICsJCQkJCWJpYXMtcHVsbC11cDsKPiArCQkJ
CX07Cj4gKwo+ICsJCQkJcGVyc3QtcGlucyB7Cj4gKwkJCQkJcGlucyA9ICJncGlvMjMiOwo+ICsJ
CQkJCWZ1bmN0aW9uID0gImdwaW8iOwo+ICsJCQkJCWlucHV0LWVuYWJsZTsKPiArCQkJCQliaWFz
LXB1bGwtdXA7Cj4gKwkJCQl9Owo+ICsJCQl9OwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgaW5w
dXQtZW5hYmxlIGluIHBlcnN0LXBpbnMgdW5kZXIgcGNpZTBfZXBfZGVmYXVsdF9zdGF0ZSBhbmQK
cGNpZTFfZXBfZGVmYXVsdF9zdGF0ZSBicmVhayBkdGJzX2NoZWNrIHZhbGlkYXRpb24gZm9yIE1v
bmFjbyBib2FyZHM/CgpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9x
Y29tLHFjczgzMDAtdGxtbS55YW1sIHZhbGlkYXRlcwpzdWJub2RlcyBhZ2FpbnN0IHFjb20sdGxt
bS1jb21tb24ueWFtbCMvJGRlZnMvcWNvbS10bG1tLXN0YXRlLCB3aGljaCBzZXRzCmlucHV0LWVu
YWJsZTogZmFsc2UgYmVjYXVzZSBRdWFsY29tbSBUTE1NIHBpbnMgZG8gbm90IGhhdmUgYW4gaW5w
dXQtYnVmZmVyCmVuYWJsZSBiaXQuICBEcm9wcGluZyBpbnB1dC1lbmFibGUgYXZvaWRzIHRoZSBz
Y2hlbWEgdmFsaWRhdGlvbiBmYWlsdXJlLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExNC1tb25hY29fZXAtdjMtMC03ZmUyMjdj
ZGZhYzBAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
