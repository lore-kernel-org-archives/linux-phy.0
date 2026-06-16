Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 809C4CD98CF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 10:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcH22mqP+fQsjPy2w3U0P4xeR1d23Rf2pPXJktaEgFI=; b=ForCsKdizEadNP
	tKT1vVM6p4o19/4toFpDaSv5UVdGBGuvvuEUWYhU1/YCMaZWFDRMCO6qYOis6bswm3g8iLiB6e6c5
	OTe9i9VMs2/3M/SKxNU7jrZA1V2sy+2/6y2WX++aXr1s7dakgPoX2jLSf3hCHhteVQr9zwvQCj3Xs
	d8KDG7PNzjVY3tzMq97WKvSB66NlU9xx6npTS6uHjDc0AdNoc64TAFgouO6IZSQryrXr6O4ra9sl6
	ZyG6GN5P8G1LkkGhdW7ZDW8znV1M38QBP3DgWxB3uIIesUDwHrohpfPaNpmHaGiibUCNmeDExWS3b
	a74Bx/M3KRhZOIEYh7/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRI6-0000000FcZB-0pBK;
	Tue, 16 Jun 2026 10:45:10 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZRI3-0000000FcYE-0PAG
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 10:45:08 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-490b4a8e28bso32435105e9.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 03:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781606705; x=1782211505; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6p8chjrzw3Gr7UCK+1dQ530SbpBx+ffpOdBQ3GNs2U=;
        b=b3KFnDtv9JwoG6eQWTJaVNw+0Qk6S3CuQ+qynomRL7Tu0G8I/1HcXDFQHC7HFkZ47s
         5Ws9Ztgd18p/hkZ+HnTBQec1J62xIvBctRNVyFdarl9/dKrWhljUFU4xCZqYbixHipdZ
         AT0bkWHS6Epk2e3EAW5eFi6WNcEXrVi04Aj+aNSfHPmS+Bv3g8DYrleOzZJ2GlLDKfjf
         RNITKBQRXMm/Kv6cT/GgIa4Pn2HJ6fh68rTW8CS5XOn436VFU3doqi20ZQebdZXLGigh
         kbapnuNqIRIdSDz1pWxhucw7kezUaP5zj8an5DtRSqLcK4ms0xquk5VVYsFT+OB0+L1M
         EFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781606705; x=1782211505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i6p8chjrzw3Gr7UCK+1dQ530SbpBx+ffpOdBQ3GNs2U=;
        b=qWSk1ChmWvUZ0wqvVdkorgpE42nyXL8iOZn62wKH3SwJlvZuCPIwMisrzF30aL4GEh
         c9lD7fPRkFAv+pbwpC4zUxYlnUwlIN0pdUuA2aI8f38LkV0JBVSujqFAk4sL8liLJNCY
         /IoFNj9XevbN7+UixRxt5I1jaiW3E1J0g70XfZ+wsAGdePgsZ+3DUIrYqNYpAic2tzUs
         XVj0vXxM9skrr8YB6P4pP+KRihRT1d+9Xmfs0kdee5eLwwEKkGElzmDPLJ7Cnfm+8m87
         ka9ZA0Pb0xnz3FjlpJzDUQA6c2sz5zjTGGQnFigiJ3d5c5mkTqskxXv0skc+/2aQXk+D
         62Xg==
X-Forwarded-Encrypted: i=1; AFNElJ980iEICIz86vM/J0R9Js877IIbLEGTLhJ/f4ieKtkPkHu0jvEX5Pvo8ArO+yaH3+lkf1o1569AOm8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzy4CQL7eW9KsGh/0b63U4rk5bqUiZkDt2OXLIxjoNjXJTbteEL
	roBu0vkHo/AzLjnXcXBXLd/75NC4v4V6BMpdOc3zgDAPtwsOHJ7SXKCm
X-Gm-Gg: Acq92OGn3hEdLHeupooAAZRmchdB6DAOkYQAy7X0ZCDcxF4sUqvQhJMPHOrze7zq2Zd
	ir1ahMaAHzNSOGQG1GDYqgs3p59GWYQhC4gD18kIr26S2T58A1wukjMPvFpee7n2sHkkONpKy9K
	upY5LZrES0Cgdtoj1VzUrEOdZI/QZCCs8Lh+ErgwEOcZeKxRcAL/SIrEcCo7mXl9aTZ5KIrZLp5
	pYS13v0BFONIYWvogKZn5JNZ41NQ5ClA2ljI86JOU8jxrsvsDy+wWYebpvgNzRFChFuSfs0Xq5m
	r7cm8WR980o9/RTU96PSXIrEORXs8nhSUyEh33bLaBm9KWrBQI2/aJZtJjbCsZXtWpH1MfqFENo
	m+to5sBieIluWtOf+rftfc/2TH6V0jgfY78qfH/KEj3KHDkqyt9nG1aV7kkMDO7umYW7c/VFbab
	8wuT0zaAnzxUrZ24lRJ5GNwnK8hAEOwyMGZGLMBNoaJjY/RtZS
X-Received: by 2002:a05:600c:8b77:b0:490:bcf6:46bf with SMTP id 5b1f17b1804b1-4922ff98a55mr44962575e9.9.1781606705041;
        Tue, 16 Jun 2026 03:45:05 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:7499:34c3:598b:e20c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4922fa47da9sm82458485e9.5.2026.06.16.03.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 03:45:04 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 02/10] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
Date: Tue, 16 Jun 2026 11:44:44 +0100
Message-ID: <20260616104459.410743-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616104459.410743-1-biju.das.jz@bp.renesas.com>
References: <20260616104459.410743-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_034507_159721_EB6054DA 
X-CRM114-Status: UNSURE (   9.39  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device tree binding support for the RZ/G3L (r9a08g046) USB2 PHY.
The RZ/G3L USB PHY is almost identical to the RZ/G3S USB PHY, the
difference being 2 OTG blocks on RZ/G3L compared to 1 on RZ/G3S.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Collected tag.
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 9740e5b335f9..d6b9d08ceec6 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - renesas,usb2-phy-r8a77470  # RZ/G1C
               - renesas,usb2-phy-r9a08g045 # RZ/G3S
+              - renesas,usb2-phy-r9a08g046 # RZ/G3L
               - renesas,usb2-phy-r9a09g057 # RZ/V2H(P)
 
       - items:
@@ -132,6 +133,7 @@ allOf:
             enum:
               - renesas,usb2-phy-r9a09g057
               - renesas,usb2-phy-r9a08g045
+              - renesas,usb2-phy-r9a08g046
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
