Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D99606A321
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RhslGd3T;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hS7gWp3Q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AwU6Wg7m8p4ng40JC4CmqVXBx2N1Q8UNwkZOTjb/hmo=; b=RhslGd3TM7rBH66ggtxtbB8CBW
	XYJ7iJq41DxjSvpgltJZY9EFhieUAKl202EDMU2mkcFyfxGNXKwUb0Po8funrU7Pe2wUDJ2MCvIbO
	/bPX/PX48yREdnmIi1KEGJh44szBnG9myAzth0n/tdoz3+lhO1IXCqdXo4zgDf44cY5OdvdiBZT7s
	ahU9oaBMVHQx34Vj7humXOiv8AbrES1Ya0xLvvSI8i+IlWvfjOjH7hDn1PyviNBvbP1adTRUqaVCB
	ElUXTlB7OEyrFPh1nOQtndEVoyeqEdy4NSHjS3PF4H6ILcxRK7QHxOcVgWIPeFgOFAbHvu60QqzOK
	a824TM3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKp9L-00000000hVF-024h;
	Sun, 25 Oct 2026 03:43:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKp9J-00000000hV7-3PbG
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:43:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2823D43F71;
	Sun, 25 Oct 2026 03:43:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 963341F01825;
	Sun, 25 Oct 2026 03:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792899837;
	bh=iW/YLhq4YHP0MhB15W20oNAr9/VuOu4rVY5G+zlEu4U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hS7gWp3QzPbLRzE+djryIIzelFPMCuF42v+5PmHZdBgu6mtKwARLglsxZYbvOyr6a
	 hGpvorNPbShJC4iMmijuW5ypbnS21TbYw4Gq1UItM2XCwmzwijepIh5Ezuk78XjMet
	 Zis/zpRSmTA6/vkh0GlylC3jdsTY/qlVcEZ1hO48U3umaYdDbDDVmR/t+1mAXr27O8
	 gfjv1fvlKN2LrFWGk3O3ndIWAM/3F2NyUv3zqeKnaq1H+dN3MIzscN71Kt/B5wZOnc
	 S99cppiR4/F5prFdTxxGMsSeGa01nkVtffShhGEz5NWzofiPdztIfz62YqPZ/7Hjpx
	 oo5WPZEtxx7JQ==
