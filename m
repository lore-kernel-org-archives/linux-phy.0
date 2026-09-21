Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33F45C982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4ndhJXEtJr09RCpdW1THw9csdZGd0uqrry8/dH2u1c=; b=KRvXEIWRVmszqp
	2TRvAYzUzPQctzVKGdzyp+w2fxEotbYVCm0qc3Sw7Bdr/Yw9EIxv9QmReV3Na0qnHW6ES5qZ98RDS
	V/gple4Bv6zng586sxEUUyqV5uUYPoW9U1h4tzSjYistkdhd3ZHGuDDrUOJfKxrAle28X4zL4r1zC
	O2rWD3AFECE701oMkm52gtY+iPPivfypCDjRbpNkpMsYAKDcOevNBhDYQ5MjOH4FIAm/OkaLUD7Ei
	e7o5GJFZfpZKwbbWFI7svVdrmajE94FuEKV5QdYU984RoUHBCRbtzjgNemmYHF+3BcKHL2D3DuV2l
	Yi58ggF5BoIfZ3+8vARQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wok-00000000xSG-3qAN;
	Mon, 21 Sep 2026 05:43:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Woj-00000000xSA-04PU
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:43:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A44FD438FD;
	Mon, 21 Sep 2026 05:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15F921F000FF;
	Mon, 21 Sep 2026 05:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789969432;
	bh=MbuEQemUMUy+vDdofMbQ2ZGdR1u8hCpzF+/No/cZM8k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m7YZg+kvmg7mR35bnmuiHfKLcA/N4AOjt8shngmVDerUvwFSR0d1l5llH7ni6R5IQ
	 uh23SfXc1NrjYuwNVgexIlgAuBuFtUlKSYNonGQ+AU06IBDa84/5id5HZcJXsfNwUZ
	 biig43l4phx4l9CSVZKTReHFFSqlr9HYZbxoksiAUcTuq9sThuRqxE0VykCD38AJYq
	 cTIX1KMCNXb+vAhaiduPD68gLUSEpP3pFYhkAJPZKV35a2+P0xI09kLZE+z54Zvc/9
	 0nFiz6rq3t3debGYp/6eR1XP6Tk8jrvNVSHbR9qTfobe9WjtHM02j4arUyh4H6Bk8L
	 PkIvse8oiNyqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260921-nord-v4-1-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-1-ed05c6e09240@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 05:43:51 +0000
Message-Id: <20260921054352.15F921F000FF@smtp.kernel.org>
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

PiBEb2N1bWVudCB0aGUgUENJZSBQSFkgZm91bmQgb24gdGhlIFF1YWxjb21tIE5vcmQgcGxhdGZv
cm0uCj4gCj4gTm9yZCBoYXMgYSAzMi4wIEdUL3MgY2FwYWJsZSBRTVAgUENJZSBQSFkgdGhhdCBj
YW4gb3BlcmF0ZSBpbiBtdWx0aXBsZQo+IGxhbmUgY29uZmlndXJhdGlvbnMgdXNpbmcgZm91ciBQ
SFkgc2VnbWVudHMgKEEvQi9DL0QpLiBUaGUgYWN0aXZlCj4gdG9wb2xvZ3kgaXMgc2VsZWN0ZWQg
YnkgZmlybXdhcmUgdGhyb3VnaCBhIFRDU1IgY29uZmlndXJhdGlvbgo+IHJlZ2lzdGVyIGFuZCBt
YXkgYmUgY29uZmlndXJlZCBhcyB4MTYsIHg4K3g4LCB4OCt4NCt4NCwgb3IKPiB4OCt4NCt4Mit4
Mi4KPiAKPiBUaGUgYmluZGluZyBkZXNjcmliZXMgdGhlIHJlZ2lzdGVyIHJlZ2lvbnMsIGNsb2Nr
cywgcmVzZXRzLCBwb3dlcgo+IGRvbWFpbnMsIHJlZ3VsYXRvcnMsIFBIWSBwcm92aWRlciBpbnRl
cmZhY2UsIGNsb2NrIHByb3ZpZGVyIGludGVyZmFjZSwKPiBhbmQgdGhlIHFjb20sbGluay1tb2Rl
IHByb3BlcnR5IHVzZWQgYnkgdGhlIGRyaXZlciB0byBkaXNjb3ZlciB0aGUKPiBhY3RpdmUgbGFu
ZSBjb25maWd1cmF0aW9uIHByb2dyYW1tZWQgYnkgZmlybXdhcmUuCj4gCj4gU2lnbmVkLW9mZi1i
eTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29t
bS5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1
ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyMS1ub3JkLXY0LTAtZWQwNWM2ZTA5MjQwQG9zcy5x
dWFsY29tbS5jb20/cGFydD0xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
