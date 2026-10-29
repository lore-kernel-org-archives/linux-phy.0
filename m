Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414D5606A321
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 21:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=266JEVfG;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=C9uuRTcv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pQaQpzMZQ3OnQUkxde9k9IXEif94sU7O8O/0qXaWj4M=; b=266JEVfG8vFx8fmTdNbCOCNa0V
	xzLh0IskK+96rtc7o/cXNzigCRehhHRfydkShVu2yxssvK+l4sc7f3ffOMQBYghvY/wIXnnXfLW5g
	kz3daeBFblslfVCl3x6Fa5YzGJsJDweeUnibX6SbJcaT+rq47/XwitISf1OaCOnFqDR8EbDv4gLIE
	tutlqRCdBU4spI23kI5lFX0RKX1GsA7iW6kSmIEs4MTYwqlWAjTqnZHZIpgL6okgqRaEv+LGwJnj4
	jabQAQGwNPJZwQZFsoOhQBPuPmF1BCYNttIIsfnHRLKRGykSZOokWNFNCshOkHNczaLtUwaf0tkHB
	wlq48g5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXdP-0000000APs8-3xV3;
	Thu, 29 Oct 2026 21:26:07 +0000
Received: from mail-pj1-x1062.google.com ([2607:f8b0:4864:20::1062])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXd1-0000000APaW-2GOJ
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 21:25:45 +0000
Received: by mail-pj1-x1062.google.com with SMTP id 98e67ed59e1d1-3ae7626d14aso24058a91.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793309143; x=1793913943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=p/JejeyXs+a2BV9S3GP+DdWRq7anNloDPZ8ebf8LoQg=;
        b=pWrrjgUInl0exQ/tXERay5n1vsJcSc1IeCG9Njmdk3VFHJhzF3uHgt2pQA9YcrQ2mU
         DRuz53yB3wcTkN6fTbAcFDNxQ1br6TzpBjTmKPPP6v/u+KOLUlMH6T+xJ81UGBFf6V6O
         smtuyrsEJl5NDn9y7nfWFZoaoEC+zFfny0KYLO03wUEkT0pAoMi+5qTehsCh9CntoAYb
         O5gKRwFMu+GP4soVeSSLVySaKC2CIhYc+jDe0kK07K3u44vY3vpQv3OFdEr6/hE0pRPh
         DUItV72jYWzhRMFVHwtqsefLtgPr/P4yMP+U6XPC8PwA2fCpbeUkjJAxuuKQwRPHVI+4
         Zm6g==
X-Forwarded-Encrypted: i=1; AKwUvBzeBMQDQ53ZEc9AAJQGUDMl7DfeiXB64MmjmeWEUAx0j6/MlChIqByafmxp6PIrZhc9BQ8PE0HAVGs=@lists.infradead.org
X-Gm-Message-State: AFq9FYI2Tts+l8c2zfkzXw3cCQYDrgjFAgKFiSKAVi4aNrFZRGO0F3EA
	e3myE6RuEDbbCTkBQxYLEJ3q2/p9WynwR2p82QcEvCqU4Ogy6qGtFFLfIRsB0lO9of67SG/2KkZ
	NJq4OeeN+adkfEZFzZbMvQvemqtZ85EEdaPLcw5KWGrEebkopBBmvv5GzFtGva0A2fJwuJX+gtv
	cX7hF3q5SbOLxDo7uExk6RuYDLTr7upCi1UJGXyWpdJdEHmDSfMJ3qftpxdbJfDhYbTW6TzRPN7
	aRr/wE44wDyPtt8D+hj8W/xKIdV
