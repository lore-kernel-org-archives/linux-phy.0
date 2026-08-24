Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22EE3C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDnKGhpgUyJtuWVtQd7hZAJPhYFfV954xz+nTA6CVKo=; b=iqIUaQfF7NnH9E
	jnWTqgvnV+7mm0AfVDtbWjX1x+TZkSC+l+DC2rJChE5mrJPd2yWf95J7xFM5SgYsEyQ9T8B2pn8/Q
	MbA3VdIwATnt2IOe6a2eB30Mx9LfGPBm/Xk3CqXsReqpBfmOALNGozmGh5JdbjBwkqAXpsw8Hxbz/
	TdJaMrdQXX9yR445RYsrWlKMYRo6Pn5qOCEbPznp4HpIJuyNmK34cCoZ/G6TNsMk1sEEVnzxeGJGl
	SwLH11DzV4kbFSgjgu9v2T04Ly2H/4DDmxifUcetdmr/mBayc6ukn7jPvNZRNLWstQaUSqTMh9eNz
	bzgZFqXHQ9hPT3x0KpOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySxn-0000000GWho-3fzQ;
	Mon, 24 Aug 2026 11:35:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySxm-0000000GWhi-1UG5
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 11:35:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C337941401;
	Mon, 24 Aug 2026 11:35:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E3C21F000E9;
	Mon, 24 Aug 2026 11:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787571337;
	bh=vgj5r6GmLT8MjQbvl6fgLukUg+xKTjUDCD1xunx7hbE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AqgZGV4RFhxqKosX+puCoBka+Zh/xs5XO5XC5OrmUK72cYgXRPJhxGszTXgyCxGgP
	 p0BFyzGfKDJgTl/S+4D81uK/+uAwhmm9M0Z83qaaGfQlR9TYAz3T6WRvZ5sBLNC6hn
	 kxT5a/W9mtPbVzbo/fF3Tt9tji8uf3JJtbHxn0LBNS14S05jq6sYFAlhG0lWK6rb/z
	 zqxLbkeHosLibZQw7u0uJRoSTY0RXC5y3ZiX3vKgzAQAlKRGpYfPIjN94BHolJG/6q
	 4hXaVdzssJOMSSDERXfLymNnyZXei0rHZc5AWtqPnGGryH+Xa5AUVeca2Uy40f+E9V
	 6/FJkP7NncZGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] drm/msm/dp: skip LTTPR init when no LTTPRs are
 present
