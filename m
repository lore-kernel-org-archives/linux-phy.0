Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9628AC88E41
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGrwTYOwQgMUhhfIKrbeRmlWUziJ9rLZX4mo7oiVk28=; b=imFXnuOA382Cm4
	S+jHnCpYdss2dlO1QriJdFdCJk9sc/LAcAh0A3ANtoFmy7HUalWroQ+BB3j4KHRpg9MpMnA7o/8sy
	pUSqcM2mPPZq0s+PUE705gxz3WMhlnmi0JENzP20D0O9eozua0NPCqPjwxT2+emWUEfTvkAwoAkah
	DRsgPrAzLdCwIJuWlomc4120ZqJBk45PKSUx4lGshm430gizJgPdIytZHdF4ewnKseKtp9qMk8LDS
	PZU+5e7tj5YOeOtxfmLmnzotfVkH3ktrOPIBT6MFynnuyxXqDTwkEL2aKM1gqMnYu8oASiSXJDyzI
	aPwOp6SHJ27xgQhocO1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4twz-0000000FtDJ-2m1e;
	Fri, 11 Sep 2026 05:37:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4twy-0000000FtD9-0l7Z
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 05:37:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6E0CB601EF;
	Fri, 11 Sep 2026 05:37:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CFC11F000FF;
	Fri, 11 Sep 2026 05:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789105043;
	bh=36/1Qi0b8ZLYrU3z3rga2ArYzSjEeaQQnA6fSUVCN/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dDjw75250u5P/qmInFGdJIZ9jnHGOAd7W7MTcSsn5oIAqFgA+OIc52qMQW18CxnIY
	 Qxds1lDHzzS6HllVC7AuJtE5vkXdLezYO5gUP/J/aXZLZaNbEAVCQoVhH2oPSMGDuX
	 E5T+uXhhSA6GRW6X8Mr//QqW9w0cxBSnOBqXTYDBII9bKKLFkmglWaMZXUsxlK1cK2
	 ZMYN3hucwpBAibZ6i6yJxSnNw5WFV1s56yNBjchgJn98erkjILoIg+u/SW6V9x8gyD
	 uNB/HPOKd2eUCgZWydHOgqKyrQlyW5qPrSQY9X50aXFgF77FCnQwHPvnxxQ5FkiooY
	 O0H3Dtjw8Gjiw==
Date: Fri, 11 Sep 2026 07:37:16 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v4 7/9] phy: qualcomm: qmp-combo: Update
 qmp_v8_configure_dp_clocks() for Glymur
Message-ID: <fma47n5b2vyh6iyzalruiv3ea6gglvgyubuzdeckspruf4lgl6@foqf27yzys67>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-7-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-glymur-phy-v3-v4-7-ff22e5150538@oss.qualcomm.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDc6MzE6MDBQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBSZW1vdmUgVkNPX0RJViBwcm9ncmFtbWluZyBmcm9tIHFtcF92OF9jb25maWd1cmVfZHBf
Y2xvY2tzKCkgYXMgaXQgaXMKPiBub3QgcmVxdWlyZWQgZm9yIHRoZSB2OCBQSFkuCj4gCj4gQWRk
IHBlci1saW5rLXJhdGUgYXV4bGVzcyBzZXR1cC9zaWxlbmNlIGN5Y2xlIGFuZCBMRlBTIHBlcmlv
ZCB2YWx1ZXMKPiBpbnN0ZWFkIG9mIHVzaW5nIGZpeGVkIGNvbnN0YW50czoKPiAgIFJCUiAoMS42
MiBHYnBzKTogc2V0dXA9MHgwMywgc2lsZW5jZT0weDA2LCBsZnBzX3BlcmlvZD0weDAwCj4gICBI
QlIgKDIuNzAgR2Jwcyk6IHNldHVwPTB4MDQsIHNpbGVuY2U9MHgwOCwgbGZwc19wZXJpb2Q9MHgx
MQo+ICAgSEJSMiAoNS40MCBHYnBzKTogc2V0dXA9MHgwOSwgc2lsZW5jZT0weDExLCBsZnBzX3Bl
cmlvZD0weDMzCj4gICBIQlIzICg4LjEwIEdicHMpOiBzZXR1cD0weDBmLCBzaWxlbmNlPTB4MWEs
IGxmcHNfcGVyaW9kPTB4NTUKPiAKCldoeSBpcyB0aGlzIGNoYW5nZSBuZWVkZWQ/Cgo+IEFkZCBw
ZXItbGFuZSBkcml2ZSBsZXZlbCBsb29rdXAgZnJvbSB0aGUgbG5fZHJ2X2x2bCB0YWJsZXMgYmFz
ZWQgb24KPiB0aGUgbWF4aW11bSB2b2x0YWdlIHN3aW5nIGFuZCBwcmUtZW1waGFzaXMgbGV2ZWxz
IGFjcm9zcyBhbGwgYWN0aXZlCj4gbGFuZXMsIHJlcGxhY2luZyB0aGUgaGFyZGNvZGVkIDB4MWYg
dmFsdWUuCj4gCgpTYW1lIGhlcmUuCgo+IFJlbW92ZSB0aGUgZHVwbGljYXRlIExGUFNfUEVSSU9E
IHdyaXRlIHRoYXQgd2FzIHByZXNlbnQgYWZ0ZXIgdGhlCj4gQVVYTEVTU19DRkcxIHByb2dyYW1t
aW5nLgo+IAoKQWdhaW4sIHlvdSd2ZSBjbHViYmVkIG11bHRpcGxlIGNoYW5nZXMgaW4gYSBzaW5n
bGUgcGF0Y2ggOi8KCj4gRml4ZXM6IGQxMDczNmRiOThkMjUgKCJwaHk6IHF1YWxjb21tOiBxbXAt
Y29tYm86IEFkZCBEUCBvZmZzZXRzIGFuZCBzZXR0aW5ncyBmb3IgR2x5bXVyIHBsYXRmb3JtcyIp
CgpXaGF0IGlzIHRoZSBpc3N1ZSB0aGUgcGF0Y2ggaXMgZml4aW5nPwoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
