Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB9A606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 02:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0iSW3zFq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=KcVtcIgV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fWYFo3qgFHXfFfQF/MzMpVARys3HLsmzcswvU9nPdGE=; b=0iSW3zFqZDMY9y5katk5vdyqZ+
	1qBq92Wyg3d8JyOhvvtzkfUGfhqYuuaOzfxYBC61PQolQQlL48+fzUizCUymCWqpUTqYntU7LzkN+
	NxWH4MdOi8ynzqGQSmI2lixSyXxgq8WatZyuArEERUiO2beCfOCmyXMbev2uF9BJUx19FJlzdIu8t
	7uwzOr0i30CiXCpgWBMMDuyAKW1WOHwsRixicU3W+WxCMQcgwgrzfOr4OWnX95cRexPyFo8eNZKeL
	sOVhOqgzO71Vk9tJexGZhVwCLdyVuwsBcmmf99bTfG+zfs/ta5TFwaiabCydQgBgkzrK4qhgxdWPZ
	PB/Zi7zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT9Is-00000004RUl-3h86;
	Tue, 17 Nov 2026 02:52:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT9Ip-00000004RUe-3BI5
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 02:52:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CC74562859;
	Tue, 17 Nov 2026 02:52:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 163851F000C4;
	Tue, 17 Nov 2026 02:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794883930;
	bh=qq/tiHdgbGvoi14diuTvjCXYv+VWfbbS/T65lFWDJCw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KcVtcIgVgRlvNSDQFKHwERo8S49R1pGsJKGekUysWSAPtrH/NxK3rfm+O5tm6Pry7
	 rBcIe61Qy4EaIZfiFwsw4yU3JDCFmSm1pD4VfmzGD9eoSqGwb6QvVvxAeBvOU71DGl
	 zNrVHUfPPFQaTgdv5732D+xsYCXJKHcoUFM1zZpw6oWJGmIVrHJMmcj+tzYVYPhF8F
	 4E1XTWM8JL7AHvrAuyzZZBy/npxFqtYsGbqEV/zorjAU1B+k1FBjpLu/7nfujzkzTk
	 KmBFmZgfWSe54LOrxzuvsc1D48aER0G8LLfbKtXl3/l7W9SvOYTbiozT4ArrUaXqNH
	 gZdfmRUJHsPAw==
Message-ID: <sashiko-outbox-218097@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: Add CIX Sky1 USB3 PHY
To: "Hongliang Yang" <hongliang.yang@cixtech.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261117022858.2210212-2-hongliang.yang@cixtech.com>
References: <20261117022858.2210212-1-hongliang.yang@cixtech.com>
 <20261117022858.2210212-2-hongliang.yang@cixtech.com>
