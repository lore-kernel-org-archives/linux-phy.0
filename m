Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DF606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 16:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zjqhHpkm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kNILdbm8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2rc9F6sKaLLDmxQBvXpUYn6kM80L8KKwsUmToYvv+2w=; b=zjqhHpkmVvcSpNRRDYuZWJ9/Ki
	TVmi0JdqOENo8kylL/S1gNQ53KLDPDFFFdsoaG4neHbawPTGaT3hWCt6m1KfI5mVj6n6489wsg1E0
	0e+KDULjkHl4U4e1DLRk4CJFUWTQTeFfuPSMc+TwJOo+7RipQ1l5EgKQ4XmOcH+EqdUYl6VTlMM/b
	Q96UMH3iiUHutxnrsynRBYGp1G6CsOOVRLsmFbsAsCVjJ70Dkqr0mTrwicYJbgge431bGWWZKoF5S
	oGbTNZrp2CekCXCB8CtdsN0XtatGC4S/QjjQO4UyVNImN6aDoYkr4UbDOW+q8UpRnkuAahk4tlm1d
	u8rux3CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIbZ-0000000Gi0O-2Mwm;
	Fri, 23 Oct 2026 16:58:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIbY-0000000Ghzp-19yY
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 16:58:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B58B16022B;
	Fri, 23 Oct 2026 16:58:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9D231F01825;
	Fri, 23 Oct 2026 16:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792774735;
	bh=rvQ7liOCzZfaqVAFRGx+zdASoE5pUP8XqMEJMBewctM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kNILdbm8a9cssrI8rtyjwpClU/q2i+/c9oVf5LbQLge62kr0wBsGxR65TTZbmPd1R
	 dnd+1V/+QRAESNcCpm6f0hUPWgwaFByKtiHnNGvWamYDLOe3OBpOW/k4b0f/sCCZdX
	 Ylb7J9gVuavP958UZnmPZQU6YqvWvqiML69yKkEYgUkyWe0XX2+Yh9Jjf6fDNL0+UP
	 A6NAA7i/YkmgvylvEoBxiAZQjMu4kTCrtEWkdpUSFmE5mhGLU6MeIY3+A9MnUIQ9gZ
	 PvnXOvlmAIkG8Y6xBUFVbBAcFQ8gBnBxRv4OiVgS3pHFUA6ccx4gBQArrlwJtRgqSb
	 XODr8s5tS/jnA==
Message-ID: <sashiko-outbox-182976@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/7] dt-bindings: media: Add description of Qualcomm
 Waipio CAMSS IP
