Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D773606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 06:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I4OBnj9s;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=N0L+1KCU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZN8X4TlNhEr2m8GaQ3KHFJyEvfS6Q6jJkwXI3aztuSc=; b=I4OBnj9seflYhx1V/PNw8re0hg
	EVPfLLz9VSsNaySg2NJUbbxGj9HjOBJ6dc5Yb1pTJYxGYb3T+KzddEaGW3/TqjmzBlnuKuChPgS6b
	cNki2TP/p2fWSOc9sJF3qc6vW0gIbnDqWXjYYN3Z5LEcpzuS/RglnSYvjDCx/D5CfiLJwZE7/s2J6
	qHcb9N5+YceeBOUYMiecU1uFcHB/PCeOLvsChFiy4PD8ykUUm2BO+kKp1Jht+PJaheYs8cx5EJwsE
	fuEXUJIbG9rqnBgqQvoz6YgxNJeF6L0Mrsf0xvIP9a1yxMs3bcC7fSa3Tmu+CH5bfMZPTbxfWW1c4
	yTIY42jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgWZ-0000000AwkB-34IK;
	Fri, 30 Oct 2026 06:55:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgWY-0000000AwjQ-2H0o
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 06:55:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 76CC1601EE;
	Fri, 30 Oct 2026 06:55:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B45781F000C1;
	Fri, 30 Oct 2026 06:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793343337;
	bh=P9QrYaq/DkHGTDvTpt/LwceNqoTYAZ3bEDsNS1lBDO8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N0L+1KCU7gD0tUR70kHsd7E/hhsFrzeVs0qPM38fcNUO+u/N8H1EEHjllXNrcWZt0
	 7zkohh73xFr5X49vYoPcbZBcokmeVhuvm2TBQ9+cHUhAkDRpTUViHG2M0+yMShk1v2
	 yM53I+29/DI6vp5fZ1kHQU2luINy2Re77+JkijAyvWtu6LkqP6E9hCeY7ZYbNw2QFb
	 QtGyv8scIy91NYsnn+Jq1ZrvGQjeBPRxWYvrOn16akdSpcIKQnriD2hxJVh7vkMw2S
	 RTH3FQt6nwGufAsvgxOhQ53s9QRbHcVfnMG+Qdv7VnHfMx26Me+K7n2s2/iPqeezYl
	 R5VlD2U/lMgHQ==
Message-ID: <sashiko-outbox-190620@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/6] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3568
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261030064905.2248999-2-damon.ding@rock-chips.com>
References: <20261030064905.2248999-1-damon.ding@rock-chips.com>
 <20261030064905.2248999-2-damon.ding@rock-chips.com>
