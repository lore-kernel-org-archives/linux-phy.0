Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 113E1C79FA1
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 15:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAFW040WJIaNH05SPPYI/3Xvq6d0mJq2ao9ce4Q8egY=; b=pow98RNcF6afUi
	o7kkuhVBPJpgXLQ94xRN26X0NXAdvoJ+Yr0a251IabDpTYMP3DpMGQh5SGDIChoKWKJOUIuUoH2kc
	hduui/cVKnSe39pQit0mhq1gXlRvLHX80G//+HNnAH6LvVkOi5nP64sikx8OL0c83dYsRNRo57pM7
	lETF8tdwZ6z9jEi+Mji8I1lUZMhJmA6MskNrnXkZMT8ivteBrTrv/H13hgmGW1a4C2lBuim+oKJk2
	TZr+0hgTt9ck1j5BY7AzvcVj6ECpRG0O7cufcNrPRi+s7wCr0un+Sz91VGPUnl45GilnfsbZue+Ik
	t4QjyID5D2VjylL53LkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bIx-000000079kB-2XTQ;
	Mon, 07 Sep 2026 15:30:43 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bIu-000000079iq-344N
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 15:30:41 +0000
Received: by mail-ej1-x644.google.com with SMTP id a640c23a62f3a-c169ae1cb26so809116466b.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:30:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788795038; cv=none;
        d=google.com; s=arc-20260327;
        b=PirsVhZgyGxuPdakTFa0Qw3DP/NR63+rZgfq37AbelFenBru4ksaKMvesWfu6OzaIQ
         kzwX/UXmlRMA8uPL3a8HUYcG8aqlmcQaGdiYvFuBG/LBbVsnHoleP6oUE9GOpSFtVA0a
         oWbE79Z/TR5SRcP+Un4652ev+u0ckUSOjXy46aPgqdoIIyjHLsmPtCmHEIeJcVOcM9GG
         19zrGB1oe+OT5d0bFXEeBGTZ5LwvmcSK4iHozhQHy9xzmOMV3enUJYR3l5j4zkeoA9oV
         8p0p7OOcYdHBqJUHPDruJ15h7i4OmSqinUB4cGmZ+h2Jz4Q49V3JUAAf2pS0HL/KRo1w
         Y/SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=lkzdnHLNDNYqM7UpPRV6i14OmTu1unpa7gOTpfiF2qg=;
        fh=dm7WFrPQZoigAW3Yx0rmLdSciUmV+3HY/DuvCzp1axY=;
        b=Sbxz2XHd1xPoidfrgn7zJ+IZemDAdJc04ZnxetGcKj69Oh3Ojuo98EZkByKKAt2o9/
         P/vFUnw9qLw6xY1GVDY0Sm9EeRz71SE5ifQbzsxh17gGIKIe/iq19kJueK+n+3w6oYgR
         JPsvq/7G1y9WMkSodaT7Fkp5cpr7DOByn9VJZptlgHkMH7s0KYhCb32VazvAjlAc/JxJ
         df/CA0EyUoRz7T3F/+Os7RCBCSEc7bI+QwWxqGQPdCdzAL3uWjY5FWIknojvFs6AsXB7
         Eo+/tKF2vMszuv0E8ndX3HNwvOu1mR85c1cUyLqw0R5nCph1tgUQ9M+o06yFiBXgqQPj
         H/OA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795038; x=1789399838; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lkzdnHLNDNYqM7UpPRV6i14OmTu1unpa7gOTpfiF2qg=;
        b=eXXRnu6KzW4xTtxlEjCLbDCBuIGIvNWx3BXQoFsIZErVcKbTUAlK+BhKc0aK42I0jC
         4U/5Qp+paousPP1RGEBu2CGzhfLUu6ixfkcGCrFKFRhhCtNt8aXdHlUiBwWCsCrQ5Gnk
         Ck/xGRFyzXGJZMzAu8NVuDj3z0Acsd7Q/YAG8XbMZt5rxLnxBFFqjvZQvOmAXBdL9Jz4
         aBT7fymbQuDDYDQDbeMWEwyWbaYL/hs+ZaV1rTrAe/zV3boDt2HHZ8ljKbwTC98zv3Cs
         jQT6oYAT/p/kDbOvQj7fzagG3Z1tevqtq2dkgtobDo83ffp9a5Q/lFx5CsDeQkWQOicj
         Ij5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795038; x=1789399838;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lkzdnHLNDNYqM7UpPRV6i14OmTu1unpa7gOTpfiF2qg=;
        b=DY+OhLG98HuOJC1rTebZG0CRseBs4xI5T5VO9WF1PSfV8KR3DDVtGUZkMs+nYyVjpl
         rB/8Iuv4hWCooKuW1KY+l9HipKU1sjYOCKOq9W8mh5nTw07ujSxnXIFniZeNAdYjhQsx
         jTYdbkIHz01uus7YrRbsSmAPYkFo1huxI+ObAbDxsYkIY1cfbX0Oq6YiNUkRA1cqC8YF
         GNK0RD9g3nCzgIBsJ7qbGjjHqtnCJRWOirmbIfy9SJhcAg+fOD9wEjK4tmbDp5zgyGHA
         66Yt2J9B9ab0RzVUkcPNtjUwglDHVRH2jA53S//hBTDAI/uFX6t5pG2NVUuZPdTnL87T
         lCjA==
