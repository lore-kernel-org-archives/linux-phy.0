Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E9FACCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iJyh99yH35R7zBIwjnbicKhW0o08k+18dBDxKDVWTjs=; b=U/TV9dYG+MbrMr
	YYgUU3GctAVXzy+hVWhbt8K/sYN/SYPzSeIA3oeo11d3R39XdkePdkItwd38ZKQzwhQVs4v/BACbl
	zFAsi9QwYvlAzaCeiovhos6E0g63uX2/2RsT6Iq+U0nP3jYQSw1Jzq2aYzUokEK9PrOP4cj5Sb0s5
	zWFrQY1QZFWRWr1yfaJwMGWrT3/k25DUg/TcZ7o2ashQMxV2DSFyIPBatQ4dADuhnqEGTl1uRzAjo
	V7ftXQBdoA+k0Zf7u4uDm12xhFj14PzDnnRFG7/EHswVL1o6IyqDrTEbJ5lECOBMpCyB9dCeP1IRP
	Zof3lmHn4nGpKXclOnqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELR-0000000CfNa-192h;
	Mon, 13 Oct 2025 08:55:53 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELO-0000000CfM7-16kM
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 08:55:51 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3ee15b5435bso2176399f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 01:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760345748; x=1760950548; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gvSaNIdltHgitU+Zv1Kp+cZ7gZkg+huS59K0fHVCRMc=;
        b=bK8g6f2WAxNFAt+90TMsFxRmVi2cZyZmATjfcG+IbJ6/B1SW7o0UeOVOtYUNprdvrc
         ZHtB73NYKB04rmmKmreASdnd4Q4R0t04bXLqJHTKJ6hWadEcOT4lNE8StSs0vVmgPklS
         GrMrUWHvox4scMeYvfE37RIVV4pPUhrkYe7NLAnTutnZ9ewnEc4vuDAPFDMBRR83W4ff
         Eo9oVEdsP+N3opTbAcZXY3VWtDbnJJ2g3E6dFfmeKKLmKTULq2nm1r8w6+uBS40slx0m
         zKNiMlwXjuYsmJBHuzyEtS0c1PPVQlROEAWkbU+qJpxA5XBkmOrdu/EAkPlnFsh9mNHg
         vwag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760345748; x=1760950548;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gvSaNIdltHgitU+Zv1Kp+cZ7gZkg+huS59K0fHVCRMc=;
        b=pMOMLuVws4a7lNG6F+0Q7EgoR7wcFIH8J7NyKyGSW16hOAr8UfvfeCYB2mDGr0AcJo
         KZ6rxQIv2JJ6o365TLuOVEK/35bcexO7/BCb9uBZnHueem9vTUuC/Rx8GjQ8VuUBhRr4
         mPwGCliENqiu2ZD91YQLwRFBMbX/SxvsEooesEsV6D0KzEMIuRedKIZ+2lMmYQyt2Fm5
         64xdrpx8RPc0eUtu5Av8cMyot1bINCa4NaXvqBhxpRmfkkBIRE9KPxNki0By12YzU60h
         ChyU5qOyXtLpgBZTjFFOSVUs4659zCNvvPCi/AKlBdaPP0BtQ/dwpsAnLP2oK11yIMzc
         aGXg==
X-Forwarded-Encrypted: i=1; AJvYcCUsLvuBEHd1njYIYnjICar7fvOcJRxrV7o3jNPYpb5oBUx6XTd6zy7kKVDt7eDZGaSCGNEjY32qqxQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9O+pvh7BjPT2PKq3a4pEvolAGR6N+xajIXQ0W6lxwkHlvvC6q
	UaKmUo8AKY3TpnqEJ3o7OaoBjJEcJvveUw7UPRZrzvhDpWlqt7Fd3PT5xXp/49GXn8Ihn7FuIGf
	DSl3B
X-Gm-Gg: ASbGncu7ZgTZau1wef8Vgb+EkQ2oQaCwnQ7YqShlraKg2eNKYTe0tLtvUNX/YdQ5zv4
	UOuLVH+gAedx5PW2GdTrxeXnAvSTkCC5BWic2NH+HpRwScG+tNb9qk/t/w19/5oyNnLZbSEGdFX
	WggZ2MXFVvQHrB0dASfRTLkmcdxoVSmwkDW2q9bC2OhZ4mckToNl8mvldWA7Pun8EZbyN+5pPhe
	+LM09ADbZJbcdAUGD5QkHDhc9LCymw6aQf6wgePSXubp2/rTUpQ5RJVKgEQxyNOXqqZGQXIUq8n
	SWgpeXwkZnilSgdmUMVZglFLlLB+btGUK4LSjTGMrhpqBOUH8WpiHh5eBJ0kAojStbPO9GcvJi2
	Ypz3d3tKIfELz9mtMG4a8I6KQxpgfU1bHq3Ljsfvbs8JLXnfUal0wUMaciDxH/zyhECzyWryK8B
	li
