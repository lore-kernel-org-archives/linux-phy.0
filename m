Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9629CC87FCF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 15:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NlruC0maYqHTBhYJbyOlZJXmvlodPjz6H4V3J3msCs=; b=NWBgqC5QGS4aL2
	BqYDfyLvSLG+KvHbJ1Nu97SmnWvthl+jEx0KYBHk+LsO/xE8/AzXNj3gMDUavwp8HSimawB4Fa+bs
	a9pFfYs+ktrMQPyHxGO5shT5GH3dFEhhnGheWcukb4P5CzUJZ3lYzT1sMaCk2jt8SFxTJqYvFB3Ty
	YZwhg1S7q8lWgU4MCYlKlnvDvLjd3p7gwwEAfti5bkQ2vzCPcRIBavrtPWUNAT8aE8ai7TGRCOwjP
	wBmKt9kLXNgOmMRswQtMhO8+jzlKtBFwMCJ7i2rpEcIVXziwD5+v4NEjrQ6zZvW6HkDZh4hFdD9Xk
	UGzC1X594nGbfzJh/ykw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umDbL-0000000EDpY-1buQ;
	Wed, 13 Aug 2025 15:41:19 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCz3-0000000E74E-2jIO
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 15:01:47 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3b7910123a0so5938217f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 08:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755097304; x=1755702104; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fx9XFYSygafEf4R96ceqLm11HUcCM+e6rJw7J3OQnS8=;
        b=c1N/RXiB/1WtBE5wDbDhz4bcr+W2lpYsUonWzDLDiG/nUERocmQlVFra5ZNt+FyhD1
         MEl+bqaflfJyhY/heGcbPTkjdxjnjnkFWlS6PSTisv0xw/vFTP3uhpFsw3oeyTq/8Er1
         HcewP2KGxpnq/4uhJuW4ltmg/8AKRyBL/39pLtJRrsVCXvq9TK/J8ypvQ1NhXjFuzSIx
         B1eRkbUCRK5sxJV2/FfxdTO0AdIr0ct0IafuvX34QGmLbQNElGWejp6wxPJVzZn8AmNM
         qbwXcOBSKwvY63wyra44tXHp+a0g4ZGx18TorWuuWgpTZZ9uDaaOX4wCXkthUyMJ+HPe
         RfNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755097304; x=1755702104;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fx9XFYSygafEf4R96ceqLm11HUcCM+e6rJw7J3OQnS8=;
        b=Pt7Yp58MBQdd0x7JwPECriROMX5CGpxd9K4vo972a5NKmtWE9QhKml9AwkC32CmfQZ
         rclvMF0fwC7v1qxWn5XHik6RQebalPdJ3C2nx6WIbNWS0m2wiQSyVHP9OBxX/YBr5K03
         TwMbfTSEulFh7z2BmIYgfrfIjdC4bQ7tOfOiGR9s7uOH6iaH7qWaFzNcFYn0p0s/7FZU
         pvO8nlgzAmz8JPgTEtGxFaFfO03/hyFp2SSoI2Ye5yoKb/oEUCPuEg4lGhQr7Dm1I7b+
         /Vs+/K0PyUtNC2miRmf3GqYIfj9tmztKQ64sduDZv1jhJ6+GXUJ1qNphNuzlT9buO7lx
         oSZQ==
X-Gm-Message-State: AOJu0Yx84Js7zSmyGb2rPXCEPkOHL416wvarAwDND2VCtes1yqYhu1XO
	aghnQpynU+s8Qsw2ty4it3zwtNnK1ivpjGjpf81Fwd0ujAsTW6l/0Qh4PbBWbr7xUsg=
X-Gm-Gg: ASbGnctAUYWW+bcmTY5wMqZDcpOrmuVa18cdJ9vFmWTujiNYE87Y7q2cQ8a4K5Pd9vz
	Iwbz1TfrhGEHMwD01gyZewhTshkTNeyL7DdQxMJK6Tf/Hf0LR7WlLae1MDYAgu3TsA5xuujemVw
	rviDpilSnccW2/DqzbFaNyVxyonHo9V/DzclHgPiQCe7Nc7U2rgZ/b2tR0HfUFNZQWoeg1xqr2f
	aYQvL7uZvI8F0u7AhPse12wVhw4MnzuzHIe0UzQ3aoUhH45uO7w8J4Hs0b6er6BQl1I1j0doxV+
	jo9S6KXX7qJ4H/635PFtcPLi1dqVV1gveODEhshlgFa4hg/f8oGwku1hL2N3ndWgjaSL6VFyMYE
	oLTCcOB+QIBpsixK7/H9jFrVbIXk/iSxTr/3BXbBa8CSnqp2AItfl
X-Google-Smtp-Source: AGHT+IHHEppE5c1msSWpvPNGDeJ0L2gbES2G8NQv75tbQblsBVY/pnBdDlsIUFyhes455RLdzsw2Ag==
X-Received: by 2002:a05:6000:430a:b0:3b8:d8cc:dcf3 with SMTP id ffacd0b85a97d-3b917ea1891mr2665904f8f.29.1755097303966;
        Wed, 13 Aug 2025 08:01:43 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.66.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4533f1sm48402964f8f.42.2025.08.13.08.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:01:43 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 13 Aug 2025 16:00:46 +0100
