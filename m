Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C51CBC61D97
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 13:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rtXIgf3TNxeFsAUO0O8nGpo9fYGEvRrPkS4f7Ac12zY=; b=tmH6GNY5TgmPY/
	7MPaGqpZ8PbHWT6EssVnHLe+TZA9Bfc12Mb5vjfy317UZQN0mcWCU5X6g0AGcu962EqMf/j/qZBUI
	6G8rOqKgpdQuShl6LbAPs1FuFxhxH/gMhR8272XZY5BdoReGXhEl9pFpdY528nUajI2XDTZw3JCjE
	4eKQwqkMoTYuVqe0JnSMQhkgdLkRyYO3GKmNJJWPZoyYSqzEzQyQFQuU85n+7/X/T3dCA56CeBSPr
	wTR5Hjd+uI9FXm6Dck7oB6i1EDm5EsVw3IgQU4JZycDBwgY91FkJDOS9/RJuNN8mXSF2ge0K/YOkv
	moFQDrcJHEmQ9MqYJrOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJwu5-00HMXi-2G; Mon, 23 Jan 2023 13:30:29 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJwu2-00HMW5-Cw
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 13:30:27 +0000
Received: by mail-ej1-x633.google.com with SMTP id tz11so30565386ejc.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 05:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GNbLj/XmOS18lcQ6X8VOqWOavPYN+fm3m3tQOx//CQY=;
        b=y1I2hXpHlXyGKsjZYDgisHlHbdrEFWMrdHw+LbJUg2u9PZkEeKin8vq7vzHQ5KTcRw
         AwLhJQZ2Ld5yppC0c3LhRYB1CaJibzMyuDPe93tQfyVIJnK4HQ5ZeYlsHQqPFxA4+8pZ
         IYgvWu3JrRyj4qZwRXWyZeV19HzqrLgp8m3t06I1/szGtrp4wxVcdU5ljdVuvUP6n0mm
         pnZr+lzBGgT0nEcV9UekpHf6E4BRgHKjiyMXfZ4RLEvpuIw4/Xkjw1fhs33y0jSyAzTm
         qcBRVahxjqq+IRiVe/abu+UHvm/ar293kZjtI2z8KrJnL6WnV0fzUHCPPyDN5T1S/9Wh
         hXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GNbLj/XmOS18lcQ6X8VOqWOavPYN+fm3m3tQOx//CQY=;
        b=u2CP4P/Qdx2suoWBWnGqK7e2CWlu0SLWS1Y1RJGhhBA6aDIem2kAUDcFU82yIRl7ei
         267+CneQCIGr5QKU7U5AfUiTmKi+FJ0JY0dVU8yVBTsVMLNgShUXeR1qCVUwlac6Ezks
         pR9eJfH4xv9411ttnV8muB01ki9MKMunLJau4fx5Q6Lm1usyIy9bsiWvgnwxBCLHfD4d
         97UCJEUyCV7ko9kd/yMbmuYajzSKqjYzR/dRlM8ZnrQb6ccgDINFfKo8qwC8KZxnnEtN
         2UO7yjGf3xjVhHSlcqI+g7MinuShiZX06a3wJk/ktVtwExCx0+YdEjuqHXcM108HQygL
         uUBA==
X-Gm-Message-State: AFqh2kr9f6AAA9MA9z4423ZEu9j75LanWuL65AAX3u0moGhSSuP4LSrB
	O8YrvK3qN6Cn/C0hmP35PQ7TMw==
X-Google-Smtp-Source: AMrXdXsO2W7vTKmldyNi2VluWAXyWgl/FTLpjx5ljjPpjsV580GO1FHx9OHRarQY2voFWBfv9iIenA==
X-Received: by 2002:a17:906:5417:b0:877:5dbc:da84 with SMTP id q23-20020a170906541700b008775dbcda84mr19849609ejo.72.1674480622737;
        Mon, 23 Jan 2023 05:30:22 -0800 (PST)
Received: from [172.16.220.87] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id s5-20020a170906c30500b008552bc8399dsm18410066ejz.172.2023.01.23.05.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 05:30:22 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v4 0/3] Add USB/DP combo PHY config for SM6350
Date: Mon, 23 Jan 2023 14:29:48 +0100
Message-Id: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMyLzmMC/zWNywrDIBBFf6W47oRR85Cu+h+lC2PHKiQanKYPQ
 v69UujyXDjnboKpRGJxOmyi0DNyzKlCezwIF2y6E8RbZaFQaZQKgededwgrj0v4gBlcR9qjkoZ
 EdUbLBGOxyYVqpXWa6rgU8vH9O7lcK/uSZ3iEQvafVlJqRCNbjU0/GC1BwrQ627woMp+9jWUJO
 VHj8iz2/QtItfVgtgAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_053026_490010_F74D318B 
X-CRM114-Status: UNSURE (   7.83  )
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

While this patchset started out as just adding a dedicated init sequence
for SM6350 since USB PHY init didn't work in some cases, now it's also
migrating the phy config and dts over to a new format.

Also note, that the DP portions are pratically untested since TCPM
(type-C port manager) and possibly other components aren't brought up
yet.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v4:
- Fix dp_serdes offsets in driver, add dp_txa & dp_txb fields (as in v2)
- Fix order of resets in dtsi
- Link to v3: https://lore.kernel.org/r/20221130081430.67831-1-luca.weiss@fairphone.com

---
Luca Weiss (3):
      dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
      phy: qcom-qmp-combo: Add config for SM6350
      arm64: dts: qcom: sm6350: Use specific qmpphy compatible

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   1 +
 arch/arm64/boot/dts/qcom/sm6350.dtsi               |  54 +++-----
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 139 ++++++++++++++++++++-
 3 files changed, 154 insertions(+), 40 deletions(-)
---
base-commit: d514392f17fd4d386cfadde7f849d97db4ca1fb0
change-id: 20230120-sm6350-usbphy-87c5e3f0218e

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
