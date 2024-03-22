Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A9DC47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 16:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmM2e3xCWy2kLkeGsghdSW096JCS2gaxQv18KlKXGDY=; b=rER3PCX4SDZelY
	A5kNLZHhi8HmiMJeFDF+GRZ7GDlC2iyFswQUNg7t41EBEowxWNV2hzEU4a4OTLjqaPAFMjDGB4agE
	x+4mNqQVtiuOFK7pwfiNaEMW8563N+3WobMK5cU6QmgqMEx9HKGhC447mWPfQgIAumcJUCeNSa6Hk
	EI8b+HO63QEfPVB6aHvFlDYGP4sUVBrBgKnOWc/o+mucPDdCSXPbWMrpQ3DzhRKv7Qeu6uRwf7O9T
	KfJA3jjW2hWbGD4t/lVBuiiBHBvdFK4BTJc+58wE+sY1hXuEDUUJ2N8BPrLgL17CxT0UKjzOqQFBl
	ODqE6N2kjhFNjJl4W+Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnhlk-00000007xHY-3SNg;
	Fri, 22 Mar 2024 16:29:24 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnhlh-00000007xGs-2rr6;
	Fri, 22 Mar 2024 16:29:23 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-29f8ae4eae5so378115a91.0;
        Fri, 22 Mar 2024 09:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711124958; x=1711729758; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NeAqeTVeviIxXnXomn14RmAblPjhwq1FWPD7pUA+ghI=;
        b=a3X3oK3NrzGJcSsIGfJMupr9aVlXQdjKD7nPiIj8Y/2kH4iWLxI7N/oDLBvmMxFHm7
         GT+szcWi8UYNJUt+LLDOLAfIHL7Qapvs7pf/aagLb1fhr8nd9Z+NUPBI+aKxMdyNFAVJ
         C+WPXimwGMQS3kcmev8HKcmIsml7jw3NM3qHR0fCKdaZEiAuM1tBVtEbLCwLtLkK0nun
         cMuyz40tm8thS4puttRkkMQ67AZpnMfrDseYRBvCcEvKPzepmU6j60TxZajal64lUclR
         FGZUwC/HT/FEGmvNrbv+4A7/e9EHyqGEsMrZ2pdgoZ1LXXd3dF7ozlD8GIHnjYhwdqmI
         zJUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711124958; x=1711729758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NeAqeTVeviIxXnXomn14RmAblPjhwq1FWPD7pUA+ghI=;
        b=vJDp6vv7u/CG+PoBScSzqabWvvUYp7gtIsZIkleRzLEGdnQQFSGQBd0nKH5Sgs72Ft
         IExKB5V3XWzzEHT+EnaNgPBtkuV5tQrBXjFc+FT4xvjURgV+8NkpQG/nK0UXbdcbcggl
         E59wEn0+TkjgyAn1xsDFe7Yn0jdicavPriCNG0BTp9v/54KnXjloUuabDODCql04uZQq
         +ZLU6mQJqab4LFd+PLhzcCmIdOWttKC5T4sdqq1cnpOej831reS9L3rXF99zy+bs2K9z
         MOoKTkU9ri5t2k08SrXGyQa0d+7klZHZgu85FrjA8Ry1Bt/XgfdlU5Y2fQo5pinp8uCg
         bc4A==
X-Forwarded-Encrypted: i=1; AJvYcCWBkRk3kIOVztaJ4jEWeeJiRwwVtgCa6E5NKGNmUj5goq0PJbT1dloIkKDCgaaFgo9qfxw+tak52w670Qn/UZtVdAA60fAbYW0v+kp96puW8HhA2Tg=
X-Gm-Message-State: AOJu0Yxcjz1xoImoxdJb/WIL9+13RW74ppP7SkWeC3wradwUYZLOrl7J
	smV2rHYbMIhUl9Uj4J8BR4FLGSsED67m56P5RBwR2R7imaCwXsREaTMF4GF1kitpOII9jLyJPvA
	Od+AiLmmNVGMbgm1KcvHkquqdjTc=
X-Google-Smtp-Source: AGHT+IFjaOeAw9XGYO7zNRizWZ0C8XANLVydJhzwF7Py8oqF8bVQ/2sMI4hkhGm8mTPw1JtDipQd8lCaIGqro0z4hnM=
X-Received: by 2002:a17:90a:b395:b0:2a0:350a:a7a8 with SMTP id
 e21-20020a17090ab39500b002a0350aa7a8mr123918pjr.2.1711124958335; Fri, 22 Mar
 2024 09:29:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240322130646.1016630-1-marcel@ziswiler.com>
In-Reply-To: <20240322130646.1016630-1-marcel@ziswiler.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 22 Mar 2024 13:29:05 -0300
Message-ID: <CAOMZO5ANM-ze3=ZG33ZgO+=4V_z5QJhqherB_d7WSe33sVB21w@mail.gmail.com>
Subject: Re: [PATCH v1 0/1] phy: freescale: imx8m-pcie: facing pcie link-up instability
To: Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, 
	Lucas Stach <l.stach@pengutronix.de>, linux-arm-kernel@lists.infradead.org, 
	kernel@pengutronix.de, Richard Zhu <hongxing.zhu@nxp.com>, linux-kernel@vger.kernel.org, 
	Marcel Ziswiler <marcel.ziswiler@toradex.com>, Heiko Stuebner <heiko@sntech.de>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Tim Harvey <tharvey@gateworks.com>, Vinod Koul <vkoul@kernel.org>, 
	Yang Li <yang.lee@linux.alibaba.com>, imx@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_092921_741355_8F844E16 
