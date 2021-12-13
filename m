Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA203C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 08:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDpnyeaB2EGMzdRFg77oS9q57z5R6Rk8PDafeXbBspk=; b=YUd1b+W40fu4xG
	sLQaVcWg7DGw+2A3rpfX6FVYwqpZQXOs6Cs6ZNMiYT+F58f4h51qDLNlksiqB6UGhjFhwqqnoQZXV
	UgfYEIqF4iHDY3l2GwbgU1AImvjtMwTRi/uW5Oh0HR2m7E+vDr/u5jPwhr0TWXAnFFy9nMucdWtbG
	PRtYm13zBpzYDd8qXwApp3PHodkFGIsun4j+awMoFdU5TdSrbwvlmfL9BqIsHOGKYKzIvkf+VkAqa
	gthagVmiQvjvP3WxG+PSjPbKNIYAA+qCEbDpaJ/QDI3e6VUEMyDdZFOUIPt3K7DmS6H6Mci5nWXRk
	oXOqMGNvUINeqQHVdkQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwgg0-008Hsm-20; Mon, 13 Dec 2021 08:27:16 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwgfx-008Hrt-1c
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 08:27:14 +0000
Received: by mail-ed1-x531.google.com with SMTP id x10so31988039edd.5
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 00:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9qNVJJUEkc7Dcqq+w3jXBP/JOAXOW45KnRjiowBHvGk=;
 b=lGsG+RSK6fKMObsJQ7Iti5lpYgJ6YDHFJh2yVwO4XuHD8dveHSTYe/H5vctCR3EceI
 XqKuogxu2fO0A5lqmYqIOpALu/ZAlwyN5MpiGyuxrhGT4dFdyWMvGpLMx8bvZsddP9hp
 uygNMnJ/yqA/HLuo9RxL3P+UaNjwUw8FVJxoH5ME1qus3y9LosZQt6MPD+Go9ivr+x+I
 5NBCzSlBofWA0sfijE46EUYppcRu4UKN9UbgQuwQlhr8/MVWSyaIoK6EGtTLTPMvbQQ1
 YS5aqS6H4kpadwXpvOh44y1zf//CCrxgItwxZNG/CI17aEzqwFI/8ITqQJIsV4zBY6wg
 c6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9qNVJJUEkc7Dcqq+w3jXBP/JOAXOW45KnRjiowBHvGk=;
 b=CrYMEHLd52OIXpRvJnCnptclqbks98kbVG0rIsl04dyKtmjLG++4OJilhJ3aszU+Rv
 IEDu3Y6GasE7f3qCazQYEfiC0zgjbKDZBqtxX6UhaxU9ZnM9/JEczxeTOMXpMxR6A/T1
 lvGt1E62s1kOO8kQ9wzpMI4Ut7LtDxHREbEkYimq6fTaUZGAnROZJCuXQfMupcX7zrD5
 5Vx8nEeV4npJoiby8AKvq4YlrySGkln3J+DEat9PX3YDbOinaZxucvWLozOZdC/XaMrV
 mZonteTz78WLw7k7/FxuheSVMAtnY3vgjkTLRI06LUalkDU9XYetbSxeAaNorKe6nGUg
 9iRg==
X-Gm-Message-State: AOAM532RSJ0xZEYywKC+AneKpe2y4UO2hcas26imEEU3Bki4gp2xc3vv
 rSzvsiptQTBV2we79y/gUx2EXw==
X-Google-Smtp-Source: ABdhPJzJQzH9IbD0iKwzxP+OhiHo4OBp+NQ23YW0riJPC6Agdl1/DHF8upIV5V9+Kb8bNnWCgPyEyg==
X-Received: by 2002:a17:907:608f:: with SMTP id
 ht15mr41645248ejc.300.1639384030231; 
 Mon, 13 Dec 2021 00:27:10 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
 by smtp.gmail.com with ESMTPSA id b11sm6062432ede.62.2021.12.13.00.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 00:27:09 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>, Amit Kucheria <amitk@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 de Goede <hdegoede@redhat.com>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Konrad Dybcio <konrad.dybcio@somainline.org>, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>,
 Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>, Rob Herring <robh@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>
Subject: [PATCH 00/10] dt-binding patches for sm6350
Date: Mon, 13 Dec 2021 09:26:01 +0100
Message-Id: <20211213082614.22651-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_002713_136612_72E1E748 
X-CRM114-Status: UNSURE (   9.44  )
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

This series adds compatibles to the dt-bindings documentation where it
was missed before.

Finally, the last patch solves some further dtbs_check errors by
modifying the sm6350.dtsi to match the binding docs more closely.

Please note, that the first patch from Konrad is a resend that wasn't
picked up when sent to the lists in August 2021.

Konrad Dybcio (1):
  dt-bindings: arm: msm: Add LLCC for SM6350

Luca Weiss (9):
  dt-bindings: firmware: scm: Add SM6350 compatible
  dt-bindings: qcom,pdc: Add SM6350 compatible
  dt-bindings: phy: qcom,qusb2: Add SM6350 compatible
  dt-bindings: thermal: tsens: Add SM6350 compatible
  dt-bindings: usb: qcom,dwc3: Add SM6350 compatible
  dt-bindings: watchdog: Add SM6350 and SM8250 compatible
  dt-bindings: arm: msm: Don't mark LLCC interrupt as required
  dt-bindings: simple-framebuffer: allow standalone compatible
  arm64: dts: qcom: sm6350: Fix validation errors

 .../devicetree/bindings/arm/msm/qcom,llcc.yaml   |  2 +-
 .../bindings/display/simple-framebuffer.yaml     | 12 +++++++-----
 .../devicetree/bindings/firmware/qcom,scm.txt    |  1 +
 .../bindings/interrupt-controller/qcom,pdc.txt   |  5 +++--
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml  |  1 +
 .../devicetree/bindings/thermal/qcom-tsens.yaml  |  1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml       |  1 +
 .../devicetree/bindings/watchdog/qcom-wdt.yaml   |  2 ++
 arch/arm64/boot/dts/qcom/sm6350.dtsi             | 16 ++++++++--------
 9 files changed, 25 insertions(+), 16 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
