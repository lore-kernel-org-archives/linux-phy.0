Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15225CA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 16:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwcZA4eBp9r9D/0iKcLhYHtsKqv98+8h8VadQSaEsmk=; b=Hv7ZB7dIGhGZou
	BS3M8hMjdYvYdQMeiPDD6rrL7gmfqb0O44knEdDCg7a1WGeyCvQMWKC7/ijHROumQNInHKnzkDNuE
	BCoTUi4WI1hJl2LKF7ypha5KyAQxGN6h1NpcJFDUUc94X/4aXMrWTkE+cTLd76JKITxMEy9ZFcdD5
	NimCUoGpsEnk9vU5rLCcHcUOxUwWHAaZtnii7hA9sqaWhhH40nlKoFEe6TzA3bS7CZW4c2kF9+/iA
	XkjLyrSUktDLk0OyOMXftELpe9oF4XSpVezmoc8g7PX+nDFqfZsACdIcPVeKmy02Wqm9Uu8mSWW2Y
	dKWOdXuHVIpr1MNRsfkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEUDA-00000002kqW-2wAW;
	Wed, 07 Oct 2026 16:09:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEUDA-00000002kqN-0HXa
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 16:09:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 41716601FF;
	Wed,  7 Oct 2026 16:09:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 202F11F000FF;
	Wed,  7 Oct 2026 16:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791389383;
	bh=Ac/hlUUWup9BqKdyumpZNGhcUNu/jTUPnbnM69QQABs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=i+e/ynsbXy9VOXTj38ym2D7PwIHoOjW7pzc/a9Jk9nqPUqquyvKI3kFct9lRo28/r
	 a1E5zBMm3LuucfcyeZ8qSomAEtSTdIquFI0qVmZ9oGpvrVb9eEEWjAv/osrMWZgw+J
	 QFZeB/HimdSIcXWOPLZb0HPZAzhOBIGGYZsp9DOXSNKEraIJttZkGyi3JUsuidZ7yA
	 ssVypJGSQ7MPXBWgr+oQJzSkA5QWHm/4DwOimsCXon2GwltAqhQ240S1CZrMSkgpOO
	 gGmNArAjhOatzCyVNsRsZzlzfEUJDXZo9ks6goQ6kT1vmqMFbAQ85TylvQcAupdkoO
	 bX2PTCwk/p/nQ==
Date: Wed, 7 Oct 2026 18:09:36 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Vincent Shih <vincent.sunplus@gmail.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: sunplus: fix two issues in update_disc_vol()
Message-ID: <wrbzofpr4ltircjafq6powmmohfykhschulxalzeab2sg3g7jv@op25l3du4qr5>
References: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
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

T24gRnJpLCBBdWcgMDcsIDIwMjYgYXQgMDk6MTY6NThQTSArMDgwMCwgRmVsaXggR3Ugd3JvdGU6
CgpZb3Ugc2hvdWxkIHJlYWxseSBhZGQgZGVzY3JpcHRpb24gdG8gdGhlIGNvdmVyIGxldHRlciBk
ZXNjcmliaW5nIHdoYXQgdGhlIHNlcmllcwpkb2VzLgoKPiBTaWduZWQtb2ZmLWJ5OiBGZWxpeCBH
dSA8dXN0Yy5ndUBnbWFpbC5jb20+CgpGb3IgdGhlIHBhdGNoZXMsCgpSZXZpZXdlZC1ieTogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNv
bT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
