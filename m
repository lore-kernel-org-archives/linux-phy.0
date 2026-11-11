Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B4160A2626
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 07:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ukUHGXW9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KSRmCMSP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=FOiEx3rUuShhzCWs74O31KCgh91ZFKhQQIjX1JN89oQ=; b=ukUHGXW9Bl0MDw/chmC9pHSoBa
	DPpR9zuB6XcPmumau4wUecpHhM86IKieC0voXqdQl06l3QAApnguIt1DXD2l7uL3tTt6QxxExEoHw
	6ZsDfOJWhHvQPi0gmE7OVrQShEwcGiNP/L7MlURZwTIT6P6eM1hya498PhLSpuy0R9P7/OdVRaBe9
	VIFSHLJ9JK0Sq4ZVsI5GL87jmML5UITd8WcelTcXcSEZbDwMYX/KjEMJ1Ti7Y8bQRf/V33B59yDaC
	QwCLbVOopQ9EkUDcrrqobrQcnRNAkHHML/ENnPNgQjlKoDssRli1IWWmp5A1QDh+DwS4gTxZxRoS5
	/Bz/xX1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2o8-00000005uas-2Alg;
	Wed, 11 Nov 2026 07:31:48 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2o5-00000005uZu-18Rz
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 07:31:46 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-3704d30b84fso3684383eec.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 23:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794382304; x=1794987104; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=8NGJF2GluLUXT5n0TBAtOAqoo1zFr6A4uWG8k4Arcrg=;
        b=KSRmCMSP+pG18wW+G8/GUPN5A1+iFAjctbf8LrOcHXgUFkPK93R6tBSO2BX+LQpiL9
         QYB6D9YocqWfphLw8keiDDh2oktjpg2RrN33Q3XlaHb66lAEaKlvCXHNBsveYlehxvaB
         IzyzdiDjpNOWiIum9yA0bD8yfud1TfofuLQ3SiWo1h6mF2t+II0bkS8DvSpShu6pQs4d
         +r+VBUwjhXFJm/DdVctMG6S8WaqpExxblJfWKdDlvCZ/tkQc9L3E7FIiOpDbMZptYQaS
         o80O3vLdpoJwZwYStWbodfVj2gXvBBFDkwPHfQ4OAz18YermDr0QEl38wa9AL52jeN1L
         NR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794382304; x=1794987104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8NGJF2GluLUXT5n0TBAtOAqoo1zFr6A4uWG8k4Arcrg=;
        b=WjSyXjqCaH6UgHH2jv51k1Hv11qOuSX7bMqZY7ezkWG7jctjLBJ2B+cclSVM5HGR5G
         uhDrUORtknFVp31xLuQIaFdALanvYrOlgx44TVzdpLYfGQAQLDKsHcaIKc9AWASDc6+v
         JHv+k4SQQ5M1Kcf/SxQOvkxaJ2o1TiS6S0o2pOor5T0M3jrVV9sf9J7zQQzM8fnNTebk
         PKgPWYJfQkYcPt3VXHXJT4AchiddiUBomXrKmMwTKV5Ld9w7iMfJB5Pq08hBJQKYtcYq
         cGUAMVGQdBh/WLDwdraIin4fOArThbu2AgnZe6hZl7EFi1KlpWx5ezHgg1IbKLtJgOi4
         755g==
X-Forwarded-Encrypted: i=1; AL+hErEb2b2Vg5h8R0Dd0Lb0JKPHvvAlbQUpmWO4rpIwkguC7KJTfPsdCcxY1uWcS+74kPM5rvFsghmVJmw=@lists.infradead.org
X-Gm-Message-State: APuU4Z/EgmzGDv63mI72nFoFinBELEkgAkAdr6RHHQACiJDU6cIcg+92
	jTDtUqqxOJRwnIsAV8zNj3Jr35eqkBcWfdhNrwWMqz0z4KPpngxu3vO4
