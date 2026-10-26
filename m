Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9172B60A2611
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 19:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=g0at0OZp;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=EC0eWSzl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=i3hEy0OlEG0I5avNx8KyQKPvlA+ksrnRI3xiiGk5sok=; b=g0at0OZpkPfp9zLBxugPfmATg1
	OZ6058PAz0agp0AnI36HjSrMd6l9qY5um1/tRxFXSmKAhqp5gSMmb8Uh55cNC7nxJix80orHf937g
	ijIQHvZJadB1zLHPqpvo43j0GyXkuLrU5zjRpSN8LHy4s9zhA+RHWnESzVndf7WXphS3zB8MAagjz
	mv8yhMvqcKohbtnr5KnmwQXjYbXOynbU0axq23bnfE3Qc1HT7fySp84PY9kTi99HOzps4M1BSuu0T
	angUrLDBZfRjkm9/cbUiBu6S9bdYIZmVWXGIp1/fRludWHYf1MiUakz29/ZkO9o13Px5J4Nq34x5x
	7zJ4/+sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQDC-000000039a8-1CYn;
	Mon, 26 Oct 2026 19:18:26 +0000
Received: from mail-pj1-x1064.google.com ([2607:f8b0:4864:20::1064])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLQD1-000000039SW-1aX5
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 19:18:17 +0000
Received: by mail-pj1-x1064.google.com with SMTP id 98e67ed59e1d1-3ad787e0593so1449913a91.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793042294; x=1793647094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1MIbl2zx8FaPW7oX7ST7fbgJ9gFOgJZeuRxXV0E1qzg=;
        b=syr6zS10HhmSS3hZkWjTsa1qxQTalSnr3ddNywtlR9juh1hKP0Oyw/t3YrQUkGTH16
         ID0EK2KAeezcprVWyv7qvtmxOwBc3UqOd7ZmDQOK2UWrz8DMqn/I42+qRcPt632G/pmw
         OyM37XNM4+NYOfgJrnDezziqpVWTzsgEo2C4KVaps95l7bZjWfMYyzl2ErQOC4Eqo4qa
         k88BqHAEfIwoC3K1rjhrYdMTN3s7/WNdnzs9W3qbubDrgNraKnC21kIuQGtykLjwBeLQ
         NyTJ+Us/c5Hd48CX8Qdgk/rO0+FBZdmpdO9kiBXm0gDyBcMivvaZ56vS8GT64resb97V
         cHBA==
X-Forwarded-Encrypted: i=1; AKwUvBx6HxArfxrrHE5CsouF5M7QWNrFmaDZ0RWIUEOH8ZaELqSVIykv+m1rDAWoQbaJSY5f+zGDFmAoOk4=@lists.infradead.org
X-Gm-Message-State: AFq9FYK0nQzDcbiuhJfLbOXL8qCkFC3arj1lw+UPexn5eGe7d+pbHkt9
	SCpaUNNthbpgEhkZRZjdzdyaxvK3+AO7MgZQWoj6Nf3DHy2sZhDQANphlpWEXD7VgbZ1Y4L+8Th
	JlMe7r5TByuDHCyUM8pZz87paHrMR9YAYbs/SCNmUCHlZv5ewRXFbs60o1zJKMxJPMWsGBDF4zU
	AJajn7y60DwpVVU+hRLqPbUsRMkJ81lhhejhlv2XhjQriTXoJ6NfZiC5b0L5WMl9QRO5kcqPcO0
	NEjkCnJTFpk1hpzLOnUjU2A1Qzg
X-Gm-Gg: AYBFou3vu+cxCtipptkRBbKdE0C6JULW8P+zgURe6gma7ay8Xk1eNQxt5x+qY9U0cCb
	Y8j1RCqtlhjgiLjzbMT8ZyYs3A+CAyPOlwFTYOfOjyKfxdoT7YsdbVImoSkSjTqIzgLaUh+Zvif
	OadLhhd0jPTTSj28mKFaT94fysGiKXkr3hCvtjTp68HPC+1Le+eK6d9jwLXYgh4GTlKqLyOeKbT
	Uy8XUYYf9Se0O5/EK1rfsnNpSfreYEJrfPuKZ5Ax5L5upo4Pxzdlr73/3EOo6mtC9o+bOfrD+2B
	/L4p70ZM8Zg6OmoOskbysUT0OAVugkt5P2FCUTLTW0W+MRE2+CqQn68N5Bx4HoSsSId2a9K/nuH
	L7kywNn6LwInJc2XtEJv0graO4r52LbxvONYltbYq42DiA9OUDVvpq1F+TTCvEjPXoqpsDRvOQs
	9LgO2aryOcCptRjZb0Iv3nsI5ac2n6LtSkTFAnXOS2
X-Received: by 2002:a17:90b:3d82:b0:3ab:f38:2b3c with SMTP id 98e67ed59e1d1-3adeafb0294mr5594129a91.28.1793042294072;
        Mon, 26 Oct 2026 12:18:14 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae404ce25fsm390504a91.1.2026.10.26.12.18.13
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2026 12:18:14 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-917a7c17166so76347426d6.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 12:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793042293; x=1793647093; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1MIbl2zx8FaPW7oX7ST7fbgJ9gFOgJZeuRxXV0E1qzg=;
        b=EC0eWSzllzoSLt7Yb2shKtoBl/bYT/wOPmUdCDR8Q19emYPOo4/yv70++9PC7f6xjK
         qCKf/6NlTZ6ERMB+Cwf+7IZOO8fqJTEDMi+XrL53aUjB7sJvhpHTv74I4a1r4J7EfszB
         Yrk1PTt1hzAkg3b2d835yuCJRHAGgc5aH7gM0=
X-Forwarded-Encrypted: i=1; AKwUvBy2DOWwTPt+yd3RxdrT552Jm8GJxaBWqSatfzjso85x41Nj5d2H68Zto9dCMv9tupncMB1GQTUM4RU=@lists.infradead.org
X-Received: by 2002:a05:6214:3c8e:b0:915:e5c8:5663 with SMTP id 6a1803df08f44-91c48cd11edmr127063526d6.4.1793042292674;
        Mon, 26 Oct 2026 12:18:12 -0700 (PDT)
X-Received: by 2002:a05:6214:3c8e:b0:915:e5c8:5663 with SMTP id 6a1803df08f44-91c48cd11edmr127062806d6.4.1793042292066;
        Mon, 26 Oct 2026 12:18:12 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c62063dacsm33430996d6.37.2026.10.26.12.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 12:18:11 -0700 (PDT)
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
Subject: [PATCH v3 4/6] ARM: dts: broadcom: Add the NSP SATA IDM registers
Date: Mon, 26 Oct 2026 12:16:16 -0700
Message-ID: <20261026191618.3178830-5-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_121815_427325_6C5DC891 
X-CRM114-Status: GOOD (  11.36  )
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
