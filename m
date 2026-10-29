Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4620606A325
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 17:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UGuyVg+p;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MprXq4RW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LDZBFW+jrpnJpGIMKbBBXWSMhp1E8WZ5kuywxlIGycE=; b=UGuyVg+pvU4yNosqBDXbdIAlk7
	gQtCK0iyb6gX3LgBPQZPCmZ0WPk62AjXDBg21MQ9GqbU5v1ZRf023/Vi/v8SKPYzzJr1QsIcHVmYm
	1VSZ442W4AjQNQ3S9hq/kTQ1ADoWCpfw96wkrdE6M9T7VusyR6Rlkoem/1Yz0fexeP7tF+ahgzD7o
	wM8R01OQ7rziZ3mf4Hw9Ulw4QX/qxxoSwZk0o7ks6Zp/1QYdNFIr2vmgFjrxae0U/uG/wM2sWyRZv
	8U08EJOdbmG8KFvw0qgUXwsl+QxZnG/vg8jftPjQ5/kYLoUGRaC/3OpbV3cYp1UaFzsa/Vy5THL8E
	bQegd1zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTrB-00000009xqC-1pp6;
	Thu, 29 Oct 2026 17:24:05 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTr8-00000009xmj-0JLR
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 17:24:04 +0000
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-7c03744ef27so791199137.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 10:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793294640; x=1793899440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Vlmh38oDhVKFUzUtt9cRV3aHc0FM1WeWFLP0ZtSzi/k=;
        b=MprXq4RWUmmLmzzEcBOKSVzosphkhi89sTVG+q5pAshSs3RJOCIsrFL1t8ooeAqTK5
         aDG37O6USBN3jVYnF+HiRfn4jT1JBnq3s8cQBojXPEzNrUZNZN5mQz+JlGDJ8dR8CWrj
         RFWZdF+du9pma0Tk5qHRbz40ppL+X/2IJ0CncRJao4d5t/iUIkTIsQRWQoXQJH4Cjlh4
         eDI7u9Ars5D5UUsn5Unyx3EujoN4TmVbGH2+X3x2vE7pAX/f9gtoEEMPNE4AMBHl5lRG
         k9ItVH+h0gGQTRIDtE4Tep6PlnpRGS7p6XmvjqvZjWCeysdk0y19RXDQGEo6YSPe8ENe
         jJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793294640; x=1793899440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Vlmh38oDhVKFUzUtt9cRV3aHc0FM1WeWFLP0ZtSzi/k=;
        b=HnGwYFcC4B70CqehRXe6U6BZXF8jK17QxSdMOpUO3TG8R1ny1hwEz9HhLQvVt7oHQ/
         DUQ3FXMr4KvmBUc2oVOh3/oJwmd94jwAR7qA8qsZhjHgv4+c+ztOcmSy7wtkvyhCMUNi
         +9votogE2aaeftb5Y06rbr1AUnpSEKLNyCmvjkR0sXqX7RAg88f+emo7KwVGODJsw6rO
         VRrjFduv9l/hS9dV1Bv/6qBRsbZLIVMXAzkzssjmVbWDymA2IHE8ohpfLxn5tMQh9ChH
         iZ1oMhn/t8+2UUs/ya5G1xqyN58oTxWdOyBmi9UCwMVX24XvuHI5buN3Kf7Dxywk9HXc
         THXw==
X-Forwarded-Encrypted: i=1; AKwUvBzB58TVBo3R8NZiECTpCfVZKCJH4bkdxtpM+Xmym49LyBoJpp5R56CHti1XTI/VJN35hV37bZzyPqU=@lists.infradead.org
X-Gm-Message-State: AFq9FYLLnR5+r6RH3HJ7lg0kRkp7uCTfVCShnaySHquNos8awAt/iHk1
	Gh0CD5weyOk04tRipYG2IAhhMKrarlgArpqT4J5dbGCwxgDebogAZwPp
X-Gm-Gg: AYBFou1vzpXNAbpxn4jyIuqYFVpudfUzAsQLRHt7vUdjyDGUdABHleguLl1hRVEMd/G
	ay2PBSOU96XDd9Gh62ZqaU/4p7dDTA+9scnrmaUWLtI4SbaF6wCnN+8H44rHVnvlK2bh+DThyyh
	2Pt8wkJod7l3KEmOSc2tH72D4AYid0ZWbTktndKC/dJoFitp6q630/Zu0fCuMfjvwzSIn6keP6l
	JqwsqJGQOM9N5+lsJKoVmm+fO8GL0nK5zZv4y/JLRea5EltpXdyCwAFm9A0CLMu5qlehKO4nI0l
	DvJUEIe1ibrV75UVcqqhtW0RCBB3przQRUiIltEGXWQqn0kxI5Wy7SbPAzCD7ZuNEmWFuy3JW4q
	CLEUZBeBaE3epFKz0S05HFO059MSRAjAg7eoTNMiZsGWF19gb6piV+Tswigcvvm+A6w6dVrrZp9
	gvK89Uqxpge1xMjDoPrE8WJ4xt8rTqsm9ICvTG267h0cwQKqUeFuRXekLqzzvXmpChNCVhLla6N
	w9XSpxP/1NtqQiDnNMbG0jMDMuLPRkKcegaCNyzP8DnjOSK7J4SXr+Yx3F0iYZUpet1kp/aV8Vr
	WZWDQdCWlLigoBTwhP2V9bgs4LisKwobnbR1bLIKxR0IodoPp6em5P3tZciP58203PXiG7ZC84k
	Jz2psqjIeyXWDrYfJf71L1SZkt4664HIeEasD
