Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 729D1C433ED
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 26B2C61464
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:52:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 26B2C61464
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PdpuTlviHGssm9LdQnnkO1fTgrIHmbExW/8CnnFUd80=; b=Ehxwsf+bH8LqlkrxQ6oYL2wm/
	SUg/c/aKMY3OF6Y99nb9elfJ2seKLOzoBHKSCr1cxU9eCMjIL8tmb4UhxESaF1t6G554ofGhiZFEZ
	NeqPYNWsTOFb/qr0LLX7V7C4tJS+nj7xEVQKqx+CscqliUvp0Rn457442HHz/KK2Cz5OwTulT8IOX
	VvamwF+EtcaNeVPw42/ycLQAmrZVH59fUld0zk0ZH2Y07Qi5sv/NzsO7VIJj5M5l0exghUOI/TcFA
	TK3FcifJnK2zA7FCLpOHUgnD6cd5c5gDboJdkGdyLLrAs8ON8GTXUx2y678K+u3imqLw2GGtP6Tz0
	tJqd/oRSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGpX-0090I7-DV; Sat, 08 May 2021 06:52:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpP-0090Fq-2x
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=; b=tUvZ50tLrPy/wiFlVdC+Tf6keM
 btkbKDQEIiG50Fs4oJZfSHXSLWmVh3fIWHUJX12BtbaFlG9zHqUQdbba7MlBwrqSAFmyOjohB11fP
 HZcT6X9lrR4P98L82Wno+S9QIpk7PfsEWEQt9UX32VREM6fpfl6zvEkppjxMmF6tbSqWdWT+usFB0
 bMs9ofaDYXSRPayAIss3YyJW2O7uFmrOWRdqIQpQ4HPkDerx6Hy9M7O4AsDNIUE3ry/Fe0SrIf3oM
 5dlrZyw7dkMW06s4ybNf1jxG5QcnWdIhRQOBf0Pm13nJsDS98gcvf9700u+hClBlYwwKsEB1Un1Uy
 4lnZHl2Q==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGpM-007PME-KH
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:52:41 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 s5-20020a7bc0c50000b0290147d0c21c51so6005148wmh.4
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
 b=LQcyHlKI3cmGbxplDQAJgFpcZ2vWNGbNxmmwsnLjSwGKYDbEK896BewQFECt6Tu7d8
 S7kau4cHh3oqU2TMv6GgeZE/A7mO+Kaux1/fnFpzeNw72D+/pfY/ZBC3iHOmndxctgrn
 XTA643lzwlo1D7JXYKYEZNYfs1f9TGMPOxhqwfaOBfP2MOfxSyYRLx8oSjaV+uIX0Yct
 t2/ZXVGzj2j9kIgFjNDpcVuVtZmN5HP940DXu+HxfH/8T3PCqwJDTttrQCDMNUcJa2Ky
 IJxHQM0w00U84RP/N2+m0Cspx1eXMy5w2nkWjpmnn8h4YnbzVNm0HCVPbk7gjad32acW
 LGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rnhsZglV9Tim8CW0KmXYUH85PSzSV/y0PNcnH/Ygu/E=;
 b=fNWMmBDpkT4WR1soO5WMafObMDChUtcqyudXfs1j4qXXAKPPuVDEznFvY1R27HGQR+
 pKU6v4SsbcUUrGL90Nb43usH4KWea0gKhcBMogZ8JhaY3dUHVToC0gl8SqjW9ITNkg6g
 xBnuWp2Q7/y52GuMNpVI0vCfV6Y3UdZ85k+RPNxlUWcQVkHRzs2WguKfCsxx6mmC4j1k
 0AgD6/5xB2I4OxmeBGgr0ZbD3dy7WG4reKe8z+NK+ei1fGvatii748RKyUywL17iFd6P
 z0VptVgGjvbvgVPCuHFXBXG335cGnH5RpIqfeR2En0ms6fJgxgvsIE7BWWx1vPIdsYM9
 u4gg==
X-Gm-Message-State: AOAM531Nf1X4pklU+D3jkTnjpcUQqJJ0W6HHeXL28V7Cnda9AlHBtsNq
 k9MbXmW4ucu0uy5+Je7o4EM=
X-Google-Smtp-Source: ABdhPJxfPpdspV0gYutpfTe5YchDZnQYJXqPP4rbHosmjZFV1JVsgOuTaJWVJflzXrejLiFn33yHtg==
X-Received: by 2002:a1c:c28a:: with SMTP id
 s132mr25250444wmf.145.1620456759167; 
 Fri, 07 May 2021 23:52:39 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id b12sm11638010wro.28.2021.05.07.23.52.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 May 2021 23:52:38 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: linux-phy@lists.infradead.org, kishon@ti.com,
 linux-staging@lists.linux.dev, gregkh@linuxfoundation.org, neil@brown.name,
 ilya.lipnitskiy@gmail.com
Subject: [PATCH v2 4/6] phy: ralink: Kconfig: enable COMPILE_TEST on
 mt7621-pci-phy driver
Date: Sat,  8 May 2021 08:52:30 +0200
Message-Id: <20210508065232.4882-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
References: <20210508065232.4882-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_235240_681406_E33D7CAF 
X-CRM114-Status: GOOD (  12.16  )
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

After use the clock apis and avoid custom architecture
code this driver can properly be enabled for COMPILE_TEST.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/phy/ralink/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
index ecc309ba9fee..c2373b30b8a6 100644
--- a/drivers/phy/ralink/Kconfig
+++ b/drivers/phy/ralink/Kconfig
@@ -4,7 +4,7 @@
 #
 config PHY_MT7621_PCI
 	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on RALINK && OF
+	depends on (RALINK && OF) || COMPILE_TEST
 	select GENERIC_PHY
 	select REGMAP_MMIO
 	help
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
