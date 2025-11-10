Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CDFBCCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 09:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pzfHCbfzJhylwrvqFQM42iVqve/BrodQ3ouvdq5KKw=; b=R89JPFRj+wgXyj
	N37XC5HN9G590QnLO+KREP9XBtPBQnXFciqez1oCYpjYtV3QcVZFjQ0eM/hRprg+YCQpbnNa0fQry
	9hExFYCRogyjdouSsOWRS+a6GGj6Hl88TAok3k9iYNGRmS6PloxDesJbSltcTLO12ZGzd9vw2+gGU
	rxsn3++PSS6QK+lALjGHPrvl+IS3350Qfmlb/Osj1CoraT0sycoROMhHRoQcJ3G5M5gPMBzobFJtJ
	iBv+tBTpwJfEj1OHPhbkM3bYKetx/6CsRBb2F5NwzdNmX1nbPqVZPNZe3g0qNWJXSZj31UgkUOQN9
	WiM5Bbx8GPux3WDImiDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINx9-000000053zM-3dhJ;
	Mon, 10 Nov 2025 09:12:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINx8-000000053z6-0zEK
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 09:12:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 533F360008;
	Mon, 10 Nov 2025 09:12:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F218AC116D0;
	Mon, 10 Nov 2025 09:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762765965;
	bh=RKR9TJk/YCtpuDpz3O/iln8sLRNX40vYIfxcPiagOXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ojw/iH7y98/7WYICJ2J+SGVHv3fs9WK6ZrSShEx9oQPqU6g70zCsTuhJsw2lQOO55
	 EVq0Kpi53Z5qnD7ZZmrotmCQCDSD7bPeCFhVJRCDAc8skjLGkQp+w7Ibu8YSu4TUpX
	 niYSM0nQSROrfRpV6R6pvWFAmwu3EuOtUuC0uJLcZBMeECpodYgSe48AfQl4uLXtFE
	 dn7MxS3mv+Hl+Ay1GXdGfehgulYkxWC2NannTRI2j67yR5VQmHg+uRQuk9bxDyFT1n
	 gOoU0XgxFVDOcm+qAEuWO0FIg/OwfkIxG9/FyDthuCRxJRYfPx4XzRI1TQP6s65tvP
	 ENbvi1YR0h3gA==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vINx6-000000008EK-3EEf;
	Mon, 10 Nov 2025 10:12:44 +0100
Date: Mon, 10 Nov 2025 10:12:44 +0100
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	=?utf-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH] phy: broadcom: bcm63xx-usbh: fix section mismatches
Message-ID: <aRGsjF_IjnjdG6KB@hovoldconsulting.com>
References: <20251017054537.6884-1-johan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017054537.6884-1-johan@kernel.org>
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

T24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMDc6NDU6MzdBTSArMDIwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IFBsYXRmb3JtIGRyaXZlcnMgY2FuIGJlIHByb2JlZCBhZnRlciB0aGVpciBpbml0IHNl
Y3Rpb25zIGhhdmUgYmVlbgo+IGRpc2NhcmRlZCAoZS5nLiBvbiBwcm9iZSBkZWZlcnJhbCBvciBt
YW51YWwgcmViaW5kIHRocm91Z2ggc3lzZnMpIHNvIHRoZQo+IHByb2JlIGZ1bmN0aW9uIGFuZCBt
YXRjaCB0YWJsZSBtdXN0IG5vdCBsaXZlIGluIGluaXQuCj4gCj4gRml4ZXM6IDc4M2Y2ZDNkY2Yz
NSAoInBoeTogYmNtNjN4eC11c2JoOiBBZGQgQkNNNjN4eCBVU0JIIGRyaXZlciIpCj4gQ2M6IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmcJIyA1LjkKPiBDYzogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFz
IDxub2x0YXJpQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBIb3ZvbGQgPGpvaGFu
QGtlcm5lbC5vcmc+Cj4gLS0tCgpDYW4gdGhpcyBvbmUgYmUgcGlja2VkIHVwIGZvciA2LjE5PwoK
Sm9oYW4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
