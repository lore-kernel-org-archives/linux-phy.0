Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D6E606A31D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 21:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ebrVfyEg;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=JPsQuEou
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1FfeBu9CIEZO5GoO7nyxVr400nDFB0Hbw3tw5xss6lU=; b=ebrVfyEgWnnrjfRRLug9oMXAB7
	cctwCBTdnOtlgKdmttbBLehOnPEdAVMakzAq67mwbJv5utcsEJdEbgh1lkF8F1XbiEcPUeW0/zm8N
	6yhjfPSh3pGcvjjgV1BcFQ8+QsuvVyb2fH4E5yb6pOAOMzmr92aiXYF1CH0Xk9t+1avgM1hGM2m1X
	+qYwNrdZaOiM8Ls0yKWWzFhzUmpCaq4mCvLviZy9vBABqPjKqO2WVj+6NUJYtBD+KCiCREdPbXXSg
	giKwmEUUIDR/gu31gBdjUo51E2PIhIpnHKHmXwxeI6klZcdsRGqqEwKNQMYgeCqWf83T4pOZTCobK
	RztTxL9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXdD-0000000APiK-2xLN;
	Thu, 29 Oct 2026 21:25:55 +0000
Received: from mail-qk1-x763.google.com ([2607:f8b0:4864:20::763])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXcz-0000000APYo-1dwi
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 21:25:43 +0000
Received: by mail-qk1-x763.google.com with SMTP id af79cd13be357-93f22a8515eso223370485a.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793309139; x=1793913939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LpNaT8q0SGvIEMd/N1soAJa02WC3uqlIifzAi5jpoGQ=;
        b=VF7oqNcvlu8a4O/DBjAT+PgpVfX8be/iJRTNq6CoB5g42vJKW2wj/AFkzzHV/NQkhr
         k/yxViPJa9zwEyGlmcP35r3zJAeHVBfc2h0x0Q9yCXMXid/1MbdKl5b96h//AR58MSNG
         k7uwyHTfkvQ8CvhjimV182/YqbBehfv8uIPN29OLV5H0Bm+tBFPLInOEK5+0N++QiBJZ
         0z/e8Xxq+FuX5XOvTpl/wuc2igDjv4MJbEXn54+xCP9032zHw0djQbSdpr2KRbGG8wKT
         Eey5I69Cw4WcTGq0YAeMQOolSlEeGsQUy+KoTAHwgaA9GLCWMmaH/hyq2uIUCQFRGZPm
         5nyw==
X-Forwarded-Encrypted: i=1; AKwUvByzhxQJmtBZXMMPuZ7bQQg0slNvnsXMGfSS0ARCsvxINFESPWpsDKZF6Sb/qzaAeDLLywBKbimn8nA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIYwNAMcjBmXXpj6icqYjhQA9aSt3m6Lg+rbgAVBJhCEebDdqQl
	v530oS28jghRuFjfhp5zY/xY/9WNTmIoSMzJytUEjenxg8QBzcPPq1nZ40pxyvQe4SsntBiyjS/
	3fKGUH19FgGQaFnBTXNH/+sKWkfStUN6kW8Aryjm4MCFci0Kpdynt0wdqQWiur/7TPcobEAdoEB
	4caqxiPGxN4iq+xSYiWvTT8A1ykr54CKN51odXTymFNWjyQXjFY5rMIAm9WrvmAG87ETXaOsASB
	eVEa0nr2K8WpjvJfyooUZNYQ7Y0
