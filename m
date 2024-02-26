Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08FA2C48BF6
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 15:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nlNbdvpuX87FXXaUs7DwDZTq71xMZrDC5sSY4uZPJek=; b=uKZ1+en+FaUizf
	0lux44bbjbafiue2Pw8T/Enm4URGnDK0pI9fQ9JJAPY/49GYviAQxTQeJQ6FwfT/lU6juAlbinx08
	V/RGmAdUJReY15NEWQUzpz6x9KBQg2ORldimbpt1V/7BYpJsX2kC+EW/DkDxRu0IXgA1XSJQ2dRdL
	m5mpob1fu/WEcXdYwulbNeb3DsTjd03bMUQjt4sgoItf80bspaNGo4RhBXAcOSWIT9eHvJtbOUN/N
	zCvIZcsuaHcTpTSw7c+N+PFjy7NFk0zeLIJaWILQd7lmSYxs6vxn3CzqVPBhECAGI6GGZ2eqahWcX
	XJzYOrohMgFU2ffoRRpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1recoW-00000001PAI-2SnJ;
	Mon, 26 Feb 2024 15:22:44 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1recoU-00000001P83-0l4y
	for linux-phy@lists.infradead.org;
	Mon, 26 Feb 2024 15:22:43 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-33d28468666so2960815f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Feb 2024 07:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708960958; x=1709565758; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=onsSHtOKzEIZICx5NzIaNglbxD6fxTitMyvZQ+hIAqU=;
        b=EShLeQPDikCY0v26EqqgebT/mX3ApOUzkVU+BNc7sTNdcdC4aFAx+4jFSUd+xpXDlG
         2cNHiBTQxzDuZ+KpwKB29e2IKVbMIpahYBDfGW60KW0pVPWsv8IZ0hPH4dJQMuAhIhB/
         TB6Jh6Yov7pS4I7s6NXxQcSwiwZ3sO5xUnoad/8FboKnzVRKSb/rCaa+OjAvTX3MVJ/R
         xDTBg0XjHQz7DQ3d/IiW3dktbqD+GoRQt88F5amR32HdYrAr8wsLJF2FoIcsACaCte6b
         yr27EKuoCVTNqUACv99r4GHDirAh62neXty9OkiwCyRe+ESF4EzF/xg3Z20tihbN2jE2
         HpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708960958; x=1709565758;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=onsSHtOKzEIZICx5NzIaNglbxD6fxTitMyvZQ+hIAqU=;
        b=TjreVgg0uI9lZQJQ/6K6BxBJHResqRNrlgTT/pFwkIEWl3tDovy5zac/6OU9foO8L7
         5gdL+qWKuEJe1YahrB+vFqDcmEi5nNoTchD1SWZbAGSAy/wBxchjYrho49e7kxDH/6mL
         28QWMhE1xWjEhcBdq46u7IzfP9iDEmI5CXo8KWd7+d+gpwatQ0NKoOuRnChdWpsG5eo9
         eJIjPC9kw/RsfLoowl+tXyoJ/NOB+wFoZOHLmK33yhcoARqzjUIlXkxWohbsa/uDQazq
         SH1sJz8hxWdV6CL312WVuc33GHQMLIxnfQhoc6dxYA9UmvzKcFb2d1T1Ar54Buv5LNDK
         Mn0A==
X-Forwarded-Encrypted: i=1; AJvYcCXgThTfE2Zgq5sGd9yLzZM0HHrJU7n22nq+/Qois3+JULD9eOcn3ilBDHBIS4dHAPF8KjIxAxEq4GU3DzxE9hUAOk5xtwbloSm4e1mbRw==
X-Gm-Message-State: AOJu0Yx/rj6PFujd9EaNo7CbYAClXHL51ML8L+KX3EDX/1kyg15ymbzz
	5GwCmyk8Vm0xTlqlHQjibpbGd0vYXdXI9KZj3vhRLF2p3fnpEzFnKoHBuH5Ed48=
X-Google-Smtp-Source: AGHT+IHmIAE28QIf+BOgjzS1zi4WvdZf+4TEqP7lmYyZmGNVY7QdJSt90PHhdVd7cN8dHnYUh/tiRg==
X-Received: by 2002:adf:cc91:0:b0:33d:46b6:395b with SMTP id p17-20020adfcc91000000b0033d46b6395bmr4861177wrj.7.1708960957695;
        Mon, 26 Feb 2024 07:22:37 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id bv20-20020a0560001f1400b0033d73e1505bsm8687383wrb.18.2024.02.26.07.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 07:22:37 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 26 Feb 2024 16:22:36 +0100
