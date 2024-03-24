Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3582C6FD1F
	for <linux-phy@archiver.kernel.org>; Sun, 24 Mar 2024 18:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drLA+00c3dF1ZeFeivIDeKowvEBfd9qFBefGLRmjYWc=; b=Gta9DF7pQFubLl
	olgqkVRVtKSUtNlTpSmJjC+4PLOgy+BExSrZa5t/ZSIMf0conk1xI5ogQ4Jx2fmPAD/Jd92JXhr4r
	WvaYrI5p3im8uu2pUu8ZdWe55qrTChyhME4H9D1NY74LMq9Ha6nK4seYqMgha3MGGHJwQXPg1KX4P
	SwZlBydMDw7VjV1npB/oLs9L5lZSdX5iz5DZ5N+X/vp2aEvZI+duR8XkYKomjuMC2OXxXJ59IVlwr
	8/31IHp+GQ9UHxSvIodp6eGvvsiNdbG63izmQ6BNJVk5Hv9M+/LxnI14y1kp85Iuzs6Tq6bwaaVYc
	QvTs0BRgWnHKkMSSy7Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roSvb-0000000DERt-3uc7;
	Sun, 24 Mar 2024 18:50:43 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roSvX-0000000DEQI-2h9F
	for linux-phy@lists.infradead.org;
	Sun, 24 Mar 2024 18:50:42 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a46f0da1b4fso464238966b.2
        for <linux-phy@lists.infradead.org>; Sun, 24 Mar 2024 11:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711306237; x=1711911037; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jh7WIPngChgpb6/wT2qnSquscN8CZ3uMdGD+jaJxYv8=;
        b=NfCmI7QqIGdHnfSueNZgT4F7mMmCzMPDlAS3nhimZDIIRO/B1CttTshHTe5mOpnyla
         fkv9PxAzk2LG2LnJY++2cvUtNdyYF88+Dmx3c6EGbK8e9+pICmHeOKADOei81XEBvfEs
         xSiUfQsyiPF0KpDSo+0IbwbVE54osNilAXYlRjsNp5azPTR1VnCc8Wg+n+lvTnQKGrYV
         vzzlaCa2vqI/RIEcr45rmUMYPkH4J0Jsiv/rJQzPvQoPOs+jAhx+1RlOg7yA+liP1SaA
         znma/+LPb57ODfqUEw5eJypfDOpaofqtzmGt3PXxxYa0erqa1hXlhHai8Z/UrziebaXP
         pfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711306237; x=1711911037;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jh7WIPngChgpb6/wT2qnSquscN8CZ3uMdGD+jaJxYv8=;
        b=TI4GMp19daHLU4phOBmQkv1XEjvWasplDHcB3iv/DIz7Ja3o28HvbdRCc4+7pXkabt
         WHinI52Ay5xXGXnofU8qFs6rT7nCIR77cVqkVhOVB5qgvyP2YyQleJQKpZY/GYhDnBHF
         w5mx1fAfW198wyyFX1aKnnIW5B8u2z9sKxp7Db/XPX80vntNss9r6Z7uthyPQP3FICri
         OJPUMXGODZei9eScnauZGe2HTM1IKfBZRlAZbOrTtno9VXNSeaQ6/BUPg2Wp00MqYH68
         myWDBxF9QIuuER1VGntaKTrhDcIH/gb3mwxWLbLxR3JYuhdM54CghmlG8MRQQLbLut7t
         UASg==
X-Gm-Message-State: AOJu0YwaNzLTy5ydUYKG2lUprn+oVfDHlrfbPFB+Zh3pLrI5sOtXJ8WM
	2LQ+vNV1j2nZmwADc4SoSmwqZHllkTR1kCBApzyDb4j6ia1A4D+cTbaoDiwnm1Y=
X-Google-Smtp-Source: AGHT+IE7YzZVq4H0/yCqXg4Z63bK4KbtfqOS7Jf4EbizVXqQY6dIiXsth6aZPv2MfP3+lLsWDN16ZQ==
X-Received: by 2002:a17:906:1796:b0:a47:3b6a:a29b with SMTP id t22-20020a170906179600b00a473b6aa29bmr3095023eje.13.1711306236616;
        Sun, 24 Mar 2024 11:50:36 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id kn5-20020a170906aa4500b00a46524d06afsm2188136ejb.8.2024.03.24.11.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 11:50:36 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH RESEND v5 0/2] phy: qcom: edp: Allow eDP/DP configuring via
 set_mode op
