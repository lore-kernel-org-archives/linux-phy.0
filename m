Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EBBFC48285
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rxQZ+ruPFaKoauNWFdK7W6leH6d39QtQGeQifi6L+gg=; b=kzVZFSwM4zINLs
	tGIkHcv8YzpYtpZ2WKLtmSQSkMq/rg/Sx7hL9mhdJfuzPzwKxuZuL/M4rbakL4O5Ouz7rtmTY7awz
	yIvn5WAOIAdVjyBgdgfj07nunpOqu3NZzMihLP4rVLpV+bIhWpus/WK5qZwfIiPdAxC7mm0nPKnF0
	7EP3b7/tAg8PVPqnQkF1WC0iJa2sC1TtPky4mg7Ko1o0HJ9WQoOOUEjgvlYTZx+Wj5Cx3QPr1eo0a
	tGRUwlpne5Wn6PST8uUQW6De0TQFJFWJmJ+oazZj3616LHSKufLzxRN+4S2h1oi/IN+jJNqYTD6CK
	0aBWOESgIkcc8FPqp8tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93m-00000002ROM-039b;
	Thu, 25 Jan 2024 23:23:02 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93j-00000002RLc-1MEw
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:23:00 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50e7d6565b5so9218888e87.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706224978; x=1706829778; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I77hIOPDHZqRb1VrXDKP+cEud9VJnWouv168YllT/hk=;
        b=lu03rc7fhjtHYXDpgUCX3hVpyhvDS8RytQmHuXj9/F6nsl90qCVs8gXL2nvzKUyO+K
         VzJxBRBF/wxn9X2rBHWtQcJkYmym18n2mzqLBLIM7DIeFbGfBQmY0S6HY1iUeEGlLKtC
         NTnZCbm2x3NICB+kgA4k3CeTdbxyz4hID+Uc3pUq0qYMJKYQhtTjwxLu3hNx1Fkdk6aH
         b/lf0Usma7BOsVgYplaWO0J1nNbf0swmEmoI7KzfrtgtHplu0dU1uhHbv9FUumJ7xvX0
         qpYyCNocQVOZNg75a3V5Bf6JLKhNAB+yfHDTYkTyFdEy5W2ds7+0pf6V3sUCywy/ZRpk
         NpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706224978; x=1706829778;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I77hIOPDHZqRb1VrXDKP+cEud9VJnWouv168YllT/hk=;
        b=HIuA+3+6TYK6yQOq7wmM+ik5NvrnpwR+TTwIhhxruhLZbe7qSgMrIYlZR5P3jS6MsK
         X/wu5CPYiF+3U/mHG+8tQvhKgSdo0IhiYwoVx+WFp1fg3DIYnYHSzEzJkkO50RuubjGU
         D1xA2lZZleTMvAfavVufl+pb80yl1Xe24FDJTLK36utyFH3JXz5OaSB1ZkuH5Ui0yRQQ
         C0lyxI6HtnvwNgEs40klfWbe4S4YINBJOl57RZ9BWxonjyRcNSR5qmB9VOJvVprqax7e
         UQBB8213MBdqU2mcH+t4Nr4tkJvtDnz8rvph+l+T6V9dLa1Y2As55BgwzsgnE7T3Vcqf
         IoIA==
X-Gm-Message-State: AOJu0YzTY9dihZziIB/Ovmrxlc/LCukBUcpT6R4v95WMNwl0WzzKv+Qd
	BFV4gbl8BdZZFVFXGyXZ8XOuPw2vMjSfpQy8qiGYZgEcBJOOyYGfrNRDrlhYB2E=
X-Google-Smtp-Source: AGHT+IGfezyDNKL9GenHCf03ccQrCPBMVcRDST9G7xNUwawazUaRkcoJPPuUdoAAETpZ1wk1Sh57QQ==
X-Received: by 2002:ac2:5290:0:b0:50e:b23c:e37 with SMTP id q16-20020ac25290000000b0050eb23c0e37mr256367lfm.48.1706224977340;
        Thu, 25 Jan 2024 15:22:57 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k3-20020a05651210c300b0050e6df07728sm3920lfg.180.2024.01.25.15.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 15:22:56 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/8] phy: qcom: merge common register defines in QMP
 drivers
