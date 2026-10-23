Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56962606A32A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 12:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=skAtdGI+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fairphone.com header.i=@fairphone.com header.a=rsa-sha256 header.s=fair header.b=0lqdxG9T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=zArohSJtzHABXn9NsFFEJtxWF6mHOD7QVEUNjlEEr+I=; b=skAtdGI+7b8I7P1U71+BdaIFSA
	3eCEcbfdjTN3SkdHgp0+adO4OMiY+sb9m9/tlEetMhc76alOMtcVU3LXR5OXe92wg4+lugfxC2psx
	bnf+ZSt8bpMluQEW6l24/CqnRmTrdeOtQozGwwgg0S/RONeqnjjxFmsoSrq6prBYNNs/1CEsba2iB
	DMLl3NBPotgMwMEvkhGBwqkxTZSTTUvzWPGKyPix8WYKygqRRKXA1XyEgBUKUYj3I9MUBvE9HqXYS
	fyBXFhaxeuL0GnNstxbh4EYO2p62eExToyxNkZvRqN79nQnlbVeQ28J9RXB2WZJeaMv4qxWSlF6sc
	IzWcN8Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKETE-0000000GIap-3QhP;
	Fri, 23 Oct 2026 12:34:04 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKETC-0000000GIaM-2BRO
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 12:34:04 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-487049569b6so474997f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 05:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1792758839; x=1793363639; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=0rnI9vadXsYD8rBdMbbzshOtJjoEuCkdwfFl2dhThMg=;
        b=0lqdxG9TjIa4DWhtbdPs1NkeWV8Cqh/p4c4+5peVVwEGJKQ2pDdUX0riiCCsGoRhWF
         /vf6UWSTbrcSixJzIlUNXwKTqG+z+N5cfHoKM0HtzM1/cxxhHQ+Ilp5Fgj7H9Im42k7F
         L7d5fwG8DZkqgqzsaMFTN0Z3F/AzFIuZTsKruVR5Z7UhJ2Neq6PNHAz9tN9v6f6zL5Z+
         GgEhlXW7oyWhAExI5Kd4AQglsrSLiqJLpBDlr8Ayp+bCFsLMXF6jXcNIqvhZP0l92Hsk
         8SgybZt3hCgwlEMKKexA4b5QP5UbKm6YY5U05upRfOwEfdQswP7ZlVnAQR2oeV38Rhyj
         2x4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792758839; x=1793363639;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=0rnI9vadXsYD8rBdMbbzshOtJjoEuCkdwfFl2dhThMg=;
        b=HhZrJZJptRbsJlAx+EGvsGG1pMlZbRb0hcKgsUfNJHOoD79BxPz4JdzrMYXAXcmqab
         xQQH2HnaeSzousqw+sA1yEjeiWLVKgywc8ObYUi/CymQ5f8ud+SGt8JWxdw2Xv9cHtbF
         9laP51HM86/Yjah8ABiir7++X4Gopzmjxx3f7qy4h3YTIoW8vgfacyuPVha1Zr7sFnzH
         4Ymek65x6kBdD4qUinX6D9VknfUIt0gwqW88GdcRu9Ht3jrQjE2m/0KiDb42Uksp9Hwu
         nwqEJFVX3bcy2RsYZzSL9gXCF5pz6ZSXkjm7eGsSmkTAmxQDdaSXy4jnI81Hq5PkeWIV
         ajxA==
X-Forwarded-Encrypted: i=1; AKwUvBw/3IevbqIkGbeZ9IQkZ0vuDy0NT4OL2hkEw+d0ak8G/yygqIdDx7YN0LyJtIJTUL8BfmIwgCqQh0M=@lists.infradead.org
X-Gm-Message-State: AFq9FYIQAdDdheNVMc3KPRi9sXPZkMwZQoxo63I8XkRRXd0M+Xr0ZEOn
	WO8DyekaNFyOn9hk0qV1+nMBG6imKqOjiXeb3xGCcLSJVBc97mQmVS/O7pz0uD3ubE8=
