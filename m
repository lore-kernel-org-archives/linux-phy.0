Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB33C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAKfg3eAlcrvEX2O38n/d/tkGsZwvLlISKsjG095GJE=; b=i49zqsVcNsllYP
	JzsLkP0h+8CDE/JUV+Sns6u3XnVCRG/mtgPOhLbwKCz5INQYhhf21QYO3VRRMtDWWl60vSvnPlFZ5
	TWxwDiAknw9+IyCtecNHbCwFpqtEqIoNISToe5gKFEqpBD3J+yZI74D8R6+NVfOj9befVGc5BXwiN
	/6LH9qqIZdR9VKYJ8wXjpetR453nIz3TxzXtElHj9ykCcZRShiuFXyJaVQ87WICveotv1TR4H+k2d
	LT6ZFFs25TqWnsA7oxDkjCRaJBp/GKVlk8WMdQFnd3cDBbAevQ6byFNH4BP6R7/cLQV9NAE460UL+
	51BhLPpPinzd2pRipu9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muIKN-005BrX-Sx; Mon, 06 Dec 2021 18:03:03 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIN-005Ahl-BR; Mon, 06 Dec 2021 18:01:01 +0000
Received: by mail-pj1-x1034.google.com with SMTP id gt5so8339596pjb.1;
 Mon, 06 Dec 2021 10:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G8eVTKgQ71scTCdgvnAxinAjRWpK2tMB1hMCFM8SGqY=;
 b=okjDkCxyI/nn21Wnpt4nbTNJYmZ5d3WZ1W9wjxHEwSTr8AVMrzCy+bS4EGFyoC4Wzj
 PZsr8skIoCwWNyVG3rkcOtFpySG6kY6Dud7efUYRww8ujsAtcRT67ifW9PicjTVqsyff
 ibgk3KfUrLzTaWPBWT0BW8iZauquv+0+5X/Euoeo5KvPyXxyRpPNsP1Vsbp+/wSGKFuc
 IrixDjbg20zGjuEGu/DeNpfixI1Yt+bJlynj49tvk5yLCnfhDFpDk9y50IUIWvizAnuD
 1/80sjPAVDcSoyrFJDv7esFff6FbeIU8SpR8jnQgKf61ulLivaxmd80YqDGEAw5lWmR8
 n1Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G8eVTKgQ71scTCdgvnAxinAjRWpK2tMB1hMCFM8SGqY=;
 b=iN8lT5f6xibIbGg8Rj372Uv9ty4qBZPdUdrWnv6ikZaKJnCpnPm2jDnvOf6vBYjDAU
 LE2pn+n4O6Xt589cxPM6zZKn4CvrOoNjSkRkONAnGzV3eA5wS6R1lUVFA1MUrU0dbAsQ
 z2JesGgtBlBo/LvBEmhC5OFGnX0TS2tUT39x4OyOuQ9KmlHbpjoS6I7qACXzcGO6oP4s
 Y2EIGsth+pttDDwNDw6NVNYPyienilV056PRqSjQaP4gdyROsRTPvvblmlGfVHE0Akn4
 ReEDmcoZ0q01rQLKPp1s/je2CuKEgLjcg/tK/NBs0wmqTzj48pGLIUU7JOyJR0sf6zFV
 1faA==
X-Gm-Message-State: AOAM532PfeqmItMmp7fU6dDMe/fRDLcst3o3dSD2yqu10zTUriZE4mi6
 Gsf3X/St/kyfs9nrUHj99nM=
X-Google-Smtp-Source: ABdhPJxRcvSEAMxa/zZAF0moxM14eHcIV7RVRP0bkAR0Z1M1lwu0CF2yEAKcZqA0ICl8+9xvj2tFrw==
X-Received: by 2002:a17:902:c145:b0:142:50c3:c2a with SMTP id
 5-20020a170902c14500b0014250c30c2amr45116624plj.32.1638813655037; 
 Mon, 06 Dec 2021 10:00:55 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.00.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:00:54 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v3 2/8] dt-bindings: net: brcm,
 unimac-mdio: Update maintainers for binding
Date: Mon,  6 Dec 2021 10:00:43 -0800
Message-Id: <20211206180049.2086907-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206180049.2086907-1-f.fainelli@gmail.com>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100059_437097_A3516D99 
X-CRM114-Status: UNSURE (   9.33  )
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

QWRkIERvdWcgYW5kIG15c2VsZiBhcyBtYWludGFpbmVycyBzaW5jZSB0aGlzIGJpbmRpbmcgaXMg
dXNlZCBieSB0aGUKR0VORVQgRXRoZXJuZXQgY29udHJvbGxlciBmb3IgaXRzIGludGVybmFsIE1E
SU8gY29udHJvbGxlci4KClNpZ25lZC1vZmYtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVs
bGlAZ21haWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
YnJjbSx1bmltYWMtbWRpby55YW1sIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
YnJjbSx1bmltYWMtbWRpby55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9icmNtLHVuaW1hYy1tZGlvLnlhbWwKaW5kZXggY2RhNTJmOTgzNDBmLi4wYmU0MjZlZTFl
NDQgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJj
bSx1bmltYWMtbWRpby55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvYnJjbSx1bmltYWMtbWRpby55YW1sCkBAIC03LDYgKzcsOCBAQCAkc2NoZW1hOiBodHRw
Oi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKIHRpdGxlOiBCcm9hZGNv
bSBVbmlNQUMgTURJTyBidXMgY29udHJvbGxlcgogCiBtYWludGFpbmVyczoKKyAgLSBEb3VnIEJl
cmdlciA8b3BlbmRtYkBnbWFpbC5jb20+CisgIC0gRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxs
aUBnbWFpbC5jb20+CiAgIC0gUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgogCiBh
bGxPZjoKLS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
