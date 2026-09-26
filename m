Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97281C98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 04:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bhNjDXMwWHS+P7gCgik8FM+Fu61bOO9vwYOAstK4Ro=; b=4GnRIJISRvA4UW
	BME5riIIZZP1Powit7/9FCAfg13pgiwQK5omCfsjNZEeJPMfrT1mk5r8TUj8QilOEmCrGzlTJjKQN
	CVfQ1JSnu/scNssGntEagdndiAYbFksL29LPwN+bq06a1KxOrNDawRXqgzWzky00Fmk9a0sgT890m
	TuH/uzZeSsVdHVV6vWgU+66M5WPyAs5G5Gt3qVW/UToJVc44BUuXLRD12Cmns4fd+mE8/VQqa8gFO
	T7AETT1HFXhhREPWfDd3a8N3HEtKm4fvDjNlMy8f4GW5gQD5CiR1YCJEGXe/lQ6XagaWaG1EpdRif
	DR4IQ+1CL+lMI4B8UN1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJgS-0000000EwCE-1DJc;
	Sat, 26 Sep 2026 04:06:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJgQ-0000000EwBx-1jLu;
	Sat, 26 Sep 2026 04:06:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1BEDD434F9;
	Sat, 26 Sep 2026 04:06:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 745B61F000FF;
	Sat, 26 Sep 2026 04:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395602;
	bh=nxfWuHGoS4AD08RES316n80ZMluVFGGsrpPDIgi9EWI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XJu+a058PFy9AuXoNx2lJIIXcpKT3fHF6QBAJj/v0wp5P+Nz0JRMJbldY9RWwFrIK
	 oKVn3VZuRorua0NW1T5FZqDwSDJuuq0MMlCjkqEgspsvOl0thUe8+adh+IAHHR0tWJ
	 Kghwxgyjyy7S/93Vu8sKh2FK8UPE2Hdk4LKg14j2SW7x1FbK/r6dk6RNJixi5JtHbN
	 PsZuu47kxAJ6vXgRz/76JZ3rVQH4/ZLpsynTmse6449dxcksS+1a4f1rSGcyCKnOjW
	 FFDfbdKFBEXdtqwa0ynHpSYxaiFzH/vy0T3wKx8PHJVTNOS0HaqY4tz7HT25ux3NjX
	 0KbaAplpZfkpQ==
Date: Sat, 26 Sep 2026 06:06:27 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 13/16] phy: rockchip: usbdp: Rename DP lane functions
Message-ID: <btcylnhxrbd5ks7wt437ddisiiktlqmr3zuwt43otydzd2vse2@7ydv5pircguh>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-13-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-13-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NTA6MDBQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhlIGNvbW1vbiBwcmVmaXggZm9yIERpc3BsYXlQb3J0IHJlbGF0ZWQgZnVu
Y3Rpb25zIGlzIHJrX3VkcGh5X2RwXwo+ICh3aXRoIGEgZmluYWwgXyksIHNvIHVwZGF0ZSB0aGUg
dHdvIERQIGxhbmUgZnVuY3Rpb25zIHRvIGZvbGxvdyB0aGF0Cj4gc2NoZW1lLgo+IAo+IFJldmll
d2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBUZXN0
ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkg
NSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxt
YW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
