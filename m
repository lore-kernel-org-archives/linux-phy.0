Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90084606A326
	for <linux-phy@archiver.kernel.org>; Sat,  7 Nov 2026 00:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BZ+EENe5;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=BdLkqzr6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=6g3/ETz0I3K1FAxYGcGA3dhlQujMFvmIiPng+8iVWRY=; b=BZ+EENe5iLYYCMaq6WhYtZ5bUq
	BIXReNtIUqhoyby2+G98X90rgUWskc7nx3YgN4iAQ88ltszwpGz8C6v9mddFyGQa7P4M2ih0V5mmT
	eA6uGNG4256i8TfTvOVubuGAqUPcMTpqTaM5k5UArFaBQtS18Jc9LRGQnxvMfa3lInZ3SqYH9IX9I
	g1OLxW9yMIjTEA/vvYh6BP6W+9vyn6fx7kMDsbiq1vnNRulT+IT3DK80UkruSCkSbkDCyI7L25Mok
	qMwTvl3cIYBLPDWzJQknehn3W5DwqZSLY5U5l5OXcSgilAAoRPPb3Sy22R3UXNUi1/BWT/jssErN4
	3UAitVUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPUHa-0000000Dv8W-0p9s;
	Sat, 07 Nov 2026 00:27:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPUG3-0000000Dv29-3hAh
	for linux-phy@lists.infradead.org;
	Sat, 07 Nov 2026 00:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1794011170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=v5HBDmcj0GX2lBmhlBM7xuasV234qwUB54gNIX51b6k=;
	b=BdLkqzr66WZP5NARFDX1uaGuHXEMcyYDWhwq8Sl99sdg9FwU5U36KnQFL8PEqCgaCFeHui
	DJV4ofWLm01T+0MXUL390wgnsaquWsjQNJHvpgPwLp/2fxvxqEOZqMwE1A1apcQgZ/NiH3
	jCW4pAlvxUq+a/b+hzRQEKiFpCC2slg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-uZIoFL2ZM5OMe0WeGzR2FA-1; Fri, 06 Nov 2026 19:25:36 -0500
X-MC-Unique: uZIoFL2ZM5OMe0WeGzR2FA-1
X-Mimecast-MFC-AGG-ID: uZIoFL2ZM5OMe0WeGzR2FA_1794011136
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91e987a4099so25527456d6.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 16:25:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794011136; x=1794615936;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=v5HBDmcj0GX2lBmhlBM7xuasV234qwUB54gNIX51b6k=;
        b=gf9Jh+NY+lRKOAtKOtQLdiA6Z3ox5p2AvVuKn4DOVzqtOos68qfbrRsDtK2G3Eem0e
         Z/XCFrk3x6rNLro8swHii53nioTBmpTmLqDgw1KTGjdeYK88ARNL489Su3dsfYQhU7l4
         iZl5m2MMqbIMV/Av6Icb7T0sdpgb6aB+BHK6t/TbDq+48CJ2ZrY+UW+s4cobo4UShjjO
         scvUK+c/KofOvt3pC+qKqU/gHOQmJVDQPi85McpMUS60+v3wyBqhlRNaqGn4K874ved6
         3psa7rWzjXr3CmRn6EV5kZHPP/ipLox6XoukjNfdawNlI8e2w5xhnG2lhHwJe+5d3lcX
         Jxaw==
X-Gm-Message-State: APuU4Z8TytinauqtniEmUXXTSpzRZrQgGsXzcYwsb5FZXzl1HMC/lfIQ
	CfLUKxqMX3AvBRLDT4w9rIzgY77i7E2UCPl6ISIq/Bo0oGePnifIyX5Rde13R2GvlohDJrYbrHn
	msxgbFzATAKozEVje8omzkPCxuzUu4hH9KSbHEOcgQDR+vbne0ZSxFAeWGbRzX6bdxjg=
