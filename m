Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2F5606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 21:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nZR4Q1dd;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=Lzf9m9+P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=i3hEy0OlEG0I5avNx8KyQKPvlA+ksrnRI3xiiGk5sok=; b=nZR4Q1ddkWG1KUPRSCy2sdRTkp
	hA9pm3lNBJyVEYTck6tSY0s12yw2lc2HYMfjWtrBBMnodv8+0VPPAedn90GZQcUCcPNlNZMHwpGc7
	BwWQDJnZR2a+GKcGAv826lxKydCfSDtEsJibNOJm2e1Db4zV0z5tOMG3diUuJiJzPv2kqPK3ddlyz
	OySeSW9JkGbc46lnerc2wJuWwlxg3C5O0yekKNGPqWwXfubCjjUcBUA4UDpTjjDNu6ktl1hTKu9rD
	bFQjFXfqd7r4UUR0NnpH1GaxQUJgv12lXWh6sUh1Cs0ngkR5Y+j8PxBDwqGSQZ6X2NA78KIzh5FqE
	2K6hKhzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXdD-0000000APiA-2dFR;
	Thu, 29 Oct 2026 21:25:55 +0000
Received: from mail-pj1-x1064.google.com ([2607:f8b0:4864:20::1064])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMXcw-0000000APWp-1u8o
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 21:25:39 +0000
Received: by mail-pj1-x1064.google.com with SMTP id 98e67ed59e1d1-3ab752f6244so56627a91.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793309137; x=1793913937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1MIbl2zx8FaPW7oX7ST7fbgJ9gFOgJZeuRxXV0E1qzg=;
        b=SffteNw9Z8fE7zQT7xwGmWNtiFZKbvXPcxkJZ2H/pqiTOI/1+wZc2wg/xBiLEtjtR4
         xUkEVBQWPijSxMfL1tNb9ixhui5AVjBOxHXZ1qOCQ6lhUUJuW2f63GxFbR4Ywix3oRim
         HHa7WgvgEmhgGPownEpunuei8yNGI9FlZ2f/K6XLUI0RbT+R9hIeODdWhHuYw43NABPq
         WHd8RmRXUeJ2yUpbyemrHGY78HJCfhfThpg1lpjlF9R39htgHaGn22lzR+9adRCRJoUS
         Y7A0RH7uTnSEJQn0pZ1j8bZzYptJ3tqNMH8TRmGAp7JftMUZR4t34ytQl4iGJtIEVT3+
         0Nqw==
X-Forwarded-Encrypted: i=1; AKwUvBwwEbOfYiZbkV3ppJWR4d5ogQjfF04tbmWIJGZ47y/N7D/5p6agVDKOHw5WDT3e3SwKqHmjRjFiQjQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYLcrVwn+bzx27REe6Xx6jFRtzqErLSgA+CvhirQir4UIyEUh6FR
	kPBQd/Fgfw0ZVDsaBMgCElbqD/L4fwReiU9n7uNadi5L9vdKvdugJGD08QTSdyXbNM/d3biX5E4
	2ViMIZ21nKA0HoHvvSmsrHZI0pZeCfJJUkZ//pY5QCsugN2As3Xj+fXyaTCo1mUuJYqcAmHco7s
	PtjxKF/2lDy11bwKImYdgxaK0Qb52jTIN2lsK+I69KgMXlXfBxHbvUA8dc/3Q8tVtPvL14YKWGl
	FyEoHmfNRJqe8dOGgGIRcXOpw==
X-Gm-Gg: AYBFou1JdP+McaUM8f8s2z5Ho5uLvlVv8J/ZTwEfADu0KoLPU8guqXwsCu10OCl+Hmc
	tbKpq2Oi0UWKEuc8CDJ7L95L2deT8c/9dP5T9LEl5uQ3E9cL9+GxuyWWKj5J/Ni79ayfPx9POxj
	YMz6KpBTH6EHiylBKdPCdNXrJKOL2ZA98iitmro9n9+lOFySRA/iLOlRrQh4pRsU3+6YJiHTZ+7
	iUdI/L0/cTeMEM/F+xFJHxMwFxs02rFtA684fiKdTA3hKRFPesAMynz1LTRmkkLiAIC5a7XDPu0
	zcqpkdgaQlXodj6forOcrzcPg7FQuF/2uhlQddahY/1IUCSloqYe2JrXLJgRw8thGaJNd7J4eZn
	pbKgPLsH1EOXD4qix4J6hfxT3f1P8UDdxiV1a8xKFfOMGpt1EWG79lQyac1py8QE1K6zdoHhsAz
	zmYzdDoets7r7kTkN7dG207wmbUqLmNcau/ebNZAHp
