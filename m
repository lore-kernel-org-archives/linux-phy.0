Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDE65CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ykekt9Fe8YhiEl7zsPW62snQZ39KA9FnZckNjgzbXY=; b=ARL+4v3fi5KOdl
	Et00THmE+YnQ868Lfc8P8nAJke96Y5hvuNPIvylsADu2WB3cDPikocyUaW2+sJoU45VHHQ4iGuNgQ
	Ya5iqxGgIwy9RJjzRjC4RXIfa4+GDH8IvOAj9vApJo7H3+ClYq4Re1p1pCexLeHrtM/uPdld6MQgY
	1k/PZxKnRnGzH3S+kl87a6O20rMvFNtwC6j6qRXqwrV53cVtqgiY3tdDXuEqesFvZXJ5XuSbR2Jhj
	acEKQ35M4isx87qayYdqfU1z6zLTe6Rd9atfj4aZ3UkdFZ12FxoLIdYo3Fydrx888GVeyYTQZXB99
	6bla+U8StYqhAbtsQj9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CO-0000000AhW7-2fY2;
	Sun, 10 May 2026 12:23:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CM-0000000AhVa-3C7b;
	Sun, 10 May 2026 12:23:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 39E1160125;
	Sun, 10 May 2026 12:23:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FD44C2BCF7;
	Sun, 10 May 2026 12:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778415833;
	bh=TC873zStqJ259MiwNikRrru9L89mhebxpZ8MWRYnZmM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AD0b9e+ezrryuNWZ8BZEaU0+rFHiKV5efAYKwxEINwCllXX7j2Fv9630NzBqPHRD0
	 UaDnpvaG4g8DuuO0A5YWgdFWl7E0YwH91ujb1+3YGGEcz4aqGaqmnjxz5cSM14/mb3
	 0UqhiYJxb8Q8DojeQueJupwWhq64tCHK/Txgh1lnA2k6PguhvDW+5nX9TlAmtVZmK4
	 myJceoTdZAiZpIIFR906BUQhqQ8qseQlxUGZs6QUXSOZ9NtGvcPbXlNakbgAqX1BZO
	 YEbx7zcLhAqC95s5fzmqKUOybvOnKcApvB2olYBFwcwKa3T+csPiOng5phrWmGUIos
	 gxDw2DwSFWZ/g==
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?q?=C5=81ukasz_Lebiedzi=C5=84ski?= <kernel@lvkasz.us>
Cc: neil.armstrong@linaro.org, krzk@kernel.org, alim.akhtar@samsung.com, 
 andre.draszik@linaro.org, pritam.sutar@samsung.com, kauschluss@disroot.org, 
 johan@kernel.org, ivo.ivanov.ivanov1@gmail.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260406135627.234835-1-kernel@lvkasz.us>
References: <20260406135627.234835-1-kernel@lvkasz.us>
Subject: Re: [PATCH v2] phy: exynos5-usbdrd: fix USB 2.0 HS PHY tuning
 values for Exynos7870
Message-Id: <177841582887.420676.2529810300062190966.b4-ty@kernel.org>
Date: Sun, 10 May 2026 17:53:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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

Ck9uIE1vbiwgMDYgQXByIDIwMjYgMTU6NTY6MjcgKzAyMDAsIMWBdWthc3ogTGViaWVkemnFhHNr
aSB3cm90ZToKPiBUaGUgZXhpc3RpbmcgUEhZUEFSQU0wIHR1bmluZyB2YWx1ZXMgZm9yIEV4eW5v
czc4NzAgYXJlIGluY29ycmVjdCwKPiBjYXVzaW5nIHRoZSBVU0IgMi4wIFBIWSB0byBmYWlsIGhp
Z2gtc3BlZWQgbmVnb3RpYXRpb24gYW5kIGZhbGwgYmFjawo+IHRvIGZ1bGwtc3BlZWQgKDEyTWJw
cykgb3BlcmF0aW9uLgo+IAo+IEZpeCBUWFZSRUZUVU5FICh0cmFuc21pdHRlciB2b2x0YWdlIHJl
ZmVyZW5jZSkgZnJvbSAxNCB0byAzLAo+IFRYUkVTVFVORSAodHJhbnNtaXR0ZXIgaW1wZWRhbmNl
KSBmcm9tIDMgdG8gMiwgYW5kIFNRUlhUVU5FCj4gKHNxdWVsY2ggdGhyZXNob2xkKSBmcm9tIDYg
dG8gNS4gQWxzbyBleHBsaWNpdGx5IHNldAo+IFRYUFJFRU1QUFVMU0VUVU5FIHRvIDAsIHdoaWNo
IHdhcyBwcmV2aW91c2x5IG1pc3NpbmcgZnJvbSB0aGUKPiB0dW5pbmcgdGFibGUgZGVzcGl0ZSBi
ZWluZyBpbmNsdWRlZCBpbiB0aGUgcmVnaXN0ZXIgbWFzay4KPiAKPiBbLi4uXQoKQXBwbGllZCwg
dGhhbmtzIQoKWzEvMV0gcGh5OiBleHlub3M1LXVzYmRyZDogZml4IFVTQiAyLjAgSFMgUEhZIHR1
bmluZyB2YWx1ZXMgZm9yIEV4eW5vczc4NzAKICAgICAgY29tbWl0OiA1YTc1OWIxMjBlMzFhYTNl
ZDkxNGQ5OGI1MWViMTc1NTIzNTI1MGYyCgpCZXN0IHJlZ2FyZHMsCi0tIAp+Vmlub2QKCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
