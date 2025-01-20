Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EC40C02185
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 08:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o35bk9fj0PmmtjWV7BW3jk45be8SvUe3SatUM5bM1z4=; b=3E5UNlaWlLAmmc
	gaK2YIFP3vVkiV39lbaLdT+GiNR/qRlRX+bKYVINXR+ZZsqHgMEBHUcC2RxWIMR03RN9+JJ/5+XxQ
	/IGCW2cWrk53JiUqHjcXWbkpuxmQrR1EEPeeb08bdHqGzqIWCbFjoMfZRuYw2cogFhLuUq3hZcG+j
	Dno7/YKW2ghR0CiMUFRFx+FdHSieDdjdnbB1M0F+eynl8PbKnMHEGz1n9j7zM3hjbZdBoGAcKRwRY
	RPNX88zmEyk7Xs+Wfq66rrrEkROixZKmDHUaxNsyWqnk6N/a+FSiXDz7mPlKrmMYK2PY7P3qG3tyD
	N6lqT4kpn/ZzVMg7SJQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmod-00000004zL8-3jNq;
	Mon, 20 Jan 2025 08:07:23 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmob-00000004zKm-26Ib
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 08:07:22 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 694E4240009;
	Mon, 20 Jan 2025 08:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737360438;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ptkfwg23V8TkYPQTz2RcJGgC0dOsHD+3NlCAwB6LHkk=;
	b=bttfJ4czgZA1NYg38M4oPgFndjx08cw2M2mjp3qI6Am61iZJAgpAkuF6j76yuxPVKhm9E8
	5femF4hP3a4byMYneeAsjparcXLToMAQh/95osx4BRNm2o6njn3CXms3JheWZ1sO60LXOy
	E8bEgEDk/3RwMQjEdzW9KvXyjh8YjB++AEXiHO9coAUzqR3SHkDYTJcR+YI+xeEoI8BKej
	apdARZ1mMc9SlH0PQCaVmRGIC/dE0y25wijFj8PbaR30vIrktvEKhxOCnGThjZOr4RtRrt
	2b2w9cyEHnvvs8eAUabb3NkIIFjzsqaJnWyc9xO8sHvFupP4QfYEL0I1BGrxeQ==
Date: Mon, 20 Jan 2025 09:07:15 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/3] phy: PHY_LAN966X_SERDES should depend on
 SOC_LAN966 || MCHP_LAN966X_PCI
Message-ID: <20250120090715.17473c2d@bootlin.com>
In-Reply-To: <0c7116ca03997fff04faf59fdcd4c97820685b64.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
	<0c7116ca03997fff04faf59fdcd4c97820685b64.1737118595.git.geert+renesas@glider.be>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: herve.codina@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_000721_698002_D7676DF3 
X-CRM114-Status: UNSURE (   9.06  )
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

SGkgR2VlcnQsCgpPbiBGcmksIDE3IEphbiAyMDI1IDE0OjA0OjM4ICswMTAwCkdlZXJ0IFV5dHRl
cmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+IHdyb3RlOgoKPiBUaGUgTWljcm9jaGlw
IExBTjk2NlggU2VyRGVzIFBIWSBpcyBvbmx5IHByZXNlbnQgb24gTWljcm9jaGlwIExBTjk2NngK
PiBTb0NzLiAgSG93ZXZlciwgd2hlbiB1c2VkIGFzIGEgUENJIGVuZHBvaW50LCBhbGwgcGVyaXBo
ZXJhbHMgb2YgdGhlCj4gTEFOOTY2eCBTb0MgY2FuIGJlIGFjY2Vzc2VkIGJ5IHRoZSBQQ0kgaG9z
dC4gIEhlbmNlIGFkZCBkZXBlbmRlbmNpZXMgb24KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF5eIFR3byBzcGFjZXMKCj4gU09DX0xBTjk2NiBhbmQgTUZEX0xB
Tjk2NlhfUENJLCB0byBwcmV2ZW50IGFza2luZyB0aGUgdXNlciBhYm91dCB0aGlzCgpzL01GRF9M
QU45NjZYX1BDSS9NQ0hQX0xBTjk2NlhfUENJLwoKPiBkcml2ZXIgd2hlbiBjb25maWd1cmluZyBh
IGtlcm5lbCB3aXRob3V0IE1pY3JvY2hpcCBMQU45NjZ4IFNvQyBhbmQgUENJZQo+IHN1cHBvcnQu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGds
aWRlci5iZT4KCldpdGggdGhvc2UgbWlub3IgdGhpbmdzIGZpeGVkLAoKQWNrZWQtYnk6IEhlcnZl
IENvZGluYSA8aGVydmUuY29kaW5hQGJvb3RsaW4uY29tPgoKQmVzdCByZWdhcmRzLApIZXJ2w6kK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
