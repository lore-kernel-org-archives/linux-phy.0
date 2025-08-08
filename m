Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A889AC87FD3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 07:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rT+Py0zt3tqPacwzDaL2qMzsZzTgGGRPkd6oTNc7XS0=; b=DDfUC9z/7pPOov
	dst/8Rh/G6mZITkL9egX0xuFzSvwymT3/ncFeHHTwwNyLiIcVPzisOTBMWRndt80hG3tR1488D2/P
	Bl0ybzsnKhDupE1fwUXHfw/DqZ4UEnrCG8Xbik5bENTcXBv3+myR/EHe/OKgZMNPODtUJRGztDPo9
	84voAE7wLeOt6+RVa4hZen8mUav/3mv/VDwiKz7AhbAO40XVcuhP8lpO+w++uE5umwHT4AHjfxRyp
	b7Japo7hwzDqboTj1+YbmrLPqR6/UKEjeHY9odU1vpLt7N88bi/b3y1wDv2qZHMdVuiqG4T6HWM1d
	jsN1IrbtwShAt3sD3oSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHYF-00000002C85-1snX;
	Fri, 08 Aug 2025 07:30:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQw-000000025XL-0voU
	for linux-phy@bombadil.infradead.org;
	Fri, 08 Aug 2025 06:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Fhbtdj94kG4NkUv432zTOJ/Zv8zWX0enR1AW1GYhXCI=; b=hscQaf1RZbfALIGBgzHjUtTlD9
	8bxYaqQmL+NIRUGPtz3/VUn04aD3Kz3JiXouff/REQGS9qmT5mcp/zDS5/gUCX5jh2Ec87Lz2uyDL
	usH2pLyrE8gG3DgpwR4+yZF2opQTo4oquSKBwdo6gfYk/ZKaxzn7PhhJVMEqJB5djvFngR+pWk6g7
	G4akPNQXH9Ed+s8IdggRDGhgSmHYHlFK+lE7lkE59kjohvsLJwQQ/oFDnw+dOJmZP7ragqf2SCKza
	rk4HEzhtFArVFVb+G6tHoGyNwMxHA6jXmDUz/Om3HX/x7lm+ojpNXTmKcDgJRsRA8/kjQ9TCJXTEr
	toJJVNAA==;
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQt-0000000EmBr-1Aae
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 06:18:29 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-af66f444488so263286966b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 23:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633905; x=1755238705; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fhbtdj94kG4NkUv432zTOJ/Zv8zWX0enR1AW1GYhXCI=;
        b=i7Hc7ZIoaEDTYUMgbytuSPnPHGL25rgvutxfOq/QEMm2dEnlj04Qk3vbg8raFL3iaZ
         toeFWhyYoB8r5KdZ1lkgZJ2eR2P9EU6xPs1Yz1tpHA+XqHVJsrT43f2xCb5l0LRDgl5W
         2ouZJ/d89G/XI7u24ATphm6yLt188r0l6mXQQd2T0jg67BcTpIdora6tAL5JIUdYG/5p
         afLQaETPU/1bN7dlzLGmgiGsVbyBi43MLoWvlDWr9sNHNqwjmFYz9oX6Ddh1adpYeuMT
         ON/r2eLGVwp8kyyvnMuMlM8eTAjhQ/snuG8+ItVRxdxW2X7LlX0ZdUaJh1dMMmZ84ZzO
         gkmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633905; x=1755238705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fhbtdj94kG4NkUv432zTOJ/Zv8zWX0enR1AW1GYhXCI=;
        b=Dz7UlV+acv2FIJC2xZtEo6swBYSzC656dcjGfmhtp7x9xZYmw761P91svEDtV3Me9Z
         BYXxPfglRfzOZYT+yyQeDyHqaXxblqNTBSGHLHnWyrDMOoGcpwueMAaQRvbINBAz7xh2
         6hnpoCP7qoYa2bCJZfzFfdiUs9KoUfqjYmih8u7J86epiO+9/LPO2wVYpMTC0I0NBO54
         BRW9S71oqZao2wXswv9SMUD6hGAsm8vu8GmZN0DS7UxEK6DX9adyj9a9ydDqPsAuHlep
         Lnvt/CTVmu4kQVyjqpHuFCnnESzN8wMGB551C4c2GZC023XFbxcq1Emm+cIZQnQO4xF7
         1grQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUJXtxjj/oo+YEP/lj6XSJosbZFifGgS6MDyrdF7OmcJX7blShfMBbC7NH2fkUm5rBtLRhDHhMcyw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyaEpLoC5Xr6RopaBSJes4ejLo8SeYVYV/Yay2/DXiweqT5FoFD
	2q4z69F0yyOhClfc41ejn6lyU/UBSACx3pyS/4IlR26Wk7molfzqe7Wz5otm7dKEb/M=
X-Gm-Gg: ASbGncvDWOw96FJOg3RrJTzYv4norOHEyXGAc2yQ74jLYwfqqi51xMPkvz23/TKefdl
	8vmmffxc14SY81v2KkM/7mumy4SqadEjyqHYReuCjNXgFb0Z6LsV+5O0JozuoBFHptGFsZAFap8
	VmWb8NmBejSsjN40u/tbqk52kwSiyZ4/o1EavnofDVTEcVHJKcGICAiwOPhWp7uzRujj+XI61ML
	EhFI6XACgezOiZEoRu0Anms390ttYbu+9rsRH2BugyV1P5ZoHTR6OggMclw1E93ERCmgMpp8ugz
	vnuTwe/Ma/4PlLf+Dz6+U1tnBgO8DWWaiV7tEK1STvYmb5Q9RA8j0xdkLWf1h4fC0HLxbqjrUey
	D1iZPN84xQSegCOv10rDQ6arWTjfFWjuX7KIbo7bDNthIGT/buWuX
X-Google-Smtp-Source: AGHT+IHjyrVfPv/9Ic5LGXUUAuL+aPH600lqb/NKnTolyX4B+YeUK5CzWrXMgb4RJiQ3RI7UIsodxQ==
X-Received: by 2002:a17:907:e8d:b0:af9:a53a:6b38 with SMTP id a640c23a62f3a-af9c63d4439mr171415866b.20.1754633905418;
        Thu, 07 Aug 2025 23:18:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:24 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/8] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Fri,  8 Aug 2025 09:18:00 +0300
Message-ID: <20250808061806.2729274-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_071827_539980_9C10A8BA 
X-CRM114-Status: UNSURE (   9.65  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- collected tags
- rebased on top of latest version of renesas,usb2-phy.yaml;
  Conor, Geert: I kept your tags; please let me know if you consider it
  otherwise

Changes in v2:
- none; this patch is new

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index f45c5f039ae8..52d777057281 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -112,6 +112,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