Date: Sun, 24 Mar 2024 20:50:16 +0200
Message-Id: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
MIME-Version: 1.0
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2478; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=O0xVY+gl/fPHcB6WhFKWsogdWZR6lFHePZT39lrEaZQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmAHXupd+aX9jJ71rkl3EKxdf9VYRDpb/da92OQ
 qn8lHUFCE2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZgB17gAKCRAbX0TJAJUV
 VrvREACwrHiaD6PwIQtmnkqeVgB4JTXBJY1d3DFw4JlKGgOPs1vt4XIrCdM6vXnftUL4GSfCLwc
 muGOAhE7nPqs2eI7WGJvCUT0tu/4zmPTMm4BFJumTjPIRPLd83wRv38r/YdInH0RLvdwQpHezMB
 7xPkkn0yoj5BBa05aGQH96uSDpvfpk1dcI4kQ0TkUSKzm/SvqdNN/uVEq4utV9aOWTxQCZX3dE7
 j3T0GrGAI0CvsW6NC6nWYHfXa/6jgmo5Ex7EWNnqLM3umPS0mYweBQCz69lcWFzUhw/wFIWN3eL
 c+NBUX5hb0Tstet0/pXnRm2Rad9qAhJwE0sNRgnxf+AfrGDoiIJys0t2DKFiLmW/miG2imbv6nb
 pBRTZk2i4fYlmhj8TghwGDM1D9XYi3OwkmWtwqsRu8e1fbn1zAOgBYPZb9ah5sAve3njTpFOPTs
 skefZtRU5xXqPelVXOi05FjngLy8PsdG1Ef33nVAAjhSWiSiBNGTeL1olN2AD60iAlmektibpwo
 UZu1w09t6jF6t4BE6zyiwpz/fRA2aBeqQ6tLHTPIbNq9LWEoXw5PrCOEa2Jcnxjdvs4AvvrqkI1
 +yqljOqtyH6L60/WHeqCyTSgy9HwvHkRuNafIAdlC4y3yw3J0b8VQz9GHDZQltUxF82J6+bYUk0
 QxfmgqD8Yw/exMg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_115039_744209_D0CE94CC 
X-CRM114-Status: GOOD (  10.96  )
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

Until now, all platform that supported both eDP and DP had different
compatibles for each mode. Using different compatibles for basically
the same IP block but for a different configuration is bad way all
around. There is a new compute platform from Qualcomm that supports
both eDP and DP with the same PHY. So instead of following the old
method, we should allow the submode to be configured via set_mode from
the controller driver.

The controller part will follow after we conclude the PHY part first.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v5:
- Dropped the unnecessary ternary operator.
- Link to v4: https://lore.kernel.org/r/20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org

Changes in v4:
- Added todo comment about setting the value of cfg8 based on swing
  pre-emph availability, like Konrad suggested
- Fixed the condition in qcom_edp_phy_power_on, reported by Dmitry
- Link to v3: https://lore.kernel.org/r/20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org

Changes in v3:
- Dropped needs_swing_pre_emph_cfg as we store the table instead
- Picking the table based on is_edp instead of overriding.
- Link to v2: https://lore.kernel.org/r/20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org

Changes in v2:
- Dropped the dedicated xlate function and added set_mode op instead
- Dropped the eDP PHY type and mode addition
- Added the DP PHY submodes (eDP and DP)
- Removed the device match data storing from the container struct
- Link to v1: https://lore.kernel.org/r/20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org

Initial attepmpt was here:
https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
Compared to that version, this one uses the phy-cells method and drops
the X1E80100 support. The X1E80100 support will be a separate patchset.

---
Abel Vesa (2):
      phy: Add Embedded DisplayPort and DisplayPort submodes
      phy: qcom: edp: Add set_mode op for configuring eDP/DP submode

 drivers/phy/qualcomm/phy-qcom-edp.c | 76 +++++++++++++++++++++++++++----------
 include/linux/phy/phy-dp.h          |  3 ++
 2 files changed, 59 insertions(+), 20 deletions(-)
---
base-commit: 2d5c7b7eb345249cb34d42cbc2b97b4c57ea944e
change-id: 20231219-x1e80100-phy-edp-compatible-refactor-8733eca7ccda

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
