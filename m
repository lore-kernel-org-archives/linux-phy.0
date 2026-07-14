Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA05C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 06:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMjazY80B5bLzRjAbb4l4z1rbyLzoN7eLuhVtmj8THI=; b=UcOGqj64TMVRXo
	WFBr3oZ9MngVEtZG6rkztExToUG3wwkPCCRFqzEmNV2lr+lpJb1N6mYBgAMkfAt0SgY/jNVxgc5aD
	EAygsUZX6HZt4an2InwnE0cgusY8ft9NLsSg05v+qC2D8F9DpxC8CEK8zvQY4Etz59wgt4pI52we1
	DsdyjzDB4UF0TBwdf/Jw5ZN7vL6ork95/oIuJ1NtVn8/zYxJ6cEFcyNXPJWkCh8IuFp9V3ccT8OLQ
	y6bCfHDNm9Knaw38+oKD9FjuPMPVTCgB4HmU9uLcg1Gn29B88q1N+ENrdmQjVI1XlPq/7xqw0odg9
	2zE8OE2jn/AyP4obLTGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWrs-0000000B54b-42Tq;
	Tue, 14 Jul 2026 06:43:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWrr-0000000B54H-21BX
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 06:43:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 941E460120;
	Tue, 14 Jul 2026 06:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78AB1F000E9;
	Tue, 14 Jul 2026 06:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784011426;
	bh=S5A8GX72RWpODAWp0DP2UlA8eGNuqfvZzunEDVXYIRg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WNOAbFj0TrLa1NnlO0/M8McVrI4Py9RJ4DIrSO82MVKN6osuD3cVFhg1EsWaPJIF2
	 UoKLeiwoLKVl9dYIQL27jldS88eouqtCJTi6e4tKEk8/jtcfeTjjr6Zvpid8KsNeKQ
	 xGslgrfdvEsH1jvvAwaSuZr2KPsnHEX14xmpmzhVnpbL+geHPGvBs9J6t2NnfRiO7W
	 Yhbk3CLLKQ2LQyC2sy07sWH5RzHkRiaj1DhgeSSFpJZtYCUZz8nkwznO+RAd/pSlr7
	 x0TN8VOxzSNmUog+IBUqxcOLV9Mx2mSY0NnmkLY0PHZ3bsTo1Vbwa6XLQErHelq9l5
	 L4Ut2Xk87dm5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 SM8475 QMP PHY
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714-sm8475-bup-v1-1-b2871be2b4ec@proton.me>
References: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
 <20260714-sm8475-bup-v1-1-b2871be2b4ec@proton.me>
Date: Tue, 14 Jul 2026 06:43:45 +0000
Message-Id: <20260714064345.D78AB1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBt
ZXNzYWdlIGNsYWltcyB0byBhZGQgYSBuZXcgaW5pdCBzZXF1ZW5jZSBmb3IgdGhlIFNNODQ3NSBQ
SFksIGJ1dCB0aGUgY29ycmVzcG9uZGluZyBkcml2ZXIgY29kZSBjaGFuZ2VzIGFyZSBlbnRpcmVs
eSBtaXNzaW5nLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIDEvNl0gZHQtYmluZGluZ3M6IHBo
eTogcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHk6IEFkZCBTTTg0NzUgUU1QIFBIWSAtLS0KY29t
bWl0IDUxMWZlYWQ2YTFmNzYyN2ZjZDlhZTIxMDdiM2RjNzE3NjNiY2E2MjkKQXV0aG9yOiBFc3Rl
YmFuIFVycnV0aWEgPGVzdGV1d3VAcHJvdG9uLm1lPgoKZHQtYmluZGluZ3M6IHBoeTogcWNvbSxz
YzgyODB4cC1xbXAtcGNpZS1waHk6IEFkZCBTTTg0NzUgUU1QIFBIWQoKVGhpcyBjb21taXQgYWRk
cyB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3MgZm9yIHRoZSBTTTg0NzUgUU1QIFBDSWUgUEhZLiBU
aGUKY29tbWl0IG1lc3NhZ2Ugc3RhdGVzIHRoYXQgYSBwcm9wZXIgaW5pdCBzZXF1ZW5jZSBpcyBh
bHNvIGJlaW5nIGFkZGVkIGZvcgp0aGlzIFNvQy4KCj4gU004NDUwIGluaXQgc2VxdWVuY2UgZm9y
IHRoaXMgUEhZIHZhcmllcyBzaWduaWZpY2FudGx5IGFuZCBjYW4ndCBiZSByZXVzZWQKPiBpbiBT
TTg0NzUuCj4gQWRkIHByb3BlciBpbml0IHNlcXVlbmNlIGFuZCBiaW5kaW5ncyBmb3IgdGhlIFBI
WSBmb3VuZCBpbiB0aGlzIFNvQy4KCltTZXZlcml0eTogTWVkaXVtXQpJcyB0aGUgZHJpdmVyIGNv
ZGUgY29udGFpbmluZyB0aGUgaW5pdCBzZXF1ZW5jZSBtaXNzaW5nIGZyb20gdGhpcyBwYXRjaD8K
ClRoZSBjb21taXQgbWVzc2FnZSBleHBsaWNpdGx5IHN0YXRlcyBpdCBpcyBhZGRpbmcgdGhlIHBy
b3BlciBpbml0IHNlcXVlbmNlLApidXQgdGhlIHBhdGNoIG9ubHkgbW9kaWZpZXMgdGhlIFlBTUwg
YmluZGluZ3MgaW4KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNj
ODI4MHhwLXFtcC1wY2llLXBoeS55YW1sLgoKU2hvdWxkIHRoZXJlIGJlIGEgY29ycmVzcG9uZGlu
ZyBDIGRyaXZlciBmaWxlIGluY2x1ZGVkIGhlcmUsIG9yIHNob3VsZCB0aGUKY29tbWl0IG1lc3Nh
Z2UgYmUgdXBkYXRlZCB0byByZWZsZWN0IHRoYXQgb25seSB0aGUgYmluZGluZ3MgYXJlIGJlaW5n
CmFkZGVkPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDcxNC1zbTg0NzUtYnVwLXYxLTAtYjI4NzFiZTJiNGVjQHByb3Rvbi5tZT9w
YXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
