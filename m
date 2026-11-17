Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E71606A323
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 09:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=it9JWrBl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=KcvKnoH+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dNHDCKrMaUZ1U+t9PgeqVMHtcE/vY+B3j5WbDQ+9M4M=; b=it9JWrBlCawgjjFqJ6IJrLEAeE
	7ZV2Pfl2Uwnq+v0n+XNdrZ0Nvpa0UXHRWi0uk2Cqh3l97OL7ekMjIWP636ssmHmKNYPPMwd/PCFdo
	A5Rjzqy54GfvtoY0LDDoeKc6FYyfhEvZ/mfm9jID0N2UdIVqYF4Mu0VyEKg3bwfN4kEnyKc7u8V9c
	EJ9I8iKkTEJSjpVmRewpmAWSIyEmacgs/KYbdTx3a76tFLMv7bemXlQJnQyCJgN8L+rBf0DI3WAFo
	m0Wlutbd1WbYmu/QptU/Y7pBNHXQuiL0G5DQsMFSKiEWryvWsQuDpxEOYXQCX1vKvQA2/cJCL8pYz
	IE8YmSwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTFIO-000000052tC-1pZu;
	Tue, 17 Nov 2026 09:16:08 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTFIN-000000052t5-0M4E
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 09:16:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 47A1E62CBB;
	Tue, 17 Nov 2026 09:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93BB91F000C7;
	Tue, 17 Nov 2026 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794906966;
	bh=x2tR5I6lzWi85cWp8M/zZZjx0d2YB+x9XqWs0cDbTog=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KcvKnoH+0kHp9jqIR9P736tEju+xDAXK4VGin18wIplP/NPK6FvM3T9hk3xG5vUZW
	 /020H0q2MuueB7fhw9yqKi633eTjOgqa2ZItDnUCvW9OJZSveIXd1+NEgqQGA/SqLl
	 LB+WHC93B/rjQQJIqO6TL3v6NyYHBFOO2Xnz7vmetdVK2J48q01X3gbhisIa9oy3ds
	 JsLOW8Sa8zep07nY17gJuvynzPehxPCUWAFAjZr2LFReBR0NVy8akKh4iu5hf6NZ0Y
	 RaRXLSsZsPBFVWtwVu2eFpH/vOdWwDT0pyhoI7hbuSuTUgnH2ZVMJ3QbJ95IfqPYgJ
	 77eSL+daj2myg==
Message-ID: <sashiko-outbox-218467@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord
 bus clock
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261117-qcom-nord-ahb2phy-clk-v3-2-ce5ee1073208@oss.qualcomm.com>
References: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
 <20261117-qcom-nord-ahb2phy-clk-v3-2-ce5ee1073208@oss.qualcomm.com>
Date: Tue, 17 Nov 2026 09:16:05 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHBoeTog
cWNvbSxzbnBzLWV1c2IyLXBoeTogZHVwbGljYXRlZCBOb3JkIGlmLXRoZW4KICBjb25kaXRpb25h
bHMKLS0KCmNvbW1pdCAxM2M0ZTliMmM3ZjQ5ZjBlOTQyNjdhMmRhM2ZiODQ2MGI5NmQ5MTcwCkF1
dGhvcjogU2hhd24gR3VvIDxzaGVuZ2NoYW8uZ3VvQG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5k
aW5nczogcGh5OiBxY29tLHNucHMtZXVzYjItcGh5OiBBZGQgTm9yZCBidXMgY2xvY2sKClRoaXMg
Y29tbWl0IGRyb3BzIHRoZSBxY29tLHNtODU1MC1zbnBzLWV1c2IyLXBoeSBmYWxsYmFjayBmb3IK
cWNvbSxub3JkLXNucHMtZXVzYjItcGh5IGFuZCByZXF1aXJlcyBhIHNlY29uZCAiYnVzIiBjbG9j
ayBmb3IgdGhlIE5vcmQKQUhCMlBIWSBicmlkZ2Ugd2hpbGUga2VlcGluZyBhIHNpbmdsZSAicmVm
IiBjbG9jayBmb3Igb3RoZXIgY29tcGF0aWJsZXMuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc25wcy1ldXNiMi1waHkueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzbnBzLWV1c2IyLXBoeS55
YW1sCj4gaW5kZXggOTMxY2QwZTdkMjk3ZS4uNDBjMGI4YjQyMTgyZCAxMDA2NDQKPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc25wcy1ldXNiMi1waHku
eWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxz
bnBzLWV1c2IyLXBoeS55YW1sCgpbIC4uLiBdCgo+IEBAIC03Nyw2ICs4MiwyNCBAQCBhbGxPZjoK
PiAgICAgICAgcmVxdWlyZWQ6Cj4gICAgICAgICAgLSByZXNldHMKPiAgCj4gKyAgLSBpZjoKPiAr
ICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29u
dGFpbnM6Cj4gKyAgICAgICAgICAgIGNvbnN0OiBxY29tLG5vcmQtc25wcy1ldXNiMi1waHkKPiAr
ICAgIHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY2xvY2tzOgo+ICsgICAg
ICAgICAgbWluSXRlbXM6IDIKPiArICAgICAgICBjbG9jay1uYW1lczoKPiArICAgICAgICAgIG1p
bkl0ZW1zOiAyCj4gKyAgICBlbHNlOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGNs
b2NrczoKPiArICAgICAgICAgIG1heEl0ZW1zOiAxCj4gKyAgICAgICAgY2xvY2stbmFtZXM6Cj4g
KyAgICAgICAgICBtYXhJdGVtczogMQo+ICsKPiAgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNl
Cj4gIAo+ICBleGFtcGxlczoKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQg
bm93IHRoYXQgcWNvbSxub3JkLXNucHMtZXVzYjItcGh5IG5vIGxvbmdlciBmYWxscwpiYWNrIHRv
IHFjb20sc204NTUwLXNucHMtZXVzYjItcGh5IGFuZCBkaWZmZXJzIGluIGJvdGggY2xvY2tzIGFu
ZCByZXF1aXJlZApyZXNldHMsIGNvdWxkIGl0IGJlIHNwbGl0IGludG8gYSBzZXBhcmF0ZSBiaW5k
aW5nIHNjaGVtYSBvciBhdCBsZWFzdCBoYXZlCmJvdGggYWxsT2YgY29uZGl0aW9uYWxzIGZvciBx
Y29tLG5vcmQtc25wcy1ldXNiMi1waHkgY29tYmluZWQgYnkgbW92aW5nCnJlcXVpcmVkIHJlc2V0
cyBpbnRvIHRoaXMgZWxzZSBicmFuY2g/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTE3LXFjb20tbm9yZC1haGIycGh5LWNsay12
My0wLWNlNWVlMTA3MzIwOEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
