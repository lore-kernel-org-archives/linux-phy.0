Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF83606A329
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 18:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2jP2aOHT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HccBx4ZY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X/WkdlFyOZ26z1KavHij6oORov3x9ktosECh3sTLZH8=; b=2jP2aOHT/cnmffB1FLY1YAdkma
	lO+YG+4Uh4ZqY5/5o0ct3NvcF39KjE3In2EBFAk3THo6jbmrbzDbG8e6Hto+Hrnf8uypFK9MtYITq
	NYCkjGbZFP+58+bflznqJ0oh7AOwFj9PwFqFN11ORQ1wPyc86K+lGHdDSPoG49QP53frmLm5MAG/T
	Pu8eRtoN/HtqE7EuG4ZSBxsNCXwXBU0amffYmq4TfVswcv3yV0Iadu9kEPOk3iE+sbgtMkglvywAz
	+Ij0N6HjXhlOt0urVCpklCjguzgvIHo5G8aznuwPx0PDF21xERhrTjvgg/DfFoa8tql9kILROs1n/
	J9O/6saA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPPAG-0000000DTiT-02vt;
	Fri, 06 Nov 2026 18:59:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPPAD-0000000DThq-1cjq
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 18:59:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A8657601E1;
	Fri,  6 Nov 2026 18:59:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB5521F0089F;
	Fri,  6 Nov 2026 18:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793991588;
	bh=Deh2ySOKE6BX1A0sFODoyKCHwwoGviIpLJxpfCVxq4I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HccBx4ZYTGF9pixsjJNxKKdt/GNFdoe2RioI+rT5Wy2Qhd0pU6chbD/BS2ZnB7WfL
	 wrj5WUTH1vdOk1xYbtSfhFGkan1ZOtIZuybT4pNOfOH/01/FEsdlAZxxCUuOA734Bk
	 NUyFfGWcPedV4D+2MUmORi3SiSWdu+j3lUsWKuQxdTHStruBOnXamF67LVPG0q14u6
	 r7P9La5x9ie4/ZwSJjKXA11RcLBxkhyg8QcygZY9q5CvcIz2Uu9wo3l47qe/tl1nhi
	 OqD1tLedlMI73+25BqSYSEBl81lxGHaOaVj4lkisGYXYQh3v+zSj8PZnVUEtsADqsM
	 eRIFInYoSeLsA==
Message-ID: <sashiko-outbox-202123@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 7/7] arm64: dts: qcom: sm8150: Add CAMSS and CCI
 nodes
