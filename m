Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1318C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 17:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAKfg3eAlcrvEX2O38n/d/tkGsZwvLlISKsjG095GJE=; b=lKaySEPJkf5w+f
	n/gM8EoFgtpxf03g/TdXwYheHjlidnh2e29zybWNigHFAV7TPSTwHHczRLZXWNTRIWbxf4vVMETv9
	PwvWrA6w1n27+LlI/TihtCnWpXyUtP3+wKWPTum0TSV27+MgXFHdkMaR1X2kaKgnL7p0jRcxOWPZk
	rMWdzHJDF4aNwNV9VlI5lr3NEIpkR9U4JLZuHuLi+9DguaGhpTVB09+uEI8c6tb0j5WYfjwnjM8RS
	/Xa8leIOs2J85tAp608dw0XtbCwtT26N6Gy+mW20j+KRQOAhwD7rBmPNgXRB8P/jCP+Z+20Kyovok
	wV9kqpLjbrw/tBo6TXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTre-009dg9-De; Wed, 01 Dec 2021 17:57:54 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqq-009dL5-Vc; Wed, 01 Dec 2021 17:57:06 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 gf14-20020a17090ac7ce00b001a7a2a0b5c3so332543pjb.5; 
 Wed, 01 Dec 2021 09:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G8eVTKgQ71scTCdgvnAxinAjRWpK2tMB1hMCFM8SGqY=;
 b=TJLygwWmFT3NFxoArSaSrPF6hLheab0+03eo//cCfOFTrQ8w3Iwp32rQWcfu7DY/yj
 EiRlmHgya2RcZw1wSLELTvVT4Ra36K07EkrClGoMAS1tujMvDS1FjnbfeWw6CDFjjE3F
 riWoM//EDGe2YtumDOJX9b7oLSahBs2oTauJdupYwAfg6DtI4j8lCNOWSJS28Y6ukxbN
 r81aj/A0AIGWZJXcHMTNi+xDtjJ59NoqQ8vkZ2xSA0Y0D8xjI+goBiECqKLsf0yOurBA
 dE575IYVPMV0ofy7z8qjzibFDA8yej9rF8I3ZxYGDxNySr1p0i6zqDjmnl2fDCORxaoK
 EAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G8eVTKgQ71scTCdgvnAxinAjRWpK2tMB1hMCFM8SGqY=;
 b=63wEPIuAN0l8rTfQqi5ag8fAeZE+huujI780mEKXaHB3ShSIpSSvSng8N6g1NZqABV
 kefx1cfZSdMaywR/2pzdWBzf5FCFrRWfCXo5YGxpPCjjDlryex7P1jeaQuHy0NDh/5bZ
 Iw6dQAryHUa0hI73LRa96FjSGvUsdT+IVS/7nuiZORk8UqXaZuZ5ORwRtSRv9iRs/fTM
 1ene9LE4V/1uEOapHvc8jfZIhkrYnMyOWOANgJCyGS0V8RMFwro6nSqNpio7UyMxMhTF
 6nTkmMiboeZhqYgVrSTqX9Ninq5uTWWH5v+0XyB7MWigT32JbK4uw6+83RZZ20IJksnn
 jn/w==
X-Gm-Message-State: AOAM533oER6kD0H6hS+CtvUBfgxshOaG5xCX3hlC6FwEOz6Hy8ovXiey
 i/7sfBACYN02LyROT4JclshUFVfoORE=
X-Google-Smtp-Source: ABdhPJw4UuaplVy3jWIzuUmvxoeX1tlKubQUfKWev2QarbPvf2tzDlr7vy4BsUp3eOod9oJVmG6kfw==
X-Received: by 2002:a17:90b:4f44:: with SMTP id
 pj4mr9540173pjb.150.1638381423834; 
 Wed, 01 Dec 2021 09:57:03 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.57.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:57:03 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH net-next v2 3/9] dt-bindings: net: brcm,
 unimac-mdio: Update maintainers for binding
Date: Wed,  1 Dec 2021 09:56:46 -0800
Message-Id: <20211201175652.4722-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201175652.4722-1-f.fainelli@gmail.com>
References: <20211201175652.4722-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095705_051870_78AFACE2 
X-CRM114-Status: GOOD (  10.08  )
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