Date: Fri, 30 Oct 2026 06:55:36 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IGRp
c3BsYXk6IHJvY2tjaGlwOiB1bndpZWxkeSBwZXItY29tcGF0aWJsZSBjb25kaXRpb25hbHMKLS0K
CmNvbW1pdCA1M2NlMDllOTljNzVlMTQyYTMyOGY0YmYyZTc1MzVmYWQ3ZGFkZWI5CkF1dGhvcjog
RGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KCmR0LWJpbmRpbmdzOiBkaXNw
bGF5OiByb2NrY2hpcDogYW5hbG9naXgtZHA6IEFkZCBzdXBwb3J0IGZvciBSSzM1NjgKClRoaXMg
Y29tbWl0IGRvY3VtZW50cyB0aGUgcm9ja2NoaXAscmszNTY4LWVkcCBjb21wYXRpYmxlIGluCnJv
Y2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwsIG1ha2luZyByb2NrY2hpcCxncmYgY29uZGl0aW9uYWwg
YW5kIGFkZGluZyB0aGUKYXZkZC0wdjktc3VwcGx5IGFuZCBhdmRkLTF2OC1zdXBwbHkgcHJvcGVy
dGllcyBmb3IgUkszNTY4LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsYW5hbG9naXgtZHAueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlw
LGFuYWxvZ2l4LWRwLnlhbWwKPiBpbmRleCA2NTQ4ZjE1N2ZkOTY2Li5mM2U3MGNjM2ExMjM2IDEw
MDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3Jv
Y2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxhbmFsb2dpeC1kcC55
YW1sCgpbIC4uLiBdCgo+IEBAIC02MSwxMSArNzIsMjUgQEAgcmVxdWlyZWQ6Cj4gICAgLSBjbG9j
ay1uYW1lcwo+ICAgIC0gcmVzZXRzCj4gICAgLSByZXNldC1uYW1lcwo+IC0gIC0gcm9ja2NoaXAs
Z3JmCj4gIAo+ICBhbGxPZjoKPiAgICAtICRyZWY6IC9zY2hlbWFzL2Rpc3BsYXkvYnJpZGdlL2Fu
YWxvZ2l4LGRwLnlhbWwjCj4gIAo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAg
ICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBj
b25zdDogcm9ja2NoaXAscmszNTY4LWVkcAo+ICsgICAgdGhlbjoKPiArICAgICAgcHJvcGVydGll
czoKPiArICAgICAgICByb2NrY2hpcCxncmY6IGZhbHNlCj4gKyAgICBlbHNlOgo+ICsgICAgICBw
cm9wZXJ0aWVzOgo+ICsgICAgICAgIGF2ZGQtMHY5LXN1cHBseTogZmFsc2UKPiArICAgICAgICBh
dmRkLTF2OC1zdXBwbHk6IGZhbHNlCj4gKyAgICAgIHJlcXVpcmVkOgo+ICsgICAgICAgIC0gcm9j
a2NoaXAsZ3JmCj4gKwo+ICAgIC0gaWY6Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAg
Y29tcGF0aWJsZToKPiBAQCAtMTAwLDYgKzEyNSw3IEBAIGFsbE9mOgo+ICAgICAgICAgIGNvbXBh
dGlibGU6Cj4gICAgICAgICAgICBjb250YWluczoKPiAgICAgICAgICAgICAgZW51bToKPiArICAg
ICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU2OC1lZHAKPiAgICAgICAgICAgICAgICAtIHJvY2tj
aGlwLHJrMzU3Ni1lZHAKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1lZHAKPiAg
ICAgIHRoZW46CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHdpdGggdGhl
IGFkZGl0aW9uIG9mIHJvY2tjaGlwLHJrMzU2OC1lZHAsIGFsbE9mIGluCkRvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRw
LnlhbWwKbm93IGhhcyBmb3VyIHNlcGFyYXRlIHBlci1jb21wYXRpYmxlIGlmLXRoZW4gYmxvY2tz
IGdvdmVybmluZyBhbG1vc3QgYWxsClJvY2tjaGlwLXNwZWNpZmljIHByb3BlcnRpZXMgKGNsb2Nr
cywgY2xvY2stbmFtZXMsIHJlc2V0cywgcmVzZXQtbmFtZXMsCnJvY2tjaGlwLGdyZiwgYXZkZC0w
djktc3VwcGx5LCBhbmQgYXZkZC0xdjgtc3VwcGx5KSwgd2l0aApyb2NrY2hpcCxyazM1NjgtZWRw
IG1hdGNoZWQgaW4gdHdvIGRpZmZlcmVudCBibG9ja3MuCgpHaXZlbiB0aGVzZSBncm93aW5nIHZh
cmlhbnQgZGlmZmVyZW5jZXMgYWNyb3NzIFNvQ3MsIHdvdWxkIGl0IGJlIGNsZWFuZXIKdG8gc3Bs
aXQgdGhpcyBiaW5kaW5nIGludG8gc2VwYXJhdGUgc2NoZW1hIGRvY3VtZW50cyByYXRoZXIgdGhh
biBhZGRpbmcKbW9yZSBwZXItY29tcGF0aWJsZSBjb25kaXRpb25hbHMgaGVyZT8KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMzAw
NjQ5MDUuMjI0ODk5OS0xLWRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20/cGFydD0xCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
