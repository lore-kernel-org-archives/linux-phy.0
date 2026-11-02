Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFE9606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 21:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JfOHrEIj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=flOeBTjp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7LKH0UMVO9UIomWr1ngsJvn/WwkVEyzzGqQCXeE8YQI=; b=JfOHrEIjBFLSHElBv2BRAuXS9P
	eMl18Wg35CHxucFLsw4OBVTUkmIIdltDWRWcPxwtV7zzrQiTxUMCzUC0VuRURj7HEOuxLZLf3AHeR
	7jLRnDMJu7mTk4ZPY7AQU6tHt7vN9hhnz5Za9HSUY5BoFoWauXIIB4Pj052DRcr3n5EmaJ/+Rs7JD
	/Zpv5gGbrf5hesxRPAHqnaFIpOz2b1fXnqJ76emFxCy9yuZoqHLuxyU2851WulCUDWL380tsFMGRK
	OgkDrNPBuug6DKMGN7/cFXjAznj09Kjk2UNFOTBSSkKbLYC0jQkRVBrMF47YiuCqA/tSRiCwvg3xL
	SSkON4jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzxN-00000000W7G-0y3e;
	Mon, 02 Nov 2026 21:52:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzxL-00000000W72-2I2a
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 21:52:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 05BF641E98;
	Mon,  2 Nov 2026 21:52:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93B5A1F00A16;
	Mon,  2 Nov 2026 21:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793656362;
	bh=PsKIC5FQvF++Bi3/Iog6Ul8X9EzOdiUwuIinzKe5JcI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=flOeBTjpcVWNhyTAFLZl0s8KuYUebHT74oLtFWCdFoTZUtvLKTmbpYNuh0tLEZVP1
	 uXeKKbmdmzc51duIjeolM4GVG87nA0/wPSyE4hgnGc+PhmvHM6GlnqQiWxhf140Gmn
	 XRDxh19nSuYVyhZPuhcnOXi0uKI0Vl8t5J5KT9ua9uyEISoy0kjZdHRGW4yEl7YKJ1
	 xIE9lWqZgSaqFY1KTrUXQCSORgjeLXvgd0Fhnvgp8X36/S6J6uBRRIqW8/TR2h4YEB
	 APWqMyxlsJ1z2U3hmVKPK8xeDH4DeM2uY6QjZV+r2/0scjDQ3hjJ4VlTa1/1Ov9tuv
	 2MdPUMJsuenRg==
Message-ID: <sashiko-outbox-194239@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] phy: qcom-mipi-csi2: Add support for single
 power-domain SoCs
