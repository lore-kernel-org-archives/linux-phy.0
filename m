Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B952E606A322
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 12:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ORyr/1Vk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EQvsu/cm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eGoKuqLecERvdeUErJmSlfRIKiKjVqezDZH8WYhRe7E=; b=ORyr/1VkYRZgvQz55tmsop5ohe
	XH+jXeL/IMcQxewgkwfzMuE1agm5mDYcWK7Z8c6dGo1OJOL6jMKN0+KwZNuqjWzxz4EPWAkgn1R2w
	jm30Q1KAuKxuZopBGrVV+GUvPlTVHTgZ3kcSEtPgcTXafEE0cfRbCrz4y+tfaH43WvGEy+bilumf0
	lydAAQN5WE29qhJ0IxVOdpqvX00dpNJCH4TFS6bQOujqekV2wAmVVK8Z6n82tz4JuJubc7559nx5a
	8+MNJWW613998da+r9lLfLhJjFhy1Z2+zy9cGtquAdvoJ8+ztz9cjwpkIxz1ZHsAdQOyVc2pU95kk
	J5dIQRBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMm4y-0000000BhxY-28ET;
	Fri, 30 Oct 2026 12:51:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMm4x-0000000BhxQ-2F3C
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 12:51:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9E43041A38;
	Fri, 30 Oct 2026 12:51:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11CA41F0093A;
	Fri, 30 Oct 2026 12:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793364690;
	bh=CgKHWGYGrsJ4xgtoPHl7wimW2jYscKSmdb3CJZRwbNg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EQvsu/cmNROe5lA5hNwJ5etZ89B8GeAv/AvsMWVNlrCpCxcgAIbWBwVOuOEG6lc70
	 DKHirMde2NHWdBtR20FxUDgrmf+wV2U2Tz+03wjJxkWBM20+wAVLrQTXmjhHfJr8ZI
	 RSfaE09q6eb1cEbXVME16ECS8X6jxt7jrpip+KEtlCxrkwpRWKPo28DVfgCjGdag82
	 1nHaG+m0yJKmL+qjynKpXwYDcj4NDOa9uZjpEXDw8oUFkTpcQnq7uYzlryOv7eEC1h
	 X3Yk3w7oM7ugItlRd1XX9NMyupSe6yKnIZ/zgwk3Vf0mWx5STc14KlSZ5I2/uOQWmK
	 Euv+oeNRyOa5Q==