X-CRM114-Status: GOOD (  16.16  )
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

SGkgTWFyY2VsLAoKT24gRnJpLCBNYXIgMjIsIDIwMjQgYXQgMTA6MDfigK9BTSBNYXJjZWwgWmlz
d2lsZXIgPG1hcmNlbEB6aXN3aWxlci5jb20+IHdyb3RlOgo+Cj4gRnJvbTogTWFyY2VsIFppc3dp
bGVyIDxtYXJjZWwuemlzd2lsZXJAdG9yYWRleC5jb20+Cj4KPgo+IEluIG91ciBhdXRvbWF0ZWQg
dGVzdGluZyBzZXR1cCwgd2UgdXNlIERlbG9jayBNaW5pLVBDSWUgU0FUQSBjYXJkcyBbMV0uCj4g
V2hpbGUgdGhpcyBzZXR1cCBoYXMgcHJvdmVuIHZlcnkgc3RhYmxlIG92ZXJhbGwgd2Ugbm90aWNl
ZCB1cHN0cmVhbSBvbgo+IHRoZSBpLk1YOE0gTWluaSBmYWlscyBxdWl0ZSByZWd1bGFybHkgKGFi
b3V0IDUwLzUwKSB0byBicmluZyB1cCB0aGUgUENJZQo+IGxpbmsgd2hpbGUgd2l0aCBOWFAncyBk
b3duc3RyZWFtIEJTUCA1LjE1LjcxXzIuMi4yIGl0IGFsd2F5cyB3b3Jrcy4gQXMKPiB0aGF0IG9s
ZCBkb3duc3RyZWFtIHN0dWZmIHdhcyBxdWl0ZSBkaWZmZXJlbnQsIEkgZmlyc3QgYWxzbyB0cmll
ZCBOWFAncwo+IGxhdGVzdCBkb3duc3RyZWFtIEJTUCA2LjEuNTVfMi4yLjAgd2hpY2ggZnJvbSBh
IFBDSWUgcG9pbnQgb2YgdmlldyBpcwo+IGZhaXJseSB2YW5pbGxhLCBob3dldmVyLCBhbHNvIHRo
ZXJlIHRoZSBQQ0llIGxpbmstdXAgd2FzIG5vdCBzdGFibGUuCj4gQ29tcGFyaW5nIGFuZCBkZWJ1
Z2dpbmcgSSBub3RpY2VkIHRoYXQgdXBzdHJlYW0gZXhwbGljaXRseSBjb25maWd1cmVzCj4gdGhl
IEFVWF9QTExfUkVGQ0xLX1NFTCB0byBJX1BMTF9SRUZDTEtfRlJPTV9TWVNQTEwgd2hpbGUgd29y
a2luZwo+IGRvd25zdHJlYW0gWzJdIGxlYXZpbmcgaXQgYXQgcmVzZXQgZGVmYXVsdHMgb2YgQVVY
X0lOIChQTEwgY2xvY2spLgo+IFVuZm9ydHVuYXRlbHksIHRoZSBUUk0gZG9lcyBub3QgbWVudGlv
biBhbnkgZnVydGhlciBkZXRhaWxzIGFib3V0IHRoaXMKPiByZWdpc3RlciAoYm90aCBmb3IgdGhl
IGkuTVggOE0gTWluaSBhcyB3ZWxsIGFzIHRoZSBQbHVzKS4gTWF5YmUgc29tZWJvZHkKPiBmcm9t
IE5YUCBjb3VsZCBmdXJ0aGVyIGNvbW1lbnQgb24gdGhpcz8KPgo+IEJUVzogT24gdGhlIGkuTVgg
OE0gUGx1cyB3ZSBoYXZlIG5vdCBzZWVuIGFueSBpc3N1ZXMgd2l0aCBQQ0llIHdpdGggdGhlCj4g
ZXhhY3Qgc2FtZSBzZXR1cCB3aGljaCBpcyB3aHkgSSBsZWZ0IGl0IHVuY2hhbmdlZC4KPgo+IFsx
XSBodHRwczovL3d3dy5kZWxvY2suY29tL3Byb2R1a3QvOTUyMzMvbWVya21hbGUuaHRtbAo+IFsy
XSBodHRwczovL2dpdGh1Yi5jb20vbnhwLWlteC9saW51eC1pbXgvYmxvYi9sZi01LjE1LjcxLTIu
Mi4wL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1pbXg2LmMjTDE1NDgKClRoZSBkZXRh
aWxlZCBpbmZvcm1hdGlvbiBhYm92ZSBpcyBpbXBvcnRhbnQuIEl0IHNob3VsZCBiZSBpbiB0aGUK
Y29tbWl0IGxvZyBvZiB0aGUgcGF0Y2ggSU1ITy4KClRoYW5rcyBmb3IgdGhlIGZpeC4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