X-Received: by 2002:a17:90b:5111:b0:3ab:3384:1a44 with SMTP id 98e67ed59e1d1-3ae897c64b4mr167375a91.12.1793309136993;
        Thu, 29 Oct 2026 14:25:36 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae85f87a56sm200511a91.1.2026.10.29.14.25.36
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 14:25:36 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-943e8ff02d0so254489385a.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 14:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793309135; x=1793913935; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1MIbl2zx8FaPW7oX7ST7fbgJ9gFOgJZeuRxXV0E1qzg=;
        b=Lzf9m9+Pi8iV5ooJ6TrKLIETv5Oe6XvPhFBfqdQhD2dt+3Av0japTa8d2HvuAaOCoB
         jmdtWzp0EPG8kHy2F1VG/L6D2Wos5ONsN81GYo2aO3glZKsPon16MyLiIjeNfYJBOzPJ
         O1j25rXQ8dCddemO3c0os7KggvHeadxqPD1i8=
X-Forwarded-Encrypted: i=1; AKwUvBxGfE+pmmw2fV2N3SO2a9tMSEq21MyYPLZlY7AOVDwu4NBi1Dt8nVBQxJhDbizR2NQnGCqCONFWHN0=@lists.infradead.org
X-Received: by 2002:a05:620a:8385:b0:93e:48fc:aa88 with SMTP id af79cd13be357-944217118e3mr84084185a.44.1793309135499;
        Thu, 29 Oct 2026 14:25:35 -0700 (PDT)
X-Received: by 2002:a05:620a:8385:b0:93e:48fc:aa88 with SMTP id af79cd13be357-944217118e3mr84081485a.44.1793309134993;
        Thu, 29 Oct 2026 14:25:34 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca314fb6csm6384936d6.34.2026.10.29.14.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:25:34 -0700 (PDT)
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
Subject: [PATCH v4 4/6] ARM: dts: broadcom: Add the NSP SATA IDM registers
Date: Thu, 29 Oct 2026 14:25:11 -0700
Message-ID: <20261029212513.4126083-5-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_142538_514242_2E62F82C 
X-CRM114-Status: GOOD (  11.16  )
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

The NSP SATA description omits the IDM block at 0x1811e000, leaving the
interface clock and core reset dependent on firmware initialization.

Supply the IDM as the third controller register region so ahci_brcm can
perform the downstream clock/reset sequence. Extend the AXI bus range to
cover the complete IDM aperture.

Fixes: 8dbcad020f2e ("ARM: dts: nsp: Add sata device tree entry")
Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm/boot/dts/broadcom/bcm-nsp.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi b/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi
index 6a4482c93167..9dbcd810e27b 100644
--- a/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-nsp.dtsi
@@ -168,7 +168,7 @@ periph_clk: periph_clk {
 
 	axi: axi@18000000 {
 		compatible = "simple-bus";
-		ranges = <0x00000000 0x18000000 0x0011c40c>;
+		ranges = <0x00000000 0x18000000 0x0011f000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -538,8 +538,9 @@ sata_phy1: sata-phy@1 {
 
 		sata: sata@41000 {
 			compatible = "brcm,bcm-nsp-ahci";
-			reg-names = "ahci", "top-ctrl";
-			reg = <0x41000 0x1000>, <0x40020 0x1c>;
+			reg-names = "ahci", "top-ctrl", "idm";
+			reg = <0x41000 0x1000>, <0x40020 0x1c>,
+			      <0x11e000 0x1000>;
 			interrupts = <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