X-Gm-Gg: AYBFou2ZKxg5czVCrdSL4smr4rlzMW10E/fho7k7LfKUOUS33Y33bmRn2Kv4yxsAMU/
	/0FEdBVIXIZc5NmA+SIhdWhogxD6FvqXbP2WGwerC2Doz1+Fq5kaNOMtjhiw7jv5IZwOnDCf6uN
	BBsCTfQoWQS1GeeL2GzQFDIToZ5l+uQOtsgil3g+aIU52proiEmq/NYYCfFbBnV2hglaaGnYxg/
	V6PuZ4fnGOTNQDarZMNy4mVe9C/+yVNj5sLMEoox7dB6vxUOyCPeBUWv9PdYUZMLNFvfg8/vQ6y
	25Egc13+K8nCuK5Zo5dnTGrOu4E/sk4G4FA54jvI5K790zjIqXO5loH3xkE8o9uzoj3ZqlYu7TE
	w2rrg27PebyaxwztkOYhFPTKvBiP4BEmjINrVS7OacksZCms0qjmWfNO8H+M68AyAFNfyZS1QiL
	iKSeqwHHc3tgyBnte/0xMOmUu0y445SMdRVzDOSjLAymCdEDx7PZWQ3lopHRfEw+TcLZ0ZENqjF
	uWKSDm4vkgIGIlr+vGIsZYCph2onzVE+2KTyCTsRwuS7Mqxn6EfNVEM4EY2U6ec4Bw=
X-Received: by 2002:a05:6000:4288:b0:48d:cda6:4dd7 with SMTP id ffacd0b85a97d-48e385b4621mr3251773f8f.44.1792758839526;
        Fri, 23 Oct 2026 05:33:59 -0700 (PDT)
Received: from [10.221.242.139] ([93.123.20.211])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e37edd26dsm5554766f8f.2.2026.10.23.05.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 05:33:58 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 23 Oct 2026 18:01:55 +0530
Subject: [PATCH RFC] phy: qcom: snps-femto-v2: clear charger-detection
 state on entry to host mode
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261023-phy-qcom-snps-femto-v2-host-v1-1-77cf6a5177cd@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQrCMBBA0auUWTvQjhLUreAB3IqLmE7NCE1iJ
 hal9O5GXf6/eDMoZ2GFfTND5klUYqjRrRpw3oYbo/S1gVoyXUtrTP6NDxdH1JAUBx5LxInQRy2
 4cz1treGNMRaqkDIP8vrpZzgdD3D5T31e7+zK14Vl+QAvmyLfhAAAAA==
