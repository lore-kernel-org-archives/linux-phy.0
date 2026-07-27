Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C6E9C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0A6Qu/t/7C3F72UEGBaLPaVOsyveGWX/6rQzAWJF9Rc=; b=hbsIOPW8LK9ZSd
	vVupqB3H5q/ckXZig4wEtZDzB4J+XkLPOZdIuBUM0dfLyv1yHulzSYeMmMAnWl92ycs+n09e2vDSc
	d3v/UslpcYkdZhMR8yQzCjdgjtAKLpBfwmRkARfQN7JE6VA9zhJ3edgvCO78eDiIbWiOv5rZNQ50R
	fUTKhUcp931D+XSPBoMDOCK1V3U2cRseXq+wOBp08eEr1n5ImZm650KkkswmmIsqv0C2zL9Oz6Dh1
	jqVsp5LMYyGWrWZ8IQlD/yUp9O02lz9SnYDQN74JvraQydn7j2IjFGW3yO0Prj+rVajc4Mw/hSjSk
	5Io/7jD7sClSuErDrnuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQCB-00000003gSn-0ISJ;
	Mon, 27 Jul 2026 18:36:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQC9-00000003gST-3moJ
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 18:36:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5245B400DC;
	Mon, 27 Jul 2026 18:36:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7C781F000E9;
	Mon, 27 Jul 2026 18:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785177417;
	bh=KN6QbkqC8P+68lAQ9m8oLFyZUDNU1UlGAtqP8ZS90Yg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kuNhhsgGIefK2lN/ZBrB3TaWUGBgGgy1cNo85PWEi1QRmVo4F46el9PfX4P3dUKS9
	 /TZDtLP7aoYjNS2xGNtCCq+yMVCntJhNjxZ2RQDZGGndWGXQvzdl2l5aX9AK+nDzvN
	 OWMmF1ga+TD+lfiuAzZbe6gTbdlROSDqweBFkS8MHcnVzqrNzABi2xEQm5puhrSR3f
	 VvF2m+7vQLf/0HgnFRDhkVmHTrHP2SKEf44H1I1sZe2BTOK4VAdmrkIFm/R61FN6cG
	 oV42A6NJ3cuonjrplxSBuIVBGadulvRkOHdyMSQbpL/UW+agD43gf6Q0E9Ydk7k5fW
	 hyEXw+wzvfhgA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 03/12] dt-bindings: clk: zte: Add zx297520v3 LSP
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, lee@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260727-zx29clk-v8-3-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-3-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 18:36:56 +0000
Message-Id: <20260727183656.A7C781F000E9@smtp.kernel.org>
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

PiBUaGUgY2xvY2sgY29udHJvbGxlciBvZiB0aGUgengyOTc1MjB2MyBMb3cgU3BlZWQgUGVyaXBo
ZXJhbHMgaXMKPiByZWxhdGl2ZWx5IGNsZWFuLiBPbmUgcmVnaXN0ZXIgcGVyIGRldmljZSB3aXRo
IGdhdGVzLCBtdXhlcyBhbmQgcmVzZXRzCj4gYW5kIGZvciBzb21lIGRldmljZXMgYSBkaXZpZGVy
LiBUaGVyZSBhcmUgZXZlbiBiaXRzIGluIHRoZSBtYXRyaXgKPiBjb250cm9sbGVyIHRvIGNvbnRy
b2wgcHJvcGFnYXRpb24gb2YgY2xvY2sgbGluZXMgZG93biB0byBMU1AuCj4gCj4gVGhlIGNsb2Nr
cyBhcmUgc29ydGVkIGJ5IHJlZ2lzdGVyIGFkZHJlc3MgYW5kIEkgYW0gY29udmluY2VkIHRoYXQg
dGhlCj4gZGV2aWNlIGxpc3QgaXMgY29tcGxldGUuIFRoZXJlIGFyZSwgaG93ZXZlciwgYSBmZXcg
bW9yZSByZWdpc3RlcnMgdGhhdAo+IGFyZSBsaWtlbHkgZXh0cmEgZGl2aWRlcnMgZm9yIFRETSBh
bmQgSTJTIGRldmljZXMuCj4gCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGVm
YW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2
aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA3MjctengyOWNsay12OC0wLTdhMTA3YjAwZjFkZEBnbWFpbC5jb20/cGFydD0zCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
