Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5BE6D3B980
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 16:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sYqxFfCP7iY2/StDqJSGVzrv9nwVuOr1ddZoZE8Nw5M=; b=fMSEMi+YvACPdl
	9OngJEGRulmXLQsEcW/C/APGkad4OCiQgQR2GQOaSwRv8RIbOX4NjFUbpa0JROIk3eNO1fs6TlSza
	rAXycU9fMDcj4q4nLjzzeNgtY5qMKOOL2ZKZ5Nt7myQbhg74qikwcY3u197Dhfr0JF0USMKOPs3dx
	9A2nEm79a+DN/8Q3mBTXRj/i3mF8RAIn3hkGRY4vRMVGzmrf+wMTuzQVMk+dl4OiAfqXo8dqOCJCw
	pRXMzHQWMmBAfIeIQ1MvVHksrYHMxouBrMoy5JSL0tKCCITekxQToCRr+3R5ljbYrdIw4o8MypdMM
	JhrXe+Yrk9BsFsnNRwFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0TK-0000000EVrH-0i9A;
	Tue, 09 Dec 2025 16:21:54 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0TH-0000000EVqs-0oCi
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 16:21:52 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-477b91680f8so65265575e9.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 08:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765297309; x=1765902109; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6k61kbm8SLV9e2m07xo3XBz6H86gYGw8sgo6ilH2TnI=;
        b=kuruUQPwPaHPzeAUevoiACK6VCG4o4byfLusetPJbY/rD73rq5iGJOGG6DiuLihQ7S
         40pbAxMwecdggWksMJUM8ouCfZniOIWWWJ3ICnVJzRZJG/pbeU5HkApkfbY/MbCXDjr2
         P3yiyHiyc6NfutXXj/MZ5OZUT/ZWs4cttZJJ1kzRRnkkC0vY5vjpJ5QLqfXS/4h/oeRS
         cbSpFDEymA3LnxyUSnxETAHz1pN1trrjGXq2c5gwtx+mpH2+pvJt6jbIVDW4lQR7MUgk
         cSYzLnMCLBOwT0XpWVjQSTQZlpmbSB/ZWe1et0ILAPMaSjKknn2Q0cOM3Iehgrcrgp74
         E77w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765297309; x=1765902109;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6k61kbm8SLV9e2m07xo3XBz6H86gYGw8sgo6ilH2TnI=;
        b=PSn/exHW50EuaJRZKaA6LXU5V7UhPp3n7pi29+A+O1i2AQPP9A3PU4K9bPLuGruWdP
         LeIKiSdJHPtXCL1NejFh1kb69mTJkq45Mb9NxqgaeVHEvRbRpbjOQplfkW7oAGZhfrtY
         ZYyUZrR7f0obHRcQtfGPG4hxQ0aG8fh4goj4lLLzRmIY+p0gUZeYy61g9nGbzInVux62
         gjP0kUkdDmvlnBngezGp3aFKMhH4esQtE0FOOWIDjLKSuUX/DcuzoJiHr7tMoUjhFIs4
         D+iqjt74XDpcYvo+j22XXFVS2vXUe0hOoQDFe8jjqgGDdwL32ZS7nXcaLt1dvPrOvfwV
         7ygA==
X-Forwarded-Encrypted: i=1; AJvYcCW6LbjOwbjeX8X5Ohpp6P82YfQ966kXEW2JJviCGANuhrPOa1tAC48CTAn4EbGKsldNRBy9sWELKJA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyME5pl7aesMGJGnEriHNS7mjC0kNvWzquOltgCyvEW4pCkOprW
	yEeJbpChF0AW2iTaVqfP4oPAU1VNG6Kz6Y1jXrkF2GiHYBNuGZXj9V1s
X-Gm-Gg: ASbGncs3Wi//ezE24mmJ3ZgJ0ZbOEbGyifbwgnZsm1c2mn3jeoLoAdmtAG6BfCG4zN7
	O2/1dq4/ety2xnAq3Ffyu8dvrzxu3PJ5T1j5zKytGhjpaOMwfm2h5aHCESINApiAUF8numL4Njh
	8DyarwVvi2TkUm1UHrdc5C9N3nuBr4wdIXd1FPAOYE+rH2FEAgc2HsD14wswIo08Tbb61pKhuqM
	ku64tvq1szwj3LNuyDcgVnjq1qHNbcLMKez/XDQ13dxmZJ/4g34oCOva6+ilbiUDKD8NnxrZogF
	VIYa7v36fKU2UhAGt+q4JViF+ECk3yBoZ9r7ckzvBVLlWjk1jajJfgAVOhdEV5ahtO9JtZgpX+d
	AFsloYuUOP3+iTt3UNSAZ9prDcQ6b4MhJIe6GwJRIXcOK2EJcUeCNoGLoeAYEiQPVoIBj1MPH7q
	mZf/J5YEaz75ueb7xX63EHqcqC9mknKkJd/jU=
X-Google-Smtp-Source: AGHT+IHTFgQLT3CSEDcGRS9InaoXZRqkZVe771K3JeLcdli+0zRTuA49I/7K39Ax5OsQ9FDXMJf/8g==
X-Received: by 2002:a05:600c:1992:b0:46e:1abc:1811 with SMTP id 5b1f17b1804b1-47939e387e2mr115381085e9.27.1765297308666;
        Tue, 09 Dec 2025 08:21:48 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:357a:854b:fd78:dcbd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d612e49sm54437935e9.3.2025.12.09.08.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 08:21:48 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Frank Li <Frank.li@nxp.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
Date: Tue,  9 Dec 2025 16:21:19 +0000
Message-ID: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_082151_269661_F5C96383 
X-CRM114-Status: UNSURE (   7.52  )
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

Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 is a
dual high-speed CAN transceiver with sleep-mode support and no EN pin,
mirroring the behaviour of the NXP TJA1048, which also provides dual
channels and STB1/2 sleep-control lines.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
TCAN 1046, https://www.ti.com/lit/ds/symlink/tcan1046v-q1.pdf?ts=1765297159307&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FTCAN1046V-Q1
NXP TJA1048, https://www.nxp.com/docs/en/data-sheet/TJA1048.pdf

v1->v2:
- Used "nxp,tja1048" as a fallback compatible string.
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index c686d06f5f56..9f5c37ca6496 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -20,6 +20,9 @@ properties:
               - microchip,ata6561
               - ti,tcan1051
           - const: ti,tcan1042
+      - items:
+          - const: ti,tcan1046
+          - const: nxp,tja1048
       - enum:
           - ti,tcan1042
           - ti,tcan1043
-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