X-Change-ID: 20261023-phy-qcom-snps-femto-v2-host-9cd28a6e466a
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Elson Serrao <elson.serrao@oss.qualcomm.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792758833; l=4680;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=c//aO+uFRscbScqkNAvaaqbbKqzdZoy9nP9LH9BBuUw=;
 b=277h+fYW2NZCq8zkRo74BKyfkAOx+NVESfzGX0KBZvoRuS2vkofYvCJnTaYvxZi3/dHOkgswY
 Y04w1TMcjHWAe7UVqbc4p+2OsP/gemCutXE9HhiaPolYK099c3tFaUw
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_053402_639033_6CFA936F 
X-CRM114-Status: GOOD (  19.70  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On QCM6490 (Fairphone 5), the firmware runs BC1.2 charger detection over
pmic_glink when the phone sinks power from a USB-C dock. It leaves the HS
PHY in UTMI non-driving mode with the datapath override enabled:

  UTMI_CTRL0 (0x3c)    OPMODE = NONDRIVING                 01 -> 09
  CFG0 (0x94)          UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN  00 -> 01
  HS_PHY_CTRL2 (0x64)  USB2_SUSPEND_N_SEL                  06 -> 0e

Linux never writes these fields. They match the configuration the
downstream kernel uses for charger detection (its "dpdm" regulator); the
downstream kernel re-initialises the PHY afterwards. Any femto re-init
clears the state, but on mainline nothing re-inits the PHY after
detection. When the dock then swaps the phone to host role, the
controller cannot drive the bus. The HS chirp fails, the hub enumerates at
full speed, and SET_ADDRESS times out (-62). The state persists into
later sessions until the PHY is re-initialised.

Clear OPMODE and the datapath override when the PHY is set to a host
mode. usb_add_hcd() sets the root hub PHYs to PHY_MODE_USB_HOST_SS before
it starts the host controller, so the clear lands before any port
activity, on every entry to host mode. The clear is idempotent: when dwc3
sets PHY_MODE_USB_HOST again after host init, it finds the fields clean
and writes nothing. On platforms where nothing outside this driver
touches these fields, the function only reads them.

USB2_SUSPEND_N_SEL is left alone: HS works with it set, and clearing it
has not been tested.

Tested on Fairphone 5 (7.0.8-sc7280) with an i-tec USB-C dock: the
unpatched kernel failed every sink attach (15/15) and the control arm of
an A/B on the same image failed 2/2; the patched kernel enumerated HS on
every latched attach (3/3, with DP and charging working), and has been
in daily use since.

[This change was developed by "D.R.racer" (with the help of an LLM), who
 doesn't want to have their legal name referenced. But they agreed on me
 taking the change.]

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
I'm mostly sending this to get a feel for whether this would make sense
in the eyes of the maintainers. This does fix an annoying long-standing
issue with USB stopping to work, so I'm hoping to find a way forward to
fix this properly.
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 36 +++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 980ad1fb1e2e..e2b9404aac4f 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -226,12 +226,48 @@ static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
 	return qcom_snps_hsphy_resume(hsphy);
 }
 
+/*
+ * Charger detection run by firmware (BC1.2 on QCM6490 with pmic_glink) puts the
+ * PHY into UTMI non-driving mode with the datapath override enabled and can
+ * leave it there. The controller then cannot drive the bus, so the HS chirp
+ * fails. Only a PHY re-init clears this, and nothing re-inits the PHY after
+ * detection. Clear the state; this is a no-op unless something outside this
+ * driver set it.
+ */
+static void qcom_snps_hsphy_clear_chg_det(struct qcom_snps_hsphy *hsphy)
+{
+	u32 ctrl0 = readl_relaxed(hsphy->base + USB2_PHY_USB_PHY_UTMI_CTRL0);
+	u32 cfg0 = readl_relaxed(hsphy->base + USB2_PHY_USB_PHY_CFG0);
+
+	if (!(ctrl0 & OPMODE_MASK) && !(cfg0 & UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN))
+		return;
+
+	dev_dbg(&hsphy->phy->dev,
+		"clearing charger-detection state (ctrl0 %#x cfg0 %#x)\n",
+		ctrl0, cfg0);
+
+	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL0,
+				   OPMODE_MASK, OPMODE_NORMAL);
+	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
+				   UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN, 0);
+}
+
 static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
 				    int submode)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
 
 	hsphy->mode = mode;
+
+	/*
+	 * Reached from usb_add_hcd() before the host controller starts.
+	 * phy_initialized only changes in .init/.exit, which phy-core runs
+	 * under phy->mutex, like this callback.
+	 */
+	if (hsphy->phy_initialized &&
+	    (mode == PHY_MODE_USB_HOST || mode == PHY_MODE_USB_HOST_SS))
+		qcom_snps_hsphy_clear_chg_det(hsphy);
+
 	return 0;
 }
 

---
base-commit: bd1ecbb61afefc6a8b876ccbc31e9228b44e9eab
change-id: 20261023-phy-qcom-snps-femto-v2-host-9cd28a6e466a

Best regards,
--  
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
