Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B9DCD374AF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+mCU8jekdqqdfOD3f9FTdFsKFlDV/kOT51gBzYzrSY=; b=IzAUyqj+KceNr6
	NJOKR8P9T3vuyY95H557/qkZ62TsS0+vKrjHA0GHL2073xl3aKDF9NY0M2Njbvh52wHuyA/mTMpyT
	jclBHOE4Mdy3paaJwUZwdLA0BM1us24FD8keE07r6GU/ZHqaSc0NKoVrH8zVGNqRnIyGY1EzYxIVe
	dbkpXKpu7QLPgG4urctSKdXcSoMPH8W3k+LaHi9XLqPRvgY9Pkfn0/NNbA2f3b8Oqz1nOnsQO1fG3
	PiAu5PQcPlz0SdPrL84rcz+fmT/34myVNIUdoeBaNhNU/faoIg7dvk+JbgFGAHL1rb5U8IGkUTs7U
	02ugu81KbNgW+a6TZ6jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SiS-0000000FLlu-2qel;
	Thu, 17 Oct 2024 15:47:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXq-0000000FIxL-0Sjm
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:36:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E361C5C614C;
	Thu, 17 Oct 2024 15:36:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16C66C4CEC3;
	Thu, 17 Oct 2024 15:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179369;
	bh=Na2F494kcEX2Vp6r39MBy/zeLgbacduW5CtseCOEFDk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MPWPpHhO2m+rn+lhq2TKhHKnS7SA+nF1KUHvMAW+IcLm6ajejWH32yfDIOuv4fT1j
	 gyt/DcEMEY3S29kSPb81kLcR5AePjfymn1UtjI/Lt53GdFOyFuqverbjnD3X7esBBp
	 8wYCOwLyLmhRAwcAa40g80WT2bltPjKKR+skDPl8g7ny0o4c1sSSKjuoCNU/f5gGZD
	 IXfQkoIO4OxmW44HDioSCYHntSa8cRJ8G/msfWCWge8nDL+Q46xQRaE2udFv4QfGh+
	 Fg4mm/opqKH4u+mDXRLn5W31Ty15tboJF8PPKsvUrrOHPbH0PeMC/JOvmVladOKOba
	 VXsznTcJ009hg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-phy@lists.infradead.org
In-Reply-To: <20241009065307.504930-2-u.kleine-koenig@baylibre.com>
References: <20241009065307.504930-2-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH] phy: Switch back to struct platform_driver::remove()
Message-Id: <172917936773.288841.2071850049894359358.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083610_233480_FB6C6F16 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
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

Ck9uIFdlZCwgMDkgT2N0IDIwMjQgMDg6NTM6MDcgKzAyMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdy
b3RlOgo+IEFmdGVyIGNvbW1pdCAwZWRiNTU1YTY1ZDEgKCJwbGF0Zm9ybTogTWFrZSBwbGF0Zm9y
bV9kcml2ZXI6OnJlbW92ZSgpCj4gcmV0dXJuIHZvaWQiKSAucmVtb3ZlKCkgaXMgKGFnYWluKSB0
aGUgcmlnaHQgY2FsbGJhY2sgdG8gaW1wbGVtZW50IGZvcgo+IHBsYXRmb3JtIGRyaXZlcnMuCj4g
Cj4gQ29udmVydCBhbGwgcGxhdGZvcm0gZHJpdmVycyBiZWxvdyBkcml2ZXJzL3BoeS8gdG8gdXNl
IC5yZW1vdmUoKSwgd2l0aAo+IHRoZSBldmVudHVhbCBnb2FsIHRvIGRyb3Agc3RydWN0IHBsYXRm
b3JtX2RyaXZlcjo6cmVtb3ZlX25ldygpLiBBcwo+IC5yZW1vdmUoKSBhbmQgLnJlbW92ZV9uZXco
KSBoYXZlIHRoZSBzYW1lIHByb3RvdHlwZXMsIGNvbnZlcnNpb24gaXMgZG9uZQo+IGJ5IGp1c3Qg
Y2hhbmdpbmcgdGhlIHN0cnVjdHVyZSBtZW1iZXIgbmFtZSBpbiB0aGUgZHJpdmVyIGluaXRpYWxp
emVyLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8xXSBwaHk6IFN3aXRjaCBiYWNr
IHRvIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXI6OnJlbW92ZSgpCiAgICAgIGNvbW1pdDogNTQyMzRl
M2E2OTMyNGM5MDA3MTVjY2Q4ZTBlMTdlN2ViMWJiNDdjZAoKQmVzdCByZWdhcmRzLAotLSAKflZp
bm9kCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
