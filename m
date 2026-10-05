Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BAA4CA5FF5
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 21:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r12MQDiYXa1Rlx+MhzdfReVjK0j6s5kaOX6OyaOb+aU=; b=gc4q9sr1eIYgMG
	Acyhi2iztocDx47ywZ6+ur8tMLyW2Cg7AJUTJJKEaCgmVpNLhDynAJCkz5PPQJWDt+cA2LumTY9uk
	xOoLyHDa74Gvs/2omePXuA7ABO7SPelxtLRXp1FTsKZL8H18ARMOLMYTRXXwB95+tsUdW74xMhDK6
	pKSs9n3KAjuVcYot+AngwEw8Nk0bhLSsLKbzVLpnV8DolY94MN4gbThm/t0IXoRbC25enX3q81CWO
	Yk5rgIvsbxJtV6WWJASxKtUjDlo6BQMnbIyfrOVJ0SAq0rhJaSX7cYffFoymQn5mEgRqeRQvCeddb
	bqKqD1eDgGsBtNRfUD3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq0d-0000000HBHI-0Sdi;
	Mon, 05 Oct 2026 21:14:07 +0000
Received: from mail-ej2-x00.google.com ([2a00:1450:4864:34::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq0Z-0000000HBFh-3Xyz
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 21:14:05 +0000
Received: by mail-ej2-x00.google.com with SMTP id a640c23a62f3a-c1971f5efc3so132993466b.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 14:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791234840; cv=none;
        d=google.com; s=arc-20260327;
        b=pRr/HeY6xK6mR17gAkMgmh9YsgRAtGS/5hZr9Rqu3VzTqnchP0pwG6YsdVonoX3ZwM
         QsftP5wwod3QQSkomUtQ6KIvknv0OYR7vrLlACwo7mZ/NKjcsRnAJhNypPAyHdcfVv0S
         mNMRtd4m/epHh8Ip24fs5WB8wia5i9UzQocYL+RCO+fdR3fEp9LAzkTvZX6X//LX2Siq
         bgM9oJG49DtIzwAr9xBT7yqXSDwp+EOnSP8HShXzgBPI7fb6ASQW5Axc6qH8Z8ZM1A5k
         lCLY37rQOMEwEWfndHd9hB7f6sqwUTHJSJDGUJf8TCAMJi/KnU3xYxTzJ+vNKU7lsmOU
         LqMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Jg+48cepgWrDgUNaKNya1rXBAe0v3PkEajJvFhN8l1Q=;
        fh=GsUokEehDCTcHVr/wByajDY/H/MRuumz1JqYAdIqDZI=;
        b=FaI6FaNsnm7YobYCYHVFOLdLmeC4+eHdCw/ydLpUP1Q00QGt2z3fuaKOmj8kCtDIBo
         nJ5Ztujka16MC/6Kqo4z6pNABFf1kIX9uOOh90lmWdjR4BuwGgNDAONcrx1zVdSXIEQO
         W2bibt2RxAkI+WWMUqeNDKijL2kDRrJfM/iqkiSrJhktFAfOWrVh8rlk9LngD9Dy7CQM
         HUIJnVwHHnZQQNs21l/sDxIPT74U/jggLGkbF5UD/gFjDnEuSuhPFaKp0BKo1yodq/eT
         BAbnXL7d63MoyGcz5nAiD/unKxaysz59PK25jmrBNTtk185Sy5eFnoC9UdfCb9QwPGR1
         XUUg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791234840; x=1791839640; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Jg+48cepgWrDgUNaKNya1rXBAe0v3PkEajJvFhN8l1Q=;
        b=VNE2HbwRFa7XmXYFCM4W7tQiz8w+wvhB0UyLbgVLvgM97qPYAu+jEDwWCjxWQsty+M
         7fe16B0iYotz+HMQx0unZ3OO5yibfnx6aPSF+RhQDo1zTl6kcquyOvX/Gop50riDq52S
         heGQpqumLQ0/ticjejHchgboXY6/12Wjl9VM0TVoLWsITVKjYZjHc+VuILr5hcnq/Tja
         HpbEVdKV5TmAKw2t1noGPKdnI2vRXdYe64DNcwXl9cPnBDCod4Wj6sT31h2DCmJ5ikKy
         vFsxGLLVvttV5WwFtJAaOwIYhT46Y6AkMSDZ7Zpi7k3au0aIEKhhyRHxcyN2Aa9e+tOs
         d+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791234840; x=1791839640;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Jg+48cepgWrDgUNaKNya1rXBAe0v3PkEajJvFhN8l1Q=;
        b=asRQ2CNLFDlH2tiH4XO8DSIvrRpnqOpiEABg68zaKfB3oxShKSnORcF1QUy0mQ6m2i
         GGdDKzozJu/3qdJ64IcAN/EsP++dTk/AH41CdU/jDAHSENy1JedI7EzVGMl+w7tZj7ES
         DkGhwU6QOv33td000BgW1P5qFKF5soB4T/vY/EhYrbceVeXGROwyXawNqYHa5JCKhbfP
         WzI8d/GZ9mTmlYoiNXGKLyf8tZiyT2qKTHk+NuRkUlWnBtg0/QZuHGwUO4ZwTDM78paC
         y0iRxF6ypRvxd8PUYpIcIZ+kO46A+k1gDEaALX6f8x6J5YRPrGeCBFvupObwc21roRx4
         lqrA==
X-Forwarded-Encrypted: i=1; AKwUvByogxju8Nl1L+sPSa4q0d0facVgyjEgG2Agsey/70luczqX7Gga3W439bqMZ80vrVO7wYIczGqFsy8=@lists.infradead.org
X-Gm-Message-State: AFuF++npjTYqeIYu5DPXd5sJza9iKNfWpFybbE2kSwiFjIM7sKBFdkf/
	Af4szaB9xY8lQmAAU+akLgeSgX5X5zdWlzPvDzWM2ViiRgwS3EOurLOEB9Rar3evjP5SW0Ww+2o
	bur7BPwdeDMS79bA65okIVoT9Z2QtHzo=
X-Gm-Gg: AYBFou1c0iNUkbjF92BgeR+OfYEwpy8VGBTG4pRO8SUlmJJioooC0KlZybz1zeSTJs6
	RVraeF5iH02JMwqRDMgfEdDe6aj3m1AJqa8rsnC+uMJ3r7alOKSk2jLLK6brzC/QwRexeazJ717
	EMfVh/sPUmzu9fsi32Tku7Zab213xmgfTr3D/AccY8i+lHaZkQqCb7HDDqA8eQf0aWuBfN2YnPV
	IJlfsjNgAYR747xVPdv5tVDTmhUcY1yGWW2b16KiCl16t4SFyYCnzGcOE+Kg2DvkdzrKRnplM0o
	mLQwiPRitHmM7XMBkLBpO3PJ1HyX6R469kq8xLe8r+7co73ZNV7uUdbh9w==
X-Received: by 2002:a17:907:940e:b0:c29:62d8:68af with SMTP id
 a640c23a62f3a-c2e4b2bc542mr1047723566b.47.1791234840255; Mon, 05 Oct 2026
 14:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20261005135833.37376f20@kernel.org>
In-Reply-To: <20261005135833.37376f20@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 05:13:49 +0800
X-Gm-Features: AclHuK96Q0r6tDkOyMFxRRlJTRgYT5CZFZq3doTRuVETMpVpnBIKbah20Qfa8QQ
Message-ID: <CALj3r0jgyhtmwSR03nZm4UJZ7dw6Y16X9N6-ASq9puY40zeBfA@mail.gmail.com>
Subject: Re: [PATCH net-next v10 00/11] net: pcs: add basic support for RK3568 XPCS
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
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_141403_885825_5492CB3D 
X-CRM114-Status: GOOD (  12.71  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAwNDo1OOWGmemBk++8mgo+Cj4gT24gV2VkLCAyMyBTZXAgMjAyNiAwNDowMzoyNCArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBwcm9wZXIgU0dNSUkgc3VwcG9y
dCBmb3IgdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MKPiA+IHVzaW5nIHRoZSBpbnRlZ3JhdGVkIFN5
bm9wc3lzIERlc2lnbldhcmUgWFBDUywgYWxvbmcgd2l0aCBuZWNlc3NhcnkKPiA+IGZpeGVzIGFu
ZCByZWZhY3RvcmluZyBpbiB0aGUgc3RtbWFjIGNvcmUgYW5kIFhQQ1MgZHJpdmVyLgo+Cj4gU29t
ZW9uZSBtYXJrZWQgdGhpcyBhcyBjaGFuZ2VzIHJlcXVlc3RlZC4gTm90IHN1cmUgd2hvIGFuZCB3
aHkuCj4gSSB3YXMgd2FpdGluZyBmb3IgYW4gYWNrIGZyb20gRFQgbWFpbnRhaW5lcnMuCj4gSWYg
aXQgd2Fzbid0IHlvdSwgZWl0aGVyLCBtYXliZSByZXBvc3QgdG8gcmUtcXVldWUgdGhpcyBmb3Ig
cmV2aWV3PwoKSGkgSmFrdWIsCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpSZWdhcmRpbmcgdGhl
ICJjaGFuZ2VzIHJlcXVlc3RlZCIgc3RhdGU6IEknbSBub3Qgc3VyZSB3aG8gc2V0IGl0LCBhbmQg
SQpjb3VsZG4ndCBmaW5kIGFueSBzcGVjaWZpYyByZXZpZXcgY29tbWVudCBleHBsYWluaW5nIGl0
LiBJZiBpdCB3YXMKYWNjaWRlbnRhbCwgSSdtIGhhcHB5IHRvIHJlcG9zdCB0aGUgc2VyaWVzIHRv
IHJlLXF1ZXVlIGl0IGZvciByZXZpZXcuClBsZWFzZSBsZXQgbWUga25vdyBpZiBhIHJlcG9zdCBp
cyB3aGF0IHlvdSdkIHByZWZlci4KCi0gQ29pYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
