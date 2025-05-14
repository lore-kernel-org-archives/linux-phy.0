Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 343E6C3ABD9
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e564bJztOXHpfnl8reNtnW9tPc9vwkq/Xmu1m13uEUE=; b=tFb9Y5/89BAhM7
	G/2AMdZFqfzACdkBDO8mJ04LtWn1ZoCgwcr4C/Li68NWXQqNgA3xrGRhMiA562JatjGly/3xyfTJA
	7JO9f8jMOxXssh/m6FFbvYlcsgsRrmrtKV8EI0nN4upTpYqoEWb7aA3ZBPUBzqZv7CUNNoL+5DB32
	FAcx8Ou8xS5T6epuSAii8Rx1LKI/WY3gmntBJqIP2Td+cGY+dYI/VAVwpT+TPPVWMVaauu+vTLy7O
	SLAKLOjuKzv7BWrkjAyj239A6IwRUxZI5CU+k3SC0vmUvXs/xG8AjIs+zYrleiApKpWaWOYqq1fnk
	Rzjus0mktjo7zyegg2Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFB6T-0000000F4ri-1Rzj;
	Wed, 14 May 2025 12:20:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQa-0000000EuUj-2rX0;
	Wed, 14 May 2025 11:37:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6F4904A29B;
	Wed, 14 May 2025 11:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C82C4CEEB;
	Wed, 14 May 2025 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222656;
	bh=KQlF40JSsgpURiVONi58XyU8oHv/LUiQF6gKP7AnrzA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=elXe3iGkWJ9Vlu5nNWzJQZ8B85BvjCKU9lwOnVS900YEEG9Bqm63/SeN6Hi+IwJFM
	 cKnbc4/pey81M6zXOtplioyY+n4C2m9AkrOMNIU95uydG4pkH83wLUHkowsJCxQl2z
	 wCDvD7rJf6MXWe1erWkf0zCuqFtBur+Y4v1Mp9K7p5vhcwXqMp/rNqXhWIjIoJGuw1
	 EVWbiUqA5pjH0ify1NAAAbMM4BcWa8Afi5lMNACcNQchvphI9buNpV8N6tFfKsVU6q
	 iGPmi3LvkPR5hHvxlfKYt5b6UrPTaZLJlRwep5i4pxXURIZNV+4zPuyzZqkcYiQZRU
	 dP/bmOn9WVhgA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250429-exynos5-phy-field-prep-v1-0-39eb279a3e0e@linaro.org>
References: <20250429-exynos5-phy-field-prep-v1-0-39eb279a3e0e@linaro.org>
Subject: Re: [PATCH 0/2] phy: exynos5-usbdrd: FIELD_PREP fixes
Message-Id: <174722265300.85510.15558290734609621287.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:33 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043736_736652_1499F726 
X-CRM114-Status: UNSURE (   4.54  )
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

Ck9uIFR1ZSwgMjkgQXByIDIwMjUgMDk6NDk6MjMgKzAxMDAsIEFuZHLDqSBEcmFzemlrIHdyb3Rl
Ogo+IFRoZXNlIHBhdGNoZXMgZml4IHNvbWUgcmVjZW50bHkgaW50cm9kdWNlZCB1c2FnZSBpc3N1
ZXMgb2YKPiBGSUVMRF9QUkVQKCkuCj4gCj4gCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8yXSBwaHk6
IGV4eW5vczUtdXNiZHJkOiBmaXggc2V0dGluZyBMSU5LU1lTVEVNX0ZMQURKIG9uIGV4eW5vczc4
NzAKICAgICAgY29tbWl0OiBiNDU3OTFkNDg3NTI0MThjODA1YWU3NDE3ZGNlYTg1YTQwZDVhNDFl
ClsyLzJdIHBoeTogZXh5bm9zNS11c2JkcmQ6IHMvRklFTERfUFJFUF9DT05TVC9GSUVMRF9QUkVQ
IHdoZXJlIGFwcHJvcHJpYXRlCiAgICAgIGNvbW1pdDogNmQwZTJhZGEzZWU1YTU1NGU5MDgxNzhk
MWZjZTg1MWY1ZTYzOTQzZAoKQmVzdCByZWdhcmRzLAotLSAKflZpbm9kCgoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
