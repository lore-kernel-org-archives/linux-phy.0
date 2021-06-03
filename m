Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEF6C47082
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 04:34:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C9E26124B
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 04:34:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7C9E26124B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hZ7RlIUoq0FAJu0gYQahZbIy3IDNxDLI+NcdX9TYTTs=; b=3TJ/wdrzFrr0H1
	mEjgCnfCKCz16oy3dsIbpoDtMW6idu6XD8zGe+WbQV26QYPWLJ80CJZ9yJWiEveCO1tdUEkgS1n1N
	kbPafu33MC00q1dWRSByD4P/mPNR4d0Q2mKg1VA9WTIUnXmVipITWimrCVUlVKmQEvOllLe6LDclZ
	fdLaL9LJua3n0mo9jNMwQ1w2MgwXMdN2Kq3fQdZSkBsrJBkH15zznIMyT32cxQBfwxuSkT5y9UucX
	ve4H1usJm/Rk5g/BOmVvtZNjxGETiS46ZkOhXB7enq6xI4/OivdZtG7VPsnzAQCheBn9YJ05gM9nG
	1eAE8G/asbwXKSq5Qt2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lof3u-0075rX-1P; Thu, 03 Jun 2021 04:34:30 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lof3o-0075iL-FN
 for linux-phy@lists.infradead.org; Thu, 03 Jun 2021 04:34:29 +0000
Received: by mail-wm1-x331.google.com with SMTP id
 n17-20020a7bc5d10000b0290169edfadac9so5024717wmk.1
 for <linux-phy@lists.infradead.org>; Wed, 02 Jun 2021 21:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AUu5Be+XzHstT70CYgAaXmsVnYZ58qvDyiXH1sXBPVU=;
 b=glTp2vtM4weMjOMMWlfQSuFZRA4yk2ybrQtkDduYsC7KgkMGSHb3yQwEDgoaH4Mbvy
 Dwox0vk8MkhpnFy0mwwoZOwbmCpJ+DMCT6irHWaMAHdHzdMoxrkNNGWv4VrZ1OHuqpKn
 qhCSWqDk2dPkFz+PDdcdI7Ba08eqkYUlgnd8Sxiv/DSmkw2YSLC9bMFmybwTifU6wkMh
 57vuYkQIDQv5qB4YQISsQh4A3DYtHEueyzhqv/gzc6oj493XT11GySm6k1PlJZBaEuwS
 pVuzkoivIkIH/8McTmmvjkcjCJ6qmqRqY6blZ1bI1jn8GESqE3RqiZe7yO9Sf+d6UScP
 jkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AUu5Be+XzHstT70CYgAaXmsVnYZ58qvDyiXH1sXBPVU=;
 b=fAIO4/dsyH4fXns+QWUFPgH3ab6oYE24dW3SrMOW0XxJFU9AWYDhBQKecApOgtvp64
 yuCdq4tXnmoAZpUNpt9P/5az3Zw3TdtJcvT8U/9YQ0D7Y/cq/7Uo1DNnd9pKEq1no8wZ
 vpIf3OAO22xWdipB75E56RetjYyVPyM3PybuRXHUV5QkL3cYFFs0qDY6bsFvdtmVZcKO
 3GSLcTSwG8dOrE3BXOqLqXhu02WvUX4BxckPlApFiRqfIfG5aCES/ItBFj6UR0JLy7dO
 wworz25DdzjnJtiWwZmdFcBpWStAux+hRRri//BTHCtH+vbRaoJYbdxPT5ze78/RwLws
 PJQA==
X-Gm-Message-State: AOAM531O+w4VSokuBvTzR0nWyA01hi47jk6ttM8K1z7HJYZdGToIpsIu
 agBjBIlNUqH3HGiVopC/asM=
X-Google-Smtp-Source: ABdhPJzL77B9OTy6pJOXA2jImK8/FLGtZvxrlkOmDmM4O32Xs3BTRJrxlcSEYU5QZgUCpOHJTB269w==
X-Received: by 2002:a1c:cc12:: with SMTP id h18mr34341705wmb.141.1622694741058; 
 Wed, 02 Jun 2021 21:32:21 -0700 (PDT)
Received: from localhost.localdomain (113.red-88-4-247.dynamicip.rima-tde.net.
 [88.4.247.113])
 by smtp.gmail.com with ESMTPSA id u17sm1921697wrt.61.2021.06.02.21.32.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Jun 2021 21:32:20 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: lkp@intel.com, ndesaulniers@google.com, linux-phy@lists.infradead.org,
 neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH] phy: ralink: phy-mt7621-pci: drop 'of_match_ptr' to fix
 -Wunused-const-variable
Date: Thu,  3 Jun 2021 06:32:19 +0200
Message-Id: <20210603043219.32646-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_213426_184162_87D7ACE7 
X-CRM114-Status: GOOD (  13.20  )
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

The of_device_id is included unconditionally by of.h header and used
in the driver as well. Remove of_match_ptr to fix W=1 compile test
warning with !CONFIG_OF:

drivers/phy/ralink/phy-mt7621-pci.c:341:34: warning: unused variable 'mt7621_pci_phy_ids' [-Wunused-const-variable]

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/phy-mt7621-pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
index 242c5d8b8635..5e6530f545b5 100644
--- a/drivers/phy/ralink/phy-mt7621-pci.c
+++ b/drivers/phy/ralink/phy-mt7621-pci.c
@@ -348,7 +348,7 @@ static struct platform_driver mt7621_pci_phy_driver = {
 	.probe = mt7621_pci_phy_probe,
 	.driver = {
 		.name = "mt7621-pci-phy",
-		.of_match_table = of_match_ptr(mt7621_pci_phy_ids),
+		.of_match_table = mt7621_pci_phy_ids,
 	},
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
