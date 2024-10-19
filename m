Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB870D3C91C
	for <linux-phy@archiver.kernel.org>; Sat, 19 Oct 2024 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2yif1sRiuHazQptMuom0R4/ckUStjC4AvGMH25dD5hI=; b=INTXMwfa7wh2QU
	DLX5qBCV5SahOFJWKfkya22Rtp3s+334RwFZlOaRmAL/9hgooFYioXwqjBmeoJnxFHB7mY2IAv9c5
	DoWBc/MHlEYli+T8oC+U9Ebtlpn4uk+q2zuQy6vY5+y6T2uyV4tMp90vtpYijgV/0tLME4fYUf/8K
	rXcecGqLE0HeArDMZnGNzVdX5X4gadpZy4aENWJNgU94v4jPafze2vnXDBUclLCtQzMowfMYzgWk5
	5e9qXwSty4KfILRz4Z25arju1uP82GgufCeXb8vIhoKcItMT4/N2D132TwOTzHx34hRBrQNtSmVA9
	6vmcdlF5/Q59/nZlatIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2BdU-00000003XKA-1ktM;
	Sat, 19 Oct 2024 15:45:00 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2BdS-00000003XJj-0OIt
	for linux-phy@lists.infradead.org;
	Sat, 19 Oct 2024 15:44:59 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-539f58c68c5so4811512e87.3
        for <linux-phy@lists.infradead.org>; Sat, 19 Oct 2024 08:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729352696; x=1729957496; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2vR7kUbPUlHuQXy/cfDXaepxmyC5kLsf2VWQ+zQ+f7k=;
        b=ffDH0ysZIPgD60hoV5qpKgIJIlVQ1E0iWi2uE05G17auBE8iZfst/BGhR5FHysjls4
         SPIXBTaiZjEv2/Zjimw0tBIpfWoIxmkz2e4PhiZD7C0S84i54s97ZlhFso66xPfLHeb9
         y4el8HaeeOlv0+daGM/0J4YpIvz64zenyGC3jbjVO1PgaEYGCzN8qd8s5snTSp3KBwkx
         DETOCJmVPkVKal28H+qyAvMDEgLwwqqvYBKxYY1ThvCqajCw0naqkMpsx+3N5Sl3JofW
         gs39DeY0XlQiLSTbI9eKySBIm16DDq+3LOFLjQHCjV/g+8gikikq3wByHIEF/LgshfnG
         X2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729352696; x=1729957496;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2vR7kUbPUlHuQXy/cfDXaepxmyC5kLsf2VWQ+zQ+f7k=;
        b=MVR8itkjg8KiDJmhGSdgfpXtcVxpptzl4NpCRb/ASJT9iULP297KkdSie6sfRa9VMv
         3iQMqaUbFwKWITBKMeP7d3WC4AuVx492452PJ3fxjqMcuTT1a3Lvi2i0tGtyMu9cPCMw
         sINrSdOs/b5fBtJ7ya7CwoibxBPGmXcl1Eh+B5yom022qBBzqIC+8dpQSpym7dkgSbA6
         41tg4R4oQf3/ZTMjIkJ58J2lDtO590B9AV1KaE4RCJdHOjh+PF3wlCg2dpIu4p0QspMF
         CrAadw5kRlVBZItkKcdRCAAfxaIG+AFxuSpDjg2VIe6xArG+iB7YYIRD3XNvJzhZby1W
         oHWg==
X-Forwarded-Encrypted: i=1; AJvYcCWtCB8ay6h2O+zgJ9zr3eU+2quNCSMzQydZimqzoIPqKTC63HfFDYe0WeUSxnbIRT2HsDqBzGMSTPU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6lbwjPqNrPctsPllnDChBEycU2mEij9uaz1JHs33vj/qRuLEb
	j8J6pv/s6ulMZY9bjyCTmk/rEOsNE3MGDVSaJWTZX0P0TIl3DFN/jrECEdR4F2o=