Date: Fri, 26 Jan 2024 01:22:34 +0200
Message-Id: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADrtsmUC/22NwQrCMBBEf0X27Eo2tpp48j+kh9LEdsEkdSPFU
 vrvxoI3j2+GebNA9sI+w2W3gPiJM6dYQO930A1t7D2yKwxa6UqRMjgOMz7DiMFLKbsUQoroToa
 cI0fW1lCmo/g7vzftrSk8cH4lmbeXib7pT2j/CydChfVZG2tbqo5krg+OraRDkh6adV0/Xbb08
 7kAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2511;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=EaPmvIrH64MNXrCSBN8Nyn+GlMwOHCv5l8nt55jlLuw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlsu1PHdTsu7cVp5r24fWYO8eOWHm2qoY0CzBe8
 7Cy3OX3QouJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbLtTwAKCRCLPIo+Aiko
 1RGVB/9zBd3lxnvyBVN+s5ao6owHdwpcsYwpEiAO1O7zc2NHyRQQ1X4+bLVesAmuiso00s5bCMe
 x92P6ZWGzOpXsq7To70Grp9598UQKlNxU+YOzxJNdDO+/EzL0aCumqgxUp99ExPqrVx85yzmlcN
 /zvLX6Olgks4vfyDpCAUobKGMLhRYxOYe/k3uTqIYS5scA59yg/qfYqccO7lFdGKWlnC13GfVtW
 ylH/U3NXTcuJT5m4QzUtzNEf2l4VxN1QqKHkt++bl2c1XTApHrBgeEroyy8Fl6BTgkzoZVt2olb
 TL2y29sswd4c8WWtrL4GsYY8q7bYjKOJsht4JK7bygEgqyR8
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_152259_434200_616A51F1 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
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

After the split of the gigantic QMP PHY driver, individual drivers
contained common regster bits definitions. Move them to the global
header. While we are at it, also remove register definitions from the
phy-qcom-sgmi-eth driver, which is yet another QMP driver with its own
embedde register defines.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Squashed the outstanding fixup commit
- Rebased on top of phy/next
- Extended cleanups to the new qmp-usbc driver
- Link to v1: https://lore.kernel.org/r/20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org

---
Dmitry Baryshkov (8):
      phy: qcom: qmp-usb-legacy: drop single-lane support
      phy: qcom: qmp-usb-legacy: drop qmp_usb_legacy_iomap
      phy: qcom: qmp: move common functions to common header
      phy: qcom: qmp: split DP PHY registers to separate headers
      phy: qcom: qmp: move common bits definitions to common header
      phy: qcom: qmp-usbc: drop has_pwrdn_delay handling
      phy: qcom: sgmii-eth: use existing register definitions
      phy: qcom: sgmii-eth: move PCS registers to separate header

 drivers/phy/qualcomm/phy-qcom-edp.c              |   3 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 109 ++----
 drivers/phy/qualcomm/phy-qcom-qmp-common.h       |  59 +++
 drivers/phy/qualcomm/phy-qcom-qmp-dp-com-v3.h    |  18 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v3.h    |  21 ++
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v4.h    |  19 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v5.h    |  13 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v6.h    |  13 +
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h       |  62 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c |  70 +---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         |  90 +----
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h    |  20 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          |  72 +---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c   |  76 +---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          |  97 +----
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         | 102 +-----
 drivers/phy/qualcomm/phy-qcom-qmp.h              | 111 ++----
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c        | 441 ++++++++++-------------
 18 files changed, 513 insertions(+), 883 deletions(-)
---
base-commit: 01af33cc9894b4489fb68fa35c40e9fe85df63dc
change-id: 20240108-phy-qmp-merge-common-d681dd1d1995

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