Subject: [PATCH] phy: qcom: qmp-combo: fix sm8650 voltage swing table
MIME-Version: 1.0
Message-Id: <20240226-topic-sm8650-upstream-combo-phy-swing-update-v1-1-08707ebca92a@linaro.org>
X-B4-Tracking: v=1; b=H4sIALus3GUC/x2NSQrDMAwAvxJ0rsAxzkK/UnpwbDXRwQuW04WQv
 8f0OAzMHCBUmATu3QGF3iycYoP+1oHbbFwJ2TcGrbRRWo9YU2aHEuZxULhnqYVsQJfCkjBvP5Q
 Px7UJbyuh6Rc76dlMyjtoyVzoxd//7vE8zwsAV5SofgAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3818;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=37wQmO+YdaEsa3xL7Q6rKO9ox5eQT6E5utt65Fi0uWE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl3Ky8MrhetOzd/dgn1AZoOgkWz4JjSAOJRRohsEox
 zH+aA8CJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZdysvAAKCRB33NvayMhJ0XvsEA
 Ci9Nb/Lc28Ri7tvyVr3ZqwThwYr/pTkkgAMKkiA/vmAc0zcpefA/hoWPMmyUnCH3M23irg11jFIITH
 9iHaokAjzj7XniUL2vqOvwb5+TtZsRjCvJPOjL+XHHPCivmtDDJTC0p0biANppJjmUHwQOc964Mt+x
 hm1Yirt4Q3sqlgZEq/djlV7zd+2qB3mv35tQfEs5+8FbMUNgtD6YqZDUxwdGc9sZrknECYE5/y/oC4
 rV+kWH32K1FSWscWykvM9mGUxdN3lAImUVqZBqmObdWZN3/MOGUBdQnurMd5TKfETxE9DTlHLH/8fl
 i6YkbKmFHABfDxy9nlpaCuohzoBtbkbEBGvH9tXVwKPawQ3fko45Y6314QxtHjcudlwzwVmHDy2IxV
 CTag5bSdAs+F1twLcsz351vaZGCEdMp7dYggFCRmTUa+pepIGfI3jbnfg82yJDsom7wmT4RHcfPeRE
 YIpLjW1iRIP91ydrHJ66gVpMEYiRHQs3CQopmOSNoxSWDj6lQXYWpuQiNer4f+ldkMtmbL6FOEomMG
 tVSQG245OaPB6eULzyCd8YWf2rathd+tnoe0G3phzlGGeBRrVXGfXABhzxeKpLRVkamvlXTOi39rY8
 Py4TE3eKnodh78TFCtJcL6zbtM13EI/USVy3tXplexWm726bcqGBwXVXOFdA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_072242_270161_3CBC584A 
X-CRM114-Status: GOOD (  10.74  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The QMP USB3/DP PHY found in the SM8650 SoC requires a slighly
different Voltage Swing table for HBR/RBR link speeds.

Add a new hbr/rbr voltage switch table named "v6" used in a new
sm8650 qmp_phy_cfg struct replacing the sm8550 fallback used for
the sm8650 compatible.

Fixes: 80c1afe8c5fe ("phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for SM8650")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 ++++++++++++++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 546d3c6bee32..66991886da87 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1377,6 +1377,13 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
 	{ 0x3f, 0xff, 0xff, 0xff }
 };
 
+static const u8 qmp_dp_v6_voltage_swing_hbr_rbr[4][4] = {
+	{ 0x27, 0x2f, 0x36, 0x3f },
+	{ 0x31, 0x3e, 0x3f, 0xff },
+	{ 0x36, 0x3f, 0xff, 0xff },
+	{ 0x3f, 0xff, 0xff, 0xff }
+};
+
 static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x20, 0x2d, 0x34, 0x3a },
 	{ 0x20, 0x2e, 0x35, 0xff },
@@ -1996,6 +2003,51 @@ static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 };
 
+static const struct qmp_phy_cfg sm8650_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
+	.serdes_tbl		= sm8550_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),
+	.tx_tbl			= sm8550_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8550_usb3_tx_tbl),
+	.rx_tbl			= sm8550_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8550_usb3_rx_tbl),
+	.pcs_tbl		= sm8550_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8550_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8550_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8550_usb3_pcs_usb_tbl),
+
+	.dp_serdes_tbl		= qmp_v6_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl),
+	.dp_tx_tbl		= qmp_v6_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v6_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v6_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v6_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v6_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr3),
+
+	.swing_hbr_rbr		= &qmp_dp_v6_voltage_swing_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
+	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
+
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
+
+	.regs			= qmp_v6_usb3phy_regs_layout,
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+};
+
 static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -3625,7 +3677,7 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 	},
 	{
 		.compatible = "qcom,sm8650-qmp-usb3-dp-phy",
-		.data = &sm8550_usb3dpphy_cfg,
+		.data = &sm8650_usb3dpphy_cfg,
 	},
 	{
 		.compatible = "qcom,x1e80100-qmp-usb3-dp-phy",

---
base-commit: 8552c902efe7ef670b6961fb8885b67961aeb629
change-id: 20240226-topic-sm8650-upstream-combo-phy-swing-update-41ba728470dc

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