X-Google-Smtp-Source: AGHT+IH8AFk38xnx11zVMuNDhcJQkJyvHrqNFF1D6rb1QmK8TDJTwNLhG0QSoTp1nPAbDgMMlKMb1A==
X-Received: by 2002:a05:6512:3ca8:b0:536:a4f1:d214 with SMTP id 2adb3069b0e04-53a1544519emr4841543e87.19.1729352696015;
        Sat, 19 Oct 2024 08:44:56 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211401sm562854e87.249.2024.10.19.08.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 08:44:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/6] phy: qualcomm: add support for USB+DP and PCIe PHYs on
 SAR2130P
Date: Sat, 19 Oct 2024 18:44:49 +0300
Message-Id: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPHTE2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0Nz3eLEIiNDY4MC3YKMymJdEyMzc2PjJAsDQzNLJaCegqLUtMwKsHn
 RsbW1AKS8XxlfAAAA
X-Change-ID: 20241017-sar2130p-phys-426733b80169
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1542;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Vwq8dyZKEj2ygSd1yqgy0fl5gmIjHUGwyRng0MKb4hQ=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE9PzYZWOONvC1WZ8PZ1mKMr6Opf7JrXjbI6m2
 MuG5OluqPmJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPT8wAKCRAU23LtvoBl
 uEHcD/4gLcV0Lbco6iiFQ+CfYZbWxZNV6Qx8VSQuh15OTmj1Z+XkqjCJlAuMR8vbj4LTrn8t8Sr
 Nq0ApJUOP2m0dhsoDhP6L7rRJxHmNMRgu5xjSKWuU/YwNG+NaRuNFaLWE/2WzDbmbBYmMnf0IC/
 bNVMvzDPY6NDB6X6CYCzoOdJYn4waPRly+0l86I2LKXPVSFQ4L/iz5LRxGmz7nZenesikXu/88i
 SbUwoXl3u0zAYgkdOeaE4kn8QtWOLuhowmb+CMzEGHtr1jNxQdNDQ+ShUAd7FZ4ttGvSxZ1QRHw
 aOpqfl24Xw7vTVHakbP0v7KB2A2E/U1slpY9KuGy6N3uvaAjfmf4tQny7vO2j1uEMSCxhD03VDz
 bw41W8hfn0izP9IKN8yqkzhIqudR6dOLjsGe6VanZvUWbZnvgL/LPZtUokWrQvMZU+vkhoQL/BQ
 L9Pdgd9RqgICCHSbAAfkHIdbVRZkc/taz0fG3VyI1JtAIi15Al5a+Hi/rnqXcArq+oDnSpjsLSJ
 /EJxJ9HqPRWhuALrdDBtkhMP44Ur2e1W5fKjRpf4maRJ9Sky0vNr67lHnjb46hiqX1a7ul1tUYG
 U7m7tqbyobhOKpD9wLp2cDhxwgc++NASzbXvnNJYaFiRCFjXqE+Blr1fjmxrTU+DRsN03Ha23yU
 ALi0q+NAgB43eBQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_084458_175906_9CF313A4 
X-CRM114-Status: UNSURE (   8.17  )
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

Add support for the USB+DP Combo PHY and PCIe PHY on the Qualcomm
SAR2130P platform.

The DP part of the combo PHY wasn't yet tested, but it is not possible
to support just the USB part of the PHY. DP part might require
additional fixes later.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (6):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb32dp: Add SAR2130P compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add SAR2130P compatible
      phy: qualcomm: qmp-combo: add support for SAR2130P
      phy: qualcomm: qmp-pcie: split PCS_LANE1 region
      phy: qualcomm: qmp-pcie: define several new registers
      phy: qualcomm: qmp-pcie: add support for SAR2130P

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 100 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 173 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h |   5 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |   5 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h    |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h         |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h    |   1 +
 9 files changed, 284 insertions(+), 9 deletions(-)
---
base-commit: f2493655d2d3d5c6958ed996b043c821c23ae8d3
change-id: 20241017-sar2130p-phys-426733b80169

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