X-Gm-Gg: AYBFou1GydOyvM/DBM+r014K4C2a4pPQjhTrsjJWKYFMHk27vx7XceqqwlxfI/Nfcml
	Po3quxfwl3cMsqPtSehaCggKDHClDwmD33l2w95LOwHRGPzrtzeevwLblUsMyoDzmoJjt7IDv4B
	YYleaaP56SU5010zXPeiio/zNscz0cOsUJZ17VgMKmC2f1CQbcpBhVT2G3QuDldZDIwSLvDArTI
	YZk/l/JMpaLMixC4eETikK8HRbBeR1JeQYe5ptSxf0rKaFD8ZErOoPwFMzZR9O8AKZnw36heKf4
	ZeLeUPqdbjrzIHkPcYPJC0ly/awHeQPehcoIDIkYazYtbwykFxKp/h+RLRxs4dNQKM/uAvT59Qp
	qVq7Y1/zBE2WpaIIVCmRWTym8C7C9uxk78Mee/jVX67CSzasARrEghrrsvLhhqDX9xkkNSofhDS
	04yu4Fi+avd65kVl7q
X-Received: by 2002:a05:6214:5d0b:b0:91e:850b:770b with SMTP id 6a1803df08f44-91ea96a62damr61889756d6.17.1794011136307;
        Fri, 06 Nov 2026 16:25:36 -0800 (PST)
X-Received: by 2002:a05:6214:5d0b:b0:91e:850b:770b with SMTP id 6a1803df08f44-91ea96a62damr61889396d6.17.1794011135846;
        Fri, 06 Nov 2026 16:25:35 -0800 (PST)
Received: from bmasney-x1.rmtuswv.csb ([69.43.42.202])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ea6ab543csm32089856d6.39.2026.11.06.16.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 16:25:35 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Subject: [PATCH 0/2] phy: convert to subsys_platform_driver()
Date: Fri, 06 Nov 2026 19:25:19 -0500
Message-Id: <20261106-phy-subsys-v1-0-9a443422e563@redhat.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ5AMBCF4avIrDVpG5mEq4gFNdWxQDoIEXdXL
 L/kvf8CocgkUGUXRNpZeJ4STJ6BC+00kOI+Gay2aIxGtYRTydbJKcoQYektYlF6SIclkufji9X
 N77Qcya1vAe77AXPe4MJuAAAA
X-Change-ID: 20261106-phy-subsys-1ee69f26649f
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.17-dev-d96cb
X-Developer-Signature: v=1; a=openpgp-sha256; l=729; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=6hJaXWA30Jxx6HByRtYUmyJvFx2Jm5Df1B9uMcHm6ow=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGLLe5f+037brxKLVVa99LVzl1/7lSW0xDvyd6/m+yGJtv
 IfwNjOWjlIWBjEuBlkxRZYluUYFEamrbO/d0WSBmcPKBDKEgYtTACbiE87IcCPz/RHZ8kMCG/h0
 1ngtj/DYdp09327poxTzLecsxR9nSDD8d3v+Nrc1umHXjH2bF5zWNSyuXS2T6Sx9NaqKJzXzcdw
 NHgA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IQKwRKdK9UrOrjAhUemx2blnSoty-_qSDn_zEQRyDDE_1794011136
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_162628_538040_7F5844B5 
X-CRM114-Status: UNSURE (   5.32  )
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
X-Spam-Status: No, score=-21.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Reduce boilerplate code in these drivers and convert them over to use
the macro subsys_platform_driver().

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
Brian Masney (2):
      phy: ti: omap-control: convert to subsys_platform_driver()
      phy: ti: phy-twl4030-usb: convert to subsys_platform_driver()

 drivers/phy/ti/phy-omap-control.c | 12 +-----------
 drivers/phy/ti/phy-twl4030-usb.c  | 12 +-----------
 2 files changed, 2 insertions(+), 22 deletions(-)
---
base-commit: ddfe51b0a0f5dc9e415cc2c8ad8db17532dd426b
base-tree: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
change-id: 20261106-phy-subsys-1ee69f26649f

Best regards,
--  
Brian Masney <bmasney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
