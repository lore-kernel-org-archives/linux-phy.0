Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9214CAC5B8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 07:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=znZLJiQONm5Ggfi9YEritAD5Yt7J+QcWy5/ouj4pSxM=; b=XnK5wIR5u0d/Q1
	lJDtxxaH9AJ9766g8oLrpRX4g05INZjQTysRBxDp/a8Li0xPCNQeaJoJxFThbukaGIQr8BjhbQaAD
	HCoMhnqNQ0V5p95BGhKbw0ic5/ToXe1N4j8M/bSlpK/ONzWed0KmBN/AVwLUdrgZbWQPqcIMByD7G
	GeWnyHowpYHA+55ze7YFlSaZUH1gloxA2hmNoAyDE64SymW6usIgTfmcVXWFHUiSdmKbs8vGIQcZE
	+mJ1VrSMME1e7BeO/9Uqg5QnrDDit/3lBXtbtqgJfsj9rTN9ankLyOb6yZXjCM0wsqyT8n8RCNEu+
	pkcaSuDSu49/LVHoWl1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxp-00000004W2M-2Ogr;
	Tue, 30 Sep 2025 07:39:57 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxm-00000004W0h-2eSj
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 07:39:56 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-46e384dfde0so57466535e9.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 00:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759217992; x=1759822792; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Eb5Y0PnbeJI8BI1fdW2DHCUoV9OexE8PXQQVWxZpXg=;
        b=XFnULfPCMXY+ySpWxBCIfwZlqcKRxV7W6dgFPukb1RTpOv/qxnogQnqzzrB3eZfHGP
         nvKBKx/EOVmsCw1Gv7h88KJk12i2wFmqqq9f3XDbs9pDb4e5a477KLCQcrAUzj8ACvrf
         v2Ki66BXSKWj4cpi5hsAz9RenXMNOErL4XcG4j7Zt1+LoLeC6IjruFgxKySCIIfKCIZN
         o01IjmoXR+m4Bg/aHfMeKqmTZ+TBQICuxhpVmUd7rX5Sqt24l+++Xk27lBJaLRUJ4xAr
         EuFZhp2lni9/i0HhebrfYWfI1LFZM3a0tXajH6ELfk7Yc5zuXm6ntKd+ykN73TubnkYL
         2kSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217992; x=1759822792;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Eb5Y0PnbeJI8BI1fdW2DHCUoV9OexE8PXQQVWxZpXg=;
        b=lFAnPfgHtTooJ11JmnwG+osJ6XLwAXdcW3QkSOl1cvmPMHYqqTkb7c+4Hf7LB4KiiG
         1jXdZcLjcWxNVL3/3C5pjG6EG3r8KXaqt+d8a6qxNegeScwar/hRWLj5RZb3FvHHOuTF
         6ww1LoVIbVXBmGXLIyEhSqLtT/8f6j/Z/N7kwcC2wZQi4crEdPjo+Uljb1lwogdQpYYk
         fPGod+KslzUNg4YPGcSg5fGcXgVCW8kbyTWKg845e5tjdepbyfPYyaDlucvVgc0Ei5T9
         9SEb9pe4+c3gRFlxiSeeVY1bfQQFIG/o5LvmaC9W3+2+eF7GTEi1kRa0gXVNjuylDbmM
         zd8g==
X-Forwarded-Encrypted: i=1; AJvYcCW7iXWMfxAzyT2/MdvaDEwWznTXLOnyLKe72K/Yr9AoYy0PQoQtvDLj5XgIr6kXakB9KHppOEA0Wg8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAn6bk0DbDLQdgMYISIlz/HyYl95XnOaURXSlbhpqSdnmpslGP
	yEtCKsRkGbTrAV1cxwMWMJNbEjKz3ukwYi6hQi9uqH1PcS2VzTFFZ1PTE6MrWhyFo4E=