To: "Andrew Gigena" <mail@andrewgigena.dev>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-7-0103e8a0bbcd@andrewgigena.dev>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-7-0103e8a0bbcd@andrewgigena.dev>
Date: Fri, 06 Nov 2026 18:59:47 +0000
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
b206IHNtODE1MDogY2Ftc3MgZW5kcG9pbnRzIG9taXQgcmVxdWlyZWQKICBkYXRhLWxhbmVzCi0g
W0xvd10gYXJtNjQ6IGR0czogcWNvbTogc204MTUwOiBjYW1zcyBwbGFjZWQgYmVmb3JlIGNzaXBo
eTAuLjMgb3V0IG9mCiAgYWRkcmVzcyBvcmRlcgotLQoKY29tbWl0IGM1MmQ2MGE3NjVkNGU5OTNm
Y2Q3NTNlMThkYjJlZjIwNTVmMzg5ZTUKQXV0aG9yOiBBbmRyZXcgR2lnZW5hIDxtYWlsQGFuZHJl
d2dpZ2VuYS5kZXY+Cgphcm02NDogZHRzOiBxY29tOiBzbTgxNTA6IEFkZCBDQU1TUyBhbmQgQ0NJ
IG5vZGVzCgpUaGlzIGNvbW1pdCBhZGRzIERldmljZXRyZWUgbm9kZXMgZm9yIHRoZSBTTTgxNTAg
Q0FNU1MgSVNQLCBmb3VyIENTSTIKUEhZcywgYW5kIHR3byBDQ0kgSTJDIGNvbnRyb2xsZXJzIGFs
b25nIHdpdGggdGhlaXIgVExNTSBwaW4KY29uZmlndXJhdGlvbnMuCgo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204MTUwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc204MTUwLmR0c2kKPiBpbmRleCAyOTNmY2JhY2ZmMzQ2Li4wMDhmNzg3MjM1Yjg2IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaQpbIC4uLiBdCj4gQEAgLTM3ODIs
NiArMzg2Miw0MTQgQEAgY2Ftbm9jX3ZpcnQ6IGludGVyY29ubmVjdEBhYzAwMDAwIHsKWyAuLi4g
XQo+ICsJCWNhbXNzOiBpc3BAYWNhZjAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxzbTgx
NTAtY2Ftc3MiOwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwpbIC4uLiBdCj4gKwkJCXBvcnRz
IHsKPiArCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkJI3NpemUtY2VsbHMgPSA8MD47
Cj4gKwo+ICsJCQkJcG9ydEAwIHsKPiArCQkJCQlyZWcgPSA8MD47Cj4gKwo+ICsJCQkJCWNhbXNz
X2NzaTBfaW46IGVuZHBvaW50IHsKPiArCQkJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZjc2lwaHkw
X291dD47Cj4gKwkJCQkJfTsKPiArCQkJCX07Cj4gKwo+ICsJCQkJcG9ydEAxIHsKPiArCQkJCQly
ZWcgPSA8MT47Cj4gKwo+ICsJCQkJCWNhbXNzX2NzaTFfaW46IGVuZHBvaW50IHsKPiArCQkJCQkJ
cmVtb3RlLWVuZHBvaW50ID0gPCZjc2lwaHkxX291dD47Cj4gKwkJCQkJfTsKPiArCQkJCX07Cj4g
Kwo+ICsJCQkJcG9ydEAyIHsKPiArCQkJCQlyZWcgPSA8Mj47Cj4gKwo+ICsJCQkJCWNhbXNzX2Nz
aTJfaW46IGVuZHBvaW50IHsKPiArCQkJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZjc2lwaHkyX291
dD47Cj4gKwkJCQkJfTsKPiArCQkJCX07Cj4gKwo+ICsJCQkJcG9ydEAzIHsKPiArCQkJCQlyZWcg
PSA8Mz47Cj4gKwo+ICsJCQkJCWNhbXNzX2NzaTNfaW46IGVuZHBvaW50IHsKPiArCQkJCQkJcmVt
b3RlLWVuZHBvaW50ID0gPCZjc2lwaHkzX291dD47Cj4gKwkJCQkJfTsKPiArCQkJCX07Cj4gKwkJ
CX07Cj4gKwkJfTsKCltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQgcG9ydEAwIHRocm91Z2ggcG9y
dEAzIGluIGNhbXNzIG9taXQgdGhlIHByZS1wb3B1bGF0ZWQKY2Ftc3NfY3NpMF9pbi4uY2Ftc3Nf
Y3NpM19pbiBlbmRwb2ludCBub2RlcyBoZXJlIHNvIHRoYXQgYm9hcmQgRFRTIGZpbGVzCmluc3Rh
bnRpYXRlIG9ubHkgdGhlIGFjdGl2ZSBlbmRwb2ludHMgd2l0aCB0aGVpciBkYXRhLWxhbmVzPwoK
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Fjb20sc204MTUwLWNhbXNz
LnlhbWwgcmVxdWlyZXMKZGF0YS1sYW5lcyBvbiBldmVyeSBlbmRwb2ludCB1bmRlciBwb3J0QFsw
LTNdLCBzbyBlbmFibGluZyBjYW1zcyBvbiBhCmJvYXJkIHRoYXQgdXNlcyBmZXdlciB0aGFuIGFs
bCBmb3VyIENTSTIgUEhZcyBsZWF2ZXMgdGhlIHVudXNlZAplbmRwb2ludHMgd2l0aG91dCBkYXRh
LWxhbmVzIGFuZCBmYWlscyBkdGJzX2NoZWNrLiAgQXQgcnVudGltZSwgaWYgYQpib2FyZCBEVFMg
b25seSBzZXRzIGRhdGEtbGFuZXMgb24gdGhlIHNlbnNvci1mYWNpbmcgY3NpcGh5Tl9pbiBlbmRw
b2ludCwKY2Ftc3NfcGFyc2VfcG9ydHMoKSAtPiBjYW1zc19wYXJzZV9lbmRwb2ludF9ub2RlKCkg
cGFyc2VzIGNhbXNzX2NzaU5faW4Kd2l0aG91dCBkYXRhLWxhbmVzLCBkb2VzIG5vdCBzZWxlY3Qg
VjRMMl9NQlVTX0NTSTJfRFBIWSBpbgp2NGwyX2Z3bm9kZV9lbmRwb2ludF9wYXJzZSgpLCBhbmQg
ZmFpbHMgcHJvYmUgd2l0aCAtRUlOVkFMOgoKZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2Nh
bXNzL2NhbXNzLmM6Y2Ftc3NfcGFyc2VfZW5kcG9pbnRfbm9kZSgpIHsKICAgIC4uLgoJdjRsMl9m
d25vZGVfZW5kcG9pbnRfcGFyc2Uob2ZfZndub2RlX2hhbmRsZShub2RlKSwgJnZlcCk7CglpZiAo
dmVwLmJ1c190eXBlICE9IFY0TDJfTUJVU19DU0kyX0RQSFkpIHsKCQlkZXZfZXJyKGRldiwgIlVu
c3VwcG9ydGVkIGJ1cyB0eXBlICVkXG4iLCB2ZXAuYnVzX3R5cGUpOwoJCXJldHVybiAtRUlOVkFM
OwoJfQogICAgLi4uCn0KCj4gKwo+ICsJCWNzaXBoeTA6IHBoeUBhYzY1MDAwIHsKPiArCQkJY29t
cGF0aWJsZSA9ICJxY29tLHNtODE1MC1jc2kyLXBoeSI7Cj4gKwkJCXJlZyA9IDwwIDB4YWM2NTAw
MCAwIDB4MTAwMD47Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgpbU2V2ZXJpdHk6IExvd10K
U2hvdWxkIGNzaXBoeTAuLmNzaXBoeTMgKHBoeUBhYzY1MDAwLi5waHlAYWM2ODAwMCkgYmUgcGxh
Y2VkIGJlZm9yZQpjYW1zcyAoaXNwQGFjYWYwMDApIHRvIGtlZXAgL3NvY0AwIGNoaWxkIG5vZGVz
IGluIGFzY2VuZGluZyB1bml0LWFkZHJlc3MKb3JkZXI/CgpCZWNhdXNlIG9mX3BsYXRmb3JtX3Bv
cHVsYXRlKCkgcmVnaXN0ZXJzIGRldmljZXMgaW4gbm9kZSBvcmRlciwgcGxhY2luZwppc3BAYWNh
ZjAwMCBiZWZvcmUgcGh5QGFjNjUwMDAuLnBoeUBhYzY4MDAwIGFsc28gY2F1c2VzIGNhbXNzX3By
b2JlKCkgLT4KY2Ftc3NfaW5pdF9zdWJkZXZpY2VzKCkgLT4gbXNtX2NzaXBoeV9zdWJkZXZfaW5p
dCgpIHRvIHJ1biBiZWZvcmUgdGhlClBIWSBwcm92aWRlcnMgYXJlIHJlZ2lzdGVyZWQgd2hlbiBi
dWlsdC1pbiwgaGl0dGluZyAtRVBST0JFX0RFRkVSIGZyb20KZGV2bV9waHlfZ2V0X2J5X29mX25v
ZGUoKSBhbmQgbG9nZ2luZyBhIHNwdXJpb3VzIGRldl9lcnIoImNzaXBoeSAlZCBpbml0CmZhaWxc
biIpLiAgSW4gYWRkaXRpb24sIHN0YXR1cyA9ICJkaXNhYmxlZCIgaW4gY2Ftc3MgYW5kCmNzaXBo
eTAuLmNzaXBoeTMgc2hvdWxkIHNpdCBhZnRlciB0aGUgc3RhbmRhcmQgZGV2aWNlIHByb3BlcnRp
ZXMgKGJlZm9yZQpjaGlsZCBub2RlcyksIGFuZCB0aGUgcmVnIGFkZHJlc3NlcyBpbiB0aGVzZSBu
b2RlcyBzaG91bGQgYmUgemVyby1wYWRkZWQKdG8gOCBoZXggZGlnaXRzIChzdWNoIGFzIDB4MGFj
NGEwMDApIHRvIG1hdGNoIHN1cnJvdW5kaW5nIC9zb2NAMCBub2Rlcy4KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMDYtc204MTUw
LXY3LjQtcmMxLWNhbXNzLXYzLTAtMDEwM2U4YTBiYmNkQGFuZHJld2dpZ2VuYS5kZXY/cGFydD03
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
