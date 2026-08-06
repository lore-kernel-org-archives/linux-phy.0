Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6277C55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ide2dV/KKxYB9ydgAb/+quV3sOZB87F9Kh6kJ32uZlI=; b=pvccnUjD2x+1PH
	j3/NKaSpROdqaL5MNtRy6ng9+we67CyJgxYha0ystjGjhGQ6aa786H9YlSdrH8m67rbWVCKBpHsCV
	FkqRWG1wwzGIrBnInxgKewSxHWc//WyZwu/xiQiT6w1Z7+B0zhGvv6tNoV/sJ+We/oo8N3Ilvxz/l
	dyBZHOqj5NI2Upk+haoNeTrr4NuoMRjl3edbQDXsiUxofMBxz+n3Ptv9U79mE5PqqT0j2lVRlipiS
	/DFO2JOflZyILzgFaCn7DXxDZDPE2R0YwqTB379d4BgMdfGzezdeOnp1IkJrLk4zs1usiNaPHgkY2
	vO4iFoBx7PDOd226rMpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFQ-00000005XTN-1oTu;
	Thu, 06 Aug 2026 10:22:48 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFO-00000005XSG-1785
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:22:47 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47f96c5b722so1223538f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 03:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786011764; x=1786616564; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wE1rP+31RmT4ilzk4EfZDJMKx3C1i7D5wMzh/zw/hTc=;
        b=VRe6vW5BpTYOGx9U5xfSM0c445+rU9tj8jZNVw6BG1qmXmT9OBoS7hw0KQC/TFB8j0
         1xdwIJ9Vu8qxSZbQIn5N/KCkZRKdfWk9+Nm3f1MEYDd0Spmku0eQZRLekkaTfbmA8tt8
         XLX4/cO5BpNsC7o0FAtwjjNL5HbqZc4UPOPfFYAtQj9KGGdmOG9Y5VKLTgvWeY8i/RcA
         ay5vNCnxvQFzgIkX/tFHCqFkb7NKj05UCktmQlInBiiNe//LIZWUujTNYXTCE6zbrTxL
         Ii1JP2OxLXPvp5RqGmbq3dVtghBba4EnktuKnwkYMNwz0pfIZgO5mAp+HDgZEkyKvjiD
         6g0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786011764; x=1786616564;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=wE1rP+31RmT4ilzk4EfZDJMKx3C1i7D5wMzh/zw/hTc=;
        b=KOIioNMYlW+bY8Cfuvedk7badV0FpVLpKPsz85prK7y8XXCUhgD6iSC97B/atVf38T
         +taoc2x8UT7HNQ/WdYKnZ2e36bUXyEEjhhoEdFjllUNMGKN2zxwWXFvo34g1lkHuCa+K
         xIaAVw7cAPMV9RWAxgVgjFmcJyon6FDGnstPkao0a8G0A8o0eietXeHFK44VRwDNoc51
         EwVkBH5dpO2WXFZBh5DsEvkUC456egLVmP+1P1mZCREx2aKeqc/p8Te9+ghPmSaLYfGF
         xsDXyk5VPs+S2RVvO5TrBkWMHXYDNRyPW4LLeD8PycR1HtN6xCnDkPcIMLmAuttT83wD
         FsZQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp2IvfcIHHeiLynfnC+cDyBjNDIrH00/WeN1X3guE0QG9Y2ncuV9IZ8TL7lPNTmaxJvF4a3qfAKYqo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcleXIDdL61m5DTFyCq/josEtkFracd6toEGTQCTMTXTv0seV2
	WPPkJlN3E7mT27Q5MXHU80jcMPtLGS3kZfCIvxXi8S5GeDoQjKaDLrbn
X-Gm-Gg: AR+sD119tQJMWC20UZ5A6kdXkTxb+HUaOiFwFIeH9nRr9ud975/8YJvoi63lDi2K1Uj
	cajqiVAiqgcOz0r1pZZzabBEV25MAUcS5msRnyfWLZktly5qG1/D8q0BX7rRNTJ+Nhriidj/HWL
	/lO9WmydgsPhwMBnWjoGjdhgcozs6KffoG1s5meTkhGgqzqE8bsdA/ZIGbAGAiFPAIJHONi/eCL
	wToeoVaqURVZ9dBTOrj2SSzZ6JNske89F+87dku9UvEhA1Llp/7aCBJhCabzBoBmRSn76IAIuBF
	bvLrQ0ydykANyr5e64zpX4+CVUxbPCPNJFIrlV9pbvXORlZFKtSiebCRva219q6xtOdnAZbVa/A
	DH3l0KrjMN1iAF44rCbO2A7IVlbThHaWq8/ZCofpTuL9ab8Qs1q+cDLYNrVsIek4m6PNMcu9yQ+
	Ll2oSGG6LjII5E+gMzcUHooKcre3HO6fn9V4xeZT60VwLswYZJWXsZj/GxjWJuGIWfoQMMCNtJV
	bu5GywyHb3m
X-Received: by 2002:a05:6000:604:b0:47f:7526:598 with SMTP id ffacd0b85a97d-47fec5037eamr21046463f8f.12.1786011764300;
        Thu, 06 Aug 2026 03:22:44 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:a173:17cc:14ec:8d1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b183b2sm5634553f8f.24.2026.08.06.03.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 03:22:44 -0700 (PDT)
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
Subject: [PATCH v6 06/10] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
Date: Thu,  6 Aug 2026 11:22:25 +0100
Message-ID: <20260806102236.149159-7-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
References: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_032246_321593_4B95F730 
X-CRM114-Status: UNSURE (   9.41  )
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
v5->v6:
 * No change
v4->v5:
 * No change
v3->v4:
 * Moved the patch for easy merging.
v2->v3:
 * No change
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
