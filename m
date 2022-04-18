Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8D04C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 20:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=488M5tQKMlBsm8/hGXbRd78l5xZDHLfZ0DJjsMRrmxc=; b=aRAdLZ8oEt9qJZ
	wPka//qgiuwflX5WA1K9MKitk4mC0HaGDe/ncQp61uyJDNkwWKGmrkHwPLDvlN2g3Uz/Q+Bij/kYa
	K9F7CjQT+++UVlSdnuCLuUmVQEHyvnVFIMiY5TCr2/a9biTIgzAEl/8LVSb/wumk/KMFuDNHqCMFX
	S+6czmwKeMDArNN6+Gux+okluppJrlk+vbINWXnz5ZwpTzm98DkM6+GHOspLMfEaslAhLL/NP4eZ/
	besOS0SC3RWiHEhtjnPyNLmx/3J8iUlqIXkU6ZB1oGT4MUihwAzUzDyZS6N1hZPitVjBOse2vznH9
	Dp7HQ4BUn4T9TUdlCHKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngYP7-000ZMJ-7X; Mon, 18 Apr 2022 20:55:25 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngYP4-000ZLp-6a
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 20:55:23 +0000
Received: by mail-pg1-x532.google.com with SMTP id k29so20980201pgm.12
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 13:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fwdHbI+gWr2kmO8oEf6EWMg+aRRNzFtsHXg6Ha4SC3c=;
 b=A9jx7UXl6zDK1LCgkYAt80Edgyydum7V4aNbBembSJJYjRHv1DtODpn/2CV+aG9dDG
 d8f5Tj95SAIyNWRjcOvW8R5e4FBRh5GzwzH1ljxGgMoKuWRTYEMHoFmTNw77kH87LmhU
 roSIyZd6rJ13uMswmXWUru4WEW8A+Hx2RjW0bBjTWDDQ604XHpIJRu/tEC/4stLEeETj
 BqwClnkRWU4NY7I6N+s2s1ezuKLPiLbFJKH7F8E28KOemWiv8RNAFBQCRU3OdWWeDX7D
 +9bLSESOQmr0xv3OLuSaZNUv+X6Bjc0OEJ8whUjgLxHyGMXL3OvRtBO1FHL/5NKBKJwR
 ur8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fwdHbI+gWr2kmO8oEf6EWMg+aRRNzFtsHXg6Ha4SC3c=;
 b=HG11gu02DRkJZjTSd89f0xqOmRNzIFJrEuYoXv0nR+W29aQf13jE9NjtzPTDSqO3z4
 lpRyoXpYrw1bFzeh6ttE16tTTtLCATXOQCLZMQpX5BlUZPoeC2eEjnIxxT6+kwHO8KMR
 xrRmpPunH1SKXcyDFabyzjDzs/QZOMkz/XcxyzsDDpK8CaVkroVY2t8mLUfHg+Y+hV13
 IV3b5vLZdw1yHCvDz1HVw8agxF/Qt35vcPKN8yl/s4CsIoL0v9zVLIHrUW1gu1WmAEaj
 jdgJL3MIALFPBFTzEdBsY2Thqs79cwUtM0leMQnORYNK+eWzxp9yAX00R/ezuNDQkfNe
 sSRQ==
X-Gm-Message-State: AOAM530KWnOIzGWSo6vcxzkCHLiNGNYzB9GwfRky2UYUhZWbhbHpagcP
 guKYbFdT+vvpZbCfFVLfN6mAJg==
X-Google-Smtp-Source: ABdhPJyQZdPawrK73wiDulg+k+oaaLLE5yDW1YuFAoP7VE1sQd6zLtPQoQYkLwO2yowwMnwzAJ9rsw==
X-Received: by 2002:a65:6216:0:b0:39d:5e6c:7578 with SMTP id
 d22-20020a656216000000b0039d5e6c7578mr11367085pgv.114.1650315319568; 
 Mon, 18 Apr 2022 13:55:19 -0700 (PDT)
Received: from localhost.localdomain ([223.233.64.97])
 by smtp.gmail.com with ESMTPSA id
 q60-20020a17090a17c200b001cd567fecaesm13498859pja.26.2022.04.18.13.55.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Apr 2022 13:55:19 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v3 0/4] Fix  dtbs_check warning(s) for Qualcomm QMP PHY
Date: Tue, 19 Apr 2022 02:25:05 +0530
Message-Id: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_135522_352419_5A06A092 
X-CRM114-Status: UNSURE (   8.61  )
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

Changes since v2:
-----------------
- v2 can be found here: https://lore.kernel.org/linux-arm-msm/20220228123019.382037-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Rob and Shawn.
- Collected ACK from Rob on [PATCH 2/4].
- Since, Bjorn accepted 4 patches from v2 already, drop them for this series.
- This series is rebased on linux-next/master.

Changes since v1:
-----------------
- v1 can be found here: https://www.spinics.net/lists/linux-arm-msm/msg104871.html
- Addressed review comments from Dmitry.
- Addressed the remaining dtbs_check warnings rasied by Rob's bot on v1.

Shawn Guo recently fixed a large number of 'dtbs_check' warnings
on Qualcomm DTS files for qmp phys. However a few warnings are still left
(possibly due to new dts files being added over time).

So, I decided to clean them up.
After this series, '$ make dtbs_check' leads to no warning for QCOM
QMP PHY.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>

Bhupesh Sharma (4):
  dt-bindings: phy: qcom,qmp: Mark '#clock-cells' as a 'optional'
    property
  dt-bindings: phy: qcom,qmp: Describe 'vdda-max-microamp' &
    'vdda-pll-max-microamp' properties
  dt-bindings: phy: qcom,qmp: Describe phy@ subnode properly
  arm64: dts: qcom: sm8450: Fix qmp phy node (use phy@ instead of
    lanes@)

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 29 +++++++++++++++----
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  4 +--
 2 files changed, 26 insertions(+), 7 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
