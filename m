Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543FB606A323
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 18:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uygL73IZ;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=aXJMLxHL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pQaQpzMZQ3OnQUkxde9k9IXEif94sU7O8O/0qXaWj4M=; b=uygL73IZe7t/d5prqhhurUBb13
	p+SjkmrAgnkQSntIkVwOo2o0OJLWgaPs/S+VmTbn1CamCmiCNbf2g1JRNfx72f6f50ZGsv/Ph8bXj
	P6lKeiVTeR/JCMSClmXVVaI2jmrzos7l4dzS4NnQO+Y8E5pE3RhztpcSk1PIOuGjwqBCnarVhr9t0
	jNGgvY/Wc4tyqngq1GUiD7g9fqA2fJfksilRxkn+RrSjf7rCoRd9D27D4h/evtKYgXR/QNyXMSAVH
	F4mDK8sZmBzu8OzlSNXycuBekQXeOVWW2YFpsVYMI6R/fu/8psGdwFDTtC6nHtFFrcYjoitZBcfgI
	M9hVDVJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPSL-000000034sh-3i6w;
	Mon, 26 Oct 2026 18:30:01 +0000
Received: from mail-pj1-x1063.google.com ([2607:f8b0:4864:20::1063])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPS0-000000034dQ-31Gb
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 18:29:42 +0000
Received: by mail-pj1-x1063.google.com with SMTP id 98e67ed59e1d1-3acc96a256dso1863701a91.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793039380; x=1793644180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=p/JejeyXs+a2BV9S3GP+DdWRq7anNloDPZ8ebf8LoQg=;
        b=HMU1GQ9qZw2S9WNrt+voZC23m8rudiSE7IXQoQs/9KNanSUcQPZtxdXt68to8DnXgV
         zrq6N0jMvZ3xIUNBp+BD2HWrzHenn0CtA81wJc2UWJxgeKhwm6sKAoU/zdtGAyAf5flq
         bJhQSaLuv7u7fso4XY/vxNp9I2VkB4tjytsvNq3OKKuyekYjVlk7J5DjI47fGpObipFw
         a8epy7RFCinBUHub/GdyT57dlrOie31CThNmhtab16s+elXSBxsAyNE7lN58d3Uvgnzn
         ToZ/1o8MBCEEZRjrpnF0n9XhipDIQsJWWmjnxGjW4gr8mt3xlzrxXM+KmTxnd1gaIe1s
         mxuQ==
X-Forwarded-Encrypted: i=1; AKwUvBzuXnr6kwRHVuaE+tXLABpR9GLHhX/aTyRB/ZWGdTy1jSTHRJkGZk0zHBUPqoeSQ5XMDj9Pu5JV9Ms=@lists.infradead.org
X-Gm-Message-State: AFq9FYJwcPvIzTrwH7/Dd5kvjl1aCf31KVGXe5Dn7MQEcYHs1JenosBN
	1FOaYE3x8w37yjnpxsHW0WKX7Z+Xw+3Wkid6CTM4Tu0XbpTkW8hgnoKExUGiVGUIKoi6C2t/XfW
	2NVhQ9GCdsoWYuyssEivqYKc7AjwGwdgRDrAnQw74k6+l8ZY0c3vIAniY3l9UHsBP5SDaGjtS9G
	O9jW1aetTlnk/P8aGvZZvJN8gMuKqiS+ImAkgSzNNJu+adetwNZItLBEKvk4HuQAyO9f+Ql58V2
	N8g971vcexWwDbCfgnYOEXtEQ4t
X-Gm-Gg: AYBFou2FQ/E+lcBfNQcBnfCqkPLDNy5zzdL0euZCqWH0YRoYbOuqgcFi4ng7vWtN1Vg
	+oNKQ7c5yQ/emZ+P5NmuHMvsumWuqIe9O+k0CM3avbduBuJMCe0SJ7omULIME3okqFFqpjQHYB8
	3OQK2+5zwIlbjWmjjZ+xDIC5kz9qcM6kbW6OueknkX5Dqk2pz7kTFeqTXxp0JSMHqW6zIab9XJF
	gEu753ngh1/IAxDXyBN0opdke/MFx/XI3IMWyAy1k3LMoiruNv50JpfKAyRDgJvCtulKgVOAase
	nEPPFGu6X7Jb+505qq0L38uxR4GJEwt45uDcbo8ru2UuZweo+GpUOnRkjf26OPWPGE2qZdKRM7R
	Es1a2MKj5B9EQyK+ynRB4e/9LOhsw62zBS8sm7ghopa6EY5jHZDIOsCYA9h2SDWeaqvcD9zy5Ww
	rG9GehvakeudupQIYViieqayDOi7yRDM4bG1RtbLn8
X-Received: by 2002:a17:90b:4d8c:b0:3ac:a521:95e with SMTP id 98e67ed59e1d1-3adead4f7ebmr6570617a91.47.1793039379631;
        Mon, 26 Oct 2026 11:29:39 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae407e4ce3sm236687a91.6.2026.10.26.11.29.38
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 11:29:39 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-359b81ad4e8so4801760eec.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 11:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793039377; x=1793644177; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p/JejeyXs+a2BV9S3GP+DdWRq7anNloDPZ8ebf8LoQg=;
        b=aXJMLxHLSXegi3SvBnFjWik+Y6rf0FA6TMH9egdLOO6IeuO7/6ik9vwTMMxIgzlRSy
         0v54E/bHjA4x2XUSOlU06dj/FiuEniNqePJPzjSra15BzVMSCjwOBkkqdFnFA7fgOqx+
         nTjq2VNQFE3OwBKtfWm2MdLK7fw/KSaxsjRZs=
X-Forwarded-Encrypted: i=1; AKwUvBxiysx1ftDy1O+LP4BGQk+2oaRIUsmDPrjg/fnK9itrkzoSQs7WqQrrBiKSxVlnwghkbrOPCPzj2QM=@lists.infradead.org
X-Received: by 2002:a05:7301:b0b:b0:365:921:8ce with SMTP id 5a478bee46e88-369e84e8888mr9413473eec.32.1793039376837;
        Mon, 26 Oct 2026 11:29:36 -0700 (PDT)
X-Received: by 2002:a05:7301:b0b:b0:365:921:8ce with SMTP id 5a478bee46e88-369e84e8888mr9413439eec.32.1793039376159;
        Mon, 26 Oct 2026 11:29:36 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a01fa4c58sm24657259eec.21.2026.10.26.11.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 11:29:35 -0700 (PDT)
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
Subject: [PATCH v2 6/6] ARM: dts: broadcom: Enable SATA on BCM958625HR
Date: Mon, 26 Oct 2026 11:28:56 -0700
Message-ID: <20261026182856.3168686-7-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
References: <20261026182856.3168686-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_112940_756983_6FF0EFF1 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