X-Gm-Gg: AYBFou37MWWLC3Gmd9FfSLUPmooOd1SiUCl0bgJjSNFIv3koTGRG65Zq+89S4AVkLoq
	iKi2S0rMzE1vP7OzTIgzQJW8FrmI5pAUhJYW/W7xL5og2jmrU13X8iUSLAc7ZcNkz7J1NnAIKAZ
	mSmRHk61oKyjgaQUSFYGRnSy3V5uyNcmPoEtT5H8vY1w2Lvn2flnlJFXQPxfmpht7mkElAKIQ+X
	4vJUL+I81Sb9UAdpOiCMKhTgClZVeCRAZjq7O/xratwZaUCBdlJIEsNq8IIy8ctDtMhbbhvmU1K
	5tR8V6DNmlAi49o2LPRR5Sj9rxTtFxg/XX97nMXeA4XyBGziNsR1pd1IpBE49lzALv4Yu+d2h4O
	QaXLAHGs+8U2T2PMMbOK5b3PwSM90n47m2HFuFlMkfRKNak+CmceWP+FNiEkLoG289L+HsCbNYD
	gq3Mmw8BEc3GD99t39HLJtxQG6Z+xL30msi5GZV1cS
X-Received: by 2002:a17:90b:51cf:b0:3ab:de4:7fa5 with SMTP id 98e67ed59e1d1-3ae898394c0mr176839a91.56.1793309142859;
        Thu, 29 Oct 2026 14:25:42 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae85eb5999sm136860a91.1.2026.10.29.14.25.42
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 14:25:42 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5363763b556so55823651cf.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793309141; x=1793913941; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p/JejeyXs+a2BV9S3GP+DdWRq7anNloDPZ8ebf8LoQg=;
        b=C9uuRTcv3PQQmOv/G2dcZ1QgWMEHak6/f/dIx47I6YoHbt1TMFq3dQ9orEEWf7rJQE
         7akyGwgkQEQxnw8/iSEnlWbfW9NkZkGeivVr4a876EWArSkga8McYhmD0GdtytAbE6vP
         tBX4RYze7IVQccpLfArXoO2NEn9MTlbTBhBps=
X-Forwarded-Encrypted: i=1; AKwUvBxglZctCuJJ3abrYlKDKMH9MENkPsHw+fZcfIpO8T1kX/W2AsY1CXTcsMfCx/DxFAhpOqenPH+Tsx8=@lists.infradead.org
X-Received: by 2002:ac8:5dd1:0:b0:536:7cc1:4b6b with SMTP id d75a77b69052e-542b6d60c04mr5567281cf.27.1793309141409;
        Thu, 29 Oct 2026 14:25:41 -0700 (PDT)
X-Received: by 2002:ac8:5dd1:0:b0:536:7cc1:4b6b with SMTP id d75a77b69052e-542b6d60c04mr5566901cf.27.1793309140847;
        Thu, 29 Oct 2026 14:25:40 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca314fb6csm6384936d6.34.2026.10.29.14.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:25:40 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: linux-kernel@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	linux-ide@vger.kernel.org (open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM ARCHITECTURE),
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v4 6/6] ARM: dts: broadcom: Enable SATA on BCM958625HR
Date: Thu, 29 Oct 2026 14:25:13 -0700
Message-ID: <20261029212513.4126083-7-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_142543_750102_CA9E6BE1 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

Commit 77416ab35f57 ("ARM: dts: NSP: Disable AHCI controller for HR NSP
boards") disabled AHCI after reports of boot hangs. Both SATA PHYs
remain enabled, but the disabled controller leaves the eSATA ports
unavailable.

With explicit IDM clock/reset setup and the corrected shared PHY
register aperture in place, enable the controller on BCM958625HR.

Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm/boot/dts/broadcom/bcm958625hr.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm958625hr.dts b/arch/arm/boot/dts/broadcom/bcm958625hr.dts
index 53acae385822..f6717ca76aef 100644
--- a/arch/arm/boot/dts/broadcom/bcm958625hr.dts
+++ b/arch/arm/boot/dts/broadcom/bcm958625hr.dts
@@ -184,6 +184,7 @@ partition@700000 {
 
 &sata {
 	/delete-property/ dma-coherent;
+	status = "okay";
 };
 
 &sata_phy0 {
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