Message-ID: <sashiko-outbox-184024@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v22 11/14] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261024-kaanapali-camss-v22-11-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <20261024-kaanapali-camss-v22-11-7da3ea49c8a1@oss.qualcomm.com>
Date: Sun, 25 Oct 2026 03:43:56 +0000
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGFybTY0OiBkdHM6IHFj
b206IGthYW5hcGFsaTogQ1NJUEhZIG9wcC0zMDAwMDAwMDAgbWlzbWF0Y2hlcyAyNjYuNjcgTUh6
IFJDRwotIFtMb3ddIGFybTY0OiBkdHM6IHFjb206IGthYW5hcGFsaTogdW51c2VkIGR0LWJpbmRp
bmdzL3BoeS9waHkuaCBpbmNsdWRlCi0tCgpjb21taXQgNDJlMDA1ZmY5ZWRjNDA3NmI3ZDJiZTI0
MWEyM2M4NDVhMzk1MzExNQpBdXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5x
dWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBrYWFuYXBhbGk6IEFkZCBDQU1TUyBhbmQg
Q1NJUEhZIGJsb2NrIGRlZmluaXRpb25zCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBDQU1TUyBhbmQg
c2l4IENTSVBIWSBkZXZpY2UgdHJlZSBub2RlcyBhbG9uZyB3aXRoIHRoZQpDU0lQSFkgT1BQIHRh
YmxlIHRvIHRoZSBLYWFuYXBhbGkgU29DIGRldmljZSB0cmVlLgoKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL2thYW5hcGFsaS5kdHNpCj4gaW5kZXggZTQ4YTE3OWQwNzIyMC4uMTFkZjFjN2M2ZTMx
ZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPiBAQCAtMjAs
NiArMjAsNyBAQAo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJjb25uZWN0L3Fjb20sa2Fh
bmFwYWxpLXJwbWguaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9s
bGVyL2FybS1naWMuaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL21haWxib3gvcWNvbS1pcGNj
Lmg+Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5Lmg+CgpbU2V2ZXJpdHk6IExvd10K
VGhpcyBpc24ndCBhIGJ1ZywgYnV0IGlzIHRoZSBkdC1iaW5kaW5ncy9waHkvcGh5LmggaW5jbHVk
ZSBuZWVkZWQgaGVyZT8gTm9uZQpvZiB0aGUgUEhZX05PTkUsIFBIWV9UWVBFXyosIG9yIFBIWV9Q
T0xfKiBjb25zdGFudHMgZnJvbSB0aGlzIGhlYWRlciBhcHBlYXIKdG8gYmUgdXNlZCBpbiBrYWFu
YXBhbGkuZHRzaSBvciBpdHMgYm9hcmQgb3ZlcmxheXMuCgpbIC4uLiBdCgo+IEBAIC02NTQ4LDYg
KzY5MjUsMjggQEAgcGRwX3R4OiBzY3Atc3JhbS1zZWN0aW9uQDEwMCB7Cj4gIAkJfTsKPiAgCX07
Cj4gIAo+ICsJY3NpcGh5X214Y19vcHBfdGFibGU6IG9wcC10YWJsZS1teGMgewo+ICsJCWNvbXBh
dGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4gKwo+ICsJCW9wcC0zMDAwMDAwMDAgewo+
ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDMwMDAwMDAwMD47Cj4gKwkJCXJlcXVpcmVkLW9wcHMg
PSA8JnJwbWhwZF9vcHBfbG93X3N2c19kMT4sCj4gKwkJCQkJPCZycG1ocGRfb3BwX2xvd19zdnNf
ZDE+Owo+ICsJCX07CgpbU2V2ZXJpdHk6IEhpZ2hdClNob3VsZCB0aGlzIGxvd2VzdCBPUFAgaW4g
Y3NpcGh5X214Y19vcHBfdGFibGUgYmUgMjY2NjY2NjY3IEh6IGluc3RlYWQgb2YKMzAwMDAwMDAw
IEh6PwoKRWFjaCBjc2lwaHkwLi5jc2lwaHk1IG5vZGUgdXNlcyBDQU1fQ0NfQ1NJUEhZbl9DTEsg
YXMgaXRzIGNvcmUgY2xvY2ssIHdoaWNoIGlzCnBhcmVudGVkIHRvIGNhbV9jY19jcGh5X3J4X2Ns
a19zcmMgd2l0aCBDTEtfU0VUX1JBVEVfUEFSRU5ULiBJbgpkcml2ZXJzL2Nsay9xY29tL2NhbWNj
LWthYW5hcGFsaS5jLCBmdGJsX2NhbV9jY19jcGh5X3J4X2Nsa19zcmMgb25seSBzdXBwb3J0cwoy
NjYuNjcgTUh6LCA0MDAgTUh6LCBhbmQgNDgwIE1IejoKCnN0YXRpYyBjb25zdCBzdHJ1Y3QgZnJl
cV90YmwgZnRibF9jYW1fY2NfY3BoeV9yeF9jbGtfc3JjW10gPSB7CglGKDI2NjY2NjY2NywgUF9D
QU1fQ0NfUExMMF9PVVRfTUFJTiwgNC41LCAwLCAwKSwKCUYoNDAwMDAwMDAwLCBQX0NBTV9DQ19Q
TEwwX09VVF9NQUlOLCAzLCAwLCAwKSwKCUYoNDgwMDAwMDAwLCBQX0NBTV9DQ19QTEwwX09VVF9N
QUlOLCAyLjUsIDAsIDApLAoJeyB9Cn07CgpXaGVuIHBoeV9xY29tX21pcGlfY3NpMl9wb3dlcl9v
bigpIC0+IHBoeV9xY29tX21pcGlfY3NpMl9zZXRfY2xvY2tfcmF0ZXMoKSBpbgpkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItY29yZS5jIHJ1bnMgZm9yIGEgQ1NJLTIgbGlu
awpmcmVxdWVuY3kgd2hlcmUgbGlua19mcmVxIC8gNCA8PSAzMDAwMDAwMDAgSHo6CgoJb3BwID0g
ZGV2X3BtX29wcF9maW5kX2ZyZXFfY2VpbChkZXYsICZvcHBfcmF0ZSk7CgkuLi4KCQlwZXJmID0g
ZGV2X3BtX29wcF9nZXRfcmVxdWlyZWRfcHN0YXRlKG9wcCwgcHN0YXRlKTsKCQlwc3RhdGUgKz0g
MTsKCgkJcmV0ID0gZGV2X3BtX2dlbnBkX3NldF9wZXJmb3JtYW5jZV9zdGF0ZShjc2kycGh5LT5w
ZF9saXN0LT5wZF9kZXZzW2ldLCBwZXJmKTsKCS4uLgoJcmV0ID0gZGV2X3BtX29wcF9zZXRfcmF0
ZShkZXYsIG9wcF9yYXRlKTsKCmRldl9wbV9vcHBfZmluZF9mcmVxX2NlaWwoKSBzZWxlY3RzIG9w
cC0zMDAwMDAwMDAgYW5kIHZvdGVzIFJQTUhQRF9NTUNYIGFuZApSUE1IUERfTVhDIHRvIHJwbWhw
ZF9vcHBfbG93X3N2c19kMS4gSG93ZXZlciwgYmVjYXVzZSBjYW1fY2NfY3BoeV9yeF9jbGtfc3Jj
CnVzZXMgY2xrX3JjZzJfc2hhcmVkX29wcyAoY2VpbGluZyBsb29rdXApLCBkZXZfcG1fb3BwX3Nl
dF9yYXRlKGRldiwgMzAwMDAwMDAwKQpyb3VuZHMgdGhlIGNsb2NrIHJhdGUgdXAgdG8gNDAwMDAw
MDAwIEh6LgoKRG9lc24ndCB0aGlzIGxlYXZlIHRoZSBDU0lQSFkgY29yZSBjbG9jayBydW5uaW5n
IGF0IDQwMCBNSHogd2hpbGUgTU1DWCBhbmQKTVhDIGFyZSBvbmx5IHZvdGVkIHRvIHJwbWhwZF9v
cHBfbG93X3N2c19kMSBpbnN0ZWFkIG9mIHJwbWhwZF9vcHBfbG93X3N2cywKYW5kIG1ha2UgdGhl
IDI2NjY2NjY2NyBIeiBjbG9jayByYXRlIHVucmVhY2hhYmxlPwoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAyNC1rYWFuYXBhbGkt
Y2Ftc3MtdjIyLTAtN2RhM2VhNDljOGExQG9zcy5xdWFsY29tbS5jb20/cGFydD0xMQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