X-Gm-Gg: AYBFou3UW1CEI4Z+yEVarumxKRZucgfywWDiec+hSSi3rEncczlG8Us8ooqahln89aS
	Ir3qgLRagratolL0aZC/YDiQirkxVWEzewY0NUoFK7iTvzuF0kXSYVVlx4WjXQ/LI67KreRM1ea
	3uFslYGK1sZsNCztd2wowqp2jiBevnbKbT4MrOeKSYXwcymplxgDjQfWKFB6HWW3tq6O4SItXe9
	2crFNwqL6v2/D8tk9I9IHY4LZCtJ14ZmM9ejf34Ap9XuG/G+Sv2VoxANactEzhL3kPdyzfvoqYT
	aPlPJ41z/VnHWSonlGLd1Bnh0HgeQOJVr4H/ccaIHj/OjD0BQMiqQ0ZyzigqSJ8OBogwInQs9fP
	CAZEgExS5tzmLDfVNTGX1NtCeYduYsQFMkUCtr7W7WDTP2wR5I6uHC8N2WER5wzvlhcRsmJ0mQL
	QJRfVcXWQSLdWrp3/deIS2EepU4wyeEy3kgYuHW0bi
X-Received: by 2002:a05:620a:4541:b0:93e:fc4e:c48b with SMTP id af79cd13be357-944217f7cedmr82639985a.61.1793309139589;
        Thu, 29 Oct 2026 14:25:39 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id af79cd13be357-9442122a89bsm6019685a.10.2026.10.29.14.25.39
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 14:25:39 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91c75523074so1868796d6.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793309139; x=1793913939; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LpNaT8q0SGvIEMd/N1soAJa02WC3uqlIifzAi5jpoGQ=;
        b=JPsQuEoucqBFG0fYMUKActWjXcnVOFRS63t7lzQlY4FlYdV54g6Tlcyk3xlhx4EkNL
         +HTyi5bF6haHFxjC2c5weRZn2Tn+CQFUY44ICOKqCA35qnl1cQL2CmDCwGnrGziL1D14
         wokMmlBYMl+muzeKdhev9VD6NMhvhvtVZzmkY=
X-Forwarded-Encrypted: i=1; AKwUvBzukVYxXRQx2hNkohnFA/0oDUkTZdcxb8Yroq+FtqIgB3syPJdNXWJl+u38db99V9qVFDZD+t1gUHU=@lists.infradead.org
X-Received: by 2002:a05:6214:5f10:b0:91b:8296:3b88 with SMTP id 6a1803df08f44-91ca4ae90b0mr3372276d6.15.1793309138752;
        Thu, 29 Oct 2026 14:25:38 -0700 (PDT)
X-Received: by 2002:a05:6214:5f10:b0:91b:8296:3b88 with SMTP id 6a1803df08f44-91ca4ae90b0mr3371906d6.15.1793309138161;
        Thu, 29 Oct 2026 14:25:38 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca314fb6csm6384936d6.34.2026.10.29.14.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:25:37 -0700 (PDT)
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
Subject: [PATCH v4 5/6] ARM: dts: broadcom: Use noncoherent SATA DMA on BCM958625HR
Date: Thu, 29 Oct 2026 14:25:12 -0700
Message-ID: <20261029212513.4126083-6-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_142541_445533_D075493C 
X-CRM114-Status: GOOD (  10.89  )
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

The AHCI controller on BCM958625HR fails with the dma-coherent property
inherited from bcm-nsp.dtsi. Soft reset times out waiting for the first
FIS command, subsequent engine resets fail, and the disk is not detected.

AHCI allocates its command tables and received-FIS buffers with the DMA
API. Declaring the controller coherent bypasses the cache handling that
these buffers require on this board. Removing the property restores
hard disk detection and operation, as confirmed with a diagnostic DTB
that changed only this property.

Use noncoherent DMA for SATA on BCM958625HR, matching the downstream SDK.

Fixes: 56e2ff0346a3 ("ARM: dts: NSP: Add dma-coherent to relevant DT entries")
Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm/boot/dts/broadcom/bcm958625hr.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm958625hr.dts b/arch/arm/boot/dts/broadcom/bcm958625hr.dts
index a9b6aa04d573..53acae385822 100644
--- a/arch/arm/boot/dts/broadcom/bcm958625hr.dts
+++ b/arch/arm/boot/dts/broadcom/bcm958625hr.dts
@@ -182,6 +182,10 @@ partition@700000 {
 	};
 };
 
+&sata {
+	/delete-property/ dma-coherent;
+};
+
 &sata_phy0 {
 	status = "okay";
 };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
