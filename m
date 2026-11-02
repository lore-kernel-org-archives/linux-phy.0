Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E812606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nyfYYVRX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Zelz7x9n
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4OI6IV25LSK0ziBpcXWdam2M4m5Ur+jJQ+eIO6fQMu8=; b=nyfYYVRXrHw6QsFHm0DmfR9FM5
	/DT76lzHgHUJPG2wKPycXUGkTR7Pg00pHsFtp71kOx98GERI/CCVMbXAeWI9fOWE1L1RxWyOrCq6Z
	1kiAPzs66MLBrtLHvAMzyynWtpXK6ma0gVB+QO1Foxs4jZEQ0/pNxVmWvqlKq7RHGvvQr3JFX4M6U
	LmpGEvlFupiaOnAiKcmXiTbnYQ3EHz2p4Y36oYTx2gcfcJaUMiUC2t/YGwu4iJ5EWGGXmSQSBKk+z
	7KMDjh1fxZLuSyzNbY3Z9k2NpVTBCtcPJ1ndcqYdCVcA47i6/+fiZhuU7wxxmA9j4mzgNGhaaWZ7K
	f47YpT3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpiR-0000000GEQ1-3Dk6;
	Mon, 02 Nov 2026 10:56:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpiQ-0000000GEPv-3Vby
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:56:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E88ED60EFF;
	Mon,  2 Nov 2026 10:56:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A77A1F00A17;
	Mon,  2 Nov 2026 10:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793616997;
	bh=cDT1Bs08+9jkqNwANs+D7G9F4Db9tAFvcdQ40nj/kgc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Zelz7x9nG50un+AFoLr1zRjvPR2Y/CVhmM9MsDpexrJwgX0htRHS2utcGYRP9k73X
	 hVKD00meFI+qd4hdqc+EizmlvUeYIr/XhapFweY3p4uv9ZDdUI+ORexVI1E/aSHGyi
	 cwZpTFbPuSl8hVjHbUJyqJdMPMlZVt3eD0iPqyelDrJW174vT18ZCbPsSnOc5h+p71
	 WR387DO4U6tpjhd5PI0tyxOez21fYmyxwyX5R5XKuqFyA4pvbU8meXh+NvKGsv9Wi6
	 YGoIrIzLQwaGedCqDmM1gB4dIDn6sXSONi2vlmWA6BrEX1SOVNmqBaiNDvej/l5NsF
	 t5uZ+hoLwzLtQ==
Message-ID: <sashiko-outbox-193299@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v24 10/15] media: qcom: camss: vfe: Add support for VFE
 1080
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261102-kaanapali-camss-v24-10-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
 <20261102-kaanapali-camss-v24-10-d6b8f3f6f66f@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 10:56:36 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBxY29tOiBj
