Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AE2606A331
	for <linux-phy@archiver.kernel.org>; Sat,  7 Nov 2026 00:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NDSTBtoG;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=E1ulno/0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pp459xIT1NtDmGQfWrICXru4jghxJL9fC9sb08FjdVA=; b=NDSTBtoGW3eB/3f4H21SjD0yhl
	fS8sWfwHqyBjLkFPQuwZuSw2vO5q2IySoyPelRNsQ3xFurdpYKSFWS/8U53CK6yG1y+My1jtOYe8j
	c+NpWHAW1pU2HvKMcj9D3BJm1MkX/5GinHMYptgIoYczcfZXIURbVCVjdUqPkqalXVtw3wFGBEar0
	RGzwR21Bor63ReuWpdPVah1BySqqzfsXkMByhBsMzOlfy795wX5h6eqzsxgb5tNHtxAj38WxdCiKU
	sUSSlQnESRUenc6OiE2W/uPJkUFrM+M6TTrKIAVy5QWYEPcFcamAHLjb+cMKrc86oJgkBxJl1wvfC
	jKrvfIuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPUHZ-0000000Dv8M-3MrN;
	Sat, 07 Nov 2026 00:27:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPUFY-0000000DuyK-2C1d
	for linux-phy@lists.infradead.org;
	Sat, 07 Nov 2026 00:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1794011139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cg9pFndiAQ2c3E3VGmGq+B5hFIactzj03FyWxZNckcc=;
	b=E1ulno/0MAXz0zUCh8mjcWzFOTjLfBQukvH38aUnCsPWHzb5/SnlTxDPXnxbkLOvVM37pW
	mnCWoLxrNTbYnogMhHvl7dpkOqgYAb7IlEFEiafFwbbe25Xux8kHxKlSkeKdhmsK2KvFFV
	+U5AUP859KkcEqPkZNTkfAliTRtbTnw=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-16-LwniLOYtOaGoj8klA3mmxA-1; Fri, 06 Nov 2026 19:25:38 -0500
X-MC-Unique: LwniLOYtOaGoj8klA3mmxA-1
X-Mimecast-MFC-AGG-ID: LwniLOYtOaGoj8klA3mmxA_1794011138
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93cb7f9bb86so294579985a.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 16:25:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794011138; x=1794615938;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cg9pFndiAQ2c3E3VGmGq+B5hFIactzj03FyWxZNckcc=;
        b=gIeoSAAtHi5kYazHnkzhfkv4rv2SqabDIMAzaJdtE3W2dXmOwcCnASn3q+f1n/H4It
         9DLe89Vj7NPwx9ZwOQHI8t9U2z+ucXgPCRviPOGFSeJjne7bUoRpIjtkLlviayWIy2kE
         wj+QRzisZb9kgvuSJ2v+BIDBAuswvc5MFpv6lj1R52VV6pQIVVK71BSIKZHty4+YGB9O
         71FrI1Wujgn0MGLg2TXhSB5+JIZF/33wmvPvCgYMMHID+3uarUR4Plti2pn61h3FYPCb
         sh40fjgFU89MthL4JrtUWRfjdmF0X6JmWNU84RRsL/d3i+wP3krsEMKDiMxdQTIh2fe8
         yHog==
X-Gm-Message-State: APuU4Z/zGN9seajwjRF495q/b3GrC9aCGO+y1GAwXSYHfjDF2jGnFC/0
	mWbMf8w2JceKkXJ9ZyG2oKawuMWy1Ggzpxb3FcsY2wzl9cxnzWn/4+LquuV5c796/AuHy1cKbrZ
	2BX9PA3PYnjVtADyGAQa4H9qoNn4BfqoavX/LUcjgSKcLtzDYHyrTqFuhuzKPa/VsTJQ=