Message-ID: <sashiko-outbox-191032@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: i2c: qcom,i2c-cci: Add Hawi
 compatible
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261030-hawi-maili-camss-v3-1-9742bca8cef2@oss.qualcomm.com>
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <20261030-hawi-maili-camss-v3-1-9742bca8cef2@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 12:51:29 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IGkyYzogcWNvbSxoYXdpLWNjaSBmYWxscyBiYWNrIHRvIHFjb20sbXNtODk5Ni1jY2kKLS0KCmNv
bW1pdCBkOWRjNzNiZjA2OWM2YzU0OGZlMmE2OTZlN2VjYmQ2OWFiOTZlM2YzCkF1dGhvcjogSGFu
Z3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4KCmR0LWJpbmRpbmdzOiBp
MmM6IHFjb20saTJjLWNjaTogQWRkIEhhd2kgY29tcGF0aWJsZQoKVGhpcyBjb21taXQgZG9jdW1l
bnRzIHRoZSBDYW1lcmEgQ29udHJvbCBJbnRlcmZhY2UgKENDSSkgY29tcGF0aWJsZSBzdHJpbmcK
cWNvbSxoYXdpLWNjaSBmb3IgdGhlIFF1YWxjb21tIEhhd2kgcGxhdGZvcm0gYW5kIGFkZHMgaXQg
dG8gdGhlIHR3by1jbG9jawpjb25zdHJhaW50IGxpc3QgaW4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2kyYy9xY29tLGkyYy1jY2kueWFtbC4KCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pMmMvcWNvbSxpMmMtY2NpLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL3Fjb20saTJjLWNjaS55YW1sCj4gaW5k
ZXggMWU4ZGVmMjVlYzBlYy4uYjJiNGQ0YmNmNzgwNyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL3Fjb20saTJjLWNjaS55YW1sCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9xY29tLGkyYy1jY2kueWFtbAo+IEBA
IC0yNyw2ICsyNyw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAg
ICAtIGVudW06Cj4gICAgICAgICAgICAgICAgLSBxY29tLGdseW11ci1jY2kKPiArICAgICAgICAg
ICAgICAtIHFjb20saGF3aS1jY2kKPiAgICAgICAgICAgICAgICAtIHFjb20sa2FhbmFwYWxpLWNj
aQo+ICAgICAgICAgICAgICAgIC0gcWNvbSxtaWxvcy1jY2kKPiAgICAgICAgICAgICAgICAtIHFj
b20scWNtMjI5MC1jY2kKCltTZXZlcml0eTogTWVkaXVtXQpBcyByZXBvcnRlZCBieSBMb2ljIFBv
dWxhaW4gb24gdjEgWzFdLCBhZGRpbmcgcWNvbSxoYXdpLWNjaSB0byB0aGlzIGVudW0gbGlzdAp1
bmRlciBwcm9wZXJ0aWVzOmNvbXBhdGlibGUgaW4KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2kyYy9xY29tLGkyYy1jY2kueWFtbCByZXF1aXJlcyBkZXZpY2UgdHJlZQpub2RlcyB0
byBzcGVjaWZ5IHFjb20sbXNtODk5Ni1jY2kgYXMgYSBmYWxsYmFjayBjb21wYXRpYmxlOgoKICAg
ICAgLSBpdGVtczoKICAgICAgICAgIC0gZW51bToKICAgICAgICAgICAgICAtIHFjb20sZ2x5bXVy
LWNjaQogICAgICAgICAgICAgIC0gcWNvbSxoYXdpLWNjaQogICAgICAgICAgICAgIC4uLgogICAg
ICAgICAgLSBjb25zdDogcWNvbSxtc204OTk2LWNjaSAjIENDSSB2MgoKV2hlbiBhIEhhd2kgQ0NJ
IGNvbnRyb2xsZXIgbm9kZSBpcyBwcm9iZWQgdmlhIGNjaV9wcm9iZSgpIGluCmRyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtcWNvbS1jY2kuYywgZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgbWF0Y2hlcyB0
aGUKZmFsbGJhY2sgZW50cnkgaW4gY2NpX2R0X21hdGNoW10gYW5kIGJpbmRzIHRoZSBjb250cm9s
bGVyIHRvIHRoZSBsZWdhY3kKY2NpX3YyX2RhdGEgY29uZmlndXJhdGlvbjoKCnN0YXRpYyBjb25z
dCBzdHJ1Y3QgY2NpX2RhdGEgY2NpX3YyX2RhdGEgPSB7CgkubnVtX21hc3RlcnMgPSAyLAoJLnF1
ZXVlX3NpemUgPSB7IDY0LCAxNiB9LAoJLnF1aXJrcyA9IHsKCQkubWF4X3dyaXRlX2xlbiA9IDEx
LAoJCS5tYXhfcmVhZF9sZW4gPSAxMiwKCX0sCgkubWF4X21vZGUgPSBJMkNfTU9ERV9GQVNUX1BM
VVMsCn07CgpzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBjY2lfZHRfbWF0Y2hbXSA9
IHsKCS4uLgoJeyAuY29tcGF0aWJsZSA9ICJxY29tLG1zbTg5OTYtY2NpIiwgLmRhdGEgPSAmY2Np
X3YyX2RhdGF9LAoKU2luY2UgbmV3ZXIgQ0NJIElQIHJldmlzaW9ucyBoYXZlIGRpZmZlcmVudCBo
YXJkd2FyZSByZXNvdXJjZXMgc3VjaCBhcyBGSUZPCmFuZCBxdWV1ZSBzaXplcywgc2hvdWxkIHFj
b20saGF3aS1jY2kgc3RvcCBmYWxsaW5nIGJhY2sgdG8gcWNvbSxtc204OTk2LWNjaQphbmQgaW5z
dGVhZCB1c2UgYSBkZWRpY2F0ZWQgdmFyaWFudCBlbnRyeSByYXRoZXIgdGhhbiByZXVzaW5nIHRo
ZSBtc204OTk2CmRlZmluaXRpb24/CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci9DQUZF
cDYtMVp2dDBoaEJkN0xOeDJoc3lpOUorYnhDVDhFV04zalo0QjMwU081OFNDb3dAbWFpbC5nbWFp
bC5jb20KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjEwMzAtaGF3aS1tYWlsaS1jYW1zcy12My0wLTk3NDJiY2E4Y2VmMkBvc3MucXVh
bGNvbW0uY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
