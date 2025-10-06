Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F4EDCCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 13:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bQRyKghpNmBHJlKP5LS8UBqc4AdeZPYiV3wiXwoInQg=; b=GDIbxYhmn+MdfB
	DOmyq+G6JXsL19WUN5ThUQ4aN44fg6nEtvhh75Nzvw/TT7ADIn1dzfDPv59Gw9WrezZ+S7NmFp9qG
	b3CrP1QYw3VPY3EhmcNldKa/cQgOvPo3p+R7bcBgL49LyRSpnTzNkOQOYuGtcAsiIga07O35+3flw
	ji+R332P6C8FrsrtjoirKE1u1rIBqrPBIr7mCuhX8oKa6IYjYBsf7edtkKfYvdswlDtRz1NF6hrZn
	T6JKULacXiqFGtlkZLH0RuzQlSgFaIf7HHO0fGJWpWVv5ICiTH6POFzmBJMJW6A3iGXnc3CValQzD
	gFc8bKldcpMFWoqoXaGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgK-000000007ha-37sV;
	Mon, 06 Oct 2025 13:55:16 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgI-000000007gL-16qu
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 13:55:15 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3ee12807d97so4109901f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 06:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759758912; x=1760363712; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OX9GmiJl6oGheMa9HlL/JG69y+jLP1fe5JRe7yUKpyU=;
        b=mkG0LBAmoVh7OSBRDuoQW0XBkY5ehhUSyiUka2x9fJWTBNJ3OUj5dyZZ5Jy0mgO8A8
         MQueYNf2nf9BPLRZn0fWgR4CtajL4XjSySHlY5IxiSXOe8/QFb4L+sI5IGGCH7h62zfe
         f6HiTJPizORW8yzQe1GrhX945YxPQbpOpjdwzDTBH2+TfYG/jzTf3UY2ng1caL87cEe5
         RKv4RDnYmskWepXqX48+QyrxCh8IegVzCjRXQCOez+Gf9JSNJEYFBfGcwHTYJ+XJEZ75
         RNAqKr3DjX/1/LwS69BrBCohpTQ/EnJbkLGiK026zuqO0wcXGvUCjnL/Aw/f9U1QntZo
         boDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758912; x=1760363712;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OX9GmiJl6oGheMa9HlL/JG69y+jLP1fe5JRe7yUKpyU=;
        b=uGG4p3mk6dgihZKcZlOGyQsjQd+68cLwBA4dX3Zwn3o0kdS2ee9UsLvTodY5EVyk+2
         PFW+yVPZKBEQMkNf5H5mG3KpMyn4EWUzj2wORePzweqpCm5vAmcWzBKyVpNGprEFqkPl
         eEApBfytHPSNZ8ZancCww/FpC69Jcv2U56RHTqTJJxWtOUE9zeIrfAicor8nA0uLgh5+
         REdkqpx5jmWFzf4TGdvwL63zUH64VQo03/7RQZh0PGHcFexgD4hbgjVm1t6/GR0Jq0SP
         XGgsAmHbYu97vyj2F8lm9pttb9WBEb69P33XL/FkqXuWmIIni4QzRfIzXxaYz1gwrgAn
         pc8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXjAptRA2aAxaJmIH40M8CzzTYXCwjtk8144XcoZvgds9GhFJ9PzMrgbQjQb0nNguEa6Uoiaxlc+4M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXtO5yxUgIfIBFP5SqSFfx8VSmVrrYTP5TGqgOH/R6UgEkQbNS
	m2GN07cmDug6udXie4Gc0hAa+5q5h93Kp2SCuVBDTfwin4wSBIfvAKhzOudxqdT84KE=
X-Gm-Gg: ASbGncscZnljsLIYHcnMV2oyJUwX6RZHMeH+9YwQ2tg0VicHh9WckOXhey/3tC01VzK
	g3KcVE1S9iiOHK6wjqAgNH4O1fxS2mxCPkcJTGPLYGhkWppXS9j8VfqxtJKNAmwMLdzhoOuox/+
	Jvrk31XlaQ+tc5sLYpGrEQOfX/7djuZgD9ORCscMqSakH4YgtiQ+pqdQzk+k/0f/jeLpdgQ0vPZ
	vAm18uO5eBq9/Kxpw6yfNlpBZ2ZVLRGIkVsus4TVioBcEfWOzp8qNxjqfDZD0wEUpzdaies2600
	zYp7tuCrRcgzhscZ4R82R5IlkgdZbSbudaYG9m7++VGxcs4Sd5qWiMmr4AzdddSuATDTLpycK70
	43O8kgOS7rvns8OakSLPI+VaSWTjBvux0A92It2GZOb6U+ZEcUAOFezHlCis5+WVQUTUMG08=
X-Google-Smtp-Source: AGHT+IHlOMkC0M8psBPdDuSpQ+kT3dNmziZ8yN50JboqopJfKrfkopq2o/316mn0W3yUBD6atqpWKA==
X-Received: by 2002:a5d:5d03:0:b0:3ea:80ec:855d with SMTP id ffacd0b85a97d-4256714afccmr7149351f8f.19.1759758912209;
        Mon, 06 Oct 2025 06:55:12 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6daasm21291921f8f.7.2025.10.06.06.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:55:11 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v5 0/3] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add
 support for HDMI output
