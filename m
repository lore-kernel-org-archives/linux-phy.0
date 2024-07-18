Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF04C41513
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jul 2024 21:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YMWqORaw2gIlSUR2ZwekJaK9wlGRenA1PCkm8QUzTM=; b=yQsxvPg1P6eSJ1
	OKTDTcb1ncNjFgsQlijmSCVRc7dKp05xKUCqOELUCQZo943ZvAYO2cnCHWnBmeXQJwy8ixaPXd56p
	T3saaXQ6LB22hciABlPJnXkbQje/kecRJp3to+/XoqLDiDeWyDp6G5xXCzCvrZbQmQoInc7S5jf1d
	8AA5TWSiXEOdZEFjizikZ8igKRbKbDybIgSWdUxYQShN5+okUOoOM6N7NjjwBXSC2t3GHj9XL9spa
	hvmwspgX+ru9q0UYcN8blPo5qnt+H7x/C+vuVJ8AIloKqv9xg7oFf4oPxPTX5N0ELNQ0PMD7+gWq6
	294Jg1mvwsI5ri3Bbb+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUYHj-00000000dJ8-2DdG;
	Thu, 18 Jul 2024 21:03:31 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUYHg-00000000dHm-1EPB
	for linux-phy@lists.infradead.org;
	Thu, 18 Jul 2024 21:03:29 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2eea8ea8bb0so24406161fa.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Jul 2024 14:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721336606; x=1721941406; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Ng8/MluP5o8TGqH9RO1LUWdUmWhLfHB51ju7l5WzX4=;
        b=Ifad/kkGQIlLWnZf+dq+FNFn4yg+R65Z59b469Tf5hgX7YsIG7vLyRjUlvz4VeWPNA
         CiBytqORJ4GPx51hhYpn8DvJ3PDUYeT2WMjgKTGWuRqNAAVH6EDgsQcqMzuiM1x86NsX
         tysPbJL8DrJFn46p54Jj+bnxmhTbjRUNPkNFXLCj2MlHZH85FuRH3zpFvahcXJOHLYfC
         uLGSJIv8eKM6iusXDfAgt0FPidhUchuo03+jrKweiW9ctZhWbrzzV2Hj9saZvz4JQApq
         d9oVHLT4Z3W8azi0NbEBUq/MY6gCcuoZ2oBXLkkU3vPzY6OPZixlweUvQiJIVYNHucMU
         SXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721336606; x=1721941406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Ng8/MluP5o8TGqH9RO1LUWdUmWhLfHB51ju7l5WzX4=;
        b=PArh/HR9wa7RwdRMOG+326SulIqMDkL1vV83mbaPzNXg8dR/AgSDMpd/dXIyhqwQ3u
         2In5XKDuKIgcRSgsVBqM/XUQYNZIQ/aJghAbSFgL92lvgNoCtfsU5e/Zlrz2/us7mlQ9
         j5ehnDXwcuM683YSNYXxhrXt9vvUUJlGkrdoWkFpBrU3blsEBiGAh3Aw6jTvlxqmMSj7
         V1rX3i+JH+KrNrvtNfd19Fx+OHZ5E/CifjHICFr/93ao0A2lwHHfKQZMniRZmQOtLhet
         VhbFdShQm3sEWhr1MVhDmu5CNAyRYLwoW4irgJocBnVH30EVOS3Wwr0jOpYVDhYd5L12
         30tw==
X-Forwarded-Encrypted: i=1; AJvYcCWsBk537wa367IVBStLlPVba2yoL3+swL59CZk6P9P0I4Tv718Nv24rrwjNN4WFkuwAyHfCQCGMKqPAk1kGuEwB2GdEuBQO+bg+Kcw7XQ==
X-Gm-Message-State: AOJu0YwMbjHW9VBHkjZIhP4AdifHRRCSOCq/8JcU3zzSUrwSXCOa8bQT
	//CDbDNrAz65l5keqqpxUxcmdW5P+gU7qqLjFCUvnqZNdFwXsDey
X-Google-Smtp-Source: AGHT+IFtLRuDysLz+zGkK8nebDG8VhuqMbu8VfFfGsXzrU09Na8CGTIsRluoTBh3S2mHGVy2roCHVA==
X-Received: by 2002:a2e:9f55:0:b0:2ee:7a7e:8ebd with SMTP id 38308e7fff4ca-2ef05d43ad8mr29097631fa.46.1721336605904;
        Thu, 18 Jul 2024 14:03:25 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ef05c80310sm4516511fa.13.2024.07.18.14.03.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 14:03:25 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: mkl@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	a-govindraju@ti.com
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	ilordash02@gmail.com
Subject: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
Date: Fri, 19 Jul 2024 00:03:21 +0300
Message-Id: <20240718210322.37492-2-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240718210322.37492-1-ilordash02@gmail.com>
References: <20240718210322.37492-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_140328_355526_FD74067A 
X-CRM114-Status: UNSURE (   7.22  )
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

Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
It is pin-compatible with TI TCAN1042.

Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 79dad3e89aa6..03de361849d2 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -18,6 +18,7 @@ properties:
       - nxp,tjr1443
       - ti,tcan1042
       - ti,tcan1043
+      - microchip,ata6561
 
   '#phy-cells':
     const: 0
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
