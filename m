Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ED19C369B4
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 15:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMr6OH0B/JwNjxtcsQfpPFy72UXupkQCwrL4kfRbAn0=; b=pUVW099K7qqHjI
	daTMkz8Nci5MzpQ8qjuSgLxY+Hk53I2huFp4HjjW9VnmLSoYo9cku+rCmUjm0kp2Nrhp75Cr0JL0R
	lIS3zC0UlmhyxwQMt9phrZIXB1CyM9sz5lSovFzOQroq+oawDhk1ZrP9JHkEVHkuiliEs1hmw6OEx
	HiE4EF8QnYbKW34XQL32XauaHdsZ55x5Avl07rTiq/bi9p6/s8G/nRCa6rfkpxGdmwuaxc3L3OoGI
	wIPqHEu/3vi3zxJ+tYoXNNcNn5WIfJbQvf3D2QclotKRfHE8+rJYyhZMgeFjEE21xHgImdZEFNsuY
	FdAbcYP0v15cBPMuHgJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LR0-00000002Ynq-0Y4Z;
	Mon, 14 Apr 2025 15:09:18 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LGB-00000002W7D-2J4a
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 14:58:08 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-43d04ea9d9aso22134155e9.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 07:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744642686; x=1745247486; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h3SQi5bbVq7b0/N9UTMk42Mwa8HLJXYUGZ8y/oALcAE=;
        b=mF9faefK9w6T+u9V9zVLK9MOz1d3fIcNubJwbD7xN9IRyp0HDV02MtGZOjYvYcT1rg
         wte5eZBaPACsQgXrE/21XKVNMVlQXqDqnfL82z1Wptvgpkw08aokdaloTMBMnGvjVFhO
         QM4xW8oi1/q1yUuOnxYqV7GYcqte17gkWpPJws8CvDlm4JsZ4av8dDGZKVWB5guNaHGr
         /1jzRsdPl+SpkdQ7bMFQkARvkvVy0pZqU5/X6Nha+odRBYWA2Rwx7G5irY4pnjFk2xzN
         uQS3QCjM7EjIsN8TULsJrKbSokVF6UdEQ4r4+8ZaLo4Uoo9cESw/hQZ4p2eM4k8lSXZX
         /5rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744642686; x=1745247486;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3SQi5bbVq7b0/N9UTMk42Mwa8HLJXYUGZ8y/oALcAE=;
        b=VLIMehsN/HY9QFIAkFxkeKQVmitvVAa/MxQ0q1Tl7AxSJE1BQEhNR/bNr+IXipwRL5
         qKAxsWpX4pQ9V+cfitKqGAh2IYSlLXwIgfrcz9jk/FuB+/2noIogjnM7nnvMUKZwaFuo
         MwKeqDRQVMu5uP71GUgJkAZzdK1YZnFs8QXyzypC64UUYn3+Hn2UqArzqoiEJ2Htzeik
         tkIh+xRfk7Cw2ZMiuowKsy9Mbnpx28izGvl6q51yrLArQP4PBZrX4O3nyHmkyisjiuH6
         x4MDjJXJf3fzOXvWYnmJmApq8GfiG8OzTRbn9uqWETV5b6RxUR+6XaCyRmhT+PKD3v+i
         T0dQ==
X-Gm-Message-State: AOJu0YzGrOOy8iQGR1eiM1y2D3VTK9dZNDH21Dm0b4DN905LFECLvV7A
	idvaDwy0pLD+QSjCP1ktSvbavHdPAuZaIk0VstFC91oYzsvKG4Wl
X-Gm-Gg: ASbGncuXq8MLgaH1l2xYc0WTqjq1WsPRWk58oEtd3qFn4hrBIKncIW/ZUvbcvioCcqj
	7pcXTugzuvD5VwsH2aW7H0OFbQjBdY6Kuw+QCKBNlEaHSR7em11zwDVvaYHr21wMHe4dEKmhl2T
	CROX6sfzSCPsUYeTQFLsgK6LzSB0vfj/3CYtwgKNIyuTiEUcGc0pP1cNoYi7pGczb+2BxOKwyvi
	nFmfuiF27fu+xwk7GI1mQliCrGoNPxXxO+ZeSRlRYUf0QKF+9o5/WTJeVY10WzCvSfAWh8hlcfL
	GVNj1W5AaL+gE2yghaTY03owcfj87Aca0PGiVhwd/Ht69ggCfGS4YVY15GHSqnis
X-Google-Smtp-Source: AGHT+IEDsZPPhDuruTrdFcyXN9YqZckypb/C2JUNrPicgL2MaB2YrYVbt8z7U7orWDYJVrRxUv2rSw==
X-Received: by 2002:a05:6000:2d09:b0:39e:cbca:7161 with SMTP id ffacd0b85a97d-39ecbca727amr5436112f8f.10.1744642685419;
        Mon, 14 Apr 2025 07:58:05 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:eb55:397c:6c6:e937])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96bdf9sm11067041f8f.22.2025.04.14.07.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 07:58:04 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/4] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2H(P) SoC
Date: Mon, 14 Apr 2025 15:57:27 +0100
Message-ID: <20250414145729.343133-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_075807_595837_9D41E39E 
X-CRM114-Status: GOOD (  11.29  )
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

Document USB2.0 phy bindings for RZ/V2H(P) ("R9A09gG57") SoC.

RZ/V2H(P) USB2.0 phy is similar to one found on the RZ/G2L SoC, but it
needs additional configuration to be done as compared RZ/G2L USB2.0 phy.
To handle this difference a SoC specific compat string is added for
RZ/V2H(P) SoC.

Like the RZ/G2L SoC, the RZ/V2H(P) USB2.0 PHY requires the `resets`
property and has two clocks.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index f8d15f239b18..2822dce8d9f4 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - renesas,usb2-phy-r8a77470  # RZ/G1C
               - renesas,usb2-phy-r9a08g045 # RZ/G3S
+              - renesas,usb2-phy-r9a09g057 # RZ/V2H(P)
 
       - items:
           - enum:
@@ -105,7 +106,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: renesas,rzg2l-usb2-phy
+            enum:
+              - renesas,usb2-phy-r9a09g057
+              - renesas,rzg2l-usb2-phy
     then:
       properties:
         clocks:
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