X-Gm-Gg: AYBFou2wQttDcqm6MzuwosXFr//F1DwElqGCBibLyiNVLH9KdtzwKm6ZkJHAdmDes5T
	irGvc6Do3bzsa/MAIrpeJB1knTArdgRNz/yNigmwcLh7us8SmJnZVZCWB0oulX1DgUKIAdEpDiU
	6yXcIvdQ/yk1KfJg5brJDfj3HncUackutcSGTIpfzZcLWz4o9gLVff9rxMjbAztzUF6v783itsX
	zV5Bi9OKcT9DTcGh+fEOJhP1ojetqAHPaBPlF3XZ9V7ds30O1/1t0WN7Z1FFRXPLAFZ/TDQ1Xg8
	TDnJy17xyX6nYgnAD3ffRsKt3dnvl436We+Cm0OfbYpDZV6G/DOlyxTDtlwkvXAHFzuDSP2yi0f
	r81nTb5oiLxJ5l55y4QhfmmyT6xZCNGpYI4T7moc9ZkE41K6i7NDGKwSFXlEJlYNkTzSYbChE7g
	0viA9iXAvIRZtcaBkF
X-Received: by 2002:a05:620a:414b:b0:940:f224:5a70 with SMTP id af79cd13be357-945f362ec8dmr668083085a.72.1794011137493;
        Fri, 06 Nov 2026 16:25:37 -0800 (PST)
X-Received: by 2002:a05:620a:414b:b0:940:f224:5a70 with SMTP id af79cd13be357-945f362ec8dmr668080185a.72.1794011137017;
        Fri, 06 Nov 2026 16:25:37 -0800 (PST)
Received: from bmasney-x1.rmtuswv.csb ([69.43.42.202])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ea6ab543csm32089856d6.39.2026.11.06.16.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 16:25:36 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 06 Nov 2026 19:25:20 -0500
Subject: [PATCH 1/2] phy: ti: omap-control: convert to
 subsys_platform_driver()
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-phy-subsys-v1-1-9a443422e563@redhat.com>
References: <20261106-phy-subsys-v1-0-9a443422e563@redhat.com>
In-Reply-To: <20261106-phy-subsys-v1-0-9a443422e563@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.17-dev-d96cb
X-Developer-Signature: v=1; a=openpgp-sha256; l=1051; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=lQFgVtCGl8A4/MEJxmwBSoolju9xUsS+nYB3gk5iu1Y=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGLLe5f92P9xRvnqXvmvGY4lpy9fEnG9ha2A5YVP/xY5jB
 8ODdp/VHaUsDGJcDLJiiixLco0KIlJX2d67o8kCM4eVCWQIAxenAEzkjTXDf487H5qm/Q4O5Awy
 6nr7LdT8x6FcjmOHDxx+8Zz53fU5jIsYGZofn9rO4cI4ec7Msi8SMhs+ThbvNtX4zmhx19cw8Ex
 iKxMA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -_l2J7CghHgqc9_zysSZGaIRw7k8SEOovXePGt3ELds_1794011138
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_162603_864328_EF20A738 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Reduce boilerplate code in this driver and convert it over to use
the macro subsys_platform_driver().

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/ti/phy-omap-control.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/phy/ti/phy-omap-control.c b/drivers/phy/ti/phy-omap-control.c
index 4968434312f8..3747401600a6 100644
--- a/drivers/phy/ti/phy-omap-control.c
+++ b/drivers/phy/ti/phy-omap-control.c
@@ -322,17 +322,7 @@ static struct platform_driver omap_control_phy_driver = {
 	},
 };
 
-static int __init omap_control_phy_init(void)
-{
-	return platform_driver_register(&omap_control_phy_driver);
-}
-subsys_initcall(omap_control_phy_init);
-
-static void __exit omap_control_phy_exit(void)
-{
-	platform_driver_unregister(&omap_control_phy_driver);
-}
-module_exit(omap_control_phy_exit);
+subsys_platform_driver(omap_control_phy_driver);
 
 MODULE_AUTHOR("Texas Instruments Inc.");
 MODULE_DESCRIPTION("OMAP Control Module PHY Driver");

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