Date: Tue, 17 Nov 2026 02:52:09 +0000
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
Y2l4LHNreTEtdXNiMy1waHkgdXNlcyAjcGh5LWNlbGxzID0gMCBmb3IKICB0d28tbGFuZSBQSFkK
LS0KCmNvbW1pdCBjOGEyOTkxOWUwMTI5NGQ1MmRkM2VhYzBiYzFjZTg4NTRiNWQwMGEwCkF1dGhv
cjogSG9uZ2xpYW5nIFlhbmcgPGhvbmdsaWFuZy55YW5nQGNpeHRlY2guY29tPgoKZHQtYmluZGlu
Z3M6IHBoeTogQWRkIENJWCBTa3kxIFVTQjMgUEhZCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBEZXZp
Y2UgVHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhlIENJWCBTa3kxIFVTQjMKU3VwZXJTcGVlZFBs
dXMgUEhZIGFuZCB1cGRhdGVzIE1BSU5UQUlORVJTLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9jaXgsc2t5MS11c2IzLXBoeS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9jaXgsc2t5MS11c2IzLXBoeS55YW1s
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4yMDUxNDBiZjg0
ZTdjCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvY2l4LHNreTEtdXNiMy1waHkueWFtbAo+IEBAIC0wLDAgKzEsNzggQEAKPiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4g
KyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9w
aHkvY2l4LHNreTEtdXNiMy1waHkueWFtbCMKPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUu
b3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gKwo+ICt0aXRsZTogQ0lYIFNreTEgVVNCMyBQ
SFkKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gSG9uZ2xpYW5nIFlhbmcgPGhvbmdsaWFuZy55
YW5nQGNpeHRlY2guY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgQ0lYIFNreTEg
VVNCMyBQSFkgcHJvdmlkZXMgdGhlIFN1cGVyU3BlZWQgbGFuZXMgb2YgdGhlIFVTQjMgVHlwZS1B
Cj4gKyAgcG9ydHMgb2YgdGhlIFNvQy4KPiArCj4gKyAgQm90aCBsYW5lcyBhcmUgcHJvZ3JhbW1l
ZCB0aHJvdWdoIG9uZSByZWdpc3RlciBibG9jayBhbmQgc2hhcmUgdGhlCj4gKyAgc2FtZSBjbG9j
a3MgYW5kIHJlc2V0cywgc28gdGhlIG5vZGUgaXMgYSBzaW5nbGUgUEhZIHByb3ZpZGVyIHdpdGgK
PiArICAjcGh5LWNlbGxzID0gPDA+IHRoYXQgYWxsIGNvbnN1bWVycyByZWZlcmVuY2UuIFRoZSBk
cml2ZXIgcmVmZXJlbmNlCj4gKyAgY291bnRzIHBoeV9pbml0KCkgYW5kIHBoeV9leGl0KCksIHNv
IHRoZSBibG9jayBpcyBzZXQgdXAgb25jZSBmb3IgYWxsCj4gKyAgaXRzIGNvbnN1bWVycy4KPiAr
Cj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiBjaXgsc2t5MS11
c2IzLXBoeQo+ICsKPiArICByZWc6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICAiI3BoeS1j
ZWxscyI6Cj4gKyAgICBjb25zdDogMAoKW1NldmVyaXR5OiBMb3ddCkFzIHJlcG9ydGVkIGJ5IEty
enlzenRvZiBLb3psb3dza2kgb24gdjYgWzFdLCBzaG91bGRuJ3QgI3BoeS1jZWxscyBiZSAxCmlu
c3RlYWQgb2YgMCBzbyB0aGF0IGVhY2ggVVNCMyBjb250cm9sbGVyIGNvbnN1bWVyIG5vZGUgY2Fu
IHNwZWNpZnkgd2hpY2gKb2YgdGhlIHR3byBQSFkgbGFuZXMgaXQgaXMgY29ubmVjdGVkIHRvPwoK
VGhlIGhhcmR3YXJlIGJsb2NrIGhhcyB0d28gZGlzdGluY3QgbGFuZXMgd2l0aCBzZXBhcmF0ZSBw
ZXItbGFuZSByZWdpc3RlcgpzZXRzIHNlcnZpbmcgdHdvIGluZGVwZW5kZW50IFVTQjMgY29udHJv
bGxlcnMuIExvY2tpbmcgI3BoeS1jZWxscyB0byAwCm9taXRzIHRoZSBwZXItbGFuZSByb3V0aW5n
IGZyb20gdGhlIERldmljZSBUcmVlIEFCSSBhbmQgcHJldmVudHMgYW55CmZ1dHVyZSBwZXItbGFu
ZSBjb250cm9sIG9yIHR1bmluZyB3aXRob3V0IGJyZWFraW5nIHRoZSBiaW5kaW5nLiBBbHNvLCB0
aGUKZGVzY3JpcHRpb24gcmVmZXJlbmNlcyBMaW51eCBkcml2ZXIgaW50ZXJuYWxzIChwaHlfaW5p
dCgpIGFuZCBwaHlfZXhpdCgpCnJlZmVyZW5jZSBjb3VudGluZykgcmF0aGVyIHRoYW4gc3RyaWN0
bHkgZGVzY3JpYmluZyB0aGUgaGFyZHdhcmUuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDI2MTEwNS1raW5kLW1hY2FxdWUtb2YtZW5oYW5jZW1lbnQtZWUwMzY1QHF1b2xsCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYx
MTE3MDIyODU4LjIyMTAyMTItMS1ob25nbGlhbmcueWFuZ0BjaXh0ZWNoLmNvbT9wYXJ0PTEKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
