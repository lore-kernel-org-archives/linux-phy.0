Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93E0C28B20
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 18:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fT9s92IDTldaQYyStL/Mnnq5dfNe0b5QX3KcHxry+m0=; b=gBqFj6+W3dXvEX
	Furig5zeMV/pu1vyt/jSheDLVwiwy/cgQxedRCPtr6VoGn0btHdZ3ykCuhSp/V/WTBS3fABYE/WCD
	ocX2ltAeHuIiRwSsKh6FGzIqvAhMRoNbhDcb1WrZpVhemg0xfig3GYSxXOdavxBK4HpQlK6ChLDF4
	sCSsH/J7zquToE4nvoYRqcS/pAnkgen2V2G11X0aTpv5/eEVcp95iL2FKqbHZPo0aCbKCw4H0DUzs
	9JFf1CVLqQb5PiYX5dKXI0MpkFF5GkyogYSvO3mHjxstTXI2rD8+Go7r3ixuJecKmca/JWpLM+wGC
	x0mAOQ94DXTlbhqgGCng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u03Ds-00000006ygi-1sWv;
	Wed, 02 Apr 2025 18:54:00 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u03C7-00000006yWa-1hCT
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 18:52:13 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-5fc6cd89f85so61392eaf.1
        for <linux-phy@lists.infradead.org>; Wed, 02 Apr 2025 11:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743619930; x=1744224730; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqDKtnr5GaD9ToBXpFolLKV1wlSZYYAQ0+Ag5ew6NeI=;
        b=h+7oaD9RBartBG1FSlvcqqSsPHKTQME4LgEGCG7ac0ao41mUFNZ+yf/fVmwOcf3g+O
         FWYsvyhJX7s3H5jo8n2GHr3tAmVckP45jvslfbGndFhchBf8gj08dyllD9cnGzVib0Uv
         0HI1sphIXjMT6DW2GYuWOzn5XJbDBCjWPuTpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743619930; x=1744224730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GqDKtnr5GaD9ToBXpFolLKV1wlSZYYAQ0+Ag5ew6NeI=;
        b=quSi+bWuCxwgL+w6cIL8kTQpR4J0ExqWniEm3vyCpZXT7tfWvWNhdSgWgpBa9/p5ru
         xFec5FXj8112oPAXpi97t8pcIHguNNXtqihkHAnYV5B4/sqJ+pELk9ca7D2kFmNArdAz
         kdTpgjiIEw63TDAIv2v9zyFpL5IrOai0xgXOQ1fyeD1M/K/a5bHiOUlliggB2QCwqdSR
         x5TLMb7kEVHLAuEAuzaVwgNHs4MzBQ/ZfWCxNmgW80RCmQFHsPxfs2x09kjEAaYEW6lm
         neM6oE/tD42Q8ZS/CNkebpwuPd6oq1fgmk1eJZkWJeqJh5m5YwOUlkS+eVtZ9+3ajTlv
         2zwA==
X-Forwarded-Encrypted: i=1; AJvYcCXntlOyxwd9ldND6lCECShyne5uLo0lSqQ7thq7YuuacsCtHCnU40FBDQ1SrzxupH72BmUIugVStVg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVzJpcxmAvl4vgn+QsdFOkMIywBNP1roSl8zMWzJaH0zXlmSMc
	zUlplkrhY4WNJ1WsyT8y2UWLv87BN9malMJJOzx3nF8Bs0q45s09WVYHb1aLBg==
X-Gm-Gg: ASbGncvVa0/bkqkEPUTyqKVpdk4hB+nwbIMNWbK4wc83CWBEpU99yC+E11FTOPib7GW
	YqgiPHv2z+YVuqLY1RWU6cH6BTRK7sIB7Ow2BBjzS9/MhBYDQUGBTCt+kcmCbpRgXn7ZtyMWn9p
	I+b3AfUXxkZ239goF0JWGB6c7Su7MH5Pmp+oU5T/48hZHSdvsGMyaTQCe88d/H9AD/CdSqGZ5Y3
	8QXxCOf+Jh7jeSu0D6ku4L6RpOhe9WH3mIArmSDz26p6QBquWBWHeBOUTKrS82/MXZk3uuVhGRi
	vM8v+1Cp8YRDxXpJLan1YEW4bRtU+sR50VpWtMh3UFvKxS0PSiPMd4VKXVga6/OGHXkO3cpbSGc
	WayCjxKxMV/C5HkwFT+3iTg==
X-Google-Smtp-Source: AGHT+IEbIiVI9NkR/CoWxd2DaTFQafqUnLyrs7RI+ylIFJC0k46MclFsgarT1oYobJHD6u84PnaCPQ==
X-Received: by 2002:a05:6808:218d:b0:3f9:3de3:c8de with SMTP id 5614622812f47-3ff0f523e06mr10176623b6e.12.1743619930225;
        Wed, 02 Apr 2025 11:52:10 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051aaf60sm2470462b6e.28.2025.04.02.11.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 11:52:09 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110
Date: Wed,  2 Apr 2025 11:51:58 -0700
Message-Id: <20250402185159.2976920-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402185159.2976920-1-justin.chen@broadcom.com>
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_115211_440779_16DDACF9 
X-CRM114-Status: GOOD (  10.36  )
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

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 brcmstb usb phy adds further power savings during suspend
states.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2:
	Sorted compat string ordering
	Add new compat string to constraints

v3:
	Sorting try 2

 .../devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml        | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
index 580fbe37b37f..843d04027c30 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
@@ -18,6 +18,7 @@ properties:
       - brcm,bcm4908-usb-phy
       - brcm,bcm7211-usb-phy
       - brcm,bcm7216-usb-phy
+      - brcm,bcm74110-usb-phy
       - brcm,brcmstb-usb-phy
 
   reg:
@@ -139,7 +140,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: brcm,bcm7216-usb-phy
+            enum:
+              - brcm,bcm7216-usb-phy
+              - brcm,bcm74110-usb-phy
     then:
       properties:
         reg:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
