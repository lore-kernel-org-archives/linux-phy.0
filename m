Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DEECC3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 13:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0OxUX04fWtZlC+4q5CASA4cw41qkVjGgl0MwvvQcbY0=; b=u5d7sjeskbUlLi
	S+iRdyy/SPYynRaS/yIGHAjWpyctuvRbDPR0rapYfgEwOSyZnwOKttmN178/CBFJh5URRg5HVCN8q
	U0aVvURkHeJ+9UelPDjbxikVemKxEN2Na7JzfLW33xk3kGhuKDiteITZjcFwQu8V0az/8S6qjeRs7
	S+Rv17EUJvMm1Ys1vtvXJMZaU+pQJa8LirarImGNgKGnKAgcSAq2t17QW+5UE6P5ylCaC36bxEj0z
	PK3nWZhq7f57mbWVa6YMpeGz2ECpm0Y193ENuayaRW9aHPdNLmfRL98mcFBCRzJWw5jUO6QmW01OX
	elg+NCYCRNslGry6rkdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHJi-0000000DIxI-3ZQU;
	Wed, 28 May 2025 13:59:38 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGzx-0000000DGS9-1QpV
	for linux-phy@bombadil.infradead.org;
	Wed, 28 May 2025 13:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Gcx+WlhvWOc4VQ1Qrqwnlw9XmLmnMgNUTYRDj8TgLrA=; b=LZQTnzHkhElR8UOvNnp1i85riE
	lDorFNPut/0KwcJwN/wKecgetWA008otT111QbliJRgXR1T6XoF8TJv4c4YcKylt7O5pE6BVWVirL
	++ZK/KrsukghYjAuumaZ+rwACMzvzJfaNn0njMDlPLoqw9H3zmk5io+tIe5hKVWi3QTADaER0jp4Z
	IMEMhVbmxDuUhMntGdWpFSxvGKAS2Fcf//Z4HOxtoQv0uqD9wmECNjQ5oHrsNKJiakdPmNyLiXRxx
	h6qu/7Boh9pa3ZeogRrb8OfV7GaXGhAsapfqHTXIEj2dXokyK9eBgBsOhoxxYSAyUMy+BL5KLi7jI
	DlBS8qfg==;
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGzu-000000000p3-1EmW
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 13:39:12 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3a3673e12c4so2895486f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 06:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748439544; x=1749044344; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gcx+WlhvWOc4VQ1Qrqwnlw9XmLmnMgNUTYRDj8TgLrA=;
        b=f367DQFQ68Iu9j8I8jtXT66uRiqB03y3Do3nFBG2g7MCrEQqL7ZMl9sybBTsSLrwAn
         xvyb0aAhH98zc2jmKIKSGobY3N0l7xk/Edt2Hy+HJWnJSuQr4slui+I1V4s0IjUR0Vqa
         EXCIiQt8hoIX4VBFOGhkDsWTsQbbQgUMkBkLD8zRvpPsSWkqy1ZbLodPMfbXbuc66U+s
         AaCBrSTB6BWfDMC6Idqh4qIomJYAbw8MCsuCfl+CvY78pW+2qZzf528GtbBqVSdCj6on
         HLML+10qrMYMgN+k3XQBZuHDaNYRneYsXuyo2V7CqUeE+5JQ52xlI2F708GSyVzB+67u
         tF9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748439544; x=1749044344;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gcx+WlhvWOc4VQ1Qrqwnlw9XmLmnMgNUTYRDj8TgLrA=;
        b=UCYJDSe8ErlxDYwkcoJiiVZsyftBUEdJvCj19DQeX/wKQ/G+oq4cq85/4vYI87sMEM
         0IAFln45B9dzpW5sj3QxrgGbbWyFiHJhLEb9hZkWwCxYJxaG+ISkJSAPEYKiMHdegIsj
         g4UIzshIJGJrOS+thQS/VprB9H8zrGaDBH0gJ6hco4y8tzQScFskCqns1XsOW79whSVr
         rTe+0c1qlFn40JkWYusZET4Mg9cegWfsTOOk1J3MPstqSV5VszDniaueiINNtzLy7t+A
         8j5bcjP0koPHm70OyHKBjpPmABGkfA6dnIR5rhmPTX5NkXpfsMk7qO1Y7k7Tw9MWbtR6
         mnFw==
X-Gm-Message-State: AOJu0YwyejFmEjxregBFgV5FO3WjeI+918dssNwmC6520hF1yvUHqJal
	+AtYSjg5Ush7R3pc/hEY0LCAOLjTSyyGa5oXUPkGALJwENr5Yfg2cD/x
X-Gm-Gg: ASbGncuci2tPIpufBQvIZ+Kt51yKCJp+KyNH2jR50iwiHWPVKGzyrL5/raRmZHMpo+/
	zC1aVjUX/iyafTW370RSnc8o+KDFzUvJSZRmWllHM662SIbwXmClDvwanTilYPnZSAcjaPO2XH5
	yC8vs40udK13Uu0tjDNEmFIuN8dTJ6+tl9P9/8kOJ/RiiiEI3cAC1QoP0OZsPO2bNbPuSWaRjJ/
	QpyMpcpb9c/SiU8x88nCp01JTGkyIf6vTenuTRD3hLWjUvSShyHIf+/haxFy700+r0HnOIU86bD
	BeK4gr9vLVABVfBHhpao8YJ8xkXclchXzrgezE4YufEJqEkIunAhZ3sRW5xd7bEUL7/guQKhttz
	k
X-Google-Smtp-Source: AGHT+IGMEQa3lxp2ZRj8eP4aLq9vdjyWpPZAPQ7Y+N8XaT3vap/p8VkDkHt1ioZAELbgXk1At/1pmQ==
X-Received: by 2002:a5d:4448:0:b0:3a4:e673:26cb with SMTP id ffacd0b85a97d-3a4e6732770mr2920173f8f.40.1748439543816;
        Wed, 28 May 2025 06:39:03 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:7078:193c:ccdc:e2f5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450064a133csm22631925e9.11.2025.05.28.06.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 06:39:03 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2N SoC support
Date: Wed, 28 May 2025 14:38:58 +0100
Message-ID: <20250528133858.168582-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_143910_474756_7ADE33A3 
X-CRM114-Status: UNSURE (   9.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document support for the USB2.0 phy found on the Renesas RZ/V2N
(R9A09G056) SoC. The USB2.0 phy is functionally identical to that on the
RZ/V2H(P) SoC, so no driver changes are needed. The existing
`renesas,usb2-phy-r9a09g057` compatible will be used as a fallback
for the RZ/V2N SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 2822dce8d9f4..f45c5f039ae8 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -40,6 +40,10 @@ properties:
               - renesas,usb2-phy-r9a07g054 # RZ/V2L
           - const: renesas,rzg2l-usb2-phy
 
+      - items:
+          - const: renesas,usb2-phy-r9a09g056 # RZ/V2N
+          - const: renesas,usb2-phy-r9a09g057
+
   reg:
     maxItems: 1
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