X-Gm-Gg: AYBFou1KBz0bv9zD49vossU3J8Oa/PykNs5oOFwI3RT8AMW/X9fUUJ9j0/y+N7Il311
	hwNf4pE6/jeYFLRoPyl2x/A4oQ8xneMqDo0pF7fnj5vtglXq5MFXdwh/tefPz8cp17Zvzevt+1s
	R7H34/KFEzF24XHQ9cWHbKcvBHexhx5+0vAcgT+5l+ae6TG7MUAZ1y3N5pSFKWUJOxn38HtIfXe
	XzTwYypNS97b/qFe2qFWG9x3bApkGiWZxxT+tc9oIL/bW4GxttBoOMgWqnv4RduKltb/LGnVs8k
	KEbSeZ7AZ4+/Ee18eNSc7InvCZy5j7s4RkrP5YNeeTu2hvwHKoxxOeNrDKL14gCvZHQ/iCAcgNQ
	9lwJJbbU1UeuaCrB5J/ISGnFd+IgszpoeSytkE2JtayUneBH5LMGs+yqyryHrmdV8JWd3XnjzJW
	6DwsDYu/TsXAF7lLlqILnnL7BbF6ql73/f8pC8gQuyLFVWAhUsn0DjgEzrZE/DCL7ZYE8Gn5pSP
	phbTYOR31w7L57QuWRdyViCETtFKa6ehAAbAsDTufQJg5d2LhD8dqYzjGtuRbZs+3IbrSWTJEv5
	eq3w/+ZkxdJfiFgjmgwrYE2l18bIFsSzoLYzERr1V8ObxjmqYwg8yrSn1lQmt4v6YZcFoZjUXVQ
	NuaJNWOFIg9FbqG+y5A==
X-Received: by 2002:a05:693c:42d3:b0:366:9f06:3c4c with SMTP id 5a478bee46e88-3768694ff22mr1816814eec.32.1794382303560;
        Tue, 10 Nov 2026 23:31:43 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751fe32276sm12640655eec.8.2026.11.10.23.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 23:31:42 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v9 0/4] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Wed, 11 Nov 2026 15:31:33 +0800
Message-ID: <20261111073137.381966-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_233145_311166_156DF852 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -1.8 (-)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FROM_LOCAL_HEX,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The MA35D1 SoC has two USB PHY ports managed by a shared hardware block:

  - PHY0 (USB0): OTG port shared between the DWC2 gadget controller and
    the EHCI0/OHCI0 host controllers.  A hardware mux automatically routes
    USB0 signals to the correct controller based on the USB ID pin state.

  - PHY1 (USB1): dedicated host-only port for EHCI1/OHCI1.

This series extends the existing phy-ma35d1-usb2.c driver and its binding
to cover both ports and add OTG role-switch support, while keeping full
backward compatibility with existing device trees.

Changes since v8:

  - dts: set the DWC2 (USB0) register window to 0x40000
    (0x4020_0000-0x4024_0000, per the MA35D1 spec) instead of 0x1000, so
    that it covers the per-endpoint FIFO region at 0x1000 + n * 0x1000.
    The EHCI/OHCI windows were checked against the spec and are
    unchanged.

  - phy: select MFD_SYSCON in PHY_MA35_USB, as the driver depends on
    syscon_regmap_lookup_by_phandle().

  - Patches 1 and 3 are unchanged.

Changes since v7:

  - phy: add "depends on USB_ROLE_SWITCH || !USB_ROLE_SWITCH" to
    PHY_MA35_USB, so a built-in PHY driver cannot be combined with a
    modular role switch core (link failure on usb_role_switch_register()).

  - phy: restore the PHY reset fallback.  If the PHY is already in
    operation mode but its clocks do not become stable, reset it and poll
    again instead of failing immediately.  The reset is still skipped when
    the already-running PHY reports stable clocks.

  - phy: gate the HUSBH0_GATE clock dynamically again.  The clock is no
    longer enabled for the whole lifetime of the driver (devm_clk_get()
    instead of devm_clk_get_enabled()); .power_on/.power_off enable and
    disable it, and .init enables it around its register accesses.  The
    gate can therefore close when neither port is powered.

  - phy: nuvoton,oc-active-high: keep writing the polarity bit
    unconditionally, so that an absent property means active-low as
    documented in the binding, regardless of what the bootloader left in
    MISCFCR0.  The bit only affects the EHCI/OHCI host ports' VBUS
    switch and is irrelevant to the gadget use of PHY0.  This is a new
    property in this series, and no mainline DT depends on a
    bootloader-programmed polarity.

  - Patches 1-3 are unchanged.

Changes since v6:

  - phy: update the copyright notice in the rewritten driver header to
    "2024-2026" instead of "2026", preserving the original 2024 date
    rather than dropping it.

  - phy: split the unused linux/io.h removal out of patch 4 into its
    own patch (3/4), since it's unrelated cleanup that predates this
    series (the driver has never done direct MMIO access; all register
    access goes through regmap via syscon_regmap_lookup_by_phandle()).
    Placed immediately before patch 4 since that is the first patch in
    the series to touch this file.


Joey Lu (4):
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and
    OTG
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
  phy: nuvoton: phy-ma35d1-usb2: remove unused linux/io.h include
  phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  44 ++-
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  36 ++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  36 ++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  65 ++++
 drivers/phy/nuvoton/Kconfig                   |   2 +
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 313 +++++++++++++-----
 6 files changed, 420 insertions(+), 76 deletions(-)


base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
