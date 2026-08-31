Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E440C624A5
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lNdLPyFiOqVZfeMQ/a+zJB7X/hMz9PIkgiYfklg6cI=; b=JKKANhs4QvmDuZ
	ymAeGJ3dv4hd+QUDPmDYcHorakjzb++siCYK2MBomPPJor13wUNjDbIJEYLvbiEwdDIXoFBzRIaz7
	4oXL+pC9IjsLvUz40JhuklrAtet+pVT8ZyjyFFa6zkBRVPhqphjabvnEadYZBfbbzNKlOAIJERsSb
	4iIq4Hwnv1aXhc88VOgZgYM7MSGn9sMvGouM9qHFI+6euIlFfImBqz33oT7vTDGXuIBXy/9rADEeH
	O3aJDX3FIIG3SWucW63whY1s0jSxL71wmSHnsJk2CQWov0JJHx8MuooDgjEoLamdD0b28AlgmupxU
	nrYwHRKmL8twZXbhmhQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wSa-00000008jH7-3KJG;
	Mon, 31 Aug 2026 07:29:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wSZ-00000008jGz-1c9d
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:29:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 16B9E4029F;
	Mon, 31 Aug 2026 07:29:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E7261F000E9;
	Mon, 31 Aug 2026 07:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788161379;
	bh=Kktc031UzCEMI6JagxmPA+1IooGPvoNesv/14HrP77c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GKkrJKRx7lUuVIckCGWqPOA8+LurVWECrQpnRQg3zwBVYIkijbCYRAoqy5kyXfNtM
	 K2I1sv6fV9erv2OvIkGbR6WxxCIT6mA4NgbGUukgFDhjXTzgLV6Vt8In0L6uVC8nky
	 L4w+jz3cCSnr6IE4RbsjBSCr2kxoo4S/VFDMegRjgFsaEiJOP0pT7/7E91+rAxB+gw
	 NnWaH9M5hXgjbQbaL7rFnQ+zBdwLSNi5UVGNjf9tbjY2uzx9zWDhH6863kyYJOJibc
	 JyOM1WvfXYMgG2iRl4X+GqUm/028e36o3efgjk/+nmJFvM+5lMine2aNnM6aAO6AvZ
	 hX2PYXP3d1WjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Shikra PCIe phy
To: "Sushrut Shree Trivedi" <sushrut.trivedi@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 07:29:38 +0000
Message-Id: <20260831072938.6E7261F000E9@smtp.kernel.org>
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

PiBEb2N1bWVudCB0aGUgY29tcGF0aWJsZSBvZiB0aGUgU2hpa3JhIFBDSWUgcGh5IHdoaWNoIHN1
cHBvcnRzCj4gR2VuMngxLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN1c2hydXQgU2hyZWUgVHJpdmVk
aSA8c3VzaHJ1dC50cml2ZWRpQG9zcy5xdWFsY29tbS5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdl
ZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgz
MS1zaGlrcmEtdXBzdHJlYW0tdjItMC00MDY2NjFkNzVhZmFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0
PTEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
