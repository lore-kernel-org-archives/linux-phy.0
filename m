Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C5DCEB64DB
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jun 2023 09:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cHBAYccLR46+5gOqDCy2f/RZSk+9wUBZdm4+W1Sp5Y0=; b=sziei2fr0z5w5Y
	Ou04ZUm3llKELMUmn22M7+lN/+1Ptc+rnKZ+EZTVJDSVpydFnsnowyIlBlh4Ps3uTQoZW5lLtv8f9
	WV616Uzs8rQE+MkGNQV8XWRQqqSja7QAnT1Is8Ox9g4rit+LZqazNZQfRzHYfjQ1/AhiH6I8vq1Bs
	DU6C1mppQA3gaLwOMaZNC9iuhJLMEZ8TQwJaJ1LbP2mre8PqOzDfNSJI+4qGtlj2m1PYQ1wFwBr58
	Jk8yVAkkaxNEO3nGXRBW0PDf5Cf0lztZPo82sIjbt0p7ZRVByyiiMSDZ0ZElRZZm4eZZifwuYNANA
	/aexw9bxw4aFMZk8gokw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBAxH-007xdi-0i;
	Mon, 19 Jun 2023 09:13:47 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBAxE-007xc6-0B
	for linux-phy@lists.infradead.org;
	Mon, 19 Jun 2023 09:13:45 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f63ab1ac4aso3930930e87.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Jun 2023 02:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687166020; x=1689758020;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FGUmUyPYRQe7JCe5YSSOKzsUZSYLXR3kceyIiK3bZTo=;
        b=jF7pdXS3XhA2vRtlsR7hRh6g4RSLWEnZZL29aG3Csa3XHvACUzVJqPmkbtOf1YmX4t
         Sk3hHWWHpFn8lqavTJDhbBqKqj75OXR2fwgsay2bnpcVxYGJlzOJrqS6i6MafXRZs6NN
         kD5suHqFLxFkuj+7vLJScGh3Sfql66h/Gc5ntN7Wmix3dL/0lRMTGEfkrQV7e2SsgsUm
         c8tZ0LQwU5rvBEi0+YIKuC04utnu6rzpDHXGVhru5hYdZo25u87yiTPT15h6RRKUAtSW
         ELqf9YFazuGXOlrTf8OpsmciEKvMS7EeV8p9LoslLEE8GvD6NdI03QmLTcKphJxLRlv6
         qJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687166020; x=1689758020;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGUmUyPYRQe7JCe5YSSOKzsUZSYLXR3kceyIiK3bZTo=;
        b=bG/sltaE8xHVFGejK/TBWByt4h6EN7HQLnGcY+QxddNrR2U5H+DpIkdXMmlwCyUI8H
         Ev2f+1a1x0Gtgu/PzpZm39ZDtX5VGPBJSzs7RGmi2diBHEe8zeH3VJ4m8V00rx5olAow
         iEAhTepLbWQounIa9owdH7xoSEowURUdjD/NkKHe7SOxVybQ/S5bBkIbbX/42w8uYRmU
         1nxYwTwgLwpaY2gqKDae7l3TADvQjvd2yBxQa4gPYmHMElHarDhN+ikie1Xwokf7qQVD
         bOr0CsbTsfYybXmnpE9HbP4iAkKdnE/ob9yOQH3mdzvBAgr4DB2nix1TcjKah8DaaRBo
         beRw==
X-Gm-Message-State: AC+VfDxg3Usew583WAlpAeff/JwGkbbxPWeNR56MjMLwlDjPNQxmSlCU
	Cbsyes150RNyqVoQ0+mZ4rcO4g==
X-Google-Smtp-Source: ACHHUZ78zEUhE9gBbobf8MIedRP5SIggqx8yhpnqgFdeJalbMShz4tBLCD/3Fg+jBdr7c4DmfZ4tFQ==
X-Received: by 2002:a19:790e:0:b0:4f8:6e16:fca3 with SMTP id u14-20020a19790e000000b004f86e16fca3mr1368039lfc.28.1687166020479;
        Mon, 19 Jun 2023 02:13:40 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d9e8:ddbf:7391:a0b0])
        by smtp.gmail.com with ESMTPSA id p20-20020a05600c205400b003f9a6f3f240sm3072993wmg.14.2023.06.19.02.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 02:13:40 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RESEND PATCH v2 0/3] phy: add the SerDes/SGMII driver for Qualcomm SoCs
Date: Mon, 19 Jun 2023 11:13:33 +0200
Message-Id: <20230619091336.194914-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_021344_308897_5D445834 
X-CRM114-Status: UNSURE (   9.06  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add a new PHY driver and its DT bindings (reviewed by DT maintainers).

This is a sub-series of [1] with only the patches targetting the PHY subsystem
as they can go in independently.

[1] https://lore.kernel.org/lkml/20230617001644.4e093326@kernel.org/T/

Bartosz Golaszewski (3):
  phy: qualcomm: fix indentation in Makefile
  dt-bindings: phy: describe the Qualcomm SGMII PHY
  phy: qcom: add the SGMII SerDes PHY driver

 .../phy/qcom,sa8775p-dwmac-sgmii-phy.yaml     |  55 +++
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   3 +-
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c     | 451 ++++++++++++++++++
 4 files changed, 517 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