X-Received: by 2002:a05:6102:3e8d:b0:7a5:7282:1994 with SMTP id ada2fe7eead31-7d03a50a85cmr2383203137.7.1793294640169;
        Thu, 29 Oct 2026 10:24:00 -0700 (PDT)
Received: from MaquinaLab.. ([179.179.238.247])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7cea3d32a48sm9907357137.9.2026.10.29.10.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 10:23:59 -0700 (PDT)
From: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Xu Rao <raoxu@uniontech.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] phy: sun4i-usb: clear SIDDQ before the PHY reset on A733
Date: Thu, 29 Oct 2026 14:23:25 -0300
Message-ID: <20261029172325.3425046-3-vinicius.eduardo.pedrosa@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261029172325.3425046-1-vinicius.eduardo.pedrosa@gmail.com>
References: <20261029172325.3425046-1-vinicius.eduardo.pedrosa@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_102402_684670_597A71F9 
X-CRM114-Status: GOOD (  17.94  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

sun4i_usb_phy_init() deasserts the PHY reset first and clears SIDDQ in
the PMU HCI_PHY_CTL register afterwards. The order comes from the H3
support and the reason for it isn't documented.

On a Cubie A7Z (A733), the Wi-Fi module on USB1 sometimes came up
at full speed on the OHCI companion and failed enumeration with -62.
This happened in 3 of 40 warm boots with a separate local PHY tuning
change applied.

With that tuning disabled, the current order failed once in 31 warm
boots. Clearing SIDDQ before releasing reset had no failures in 60
warm boots in the same interleaved run, or in 10 cold boots.
Why the order matters is not understood.

The vendor BSP clears SIDDQ while the PHY is still in reset, in its
common host path.

Add a config flag for the early clear and set it only for the A733,
whose config is otherwise the D1 one. The other SoCs keep the current
order: the manuals don't specify one and they weren't tested.

Signed-off-by: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 35 +++++++++++++++++++++++----
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 839856c09e30..4d067d97c5a6 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -105,6 +105,7 @@ struct sun4i_usb_phy_cfg {
 	bool phy0_dual_route;
 	bool needs_phy2_siddq;
 	bool siddq_in_base;
+	bool siddq_before_reset;
 	bool poll_vbusen;
 	int missing_phys;
 };
@@ -253,6 +254,19 @@ static void sun4i_usb_phy_passby(struct sun4i_usb_phy *phy, int enable)
 	writel(reg_value, phy->pmu);
 }
 
+static void sun4i_usb_phy_clear_hci_phy_ctl(struct sun4i_usb_phy *phy)
+{
+	struct sun4i_usb_phy_data *data = to_sun4i_usb_phy_data(phy);
+	u32 val;
+
+	if (!phy->pmu || !data->cfg->hci_phy_ctl_clear)
+		return;
+
+	val = readl(phy->pmu + REG_HCI_PHY_CTL);
+	val &= ~data->cfg->hci_phy_ctl_clear;
+	writel(val, phy->pmu + REG_HCI_PHY_CTL);
+}
+
 static int sun4i_usb_phy_init(struct phy *_phy)
 {
 	struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);
@@ -270,6 +284,10 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 		return ret;
 	}
 
+	/* Some SoCs want SIDDQ cleared while the PHY is still in reset. */
+	if (data->cfg->siddq_before_reset)
+		sun4i_usb_phy_clear_hci_phy_ctl(phy);
+
 	ret = reset_control_deassert(phy->reset);
 	if (ret) {
 		clk_disable_unprepare(phy->clk2);
@@ -321,11 +339,8 @@ static int sun4i_usb_phy_init(struct phy *_phy)
 		clk_disable_unprepare(phy2->clk2);
 	}
 
-	if (phy->pmu && data->cfg->hci_phy_ctl_clear) {
-		val = readl(phy->pmu + REG_HCI_PHY_CTL);
-		val &= ~data->cfg->hci_phy_ctl_clear;
-		writel(val, phy->pmu + REG_HCI_PHY_CTL);
-	}
+	if (!data->cfg->siddq_before_reset)
+		sun4i_usb_phy_clear_hci_phy_ctl(phy);
 
 	if (data->cfg->siddq_in_base) {
 		if (phy->index == 0) {
@@ -1013,6 +1028,15 @@ static const struct sun4i_usb_phy_cfg sun50i_h616_cfg = {
 	.siddq_in_base = true,
 };
 
+static const struct sun4i_usb_phy_cfg sun60i_a733_cfg = {
+	.phyctl_offset = REG_PHYCTL_A33,
+	.dedicated_clocks = true,
+	.hci_phy_ctl_clear = PHY_CTL_SIDDQ,
+	.phy0_dual_route = true,
+	.siddq_in_base = true,
+	.siddq_before_reset = true,
+};
+
 static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	{ .compatible = "allwinner,sun4i-a10-usb-phy", .data = &sun4i_a10_cfg },
 	{ .compatible = "allwinner,sun5i-a13-usb-phy", .data = &sun5i_a13_cfg },
@@ -1029,6 +1053,7 @@ static const struct of_device_id sun4i_usb_phy_of_match[] = {
 	  .data = &sun50i_a64_cfg},
 	{ .compatible = "allwinner,sun50i-h6-usb-phy", .data = &sun50i_h6_cfg },
 	{ .compatible = "allwinner,sun50i-h616-usb-phy", .data = &sun50i_h616_cfg },
+	{ .compatible = "allwinner,sun60i-a733-usb-phy", .data = &sun60i_a733_cfg },
 	{ .compatible = "allwinner,suniv-f1c100s-usb-phy",
 	  .data = &suniv_f1c100s_cfg },
 	{ },
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