X-Gm-Gg: ASbGncvBsSq4+tDBrJAUtoRCyNqhvi+3QlmdRR9gNFNYpTgGvwcz0zuGyawLsdNz2gt
	pMcsnyjzHEVePoOa8icTc6Eaf4Tsa11aTbLPLy0v/AjRGVsWOYM/pRX9yAVdmr981zv889rFNnk
	rXE40++vvu+2aBewEWXo2I9TQSlJvziFvZ+joWFMWEWmeQowCsPA1PQ+JrC16Zdl/HnVzhvG1a/
	VQtN4uftgKbhGEMTxLlIJ1lw9tacawIu++cMZEhKcK7TDpJBeYv5Fk1KnxpmumryZieboiAIVxl
	7rj6FAXKy4AEOLaT3WhZKYcReKiZAIDrZkuvaOY4D9hlZSF/hpiIClleZyQKw+e8i1RRjLpOMeK
	e+kBHGZOLmziccjeL+vml6qMQiTv7/7AqQqoTnl/fsLcMEmyi5mqjfvMYgjwdSgtlTH0=
X-Google-Smtp-Source: AGHT+IGE2BpXydZW6akGdRW1q0tr75JXjen4TsuJND3ge4yGDsChAE3eCrNZzkuQVJg2heu1ygWlzQ==
X-Received: by 2002:a05:600c:46cf:b0:46e:35eb:43a with SMTP id 5b1f17b1804b1-46e35eb07b0mr176404365e9.15.1759217992244;
        Tue, 30 Sep 2025 00:39:52 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5707c1e7sm44021125e9.21.2025.09.30.00.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:39:51 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 0/3] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add
 support for HDMI output
Date: Tue, 30 Sep 2025 09:39:46 +0200
Message-Id: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEKJ22gC/33NTQ6CMBCG4auYrq2ZTkGLK+9hXNA/mEQpKYRgC
 He3sFEjcfl+yTwzsc5Fch077yYW3UAdhSZFtt8xU5dN5TjZ1AwBc1AoeB9aMnwUToEA4LV9EJf
 a5jrXFm1xZOmyjc7TuKrXW+qauj7E5/pkEMv63xsEB+5FVtoik+CUutypKWM4hFixBRzwjRSA2
 wguSGaMB+dPRal/EPmJqG1EJsTkUoNHbdB/I/M8vwC17mg0QQEAAA==
X-Change-ID: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2648;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=nCuzzICNiMfPq7GXzu2/94MKHl2UoBxCWeAEP7gaTvQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo24lFQK9d+D3VFC4zzO7XUKS10yyyEANY6HGInOa5
 ChlZx+GJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaNuJRQAKCRB33NvayMhJ0VKEEA
 DE2gHgFogFgo0IOcGJjLxBtdAg3OgEijLrPXbHUhD8EO7k6rOIOXLch9KQgsVUfV6flmNgdU26yXlO
 E8QqBHiTTFBuOcl8VqVXWmLidh9mv/sKbolhdThEq4eNw8CqF1klwpA8VBn3fcfSLGZrCfC78kwdP/
 GWGgMA2phVqHO+8x1E6uvK0nSVP8FypdNUFw4vgvDV5asaEV8ILiZ0GKshgsUb+NwNWsI72yur9DgM
 Ps0kbZDw+jY8a+wTpJqoPpKrlIRMXjEjo6+Sz3yuXc9s8HSYBPJsYatJYdTkoNpP3SoJstCl1LGD0y
 4bbIpDe9Sk1gNJQt8tnt2s5yYsNxdz/b+75GvLDqJbBGzSZfwBiPaxuJrXe6h+V3uYP9ErqXXSuJcc
 BMZS4L/1aWwDE6h0d494UrqZ0r9whQ/R3aERa2I2qqEd6Vrwnpp9VMzoDXTEG3MvdEXLcKO+WssYD4
 879rll/VKGTVOgLmkHQh20wJobYlFwDN/tZvstr8nFTxfJWkMZvDTLSYn4vPUVA7yJqtIZ+D0tfuny
 m0exCKGSxExhPk7CGJWsTh3maHb8r9UjtGMYZP5/ltLdRkZhShl+B/RC/OGX8FRDgWK9nbKH6wytIh
 L+FdnTgh94/X3aR0F4jKDC2wpq7/6zac1hpfj+Bl6mlBJOloz531bvt8grzA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_003954_706729_D080154A 
X-CRM114-Status: GOOD (  12.59  )
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
- [1] https://lore.kernel.org/all/20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
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

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  67 +++++++++-
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  81 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 145 +++++++++++++++++++--
 3 files changed, 284 insertions(+), 9 deletions(-)
---
base-commit: 4513b3b1a91546d0dd02c5c0eb507933b328021c
change-id: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