Date: Mon, 06 Oct 2025 15:55:02 +0200
Message-Id: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADbK42gC/33NTW7CMBCG4asgr+tqPLapw4p7VCz8MyYjtTFyU
 ESFcnccNgURsXw/aZ65ipEq0yh2m6uoNPHIZWhhPzYi9n44kuTUWiCgBYdKnsuJo7wocqAAZJ9
 +WeqQbLAhYeq2ol2eKmW+3NXvQ+uex3Opf/cnk1rW996kJMisjE+d0UDO7X948LV8lnoUCzjhP
 9IBriO4ICbGDJS/Oh9eEP2IuHVENyRaHSBjiJhfEfOAaFhHTEPc1itDzmvj4xMyz/MNHR+NmYY
 BAAA=
X-Change-ID: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3075;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zYYq+pLwq2yRy1ZkKoqQVUuyGLG9KFjljXH2Rjj3TVI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo48o9+YgUPzV7MVXoMe0H08kdYuE04tIwF5U3BTaF
 Pe/ZjkOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOPKPQAKCRB33NvayMhJ0e2yEA
 DKgrSFw49oWGkvZYpvAGSOaGcWDGpr9uueX1cUVB8eFV/LKEORMxevTYW8+VnH3szTnkODZdXoiETa
 x6/1Ss16ZbYfQq2q5WXYLpJIvwMCjZ3iKFgXb0wO13tM4nlPyuHa91qGqE5DQLQO9JszT07Ue1kIKL
 imLDrPCZTtDJ/SMmmBCLGYIfrQUgqalnIpRC3I6MQ278qbpVHWB8iWabFm/zME5ViNRfxcGSqBGk62
 4Y7dlC8NaTCkE8wNspyHNyKAYOm0Ob9Ep72brY16Ul4CCNL5ormw/xV8Rq6PcLKtBTu8Q4/8g9Ktr3
 pyREsnYk7Ce8CxU6CCgItzpi38/J20gDrGSd+NCzeyhyuKMgX8Fl1dujPKbn3ukoqU513rFyMktjin
 fIw0X+TuHtpsj8GmJM0FXKBJb56eJX+ClZOOv2ksyIKJ9eryG8G4VwCOBSvqjVkeEG4ub+9BFPP1Dy
 MzBhi4ZWLSndiXNxWP1TFzk1iwclcjMNdqBp8yhI+f323kLD/P+NRAA9n+8J78A0jVw1s4SlbQSciQ
 UUUT8r3H4jF4xx5rbvNpsSp1/ssoeQ/56esiKsJfJM0mBQm9AobFm4C3oU66TZNAppyn6v9B5ic0z1
 6G67iOWcJTPQnCcK17OHQ92PZeNprL/jw1WtFU1OA7CSB5TnmAnSsJHoxxag==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_065514_497318_7E1A0AD6 
X-CRM114-Status: GOOD (  12.23  )
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

The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
connected to the third QMP Combo PHY 4 lanes.

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 1/2 DP + 2 USB3
- 1/2/4 DP
- 2 USB3

We need be able to specify the lanes mapping to DisplayPort
and/or USB3 peripherals when not connected to a Type-C complex.

Add the documentation for data-lanes in the out endpoints amd
use those in the driver to setup the right PHY mode and
orientation.

Finally Add all the data routing in DT, disable mode switching and specify
the QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

Depends on:
- [1] https://lore.kernel.org/all/20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org/
- [2] https://lore.kernel.org/all/20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v5:
- Fixed bindings tab
- Add comment about exlusivity of the static lanes mapping
- Fixed the single lane phy entries
- Switched to of_property_present()
- Moved the ss2 nodes after ss1 in DT
- Link to v4: https://lore.kernel.org/r/20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org

Changes in v4:
- Add definition for single lane DP
- Fix lanes mapping for DP in bindings and driver
- Add documentation on how to interpret the data-lanes numbers
- Rewrite driver support for be simpler and split into helpers
- Rebase DT on next and drop phy.h include, and use proper mapping
- Link to v3: https://lore.kernel.org/r/20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org

Changes in v3:
- Move the static lanes mapping in data-lanes in the out endpoints
	- new bindings
	- new drivewr implementation
	- new DT layout
- rebased on next, fixed simple bridge rebase
- added link frequencies for dp2
- Link to v2: https://lore.kernel.org/r/20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org

Changes in v2:
- Model the HDMI transceiver as a simple bridge
- Switch to a static lanes mapping property
- Link to v1: https://lore.kernel.org/r/20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org

---
Neil Armstrong (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document lanes mapping when not using in USB-C complex
      phy: qcom: qmp-combo: get the USB3 & DisplayPort lanes mapping from DT
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: add HDMI nodes

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  69 +++++++++-
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  81 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 145 +++++++++++++++++++--
 3 files changed, 286 insertions(+), 9 deletions(-)
---
base-commit: 51c986f3be9de5451e172eb5f7efa53fbe9870fc
change-id: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
