Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22521C55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 09:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MQeB3+M2ezKNIc2rlCfhkADyGn2r7ihuRYhtjxg3qJE=; b=dj+610uOdsVeh/
	S5xK94m+yzLBr35Bm17OWM3YBRaeGogEyD0rFgZ30ZQxQIJ0e2ALxzsunmvjIzpdvY7WSrG0xCF5o
	NO5Lay9A+YQwVnEpD9oWywOI+s5B1JkBD6sn3/bNvKnozMRHlJiMo7lEZiy1PCSv723EL9iDzaokP
	5PYpa8CSCHeaMNXMkTIGQbe0N0UefKpp/gym171r2SK5g+YGSbRQvWagz1ueHLdPFhGqzBVnNLhkz
	kv60Ct8aRZDCyuB5oP2NWtxvJ/dnoioT9hfHRpoeu3INxLCGis+09/A0DotnPJ/Gmx6311nocUMht
	0ksOX9bv3EkNwbtO7cbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wru8N-00000005Lbq-1eCu;
	Thu, 06 Aug 2026 09:11:27 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wru8K-00000005LYT-1Ikf
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 09:11:26 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-47fecbb7000so1008034f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 02:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1786007481; x=1786612281; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Hu1semPENZkZU2NkQkIvTPohOaxpIZrEskSIx1/HGTc=;
        b=k8vi4TYPn0jIPgk36RYuCKJgtrou7BDhfqg3mWLPJnOCZH0ArGIQ/4DmRSjIbO4kUn
         2Cilzs2a0eVuvMratGJpk27j55M+nigTIx+zg/+KkKZzuI2g5L6CidhSbBu/czCTItxd
         WuB0kjH9V0bYI+HpT6jCaOWoNDIiHqIM86Px4m1jhfvNgUUk/XmoYk2BHyoCcCYmpy9I
         59KwLNz2gpld3cPaXLr6V28LbCKvbyPajJg8LfQ6HyiTOc/jmzILCD/pQqKi3g/mNUIw
         L9XFW93gbgxGNXT5NjM6Th3FaxdKihf7klHJhew/s0tZbYVRY1gaEk4lkaiTvujxstqb
         Y6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786007481; x=1786612281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Hu1semPENZkZU2NkQkIvTPohOaxpIZrEskSIx1/HGTc=;
        b=JzAIjOGMYMD/IjZomBxM9NpDA6Z0JEd33pZ3cw/Q/H8Rnq8yFbhqkbBHiG99W0iSav
         d4Io5ScGyJ2aM8DIYvJio1CVeDpW/iVFVqFBQ2B4XjZam2azu/Ldw/WDOSvsUYki+j/X
         heypsBNM25zFJdBF6k92ON0hGagb72eJjNhmEcBA4wsSj67WvDe4FAghKHsPdbfP9v/E
         1KpjbGnTDdEv6I/OqnKHIBMQyNxtF/xl88g+sPUrD4Dt28Wfv4y5Oz4/1HvT2IKDbpH0
         cKXoWWvarAt6tS8G2Ub73Ya36d6QcIY3NPFZqhhcRH7rOHAKoRdif7YpM5xGoq0YIW7H
         E3OA==
X-Gm-Message-State: AOJu0Yzd0wTuFJpUrSCSkEm4a4Q2JgIYV3N/42bqkR2UsGpLqqk+qL4K
	opzfpMJq9RGbLw95GxKLlfkj+q+eU6pk3OGt/G2+9dJEgw1NMtvgR7XAk1ntw58+L6IK8d/67AT
	9VXKDW5mYIQ==
X-Gm-Gg: AR+sD13XnKGWqoEe9mX+BrOTn9eCnuLxlbMO3vqdI3skGGMUZVo1KpcxxVQ5o0jOvt4
	GDLQ88OarBSc0SARfpLDZQ9UemwDqoy9vSmZ9MxVaf1VGxBlWWFXsddGrHhq2TSqueUpd98WbOL
	ccmhWdJWpuoCh27dcmqBjnUf9imXceR+t3hLn0OXCATFCQXKV5UjDSNY53UCszpGAy5oNN84/7K
	jr7LKzfGWPxicuWPNs9Xehx2ntcWtb0ATYeVlgbbCFBTYGDttBrHZ7KwmsvVlMM0k5q8iSISgO6
	yIQlphl9z2EJaSgk4zZb0aeRTjejM7BJNE1D4O4hv7Jjn1L5YIMb9iaUn5CeVfihwo9OrCNczPe
	G9SU7TzdosfzlbeXc8wusYhZ0x2FwrvRmdZZkaRVcbqyfF2Dan+CHixpXpGu0VS8EVhbpevyOmQ
	Bx4dxkel3kjLGZgysunlpziWGCM7YiSxXxXslNRj8atTVu04Y+LgNBFXsi51ld4PUqeqCjwM+Qr
	/KFskxWZwr9IyDLaZ5Fep6jPhxq
X-Received: by 2002:a5d:6f0a:0:b0:47f:8a1c:54d8 with SMTP id ffacd0b85a97d-47fec502df3mr19472963f8f.3.1786007481459;
        Thu, 06 Aug 2026 02:11:21 -0700 (PDT)
Received: from localtoast.corp.sigma-star.at ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b31975sm4035213f8f.33.2026.08.06.02.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 02:11:21 -0700 (PDT)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	rogerq@ti.com
Cc: Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at,
	David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Subject: [PATCH v2 0/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode
Date: Thu,  6 Aug 2026 11:11:10 +0200
Message-ID: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_021124_673292_0DA7B36D 
X-CRM114-Status: GOOD (  10.95  )
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

This patch set adds a device tree setting to the PIPE3 PHY for
the reference clock selection of the ACSPCIe clock buffer stage.

The clock buffer can operate in either RX mode (clock pins are input,
recover the clock from the bus) or in TX mode (generate the reference
clock for the bus).

This was tested on a board using a phyCORE-AM57x SoM.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>

---
Changes in v2:
 - Add ti vendor prefix to property name
 - Reorder patch set to add the device tree documentation first
 - Add a property description to the device tree schema
 - Add an example to the device tree documentation
 - Make the property exclusive to the PCIe PHY in the device tree schema

---

David Oberhollenzer (2):
  dt-bindings: phy: ti,phy-usb3: Add aspcie reference clock setting
  phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode

 .../devicetree/bindings/phy/ti,phy-usb3.yaml  | 39 +++++++++++++++++++
 drivers/phy/ti/phy-ti-pipe3.c                 | 27 +++++++++++++
 2 files changed, 66 insertions(+)

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