X-Google-Smtp-Source: AGHT+IGDof18NxLQwGrjqbDhgpVa8OKhE7xFuXEXV3NYc6AlkT4WDiH1ifDsXp5P4tO+IetP9eHxlw==
X-Received: by 2002:a05:6000:26c9:b0:411:3c14:3aa1 with SMTP id ffacd0b85a97d-42666abb42cmr12619906f8f.3.1760345747737;
        Mon, 13 Oct 2025 01:55:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b99fsm180016185e9.3.2025.10.13.01.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 01:55:47 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v6 0/3] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add
 support for HDMI output
Date: Mon, 13 Oct 2025 10:55:43 +0200
Message-Id: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI++7GgC/43R3W7CIBQH8FcxXA/DZ0u92nssu+Dj1JJYUai1i
 /HdBzVxOptlV+RA+HH4nwtKED0ktFldUITRJx/2uajeVsh2er8F7F2uESNMEsUoHsLBWzxRUIQ
 SgjvXe8yNk0Yax1xToXzzEKH106x+fOa682kI8Wt+ZKRl929vpJjglgrtGsEJKPW+83sdwzrEL
 SrgyH6QhrBlhBVEWNsSaOtGmxeEPyJqGeEZsZIb0jJjWfuKiAeEk2VEZERVmgpQmgttXxB5R/K
 lahmRpZN8yil1snH1E3K9pR7heMojHG7RI6MTYBv63g+b1VitqcLR0jKhHlLS83A3q1/Ppl5NM
 ifnJ3zsD/iUjOBuXnE6+8F2JVmKORMNSEoJ5U+h/AsvcO7LBKx3u3DGfXBw12nRXd1ADbpSTDx
 /9PoNlT5VHLMCAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3620;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=iFT/OozDJej08K0ZYQ6paGGHopTw7UGpCn3mO5EhHdo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo7L6RwUOCjlkVrjvrZkbKX7Jl7iUH4ylwGg0JIvYE
 mmU/I8KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOy+kQAKCRB33NvayMhJ0SibEA
 C7gsOK1jG2mTU7PwyG+PsarxK0iRu9mFGLDQmjTpRKD8zFSL4XtJBDzulG2PCSTG7IGr3ky/WzxkrQ
 R/Y9iicxB2F+VxTKEVR3+ntoeSR3BPbpR7D2aBmp4zTJ3Gkeb11pQAM83GdWTwarVj6pzFWvy5Q0GJ
 mbMRsNdVhrMNqslBudDW3aPyuP9tKZJhCaIT8QWNLfQiyatFFHUdwR+dpOhomo0owKf0iGqCt+y+kQ
 fFnqdSPIVqTOITbX2Xa9BXAWJa2EmnVn2KUi7Xy4PFroYDlgazt4MMeYbGRZsIwPAwtsB52nxqSvwX
 1djpiFVIQ8fGRWpqwbSmDcxrloPcnp2aq1eT4rPYFhOdVIuBII9E/3dmXZj4d5ricTCDSxJcHOHC+u
 BfKfhrD4Ek9AepbuuU9VPqztM76n5QOrP6VhrZPdUpu4rWOScUL0LgsPisysXcBAP/jXtcOl3bcgSh
 d/peQB1ZLCf9f7bPjlu8yYa3307m7Pt/Q2k01Z7lT2u48OLMuEQEdiGaq3pvHzvgoFUiL3RaDtn/Zt
 1aMRhU1VoeUb6M2UC8GbdwTkaK+WwRvKf+vbvXjN58+W+HTYev1jVKe/caWBLnGpY0j5A9r5Xuijis
 0VeQBeipWYm82ugOxeDxJWEYI/HALyqnaM4pnHxAvtj60N8s0HuDSWt+eJFg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_015550_359362_D06A1EA5 
X-CRM114-Status: GOOD (  12.41  )
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

Depends on reviewed patches:
- [1] https://lore.kernel.org/all/20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org/
- [2] https://lore.kernel.org/all/20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v6:
- Switched to __free(device_node)
- Fixed to min_t, added review tags
- Link to v5: https://lore.kernel.org/r/20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org

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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 142 +++++++++++++++++++--
 3 files changed, 283 insertions(+), 9 deletions(-)
---
base-commit: cb6649f6217c0331b885cf787f1d175963e2a1d2
change-id: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96
prerequisite-message-id: 20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org
prerequisite-patch-id: ad3fb0361c07d03ca6247cf99c52e99aa59bb6c5
prerequisite-message-id: 20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org
prerequisite-patch-id: af47681ced84695a53fb14ded948fda01bc980a7

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
