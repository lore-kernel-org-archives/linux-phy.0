Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C484606A327
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rrc3PjS0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=LOH055Qf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jSubXCP5MGmPWIRvoGzRCp8dz6atar1Za0ukKEgIndE=; b=rrc3PjS0w6u3hh0Ckl9ySA9kDY
	CkIXiQ+lQcZpGIxZTdX2vT6/RMvjYNkmzKoUDIAXBYV3JApDstJDgdf8cuTyxF90oPigHmvhyxrC+
	x+715x4bel1Cd0qDairQtd7CssF2jiyQMfibIktQGcczAE7qbOAl14+uP+EYW24RZdTLSVIGgtptT
	7lSUy8RQDo+R3Fs0GhhKF5imjXPP1ok1p7acdrwMtrllsbN/j365cZdbFQh/SQEv9pj6HRQ4PqNhb
	euChOi8A7RObBXVzE1HX1r6d3Q7GSFUI4OxGdgUEEnvtgV3KJGMrYSol/bS2lmfR2ZzQLY6OJ8fv9
	zCeUt39A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC9X-0000000Fupb-0C0U;
	Sat, 14 Nov 2026 11:42:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC9W-0000000FupV-07Ya
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:42:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B43F6601F5;
	Sat, 14 Nov 2026 11:42:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF30C1F000C4;
	Sat, 14 Nov 2026 11:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794656556;
	bh=U85HEkJgEJsEzUWPNHrS2k+nsZGuewbUB9XDqYJSYu4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LOH055QfxOIduOUl2BLVHSslYiSI0xj1cfCHwRGP393Nnd57FawtISbyvVbH704ZP
	 S3qnkEGNykSDdAMIdO+07j1aI1NEXG+vaApkVS5VLabGHIXLOY53WsFk8Bsp3FtW2m
	 ewQnG7SjQ20OfewuBYoBaFNfI/6nQbbY8JYOkU6HQqGmyuraxWqoa7vE+qaXygK13U
	 eNMYsj/FqPdR9ba08iK1TjZVojhayX3yjTw85zjZZ97CJHZPvozs8W8UDgq/GOpIU+
	 mjwygmKB1Lt48WYsqvW2HVSNat8QSoyZPfClKWhAJ/LDsZGG4cwb9kztY2p9NarLly
	 lyqlqPjfBxzVw==
Message-ID: <sashiko-outbox-214423@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 03/23] dt-bindings: media: qcom,sm8750-camss: Add
 SM8750 CAMSS
To: "Wenmeng Liu" <wenmeng.liu@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-3-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-3-8ff2a11835f6@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 11:42:35 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IG1lZGlh
OiBxY29tLHNtODc1MC1jYW1zczogaW52YWxpZCAwLWJhc2VkCiAgZGF0YS1sYW5lcyBpbiBleGFt
cGxlCi0tCgpjb21taXQgY2ZlNWYwYjNjOGU4MDUzM2I5MDhkZDczYjU1YTA0ODY2NGE2ZWQyZQpB
dXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgpkdC1i
aW5kaW5nczogbWVkaWE6IHFjb20sc204NzUwLWNhbXNzOiBBZGQgU004NzUwIENBTVNTCgpUaGlz
IGNvbW1pdCBhZGRzIHRoZSBEZXZpY2UgVHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhlIFF1YWxj
b21tIFNNODc1MApDYW1lcmEgU3Vic3lzdGVtIChDQU1TUykuCgo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcWNvbSxzbTg3NTAtY2Ftc3MueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLHNtODc1MC1j
YW1zcy55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5l
N2FiNjFkNzFmZmJkCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLHNtODc1MC1jYW1zcy55YW1sCj4gQEAgLTAsMCArMSwy
OTcgQEAKClsgLi4uIF0KCj4gKyAgICAgICAgcHJvcGVydGllczoKPiArICAgICAgICAgIGVuZHBv
aW50Ogo+ICsgICAgICAgICAgICAkcmVmOiB2aWRlby1pbnRlcmZhY2VzLnlhbWwjCj4gKyAgICAg
ICAgICAgIHVuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiArCj4gKyAgICAgICAgICAgIHBy
b3BlcnRpZXM6Cj4gKyAgICAgICAgICAgICAgZGF0YS1sYW5lczoKPiArICAgICAgICAgICAgICAg
IG1pbkl0ZW1zOiAxCj4gKyAgICAgICAgICAgICAgICBtYXhJdGVtczogNAoKWyAuLi4gXQoKPiAr
ICAgICAgICAgICAgcG9ydHMgewo+ICsgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4gKyAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKyAgICAgICAg
ICAgICAgICBwb3J0QDAgewo+ICsgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPiArCj4g
KyAgICAgICAgICAgICAgICAgICAgY2Ftc3NfY3NpcGh5MF9lcDogZW5kcG9pbnQgewo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICBkYXRhLWxhbmVzID0gPDAgMSAyIDM+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmNzaXBoeTBfb3V0PjsKPiArICAgICAg
ICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgfTsK
PiArICAgICAgICB9Owo+ICsgICAgfTsKCltTZXZlcml0eTogTG93XQpTaG91bGQgZGF0YS1sYW5l
cyBpbiB0aGUgZXhhbXBsZSBlbmRwb2ludCBiZSA8MSAyIDMgND4gaW5zdGVhZCBvZgo8MCAxIDIg
Mz4/CgpPbiBTTTg3NTAsIENTSVBIWSBibG9ja3MgYXJlIHN0YW5kYWxvbmUgUEhZIGRldmljZXMg
cmF0aGVyIHRoYW4gbGVnYWN5CnN1Yi1yZXNvdXJjZXMgaW5zaWRlIHRoZSBDQU1TUyBub2RlLCBz
byBjYW1zc19kZXRlY3RfbGVnYWN5X3BoeSgpIHNldHMKY2Ftc3MtPmxlZ2FjeV9waHkgPSBmYWxz
ZSBhbmQgY2Ftc3NfcGFyc2VfcG9ydHMoKSBzZXRzIGxhbmVfYmFzZSA9IDEuCmNhbXNzX3BhcnNl
X2VuZHBvaW50X25vZGUoKSB0aGVuIHJlamVjdHMgbGFuZSAwIHdpdGggLUVJTlZBTCBhbmQgZmFp
bHMKcHJvYmU6Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYzpjYW1z
c19wYXJzZV9lbmRwb2ludF9ub2RlKCkgewogICAgLi4uCgkJaWYgKGxhbmUgPCBsYW5lX2Jhc2Ug
fHwgbGFuZSAtIGxhbmVfYmFzZSA+PSBNU01fQ1NJUEhZX01BWF9EQVRBX0xBTkUpIHsKCQkJZGV2
X2VycihkZXYsICJpbnZhbGlkIGRhdGEtbGFuZSAldVxuIiwgbGFuZSk7CgkJCXJldHVybiAtRUlO
VkFMOwoJCX0KICAgIC4uLgp9CgpUaGUgZW5kcG9pbnQgc2NoZW1hIGZvciBkYXRhLWxhbmVzIGNv
dWxkIGFsc28gY29uc3RyYWluIGl0ZW1zIHRvIG1pbmltdW06IDEKYW5kIG1heGltdW06IDQgc28g
MC1iYXNlZCBsYW5lIGluZGljZXMgYXJlIGNhdWdodCBieSBzY2hlbWEgdmFsaWRhdGlvbi4KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjExMTQtYWRkLXN1cHBvcnQtZm9yLWNhbXNzLW9uLXNtODc1MC12Ny0wLThmZjJhMTE4MzVmNkBv
c3MucXVhbGNvbW0uY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
