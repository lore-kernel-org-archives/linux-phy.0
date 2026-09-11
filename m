Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C7A9C88E41
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjJ+OaMArtg2yrrAFEcbjI9E/RKCK37sivi/o2PfLtk=; b=b2GbFzoTMF46Xw
	4Hno7HvaVPjdCm1yiq7KLUmz5Toq0m6F4qM/lC45HeCe8K2yTI6tYIVly6zcpkSSuw/drOkFZRyNQ
	YgMr85SwyCcmP9Eeuzz4hLUJ0LQcXUcjFjIFhlQVpOuTdKzM5AuTjM5mOVaE55SMGH1dz//XFLVnT
	dXPNLk8NHHvUEh0BPBQkh7pLU9xal1syQTpBufepIptB3Bs++Ydw9NDmB2B8A9+nbpb+jrRMAP7W1
	4+sVN6bBrk7PLVnVN6ymFYr9dBn8Fh9K9alfrXnuIB4A4JzG/YFcig/ZTE4SVlbRMSFjbq9ADwNPv
	bbC3rz6XgYQSJxsVgtEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tl7-0000000Fs3v-2ckZ;
	Fri, 11 Sep 2026 05:25:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tl5-0000000Fs3K-2gRs
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 05:25:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 652A14092A;
	Fri, 11 Sep 2026 05:25:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 818381F000FF;
	Fri, 11 Sep 2026 05:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789104307;
	bh=SBjJkWUnyP5rvZt8DFV/tYXDDBlvGlmDya2PBqMAKV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BYbY9SCSOuqF/R1MWxssoJyxk9Lx8GpgiAnMaz/pvCsLiKM7Maf/zlUbbwWcz/zfx
	 oU9+2717R/rj0wY3JT+EtaXhGeQrtVx8aWB9jRRblHntGsfxyPbwpNEF6meVHQemvw
	 3JX1W+b/8Jlht/kKO7oGwPF28CbkRASqNOkhBHHtImVSVHmSIw6sd2iOsz+2xULH3M
	 7QyTM211hQv6rm853yzSklI22eGsTGCZSwrPP1Z7qXcfm49L0SqGhcP0xdgz0R0/B6
	 YbySSiyyrn8MEUJcKnTpGNPy3nnw4dhmMWvEWlbs+6JuK7IgeNNOuRgofbYfXm95te
	 YQ/kZoDeMaSXw==
Date: Fri, 11 Sep 2026 07:25:00 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v4 4/9] phy: qualcomm: qmp-combo: Add hardware-specific
 DP PHY config fields
Message-ID: <7g6jz5lxcvwhq6xhbhovvszblil4z7whco2gnz62npv2kojq7e@5fahqmtsqn6h>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDc6MzA6NTdQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBBZGQgZHBfYXV4X2NmZzIsIGRwX3BoeV9jZmcxLCBhbmQgZHBfbW9kZV9pZ25vcmVfcmV2
ZXJzZSBmaWVsZHMgdG8KPiBxbXBfcGh5X2NmZyB0byBhbGxvdyBoYXJkd2FyZS1zcGVjaWZpYyBE
UCBQSFkgcmVnaXN0ZXIgdmFsdWVzIHRvIGJlCj4gc3BlY2lmaWVkIHBlci1wbGF0Zm9ybSByYXRo
ZXIgdGhhbiBoYXJkY29kZWQgaW4gdGhlIGNvbmZpZ3VyZSBmdW5jdGlvbnMuCj4gCj4gRGVmaW5l
IG5hbWVkIGNvbnN0YW50cyBRU0VSREVTX0RQX1BIWV9BVVhfQ0ZHMl9WNDU2L1Y4IGFuZAo+IFFT
RVJERVNfRFBfUEhZX0NGRzFfVjQ1Ni9WOCBmb3IgYmV0dGVyIHJlYWRhYmlsaXR5IGFuZCBtYWlu
dGFpbmFiaWxpdHkuCj4gCj4gUG9wdWxhdGUgdGhlIG5ldyBmaWVsZHMgaW4gYWxsIGV4aXN0aW5n
IERQIFBIWSBjZmcgc3RydWN0dXJlczoKPiAtIFY0NTYtYmFzZWQgcGxhdGZvcm1zIChzYXIyMTMw
cCwgc2M4MTgweCwgc2M4MjgweHAsIHgxZTgwMTAwLCBzbTgyNTAsCj4gICBzbTgzNTAsIHNtODQ3
NSwgc204NTUwLCBzbTg2NTAsIHNtODc1MCkgdXNlIFY0NTYgY29uc3RhbnRzCj4gLSBHbHltdXIg
KFY4KSB1c2VzIFY4IGNvbnN0YW50cyBhbmQgc2V0cyBkcF9tb2RlX2lnbm9yZV9yZXZlcnNlID0g
dHJ1ZQo+IAo+IFVwZGF0ZSBxbXBfY29tYm9fY29uZmlndXJlX2RwX21vZGUoKSB0byBob25vciBk
cF9tb2RlX2lnbm9yZV9yZXZlcnNlLAo+IHNvIEdseW11ciBjYW4gYnlwYXNzIFR5cGVDIG9yaWVu
dGF0aW9uLWJhc2VkIGxhbmUgcmV2ZXJzYWwuCj4gCgpJIGJlbGlldmUgdGhpcyBkcF9tb2RlX2ln
bm9yZV9yZXZlcnNlIHNob3VsZCBiZSBpbiBhIHNlcGFyYXRlIHBhdGNoIHdpdGgKcmVsZXZhbnQg
Zml4ZXMgdGFnLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
