Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F04CD1D494
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 21:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfqvtv1eBdXo36VKCFSfBDwQw8HF/AmUTE/G0CixyXw=; b=bTi1j641MxnqyH
	DqfWnwaLzuHPuEEuPhztAyffjHCCSP46ZNMoLQwrllTufxdjsUTRg5/FnVmOp72pIkgbnyu408g7k
	rdhStyIXRGr2Kq9VxA/OLGNqupiosCfy9AROfiVfaBvIOfQWjrdpwjPik8tKJJqR15cnVMvRNsks2
	KC+6hJL4AkfLW6eNg0iJtezCK90Xgn8xyyiUTQZ5L2KkUgrbjU9naEkeQjNUqLgtnEvQLLSXB+77t
	PwJOGQ17BXdI0e0K6I7U6Mu0/z6X0uzro/V7edGfF5BxWQUJU2PT4o5JDq6/Gc3eX0bHzDxjSCDff
	1oM0bsheyx/CWO/qgkuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdxPk-00000000tau-0A9x;
	Thu, 08 Jan 2026 21:19:28 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdxPh-00000000tZ4-0UAU
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 21:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767907164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4peBw69PP8vhjHIr05jZ+uZJBqbGRcmM8VXQydrAoVw=;
	b=UurNP7BIrJVpDooRK41ypLBgkUB3QgY6ILc4rHtd+ZpNjG4jRVY4FIb7Ocgbkn13AYEhWl
	Jg/ao6iuX6GQ5OSKw/hkgCzoyzIoAg9PG1BryZG0VhtuGoaJ8JL20jWAzFm9m4oSp8t4/1
	/it29sTvuFAqJOzuIV/c0Mx6EiSod9A=
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-ShXLIBECOC2v1vPNcT1YHw-1; Thu, 08 Jan 2026 16:19:23 -0500
X-MC-Unique: ShXLIBECOC2v1vPNcT1YHw-1
X-Mimecast-MFC-AGG-ID: ShXLIBECOC2v1vPNcT1YHw_1767907162
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-93f505dfb7eso8055603241.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 13:19:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767907162; x=1768511962;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4peBw69PP8vhjHIr05jZ+uZJBqbGRcmM8VXQydrAoVw=;
        b=KUx2Dc5WfcbHyOl/bGO5uL/SYxhiuzB/mumD+ng7frOhdsQeQTbDywhur673gH9zMA
         +36FOtUtH8vL99OmV4o+g8dyXesgyHIAMcISW8AR8dbUAvTjA+javg2KIrFpIlxpXZX8
         3KIstJtggKFWG0+Qte0z+IOaN68m8bIwbNnnT0ViWLBUjBhYnBG7n70qPPYZnSnVrVqb
         HvfqTNP7t+UuBgRBYIKa4dD8nny6DhaUCXhRJ2YHD5kBS8ljx96TQYqj4tbBvntUK6pT
         2gtccdNAnrMaPFiBc37+0KChT50xIWhRpl2Smix1IQpK59kCHbYLTEzPcXbdRYOWiyDi
         n4VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM8vYGLb1BPaoFkbOn29FNftRYQmkNPWzSwt2QuVdmAdHt/2nNNkZ2EjRDbBCZxJYsfYMTcY/pBDE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxP0+JjDyxyAw0sJ7r7iS7yska54zq1qMsGd7gzIWu8Ou09xL7M
	2kQzkP0fCTyb3GV57iQJlLmINs2ttn7tMHlaWtoPCQNue8fjt6qpiq7mnVILBHHhU47KzAIdnb3
	VkM3J1tuEO3E5Ii6IlqL3MvQ2Avkm7ZOgrFwWqGKBPSnhh3UtTLUn/SrDq1mpuI3C+1c=
X-Gm-Gg: AY/fxX5aHUnknKyRyBHyGFWjsDHtgcnSsi/tV6+qPcES6lfrbY0dnGjS1hXvhKPD4fs
	Dc2KNXyOhkuIFoFKp/fkhj6Nh8U3s4mAFchDKjFGF/sWeL6yO2s/bZuubAD76Smycx8Hik1W9VZ
	4InQpUmKMthDt7NyEDtAIAdQtl2UJlYuDM9EBXN9TDeHleaanMr56HfueS7eOi/1CTP4jl8TwVB
	xQZBDJs8SE2Qv9sHoPC1YpWzxIsrOkbSlIqgedBMqhvdEr0LRdcOy+21olQ2wyobMbIBoxPsap+
	lB/j8pYx7I3AMWW/BfdLugzpBassUTP6dLOf5VGBXT24d5qI46eXtI759+ZwNA9jlHtESR5QD/L
	FlKtfXww/IYrwU8A=
X-Received: by 2002:a05:6102:5706:b0:5db:f615:1821 with SMTP id ada2fe7eead31-5ecb1e9047emr2878921137.10.1767907162580;
        Thu, 08 Jan 2026 13:19:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHX617rWwFP5JDkAG0NXCVTIRF1Gw7q7Tms3/TJs1fg+8kkPdf5GNQ0cmPYO2937oiV6debZw==
X-Received: by 2002:a05:6102:5706:b0:5db:f615:1821 with SMTP id ada2fe7eead31-5ecb1e9047emr2878914137.10.1767907162238;
        Thu, 08 Jan 2026 13:19:22 -0800 (PST)
Received: from [10.30.226.224] ([2600:382:811f:d757:daa5:b867:12a3:9d12])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec77064e86sm7623329137.7.2026.01.08.13.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 13:19:21 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 08 Jan 2026 16:16:43 -0500
Subject: [PATCH 25/27] phy: ti: phy-j721e-wiz: convert from
 divider_round_rate() to divider_determine_rate()
MIME-Version: 1.0
Message-Id: <20260108-clk-divider-round-rate-v1-25-535a3ed73bf3@redhat.com>
References: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
In-Reply-To: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1452; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=LzaLThjuJjdtJh34gPTyvntKRADSiE+8sGiCKAXic3I=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDIT5HZ5r61aU2PR98NOoZ3h1Pop1Z/a8v0V7hmw7A0xX
 q1wbgtjRykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABOZKs/w3y/iUmSjxwW9bLP6
 OdvPy2x47fW2563qFwvl48qMd077qzP8D1ub9qLrLrODkPZ7g89r7B9cKWuZmDh76bPQfNkquW/
 G/AA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: EMGpMldzjVtP39pnMJ_YnM_O5qkOCdE4x5jr7RBzLwc_1767907162
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_131925_281630_8BA0C76F 
X-CRM114-Status: GOOD (  11.82  )
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

The divider_round_rate() function is now deprecated, so let's migrate
to divider_determine_rate() instead so that this deprecated API can be
removed.

Note that when the main function itself was migrated to use
determine_rate, this was mistakenly converted to:

    req->rate = divider_round_rate(...)

This is invalid in the case when an error occurs since it can set the
rate to a negative value.

Fixes: 27287e3b52b5 ("phy: ti: phy-j721e-wiz: convert from round_rate() to determine_rate()")
Signed-off-by: Brian Masney <bmasney@redhat.com>

---
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org
---
 drivers/phy/ti/phy-j721e-wiz.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 12a19bf2875c601c60ff5559e1554274ee215918..6e9ecb88dc8b7842745486ae8ad57f82563d6711 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -940,10 +940,7 @@ static int wiz_clk_div_determine_rate(struct clk_hw *hw,
 {
 	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
 
-	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
-				       div->table, 2, 0x0);
-
-	return 0;
+	return divider_determine_rate(hw, req, div->table, 2, 0x0);
 }
 
 static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
