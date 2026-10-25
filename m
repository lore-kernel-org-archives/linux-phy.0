Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F1F606A31E
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vSrYvNuL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cJygGthz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fkxHxvEKnkGgyNeickZWclSiudDJWVqGc6PDoxtgCRI=; b=vSrYvNuL17olHlJHvyIiRwUKOu
	YNv0HVQ53/Sq0vfnHZwvJvhAS/MjS2pjJsncQDfZTu6gj1frk87395VJAtmqUJD1jQT1mF0+le5bI
	gR2btVgyhraH7mIRP/lUUc5mu8MZncfNxMxQNPrT+QFjBvPF88zt8oRflxBVD6fiyzAQLI3WZqs0I
	RZH0+PxEMCzW4cPcA49TRU25Ag2syfE7CeEIz8dTY2EfAJc8tGSGV8ftEI143edgiepUVbcIG1rrG
	QDEguvypt2qma/76R1yw4SXM9ZvlNV6FE9fsF+prQpej3j7wX5st1kPKzwjRxvldztoBhWltu5BN2
	s2H3P7tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKp30-00000000hGF-05YU;
	Sun, 25 Oct 2026 03:37:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKp2x-00000000hG8-3joa
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:37:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BBDE4600D4;
	Sun, 25 Oct 2026 03:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0103E1F01825;
	Sun, 25 Oct 2026 03:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792899442;
	bh=DNrd9zf1g0/1vsLw/Gwfafp9ltT5ubtSaLG4hUj3UHM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cJygGthzhS24It1g9cfKgQQUKCsjn5F8Wq+M90rVwkJMzbLvhNZ4dHZFCNKX6Ip/n
	 kPhQGvvtNyPa+VX78GkvpQqxSa6s79me7Y3PrrQ6Z9g1HTRjwh2aqpuZB3pMKRfdMt
	 tLdCVHEVxAskIfgi+B/KYBMEnLKKLAXUhEu2ZKeoYiB/6wzYg6u83AxGfCLqYNyGrs
	 gR50/TekZZT164GkwtzJu4fcHVllOSdsBuDp/daMv5+ZPjvyg7G+4rxVv646sH/KAx
	 moD39uMFYUTcjJFqybmx5BaxDZSWInBlBFcidlkUyn2mR/3mqYYUqAAVNz82wLFzv9
	 3zQLyKpL4/ikA==
Message-ID: <sashiko-outbox-184021@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v22 10/14] media: qcom: camss: tpg: Add support for
 v2.4.0 TPG
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261024-kaanapali-camss-v22-10-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <20261024-kaanapali-camss-v22-10-7da3ea49c8a1@oss.qualcomm.com>
Date: Sun, 25 Oct 2026 03:37:21 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gbWVkaWE6IHFjb206
IGNhbXNzOiB1bmluaXRpYWxpemVkIGh3X3ZlcnNpb24gY2hlY2sgaW4gdHBnX3Jlc2V0KCkKLS0K
CmNvbW1pdCAwODEwZWFmZDdhZjhhM2M5MDk1NmE4MGE1MTMyMTg3ZTYzNDUzMWU1CkF1dGhvcjog
SGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4KCm1lZGlhOiBxY29t
OiBjYW1zczogdHBnOiBBZGQgc3VwcG9ydCBmb3IgdjIuNC4wIFRQRwoKVGhpcyBwYXRjaCBhZGRz
IHN1cHBvcnQgZm9yIFRQRyBoYXJkd2FyZSB2ZXJzaW9uIDIuNC4wIG9uIEthYW5hcGFsaSwgdXNp
bmcKdGhlIFRQR19DVFJMX0NNRCByZWdpc3RlciBmb3IgdGVzdC1lbmFibGUgYW5kIHJlc2V0LCBy
b3V0aW5nIFRQRyBvdXRwdXQKdGhyb3VnaCB0aGUgQ1NJRCAxMDgwIENTSTIgVFBHIG11eCwgYW5k
IHdpcmluZyB1cCB0aGUgVFBHIHJlc291cmNlcyBmb3IKS2FhbmFwYWxpLgoKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRwZy1nZW4xLmMgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdlbjEuYwo+IGluZGV4
IGQyOWRlNWY5M2MxOGUuLmNhYmJiMjYzOGNmMzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRwZy1nZW4xLmMKPiArKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdlbjEuYwoKWyAuLi4gXQoKPiBAQCAt
MTY0LDE4ICsxNjcsMjYgQEAgc3RhdGljIGludCB0cGdfc3RyZWFtX29uKHN0cnVjdCB0cGdfZGV2
aWNlICp0cGcpCgpbIC4uLiBdCgo+ICBzdGF0aWMgaW50IHRwZ19yZXNldChzdHJ1Y3QgdHBnX2Rl
dmljZSAqdHBnKQo+ICB7Cj4gLQl3cml0ZWwoMCwgdHBnLT5iYXNlICsgVFBHX0NUUkwpOwo+IC0J
d3JpdGVsKDEsIHRwZy0+YmFzZSArIFRQR19DTEVBUik7Cj4gKwlpZiAodHBnLT5od192ZXJzaW9u
IDwgVFBHX0hXX1ZFUl8yXzRfMCkKPiArCQl3cml0ZWwoMCwgdHBnLT5iYXNlICsgVFBHX0NUUkwp
Owo+ICsKPiArCXdyaXRlbChUUEdfQ1RSTF9DTURfSFdfUkVTRVQsIHRwZy0+YmFzZSArIFRQR19D
VFJMX0NNRCk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KCltTZXZlcml0eTogTWVkaXVtXQpJcyB0
cGctPmh3X3ZlcnNpb24gaW5pdGlhbGl6ZWQgd2hlbiB0cGdfcmVzZXQoKSBpcyBjYWxsZWQgZm9y
IHRoZSBmaXJzdAp0aW1lPwoKSW4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2Nh
bXNzLXRwZy5jLCB0cGdfc2V0X3Bvd2VyKCkgY2FsbHMKcmVzZXQoKSBiZWZvcmUgY2FsbGluZyBo
d192ZXJzaW9uKCk6Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBn
LmM6dHBnX3NldF9wb3dlcigpIHsKCWlmIChvbikgewoJCS4uLgoJCXRwZy0+cmVzLT5od19vcHMt
PnJlc2V0KHRwZyk7CgoJCXRwZy0+cmVzLT5od19vcHMtPmh3X3ZlcnNpb24odHBnKTsKCX0KfQoK
U2luY2UgdHBnLT5od192ZXJzaW9uIGlzIG9ubHkgcG9wdWxhdGVkIGluIHRwZ19od192ZXJzaW9u
KCkgYW5kIHN0YXJ0cyBhdCAwCmZyb20gdGhlIGluaXRpYWwgZGV2bV9rY2FsbG9jKCkgaW4gY2Ft
c3NfcHJvYmUoKSwgd29uJ3QgdGhlIGZpcnN0IHBvd2VyLW9uCm9mIGEgdjIuNC4wIFRQRyBldmFs
dWF0ZSAwIDwgVFBHX0hXX1ZFUl8yXzRfMCBhcyB0cnVlIGFuZCBzdGlsbCB3cml0ZSAwIHRvClRQ
R19DVFJMPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MTAyNC1rYWFuYXBhbGktY2Ftc3MtdjIyLTAtN2RhM2VhNDljOGExQG9zcy5x
dWFsY29tbS5jb20/cGFydD0xMAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