To: "Anusha Arun Nandi" <anusha.nandi@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261102213936.1251316-1-anusha.nandi@oss.qualcomm.com>
References: <20261102213936.1251316-1-anusha.nandi@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 21:52:42 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBxY29tLW1p
cGktY3NpMjogbWlzc2luZyAtRU5PREVWIG9uIGVtcHR5IGRldm1fcG1fZG9tYWluX2F0dGFjaF9s
aXN0KCkKLS0KCmNvbW1pdCA2ZjE2MWQxN2UwNjllZDRkZjJkZDI5Mzc4ZmFmYTFiNDdjN2UzNzEw
CkF1dGhvcjogQW51c2hhIEFydW4gTmFuZGkgPGFudXNoYS5uYW5kaUBvc3MucXVhbGNvbW0uY29t
PgoKcGh5OiBxY29tLW1pcGktY3NpMjogQWRkIHN1cHBvcnQgZm9yIHNpbmdsZSBwb3dlci1kb21h
aW4gU29DcwoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciBTb0NzIHdpdGggYSBzaW5nbGUg
cG93ZXItZG9tYWluIG9uIHRoZSBDU0kyIFBIWQpub2RlIGJ5IGNhbGxpbmcgZGV2X3BtX2RvbWFp
bl9hdHRhY2goKSBpbnN0ZWFkIG9mIGRldm1fcG1fZG9tYWluX2F0dGFjaF9saXN0KCkKd2hlbiBu
dW1fZ2VucGRzIGlzIDEsIGFuZCBndWFyZGluZyBjc2kycGh5LT5wZF9saXN0IHdhbGtzIGFnYWlu
c3QgTlVMTC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1p
cGktY3NpMi1jb3JlLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTIt
Y29yZS5jCj4gaW5kZXggYzBhNGZhMjBlYWYwYy4uMjY5MjMyNDk5ZmNhOCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItY29yZS5jCj4gKysrIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLWNvcmUuYwoKWyAuLi4gXQoK
PiBAQCAtMjMxLDcgKzIzMSwxMSBAQCBzdGF0aWMgaW50IHBoeV9xY29tX21pcGlfY3NpMl9hdHRh
Y2hfcG1fZG9tYWlucyhzdHJ1Y3QgbWlwaV9jc2kycGh5X2RldmljZSAqY3NpMgo+ICB7Cj4gIAlz
dHJ1Y3QgZGV2X3BtX2RvbWFpbl9hdHRhY2hfZGF0YSBwZF9kYXRhID0geyAwIH07Cj4gIAljb25z
dCBjaGFyICoqcGRfbmFtZXM7Cj4gLQlpbnQgaTsKPiArCWludCBpLCByZXQ7Cj4gKwo+ICsJLyog
U2luZ2xlIHBvd2VyLWRvbWFpbiBkZXZpY2VzIGFyZSBhbHJlYWR5IGF0dGFjaGVkIGJ5IHRoZSBi
dXMgY29yZS4gKi8KPiArCWlmIChjc2kycGh5LT5zb2NfY2ZnLT5udW1fZ2VucGRzID09IDEpCj4g
KwkJcmV0dXJuIGRldl9wbV9kb21haW5fYXR0YWNoKGNzaTJwaHktPmRldiwgMCk7Cj4gIAo+ICAJ
cGRfbmFtZXMgPSBkZXZtX2t6YWxsb2MoY3NpMnBoeS0+ZGV2LAo+ICAJCQkJc2l6ZW9mKGNoYXIg
KikgKiBjc2kycGh5LT5zb2NfY2ZnLT5udW1fZ2VucGRzLAo+IEBAIC0yNDUsOCArMjQ5LDEyIEBA
IHN0YXRpYyBpbnQgcGh5X3Fjb21fbWlwaV9jc2kyX2F0dGFjaF9wbV9kb21haW5zKHN0cnVjdCBt
aXBpX2NzaTJwaHlfZGV2aWNlICpjc2kyCj4gIAlwZF9kYXRhLnBkX25hbWVzID0gcGRfbmFtZXM7
Cj4gIAlwZF9kYXRhLm51bV9wZF9uYW1lcyA9IGNzaTJwaHktPnNvY19jZmctPm51bV9nZW5wZHM7
Cj4gIAo+IC0JcmV0dXJuIGRldm1fcG1fZG9tYWluX2F0dGFjaF9saXN0KGNzaTJwaHktPmRldiwg
JnBkX2RhdGEsCj4gLQkJCQkJICAmY3NpMnBoeS0+cGRfbGlzdCk7Cj4gKwlyZXQgPSBkZXZtX3Bt
X2RvbWFpbl9hdHRhY2hfbGlzdChjc2kycGh5LT5kZXYsICZwZF9kYXRhLAo+ICsJCQkJCSAmY3Np
MnBoeS0+cGRfbGlzdCk7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiAr
CXJldHVybiAwOwo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IHBoeV9xY29tX21pcGlfY3NpMl9wYXJz
ZV9yb3V0aW5nKHN0cnVjdCBtaXBpX2NzaTJwaHlfZGV2aWNlICpjc2kycGh5KQo+IEBAIC0zNjks
MTEgKzM3Nyw4IEBAIHN0YXRpYyBpbnQgcGh5X3Fjb21fbWlwaV9jc2kyX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJcmV0dXJuIHJldDsKPiAgCj4gIAlyZXQgPSBwaHlf
cWNvbV9taXBpX2NzaTJfYXR0YWNoX3BtX2RvbWFpbnMoY3NpMnBoeSk7Cj4gLQlpZiAocmV0IDwg
MCB8fCBjc2kycGh5LT5wZF9saXN0ID09IE5VTEwpIHsKPiAtCQlpZiAocmV0ID09IDApCj4gLQkJ
CXJldCA9IC1FTk9ERVY7Cj4gKwlpZiAocmV0IDwgMCkKPiAgCQlyZXR1cm4gZGV2X2Vycl9wcm9i
ZShkZXYsIHJldCwgIkZhaWxlZCB0byBhdHRhY2ggcG93ZXItZG9tYWluIGxpc3RcbiIpOwo+IC0J
fQoKW1NldmVyaXR5OiBNZWRpdW1dCkFzIHJlcG9ydGVkIGJ5IEJyeWFuIE8nRG9ub2dodWUgb24g
djIgWzFdLCBkb2Vzbid0IHRoaXMgZHJvcCB0aGUgY2hlY2sgZm9yCndoZW4gZGV2bV9wbV9kb21h
aW5fYXR0YWNoX2xpc3QoKSByZXR1cm5zIDAgd2l0aG91dCBhdHRhY2hpbmcgYW55IHBvd2VyCmRv
bWFpbnM/CgpUaGUgY29tbWl0IG1lc3NhZ2Ugbm90ZXM6CgogICAgZGV2bV9wbV9kb21haW5fYXR0
YWNoX2xpc3QoKSByZXR1cm5zIHRoZSBudW1iZXIgb2YgYXR0YWNoZWQKICAgIHBvd2VyLWRvbWFp
bnMgb24gc3VjY2Vzcywgc28gYSBiYXJlICJyZXQgPCAwIiBjaGVjayBpbiBwcm9iZSgpIGlzIG5v
dAogICAgZW5vdWdoIHRvIGNhdGNoIHRoZSBjYXNlIHdoZXJlIGl0IHN1Y2NlZWRzIHdpdGhvdXQg
YWN0dWFsbHkgYXR0YWNoaW5nCiAgICBhbnkgZG9tYWlucy4gcGh5X3Fjb21fbWlwaV9jc2kyX2F0
dGFjaF9wbV9kb21haW5zKCkgbm93IGFsc28gY2hlY2tzIGZvcgogICAgdGhhdCBjYXNlIGRpcmVj
dGx5IGFuZCByZXBvcnRzIC1FTk9ERVYsIGtlZXBpbmcgcHJvYmUoKSdzIG93biBjaGVjawogICAg
dW5jaGFuZ2VkLgoKSG93ZXZlciwgcGh5X3Fjb21fbWlwaV9jc2kyX3Byb2JlKCkgcmVtb3ZlcyB0
aGUgY3NpMnBoeS0+cGRfbGlzdCA9PSBOVUxMIGFuZApyZXQgPT0gMCBjaGVjayB3aGlsZSBwaHlf
cWNvbV9taXBpX2NzaTJfYXR0YWNoX3BtX2RvbWFpbnMoKSBvbmx5IGNoZWNrcwppZiAocmV0IDwg
MCkgYW5kIHRoZW4gcmV0dXJucyAwLgoKSWYgZGV2bV9wbV9kb21haW5fYXR0YWNoX2xpc3QoKSBy
ZXR1cm5zIDAgb24gYSBtdWx0aS1wb3dlci1kb21haW4gU29DIChmb3IKaW5zdGFuY2Ugd2hlbiBD
T05GSUdfUE1fR0VORVJJQ19ET01BSU5TIGlzIGRpc2FibGVkKSwgc2hvdWxkbid0CnBoeV9xY29t
X21pcGlfY3NpMl9hdHRhY2hfcG1fZG9tYWlucygpIHJldHVybiAtRU5PREVWIGluc3RlYWQgb2Yg
MCBzbyBwcm9iZQpkb2VzIG5vdCBzdWNjZWVkIHdpdGggYW4gdW5hdHRhY2hlZCBwb3dlci1kb21h
aW4gbGlzdD8KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzU4NTk5YjYxLWE1NmItNGQ2
Yi1iMDlmLTAzZDgxM2E2NGMxY0BrZXJuZWwub3JnCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTAyMjEzOTM2LjEyNTEzMTYtMS1h
bnVzaGEubmFuZGlAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
