Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ECDAC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZwLmj6ty0+t1mPb2epz2DHjz3rGNW6YClUkerk0Bh7w=; b=dtNEEjyBrXTxRA
	fZHvKQxa+ufSZ6UWAgSGoKaTLemad+6X8ENuGdU86dH+tum6eyTy5xT6YnRRnoA8t+xXIyZ3CKS8I
	lQJsWBRP8fySK5kAmkpJUxkHWUrLtCKnyr9QNOP9fSrEIPpJsDAV25D50C2PBcM5ImP1TF3+EQkQe
	LUL4HIltmUWUFXCS4UM2p1xqrppV/vUAt2nxdWUZeGbazgFbQHpJs0ApzjL+6/ZG8+1mcBWZ1P7Um
	wF+hTCIT7EmKDWLEWAuyW23pJVomrfclzSrxSJ+w3GlH3Y2+6umR0OSZCiJG5kiZZ4GeQ7V9S7kdz
	Z8trivqzymYj6HxolcRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wSP-00000008jFx-38O2;
	Mon, 31 Aug 2026 07:29:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wSO-00000008jFb-1PUC
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:29:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 098EA405DE;
	Mon, 31 Aug 2026 07:29:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 815791F00A3D;
	Mon, 31 Aug 2026 07:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788161367;
	bh=pGqwywBqlZf7Zwd5zCQtqG1uwRqmnN3TwFbLRAPhidA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=j9suHZ7nnOrg9E6RaZKgl+uxxR8F/mPgGsNn+PEd/BhCERgXwUFIqixV9pzfw8MvY
	 WHFvH3UoiC3xSmLOPCp9MFQJYRFaqaX6NEPM6HgqAed/+kzjXDjfm1paCd1+UjJvLn
	 aPjbMOgLEZcFEvsjzy1j8k2BqovVOtDwl3He9K1oOq3uoKPame1SWgQrnkCZ47r/My
	 PBAOj5WEXtHjbFpgjNcbaou9NQLxx8abIuM/Yau87K3xTUXsXPzyPoQ92BKKchZMpC
	 PbFta06OURvY1NWjMox4uHSswIDS/ozhD9PgLr6I5q2qXXmAIxkfMjYjQQpD7+oKEN
	 08nUkmfUJI3yQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/5] PCI: qcom: Add support for Shikra
To: "Sushrut Shree Trivedi" <sushrut.trivedi@oss.qualcomm.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, linux-pci@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260831-shikra-upstream-v2-3-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-3-406661d75afa@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 07:29:27 +0000
Message-Id: <20260831072927.815791F00A3D@smtp.kernel.org>
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

PiBBZGQgc3VwcG9ydCBmb3IgdGhlIHNpbmdsZSBQQ0llIGNvbnRyb2xsZXIgb24gU2hpa3JhIHBs
YXRmb3JtCj4gd2hpY2ggaXMgY2FwYWJsZSBvZiBHZW4yeDEgb3BlcmF0aW9uLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFN1c2hydXQgU2hyZWUgVHJpdmVkaSA8c3VzaHJ1dC50cml2ZWRpQG9zcy5xdWFs
Y29tbS5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBp
c3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgzMS1zaGlrcmEtdXBzdHJlYW0tdjItMC00MDY2
NjFkNzVhZmFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTMKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