X-Forwarded-Encrypted: i=1; AKwUvBzFpXVhbl4OIWTXb3/4XMCIpZWJTSNMqwDaXV0i97RAtptt4+xdee01fxSLiQYNPdQTNV3/5VRFwG8=@lists.infradead.org
X-Gm-Message-State: AFuF++m+Bf1B+a6AC/kkB42PnqG9V0jeQTSWw6yHbDeQEGkI4VoJxxmz
	YcWNBY3uAzdY+JkBg8iOpROOVOyCamvVD8dWMEzMeFjJMXfswV6P3My1ZCsritcvVQRQQ4mmPuk
	x46ORaPGF4BguEdzbmsV2TmuqWpuaS34=
X-Gm-Gg: AYBFou03cpPnSVDYqROp8VIOWHLGpidwpl5lBK9dROZba9eE3+1EyYCMOr8frf8oTVM
	xTFSUuVZNEbRtz78iRBgqkiGaiJ1dpfc4GRsW3Ef0JWIpZH1j/IsGmuJrAndVbXhwR/Q5eKazyR
	AT9Fx20A8epwTdY2mWC2Ywts1BUyMckfDd8k03tbbkQ5UvOCM8QPDU9YX/+OzlAaWRMizm94C8E
	1QgkUQYqbfL3Ddb3AqXIZTlwvVqKWXHu5MPF8ZAn3pGSfg9OY9N5et+9WOP+8hLwoJPR8hLYY7a
	Gt+4NUUIupI65Rt8eDQa9WZjse6ptMQuJiK+wnDxmqkf/sc81h4brXKhSw==
X-Received: by 2002:a17:907:ea8c:b0:c25:4d9e:bb28 with SMTP id
 a640c23a62f3a-c25efb68285mr1154227766b.3.1788795038010; Mon, 07 Sep 2026
 08:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260901150111.141037-1-coiaprant@gmail.com> <20260905130002.554a167a@kernel.org>
In-Reply-To: <20260905130002.554a167a@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 7 Sep 2026 23:30:26 +0800
X-Gm-Features: AcwNN1Vvl2lnQu7OUmDQrL2TMEu35axYNEauRYInB38b5Eog8jJzDQ2t3ClFiz0
Message-ID: <CALj3r0grty9-s5FoXN-SHOrLkVoWgW+Ot5nHs=1wYzxV3hbC-g@mail.gmail.com>
Subject: Re: [PATCH net-next v3 00/10] net: pcs: add basic support for RK3568 XPCS
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083040_789852_D87C5947 
X-CRM114-Status: GOOD (  10.86  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIg25pel5ZGo5pel
IDA0OjAw5YaZ6YGT77yaCj4KPiBPbiBUdWUsICAxIFNlcCAyMDI2IDIzOjAxOjAwICswODAwIENv
aWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGlzIHNlcmllcyBhZGRzIHByb3BlciBTR01JSSBzdXBwb3J0
IGZvciB0aGUgUm9ja2NoaXAgUkszNTY4IFNvQwo+ID4gdXNpbmcgdGhlIGludGVncmF0ZWQgU3lu
b3BzeXMgRGVzaWduV2FyZSBYUENTLCBhbG9uZyB3aXRoIG5lY2Vzc2FyeQo+ID4gZml4ZXMgYW5k
IHJlZmFjdG9yaW5nIGluIHRoZSBzdG1tYWMgY29yZSBhbmQgWFBDUyBkcml2ZXIuCj4KPiBOb3Qg
c3VyZSBpZiB0aGlzIHdhcyBhbHJlYWR5IHJlcG9ydGVkIGJ1dCBGVFIgdGhpcyBzZXJpZXMKPiBi
cmVha3MgYWxsbW9kY29uZmlnIGJ1aWxkCj4gLS0KPiBwdy1ib3Q6IGNyCgpZZXMsIGl0IHdpbGwg
YmUgcmVzb2x2ZWQgaW4gdG9kYXkgdjQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