YW1zczogdW5zeW5jaHJvbml6ZWQgQ1NJRCBSVVAvQVVQIHVwZGF0ZXMgaW4gdmZlX29wc18xMDgw
Ci0tCgpjb21taXQgZmE2ZDQzZmQ3ZjZmM2NmN2ZjNjBmOTYxYTViODBjZmU1ZTllM2IxYwpBdXRo
b3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTog
cWNvbTogY2Ftc3M6IHZmZTogQWRkIHN1cHBvcnQgZm9yIFZGRSAxMDgwCgpUaGlzIGNvbW1pdCBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBWRkUgMTA4MCAoVEZFKSBoYXJkd2FyZSBibG9jayBmb3VuZCBv
biB0aGUKUXVhbGNvbW0gS2FhbmFwYWxpIFNvQywgaW5jbHVkaW5nIHJlZ2lzdGVyIGNvbmZpZ3Vy
YXRpb24gYW5kIHN1YmRldmljZQpyZXNvdXJjZSBkZWZpbml0aW9ucy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUtMTA4MC5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS0xMDgwLmMKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjY4Nzk4ZjEzZmJlYTgKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNz
LXZmZS0xMDgwLmMKPiBAQCAtMCwwICsxLDIxMyBAQAoKWyAuLi4gXQoKPiArc3RhdGljIHZvaWQg
dmZlX3JlZ191cGRhdGUoc3RydWN0IHZmZV9kZXZpY2UgKnZmZSwgZW51bSB2ZmVfbGluZV9pZCBs
aW5lX2lkKQo+ICt7Cj4gKwlpbnQgcG9ydF9pZCA9IGxpbmVfaWQ7Cj4gKwo+ICsJY2Ftc3NfcmVn
X3VwZGF0ZSh2ZmUtPmNhbXNzLCB2ZmUtPmlkLCBwb3J0X2lkLCBmYWxzZSk7Cj4gK30KPiArCj4g
K3N0YXRpYyB2b2lkIHZmZV9yZWdfdXBkYXRlX2NsZWFyKHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUs
Cj4gKwkJCQkgZW51bSB2ZmVfbGluZV9pZCBsaW5lX2lkKQo+ICt7Cj4gKwlpbnQgcG9ydF9pZCA9
IGxpbmVfaWQ7Cj4gKwo+ICsJY2Ftc3NfcmVnX3VwZGF0ZSh2ZmUtPmNhbXNzLCB2ZmUtPmlkLCBw
b3J0X2lkLCB0cnVlKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgdmZlX2FkZHJfdXBkYXRlKHN0
cnVjdCB2ZmVfZGV2aWNlICp2ZmUsIGVudW0gdmZlX2xpbmVfaWQgbGluZV9pZCkKPiArewo+ICsJ
aW50IHBvcnRfaWQgPSBsaW5lX2lkOwo+ICsKPiArCWNhbXNzX2FkZHJfdXBkYXRlKHZmZS0+Y2Ft
c3MsIHZmZS0+aWQsIHBvcnRfaWQsIGZhbHNlKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgdmZl
X2FkZHJfdXBkYXRlX2NsZWFyKHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUsIGVudW0gdmZlX2xpbmVf
aWQgbGluZV9pZCkKPiArewo+ICsJaW50IHBvcnRfaWQgPSBsaW5lX2lkOwo+ICsKPiArCWNhbXNz
X2FkZHJfdXBkYXRlKHZmZS0+Y2Ftc3MsIHZmZS0+aWQsIHBvcnRfaWQsIHRydWUpOwo+ICt9Cgpb
U2V2ZXJpdHk6IEhpZ2hdCkFzIHJlcG9ydGVkIGJ5IFNhc2hpa28gb24gdjE0IFsxXSwgY2FuIHZm
ZV9yZWdfdXBkYXRlKCkgYW5kIHZmZV9hZGRyX3VwZGF0ZSgpCnJhY2Ugd2l0aCBjc2lkX2lzcigp
IGluIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTEwODAuYwp3
aGVuIHVwZGF0aW5nIGNzaWQtPnJlZ191cGRhdGUgYW5kIGNzaWQtPmFkZHJfdXBkYXRlPwoKSW4g
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5jLCB2ZmVfZW5hYmxl
X291dHB1dF92MigpLAp2ZmVfcXVldWVfYnVmZmVyX3YyKCksIGFuZCB2ZmVfYnVmX2RvbmUoKSBp
bnZva2UgdmZlX3JlZ191cGRhdGUoKSBhbmQKdmZlX2FkZHJfdXBkYXRlKCkgd2hpbGUgaG9sZGlu
ZyB2ZmUtPm91dHB1dF9sb2NrLiBUaGVzZSBmb3J3YXJkIHRocm91Z2gKY2Ftc3NfcmVnX3VwZGF0
ZSgpIGFuZCBjYW1zc19hZGRyX3VwZGF0ZSgpIHRvIF9fY3NpZF9yZWdfdXBkYXRlKCkgYW5kCl9f
Y3NpZF9hZGRyX3VwZGF0ZSgpIGluIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy1jc2lkLTEwODAuYzoKCiAgICBzdGF0aWMgdm9pZCBfX2NzaWRfYWRkcl91cGRhdGUoc3Ry
dWN0IGNzaWRfZGV2aWNlICpjc2lkLCBpbnQgcG9ydF9pZCkKICAgIHsKICAgICAgICAgICAgY3Np
ZC0+YWRkcl91cGRhdGUgfD0gQ1NJRF9SVVBfQVVQX1JESShwb3J0X2lkKTsKICAgICAgICAgICAg
d3JpdGVsKGNzaWQtPmFkZHJfdXBkYXRlLCBjc2lkLT5iYXNlICsgQ1NJRF9BVVBfQ01EKTsKCiAg
ICAgICAgICAgIF9fY3NpZF9hdXBfcnVwX3RyaWdnZXIoY3NpZCk7CiAgICB9CgpDb25jdXJyZW50
bHksIHdoZW4gYW4gZW5kLW9mLWZyYW1lIGludGVycnVwdCBmaXJlcyB3aXRoIElORk9fUlVQX0RP
TkUgc2V0LApjc2lkX2lzcigpIGluIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy1jc2lkLTEwODAuYyBjbGVhcnMKdGhvc2UgZmllbGRzIHdpdGhvdXQgaG9sZGluZyB2ZmUt
Pm91dHB1dF9sb2NrIG9yIGFueSBDU0lEIGxvY2sgYmVmb3JlIGNhbGxpbmcKY2Ftc3NfYnVmX2Rv
bmUoKToKCiAgICBpZiAodmFsICYgSU5GT19SVVBfRE9ORSkgewogICAgICAgICAgICBfX2NzaWRf
YWRkcl91cGRhdGVfY2xlYXIoY3NpZCwgaSk7CiAgICAgICAgICAgIF9fY3NpZF9yZWdfdXBkYXRl
X2NsZWFyKGNzaWQsIGkpOwogICAgfQoKSWYgdXNlcnNwYWNlIHF1ZXVlcyBhIGJ1ZmZlciB2aWEg
VklESU9DX1FCVUYgLT4gdmZlX3F1ZXVlX2J1ZmZlcl92MigpIHdoZW4Kb3V0cHV0LT5nZW4yLmFj
dGl2ZV9udW0gPT0gMSAob3IgZW5hYmxlcyBhbm90aGVyIFJESSBwb3J0IG9uIHRoZSBzYW1lIENT
SUQKdmlhIFZJRElPQ19TVFJFQU1PTiAtPiB2ZmVfZW5hYmxlX291dHB1dF92MigpKSBvbiBvbmUg
Q1BVIHdoaWxlIGNzaWRfaXNyKCkKcHJvY2Vzc2VzIElORk9fUlVQX0RPTkUgb24gYW5vdGhlciBD
UFUsIHRoZSB1bnN5bmNocm9uaXplZCByZWFkLW1vZGlmeS13cml0ZQpvcGVyYXRpb25zIG9uIGNz
aWQtPmFkZHJfdXBkYXRlIGFuZCBjc2lkLT5yZWdfdXBkYXRlIGNhbiBjbGVhciBhIG5ld2x5IHNl
dApiaXQgYmVmb3JlIHdyaXRlbCgpIHdyaXRlcyBDU0lEX0FVUF9DTUQgb3IgQ1NJRF9SVVBfQ01E
LCBvciBjbG9iYmVyIGJpdHMKYWNyb3NzIFJESSBwb3J0cy4gV291bGQgdGhpcyBjYXVzZSB0aGUg
aGFyZHdhcmUgdG8gbWlzcyBhIGJ1ZmZlciBhZGRyZXNzCnVwZGF0ZSB3aGlsZSBvdXRwdXQtPmdl
bjIuYWN0aXZlX251bSBpcyBpbmNyZW1lbnRlZCwgc3RhbGxpbmcgY2FwdHVyZT8KClsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwNjAxMTY0NDAzLjhDRTgzMUYwMDg5M0BzbXRwLmtl
cm5lbC5vcmcKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjExMDIta2FhbmFwYWxpLWNhbXNzLXYyNC0wLWQ2YjhmM2Y2ZjY2ZkBvc3Mu
cXVhbGNvbW0uY29tP3BhcnQ9MTAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