Subject: [PATCH v3 1/2] phy: add new phy_notify_state() api
MIME-Version: 1.0
Message-Id: <20250813-phy-notify-pmstate-v3-1-3bda59055dd3@linaro.org>
References: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
In-Reply-To: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel-team@android.com, William Mcvicker <willmcvicker@google.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3574;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=ou1YbcmDAQuFZIQSBFO3cs4ywO/Xw4Ff3K2ot6JDrmM=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBonKjTcQVvzkl99cRpsmbJthiLrWXqqpZ2pxhxv
 E6xgE2WypqJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaJyo0wAKCRDO6LjWAjRy
 umEtD/9UveN/e7FZ+RSrEZJd+b8j0lGAUqmY+jZ9y05oOB8e3q2cqotrhoIU+LbL6x4ZHG5z5bD
 3JJ2SauGDAapti/Q+7EysYF8Vmhu0+HJqPJRWkAz6dzz9WMZbJ2aSqfUjRFaDpHcbZIJ1apcK+Y
 g/NCg6OwtMMbX5H1lbDCS8MWSukPZktcPe1XQdoeZDD3qFaKFByXjxEpRij+8XPkcvhxe7fKNke
 AKbJ+srnQJ+7gnW/cV01WfCBBo67RbG4TqS+XYEfzGViWHNtdaC9Z8PvTsFBO3IWKYu1XO5jzPG
 yPY1PUwdpSqyozBLT5s/VoHgPtLMBXar106HEAMUsKJ7ca8EPfFsHdCzteIqVmDr5vtY7nidFXQ
 sbK7GeP9izVmlpAJLRrNTsyEdo5qtmCK6bwqkqag2Fjvp30SwdVgEZfGyrUs1TaFIVgWbya+Hn7
 XERWhT+iw3P9oSOnCOnwwOObe/y1m+VswfWshErI/NJAVaZflBcmBVZnOlhdxS7jxTa84VStNOd
 fSnkO0Mpa+/lrw+kmjIffhHmJAd2TRocp7abCIXuHEj6RpoBX+D0OXJXDrGUEWbMu62kSdX4TW9
 DVpEfqNaoFHVjomg2QOWFi2Rc+5uo5NKu+ymiO0FHkkJEST19SRYq9LuKkgmFl9TpK5K/Ybxr3/
 Lb48nF9k7EhW+8A==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_080145_698652_7C3BA906 
X-CRM114-Status: GOOD (  14.73  )
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

Add a new phy_notify_state() api that notifies and configures a phy for a
given state transition.

This is intended to be by phy drivers which need to do some runtime
configuration of parameters that can't be handled by phy_calibrate() or
phy_power_{on|off}().

The first usage of this API is in the Samsung UFS phy that needs to issue
some register writes when entering and exiting the hibernate link state.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
 include/linux/phy/phy.h | 19 +++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 04a5a34e7a950ae94fae915673c25d476fc071c1..60be8af984bf06649ef00e695d0ed4ced597cdb9 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
 }
 EXPORT_SYMBOL_GPL(phy_notify_disconnect);
 
+/**
+ * phy_notify_state() - phy state notification
+ * @phy: the PHY returned by phy_get()
+ * @state: the PHY state
+ *
+ * Notify the PHY of a state transition. Used to notify and
+ * configure the PHY accordingly.
+ *
+ * Returns: %0 if successful, a negative error code otherwise
+ */
+int phy_notify_state(struct phy *phy, union phy_notify state)
+{
+	int ret;
+
+	if (!phy || !phy->ops->notify_phystate)
+		return 0;
+
+	mutex_lock(&phy->mutex);
+	ret = phy->ops->notify_phystate(phy, state);
+	mutex_unlock(&phy->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_notify_state);
+
 /**
  * phy_configure() - Changes the phy parameters
  * @phy: the phy returned by phy_get()
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 13add0c2c40721fe9ca3f0350d13c035cd25af45..664d0864c3a5042949cb121e982368fe0a97827f 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -53,6 +53,15 @@ enum phy_media {
 	PHY_MEDIA_DAC,
 };
 
+enum phy_ufs_state {
+	PHY_UFS_HIBERN8_ENTER,
+	PHY_UFS_HIBERN8_EXIT,
+};
+
+union phy_notify {
+	enum phy_ufs_state ufs_state;
+};
+
 /**
  * union phy_configure_opts - Opaque generic phy configuration
  *
@@ -83,6 +92,7 @@ union phy_configure_opts {
  * @set_speed: set the speed of the phy (optional)
  * @reset: resetting the phy
  * @calibrate: calibrate the phy
+ * @notify_phystate: notify and configure the phy for a particular state
  * @release: ops to be performed while the consumer relinquishes the PHY
  * @owner: the module owner containing the ops
  */
@@ -132,6 +142,7 @@ struct phy_ops {
 	int	(*connect)(struct phy *phy, int port);
 	int	(*disconnect)(struct phy *phy, int port);
 
+	int	(*notify_phystate)(struct phy *phy, union phy_notify state);
 	void	(*release)(struct phy *phy);
 	struct module *owner;
 };
@@ -255,6 +266,7 @@ int phy_reset(struct phy *phy);
 int phy_calibrate(struct phy *phy);
 int phy_notify_connect(struct phy *phy, int port);
 int phy_notify_disconnect(struct phy *phy, int port);
+int phy_notify_state(struct phy *phy, union phy_notify state);
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return phy->attrs.bus_width;
@@ -412,6 +424,13 @@ static inline int phy_notify_disconnect(struct phy *phy, int index)
 	return -ENOSYS;
 }
 
+static inline int phy_notify_phystate(struct phy *phy, union phy_notify state)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
 static inline int phy_configure(struct phy *phy,
 				union phy_configure_opts *opts)
 {

-- 
2.51.0.rc0.205.g4a044479a3-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
