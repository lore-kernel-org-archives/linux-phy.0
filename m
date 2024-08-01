Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BAFC3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eC63Wz6UItPBTOAZZn7pTcQHME0eKTe+isAfHk/uRtg=; b=GtiQL4qiNuaWh5
	q7OJAnIRS3OW7R4B9Mw7RebMMDMdgdPu77A7W0FDoJyj+VK4/hNY6HbpekuF7X51GdqSUMTv0Lode
	EIDDCRJLhZ8bUY9BagHIV+CviOvShzFTC/5QIdiymKsFgYYmbo20R73KqQYKXx3xgBWXLudmnzXUJ
	OWE1SKDWcOePpOB469eLVrIMa6/LE4XDPftnyvsnTu6mrAxCgpsi+YHOxI77sPuCdxvhizymmdrGT
	HONVOfwbOldTY+YpeIkioG4RjChEP0227opT0RnrvZc7B0/z4Wi8SNlklgTojt5//9t01RUZ5JUn3
	SO4rFiCyz0sBfnlcB6aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiv-000000045Gq-45za;
	Thu, 01 Aug 2024 06:55:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiR-0000000457q-1ReI;
	Thu, 01 Aug 2024 06:55:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 587D7CE1847;
	Thu,  1 Aug 2024 06:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 031C5C4AF0A;
	Thu,  1 Aug 2024 06:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495308;
	bh=yBHTc+YfefDNuFZSbdUt+ev72AY1+QGyX9tR7wDxkJU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kIj8rlMKohw4/Q+qvxeFSj9uvdCa5Cxu8EY16CjddrZsUXZGVoq06TwfsRA52KDHx
	 MZZu6LQq2vdn7MFkvRAymI2iJTky/Kws++70s9pwojJaB1/ybOe2S8XLERdeZZ3i9c
	 XlBVf3aj1iggoVd38wYDWCbdG3M7POvRex4adM5ohU4fBSs54HQ6H3I4WcBL8Av/0Q
	 kR4yYYpS8VTLStj1sML45EQT3Z9zWdZl63m+G5vkMPYk2XKFEqzhRCUWLrb+Aj6T1q
	 nIj77xYrzE/SQlV4d1vVQ0Gl84PUQ484a7eVTHzim07KMcfIpK9fze7KuGpTBYBaBo
	 UUKZVrdzbUg7w==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240710-phy-field-prep-v1-1-2fa3f7dc4fc7@linaro.org>
References: <20240710-phy-field-prep-v1-1-2fa3f7dc4fc7@linaro.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: convert some FIELD_PREP_CONST()
 to FIELD_PREP()
Message-Id: <172249530458.256913.1079769256598597448.b4-ty@kernel.org>
Date: Thu, 01 Aug 2024 12:25:04 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235511_593824_4B1E1EFC 
X-CRM114-Status: UNSURE (   6.66  )
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

Ck9uIFdlZCwgMTAgSnVsIDIwMjQgMDc6NDU6MDcgKzAxMDAsIEFuZHLDqSBEcmFzemlrIHdyb3Rl
Ogo+IFVzZSBvZiBGSUVMRF9QUkVQX0NPTlNUKCkgd2FzIGEgdGhpbmtvIC0gaXQncyBtZWFudCB0
byBiZSB1c2VkIGZvcgo+IChjb25zdGFudCkgaW5pdGlhbGlzZXJzLCBub3QgY29uc3RhbnQgdmFs
dWVzLgo+IAo+IFVzZSBGSUVMRF9QUkVQKCkgd2hlcmUgcG9zc2libGUuIEl0IGhhcyBiZXR0ZXIg
ZXJyb3IgY2hlY2tpbmcgYW5kIGlzCj4gdGhlcmVmb3JlIHRoZSBwcmVmZXJyZWQgbWFjcm8gdG8g
dXNlIGluIHRob3NlIGNhc2VzLgo+IAo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8x
XSBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IHNvbWUgRklFTERfUFJFUF9DT05TVCgpIHRv
IEZJRUxEX1BSRVAoKQogICAgICBjb21taXQ6IDdlNmMyZmZlNmMyMjg0YTEwZjc3MDc5NjcwZTNi
MjZiNDNkZjQ0NDMKCkJlc3QgcmVnYXJkcywKLS0gClZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5v
cmc+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