To: "Vladimir Zapolskiy" <vz@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261023163057.775917-4-vz@kernel.org>
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-4-vz@kernel.org>
Date: Fri, 23 Oct 2026 16:58:54 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IG1l
ZGlhOiB1c2Ugb2YgY29kZW5hbWUgd2FpcGlvIGluc3RlYWQgb2Ygc204NDUwIGluIGNvbXBhdGli
bGUKLS0KCmNvbW1pdCAzMDFhYzA3YmQ0NzZiYTEyZTBiNDI3OWMyNzcyMDk3ZmY1ODc2MDZiCkF1
dGhvcjogVmxhZGltaXIgWmFwb2xza2l5IDx2ekBrZXJuZWwub3JnPgoKZHQtYmluZGluZ3M6IG1l
ZGlhOiBBZGQgZGVzY3JpcHRpb24gb2YgUXVhbGNvbW0gV2FpcGlvIENBTVNTIElQCgpUaGlzIGNv
bW1pdCBhZGRzIHRoZSBEZXZpY2UgVHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhlIFF1YWxjb21t
IFdhaXBpbwooU004NDUwKSBDYW1lcmEgU3Vic3lzdGVtIChDQU1TUykgSVAgYmxvY2suCgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcWNvbSx3
YWlwaW8tY2Ftc3MueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9xY29tLHdhaXBpby1jYW1zcy55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwMDAwMDAwLi4zZGExZjNjMGQ2MTg3Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLHdhaXBpby1jYW1zcy55YW1s
Cj4gQEAgLTAsMCArMSwyNzQgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvbWVkaWEvcWNvbSx3YWlwaW8tY2Ftc3MueWFtbCMKPiArJHNj
aGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gKwo+
ICt0aXRsZTogUXVhbGNvbW0gV2FpcGlvIENhbWVyYSBTdWJzeXN0ZW0gKENBTVNTKQo+ICsKPiAr
bWFpbnRhaW5lcnM6Cj4gKyAgLSBWbGFkaW1pciBaYXBvbHNraXkgPHZ6QGtlcm5lbC5vcmc+Cj4g
Kwo+ICtkZXNjcmlwdGlvbjoKPiArICBUaGUgQ0FNU1MgSVAgaXMgYSBDU0kgZGVjb2RlciBhbmQg
SVNQIHByZXNlbnQgb24gUXVhbGNvbW0gcGxhdGZvcm1zLgo+ICsKPiArcHJvcGVydGllczoKPiAr
ICBjb21wYXRpYmxlOgo+ICsgICAgY29uc3Q6IHFjb20sd2FpcGlvLWNhbXNzCgpbU2V2ZXJpdHk6
IExvd10KU2hvdWxkIHRoaXMgY29tcGF0aWJsZSBzdHJpbmcgYW5kIHNjaGVtYSBmaWxlbmFtZSB1
c2Ugc204NDUwIGluc3RlYWQgb2YgdGhlCmludGVybmFsIGNvZGVuYW1lIHdhaXBpbyAoaS5lLiBx
Y29tLHNtODQ1MC1jYW1zcyksIGFuZCBzaW1pbGFybHkgZm9yCnFjb20sd2FpcGlvLWNzaTItcGh5
IGluCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1j
c2kyLXBoeS55YW1sPwoKSW4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9x
Y29tLXNvYy55YW1sLCBjb21wb25lbnQgY29tcGF0aWJsZXMKZm9yIFF1YWxjb21tIFNvQ3MgZm9s
bG93IHRoZSBTb0MgbW9kZWwgbmFtaW5nIHBhdHRlcm46CgogICAgIyBQcmVmZXJyZWQgbmFtaW5n
IHN0eWxlIGZvciBjb21wYXRpYmxlcyBvZiBTb0MgY29tcG9uZW50czoKICAgIC0gcGF0dGVybjog
Il5xY29tLChhcHF8aXBxfG1kbXxtc218cWNtfHFjc3xxW2RyXXV8c2F8c2N8c2RbYW14XXxzbXx4
MVtlcF0pWzAtOV0rKHBybyk/LS4qJCIKICAgIC0gcGF0dGVybjogIl5xY29tLHNhclswLTldK1th
LXpdPy0uKiQiCiAgICAtIHBhdHRlcm46ICJecWNvbSwoc2F8c2MpOFswLTldK1thLXpdW2Etel0/
LS4qJCIKICAgIC0gcGF0dGVybjogIl5xY29tLChlbGl6YXxrYWFuYXBhbGl8Z2x5bXVyfGhhd2l8
bWFodWF8bWFpbGl8bWlsb3N8bm9yZHxzaGlrcmEpLS4rJCIKCldhaXBpbyBpcyB0aGUgaW50ZXJu
YWwgY29kZW5hbWUgZm9yIFNNODQ1MCwgd2hpY2ggaXMgdXBzdHJlYW1lZCB0aHJvdWdob3V0IHRo
ZQp0cmVlIHVuZGVyIHNtODQ1MCAoc3VjaCBhcyBxY29tLHNtODQ1MC1jYW1jYywgcWNvbSxzbTg0
NTAtY2NpLCBhbmQKcWNvbSxzbTg0NTAtbWRzcywgYXMgd2VsbCBhcyB0aGUgc204NDUwIGhlYWRl
cnMgaW5jbHVkZWQgaW4gdGhlIGV4YW1wbGUgb2YKdGhpcyBiaW5kaW5nKSBhbmQgbWF0Y2hlcyB0
aGUgb3RoZXIgU004eHh4IENBTVNTIGJpbmRpbmdzIGxpa2UKcWNvbSxzbTgyNTAtY2Ftc3MueWFt
bCBhbmQgcWNvbSxzbTg1NTAtY2Ftc3MueWFtbC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMjMxNjMwNTcuNzc1OTE3LTEtdnpA
a2VybmVsLm9yZz9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