To: "Saurabh Anand" <saurabh.anand@oss.qualcomm.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-3-2825e5bf8a96@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-3-2825e5bf8a96@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 11:35:36 +0000
Message-Id: <20260824113537.4E3C21F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gU2tpcHBpbmcgYGRy
bV9kcF9sdHRwcl9pbml0KClgIGZvciBuZWdhdGl2ZSBgbHR0cHJfY291bnRgIGJ5cGFzc2VzIHRo
ZSByZXF1aXJlZCBMVFRQUiB0cmFuc3BhcmVudCBtb2RlIGZhbGxiYWNrIGFuZCBpcyBiYXNlZCBv
biBhIGZsYXdlZCBwcmVtaXNlLgotLQoKLS0tIFBhdGNoIFszXTogW1BBVENIIDMvNF0gZHJtL21z
bS9kcDogc2tpcCBMVFRQUiBpbml0IHdoZW4gbm8gTFRUUFJzIGFyZSBwcmVzZW50IC0tLQpjb21t
aXQgNTg2ZTMxNGM1MDgyMGRmMjM0MWE5MWU4YTMwZDM5NjNkMzM0NjI4MQpBdXRob3I6IFNhdXJh
YmggQW5hbmQgPHNhdXJhYmguYW5hbmRAb3NzLnF1YWxjb21tLmNvbT4KCmRybS9tc20vZHA6IHNr
aXAgTFRUUFIgaW5pdCB3aGVuIG5vIExUVFBScyBhcmUgcHJlc2VudAoKVGhpcyBwYXRjaCBhZGRz
IGFuIGVhcmx5IHJldHVybiB3aGVuIGRybV9kcF9sdHRwcl9jb3VudCgpIHJldHVybnMgYSB6ZXJv
IG9yCm5lZ2F0aXZlIHZhbHVlLiBUaGUgZ29hbCBpcyB0byBza2lwIExUVFBSIGluaXRpYWxpemF0
aW9uIHdoZW4gbm8gcmVwZWF0ZXJzCmFyZSBkZXRlY3RlZCBvciBhbiBlcnJvciBvY2N1cnMgcmVh
ZGluZyB0aGUgY291bnQuCgo+IGRybV9kcF9sdHRwcl9jb3VudCgpIHJldHVybnMgMCB3aGVuIG5v
IExUVFBScyBhcmUgZGV0ZWN0ZWQgYW5kIGEKPiBuZWdhdGl2ZSB2YWx1ZSBvbiBlcnJvci4gVGhl
IHByZXZpb3VzIGNvZGUgcGFzc2VkIHRoZSByZXN1bHQgZGlyZWN0bHkKPiB0byBkcm1fZHBfbHR0
cHJfaW5pdCgpIHdpdGhvdXQgY2hlY2tpbmcsIHdoaWNoIHdvdWxkIGNhbGwgaW50byB0aGUKPiBM
VFRQUiB0cmFuc3BhcmVuY3ktbW9kZSBzZXR1cCB3aXRoIGEgemVybyBvciBuZWdhdGl2ZSByZXBl
YXRlciBjb3VudC4KCklzIHRoaXMgZGVzY3JpcHRpb24gb2YgZHJtX2RwX2x0dHByX2luaXQoKSBh
Y2N1cmF0ZT8KCkxvb2tpbmcgYXQgZHJtX2RwX2x0dHByX2luaXQoKSwgaXQgc2FmZWx5IHJldHVy
bnMgMCBvbiBpdHMgb3duIGlmCmx0dHByX2NvdW50IGlzIHplcm86CgppbnQgZHJtX2RwX2x0dHBy
X2luaXQoc3RydWN0IGRybV9kcF9hdXggKmF1eCwgaW50IGx0dHByX2NvdW50KQp7CglpbnQgcmV0
OwoKCWlmICghbHR0cHJfY291bnQpCgkJcmV0dXJuIDA7CgkuLi4KfQoKSXQgYXBwZWFycyBpdCBh
bHJlYWR5IGF2b2lkcyBjYWxsaW5nIGludG8gdGhlIHRyYW5zcGFyZW5jeS1tb2RlIHNldHVwCndo
ZW4gdGhlIGNvdW50IGlzIHplcm8uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNt
L2RwL2RwX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxheS5jCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuYwo+IEBAIC0yNTMsNiArMjUzLDEwIEBAIHN0YXRp
YyBpbnQgbXNtX2RwX2Rpc3BsYXlfbHR0cHJfaW5pdChzdHJ1Y3QgbXNtX2RwX2Rpc3BsYXlfcHJp
dmF0ZSAqZHAsIHU4ICpkcGNkCj4gIAkJcmV0dXJuIDA7Cj4gIAo+ICAJbHR0cHJfY291bnQgPSBk
cm1fZHBfbHR0cHJfY291bnQoZHAtPmxpbmstPmx0dHByX2NvbW1vbl9jYXBzKTsKPiArCj4gKwlp
ZiAobHR0cHJfY291bnQgPD0gMCkKPiArCQlyZXR1cm4gMDsKPiArCgpbU2V2ZXJpdHk6IE1lZGl1
bV0KRG9lcyBza2lwcGluZyBkcm1fZHBfbHR0cHJfaW5pdCgpIGZvciBuZWdhdGl2ZSBjb3VudHMg
YnlwYXNzIHRoZSByZXF1aXJlZAp0cmFuc3BhcmVudCBtb2RlIGZhbGxiYWNrIGZvciBub24tY29t
cGxpYW50IHJlcGVhdGVycz8KCkxvb2tpbmcgYXQgZHJtX2RwX2x0dHByX2luaXQoKSBpbiBkcml2
ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfaGVscGVyLmMsCml0IHJlbGllcyBvbiByZWNlaXZp
bmcgbmVnYXRpdmUgY291bnRzIHRvIHRyaWdnZXIgaXRzIGZhbGxiYWNrIGxvZ2ljOgoKaW50IGRy
bV9kcF9sdHRwcl9pbml0KHN0cnVjdCBkcm1fZHBfYXV4ICphdXgsIGludCBsdHRwcl9jb3VudCkK
ewoJLi4uCglyZXQgPSBkcm1fZHBfbHR0cHJfc2V0X3RyYW5zcGFyZW50X21vZGUoYXV4LCB0cnVl
KTsKCWlmIChyZXQpCgkJcmV0dXJuIHJldDsKCglpZiAobHR0cHJfY291bnQgPCAwKQoJCXJldHVy
biAtRU5PREVWOwoJLi4uCn0KCldoZW4gbHR0cHJfY291bnQgaXMgbmVnYXRpdmUgKGUuZy4sIC1F
UkFOR0Ugb3IgLUVJTlZBTCksIHRoZSBlYXJseSByZXR1cm4gaW4KbXNtX2RwX2Rpc3BsYXlfbHR0
cHJfaW5pdCgpIGNhdXNlcyB0aGUgZmFsbGJhY2sgdG8gZm9yY2UgdHJhbnNwYXJlbnQgbW9kZSB0
bwpiZSBlbnRpcmVseSBza2lwcGVkLiBDb3VsZCB0aGlzIGNhdXNlIGxpbmsgdHJhaW5pbmcgdG8g
ZmFpbCBvbiBzZXR1cHMgd2l0aApub24tY29tcGxpYW50IExUVFBScyB3aGVyZSB0aGUgcmVwZWF0
ZXIgY291bnQgaXMgaW52YWxpZD8KCj4gIAlyYyA9IGRybV9kcF9sdHRwcl9pbml0KGRwLT5hdXgs
IGx0dHByX2NvdW50KTsKPiAgCWlmIChyYykgewoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyNC1xY29tLWRwLXR5cGVjLXJlY29u
bmVjdC1maXhlcy12MS0wLTI4MjVlNWJmOGE5NkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MwoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
