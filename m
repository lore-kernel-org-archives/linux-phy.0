Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83DF5C79FA0
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 08:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwTgmO19O/oE3pSTZeVFtYe2Hd4ALbymQBdS6eZuUv0=; b=Dh+S6Wt0xhdU3I
	wvcA1b7DYpgEI6ilbRnTWXu+qsNJiAWLeWtNyX5KAh/ujePyiBECWFryoc9lnSLbnYxBvLO10RdXi
	R89s2ylg4Zobk5Rg1AHkWuaIsmVc0ZsoLCQ1Ew9SKiCzmi8affbnLuPmFMSbGjunn1os3FF0gfi23
	BJY6dE0Fs6nIzMbHSgMkof6zpIMH0R0F4MF/ADIf0Foh6EmwZoYSh8T+KPBSsYK+hMKnC3Ayj+Vly
	2ISIiISWDJrPF26B/xCcyil4EdIi/M26/wkPVUoWvrB6K1aaH7Uwmex3eOlFPWENNZJe9O+HJzBcN
	gKfNfvIRBaQiiP6aSkIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qwh-00000008MFV-0wJY;
	Tue, 08 Sep 2026 08:12:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3qwg-00000008MFO-0vgX
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 08:12:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A0C5A41994;
	Tue,  8 Sep 2026 08:12:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C968A1F00A3A;
	Tue,  8 Sep 2026 08:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788855165;
	bh=9hCQgMwyEOZyiUh4T4kOYxQD+d75PSrouVNDs1twLyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LbNbwePls9dqJddjkNQYaM8omCK2Sc0hc9gs8D9ioGXi9uBOqHYOGyUhgpruhPiug
	 hEe2k4zFCgA0iEQR79vX8/l8aDSKQPWGU6q/5fmhNdbhcowMVYZfGelWbZZvB73aLT
	 BcG3WbUNRLY1BKsH01wYDzWsNkMU4aFYwpDWG5X1gGiCrE/QbZhzsATDjwfChE7cP/
	 q+0TbIcG5CiJeLO3cz5oLh68vJjGKhwfyTp8ZGeozH/FBuyLgTFU0rxa+RYi94bKM+
	 FU63emFHCWP0awMjk3ZkEL+jaCQG3NmeTxXZBfDUt1osObem/W4h4kQ229lNygezLc
	 MDYV/IXRzmHaw==
Date: Tue, 8 Sep 2026 10:12:38 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: Justin Chen <justin.chen@broadcom.com>, 
	Al Cooper <alcooperx@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: broadcom: brcm-usb: unwind late probe failures
Message-ID: <jwi2ylwxy26swxvwnwhrbsre4luzikatpzjbetctlbyz7gvvc3@zwwiu5bx4bby>
References: <20260615070123.51155-1-pengpeng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260615070123.51155-1-pengpeng@iscas.ac.cn>
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

T24gTW9uLCBKdW4gMTUsIDIwMjYgYXQgMDM6MDE6MjNQTSArMDgwMCwgUGVuZ3BlbmcgSG91IHdy
b3RlOgo+IGJyY21fdXNiX3BoeV9wcm9iZSgpIHJlZ2lzdGVycyBhIFBNIG5vdGlmaWVyIGFuZCBt
YXkgY3JlYXRlIGEgc3lzZnMgZ3JvdXAKPiBiZWZvcmUgcmVnaXN0ZXJpbmcgdGhlIE9GIFBIWSBw
cm92aWRlci4gSWYgcHJvdmlkZXIgcmVnaXN0cmF0aW9uIGZhaWxzLAo+IHByb2JlIHJldHVybnMg
dGhlIGVycm9yIHdpdGggdGhvc2UgcmVzb3VyY2VzIHN0aWxsIGFjdGl2ZS4KPiAKPiBUcmFjayB3
aGljaCBvcHRpb25hbCByZXNvdXJjZXMgd2VyZSBpbnN0YWxsZWQgYW5kIHJlbW92ZSB0aGVtIG9u
IHRoZSBsYXRlCj4gcHJvdmlkZXItcmVnaXN0cmF0aW9uIGZhaWx1cmUgcGF0aC4gVXNlIHRoZSBz
YW1lIHN0YXRlIGluIHJlbW92ZSgpIHNvCj4gY2xlYW51cCBtYXRjaGVzIHByb2JlIHByb2dyZXNz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBlbmdwZW5nIEhvdSA8cGVuZ3BlbmdAaXNjYXMuYWMuY24+
CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2
YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
