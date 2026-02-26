Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EC2CFCE068
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 12:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CI/bfRcckM9qK2d4LTXk0Op3mwb8XcTOf0idGdZBxIU=; b=jAAno6WfjqGksQ
	zQl4pkVkJUuemjiXhKMfIxY5VQDnRwxYP+6QSjBxD07rXcezwssLYpG7ZsvrH/CkIVam4Hl0vVv1W
	jbohDWmbu3MZ3oSPCf44FoukS+pVII9QIqpPlwo1crYRWlN1QVquHMdt2ZxyQFuLe0smoQh0Sa3E6
	YrOioosnnj8pkkpF5a958sStfXbPOKM+Hm5Anbbd+nsjTj3qT8MkGud/jOcdUCevc7WfkP3cF37gA
	4U94NGOmloBbFfrH+EDuDrLq675iRLRV3UO6MeU79SMGkfqHndyV4+uBRS6ayZPivAmcMcByIyQ1M
	FVGe0reGvFN5TXE2Jw+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaZb-000000067wF-23ME;
	Thu, 26 Feb 2026 12:34:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaZZ-000000067vb-1ART
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 12:34:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id ffacd0b85a97d-439857ec679so696813f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 04:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772109267; x=1772714067; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oKKWsGx9kNR4B+rubyIZrtpZPsK5Sn9sUle9mK56qA8=;
        b=r4UD/AZLk3V3e2YKIOmYvrcAcZIMVqtwbBEJaqTGcZBaaoS+kUBRVLDmCJwn9CMNOZ
         tjZ+TkeCAARe0gIv5vgC6+KO0Vp/ThFFceD4Ei6vMyMy66nc2P+iq8eg2P9OhrW3Tc+B
         veKbTyYS/7OVs6OT6k6mDDLHPP4NskBW3kwS/180+7jEtnh8noBX3yqy7lSDzR/1wa1z
         J+xZAeqMD05uOYIX7m5SHRf4xdA2DJF9idMkcQh8gfskAntW/A8DYmgby4IcBikzv7Pj
         7NyqLTjsNH3Cd7y9sJ6pAfMQZWtpOurwNPrM6DRPn6ByhRyiiZGP9dVXr2sKxp6mgb5k
         1KgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772109267; x=1772714067;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKKWsGx9kNR4B+rubyIZrtpZPsK5Sn9sUle9mK56qA8=;
        b=mPtkaq6GsEzOq1i6xN7Q9rOM5V57aYS3KAM5T8IkN/hpS7nkpp87P289AbCsVuYMWn
         rGzXat5nCd1IpbvDEYyfMdoZ89pVHVsYF0b7tsdLzwsp/9DSaRWtbSVttYvknNDp6YOs
         2CeiDsvTz3pxNOtFqGTbjcwyNk3k/TG05Lr8o8zDu9hrEMQr959sL8zX0ZxS6H2irCix
         1VhRnUcZa+pxXxUtvz16KN98qwigP1PGKo+S1TJBvfaN1bE84UdPLFk2lIOeN1oqqzTY
         qbhdSE5R3BaYFgAf8CZFGWJqazapRFfks+pcaGUFtsJup2QGy31wSTel+2y2yu9g2swz
         pl0A==
X-Forwarded-Encrypted: i=1; AJvYcCVxM0y8BRmKDir9NC+Ui/ooiP03J8QL7pGgmxTI1casscd9ZJ92n1HAnvNtJPIrvbJm/+O9pab1rKc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgmeMy6YyxjirC7ZPjDZMEgfYTE/TZc1unHoNc2KqI+NTWJhQh
	oq+MX5rZ/tkOCTGoEc/Rg/FxVYM+zRoqp1BuZII2Y/hDphgyk0/vP/VfzJP0IQkqw0U=
X-Gm-Gg: ATEYQzwKAkucCUctzgp6ZG79HxU52Lj0ImXQ1v6Ogf6QDD0Tv/JHU/VjC/bGUUTYPmV
	5MOmJPbZNkI8xXjcNG8X/mvQVe63JagZPo1ZTwihpS/ObXUprkZafKdMBeEqr4LEVzvwYgJJNc8
	wgaBv/9h1wTpFj8ZnhyHhf8DBgcdD/4SI27JCl8QMGdwPwGO8e8KVdhHppfn6HAvN6+wAqFO+1y
	4BrcnGcR6geWCS8V2APxAidPV8MCvjQ2l8mMvNzo+s5C8nSCF5bOlDOSHU8ukxhhBs9jzF4VEeh
	IbYwyxIoVZIgYVIOMLqamXMMpCx2IRQOs4p1U364nsYcWcC29tg39l8brb6jDMzGk5xMPPvPrsO
	Cu0orBvbYRQysXWI/Hbl+OGJaJQt+aOaRhuPIO7Kr0Oy37wTFDmBsKk+X2ebVQXuUOYzB2zsHw1
	gZQXL9hbH+5Gzd79yeNRHwmxTQUSx9gtyoeDq/r2Xjk8udtNh0KRwxtT+vvKJPuFPZ
X-Received: by 2002:a05:6000:26c5:b0:439:8e3b:d064 with SMTP id ffacd0b85a97d-43994302ce2mr7821460f8f.49.1772109267174;
        Thu, 26 Feb 2026 04:34:27 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d40004sm40800663f8f.21.2026.02.26.04.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 04:34:26 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v3 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Thu, 26 Feb 2026 12:34:24 +0000
Message-Id: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANA9oGkC/3XMQQrDIBCF4asE17XoJCrtqvcoXWgySQZKDFokI
 eTu1UAXLXT5Hnz/xiIGwsiu1cYCJorkpzzqU8Xa0U4DcuryZiBACSMFXyTyNhLweVx5r5u6cVr
 JrrYskzlgT8uRuz/yHim+fFiPepLl/RNKkgtuGts6p5zU4G5PmmzwZx8GVkoJPloLAPWjoWijN
 HZOG7SXL73v+xukWXwD5wAAAA==
X-Change-ID: 20250710-x1e-csi2-phy-f6434b651d3a
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5711;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=eFyJKu93ZN5z+1WY2obeWDs7vFA/W2zY7bRl4HHmWvQ=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoD3U42kowdUc3RliLMA7G+TariHp6RgUBP+VI
 FUsp7qtjw2JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaA91AAKCRAicTuzoY3I
 OoEYEACRBuneInvM4l10Z0aHmmRs78QHpno5BGqaKDITKEz8A4a7CaCYqOY93fcbedioaQz/6GL
 wMJm6BjAV1TROpMMv6fF6OjfovXoD3agaWLw1Tg1vFPSRM1mrmd9VV/Zwrjz/CibPmQM7995oHh
 8SDd6rpLosyhxJPHUpnrMV5RduGyTN0fI19luVdNrGRWWqIlQLiEu5uMwNDHRYuv1CrZtmokpAg
 aHEUCw08kmLI82U/zcCSLXiVG9extOR/e6vUOGv5nuidJHaNIy9eCzrHh1VFn3glKrJDjHvzvAM
 4ac7L6nqtq1/az7oUmySbd4BI79hh9CQ5rYUbNBUjdHqfSzW92E1VOG0d41vDU/GapgFCRokvHk
 r3pnmzFOdJe8esHl7dPmW4G43UBKla6gWaHc5kw0Sr61Xz4+hRYuU9Y02uWjj1h/PgphCrwXHgA
 GutJUrr/ZyN3zyPlvP4Fi37PrqbQFY2okjY2TVtAvyJ3AebfPdYaEyAadbFgUFkfFFickG+lS41
 EEti7c2xUrx5MrWEojfyRbmwaIs5T1zhmzUUf3jQfT/BQnVt6jeiWGJna4LDOfn8o6CMY9LwlUQ
 +zoTqZ+OiZIGpf8S3rdlFVsOPSRcRLwUAsz+jPFk9UwiXDMsABoCc81bpxbg3ZHARPglM0fZ5Xa
 PPSeK0qosxhSSew==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_043429_378650_EFE3C70F 
X-CRM114-Status: GOOD (  23.19  )
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

v3:

- Resending this to make clear this submission is additive to x1e/Hamoa
  The existing bindings and code will continue to work 
  Bindings are added only, nothing is subtracted from existing ABI.
- Link to v2: https://lore.kernel.org/r/20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org

v2:

In this updated version

- Added operating-point support
  The csiphy clock sets the OPP prior to setting the rate
  for csiphy and csiphy_timer - Konrad

- Combo mode
  Combo mode in CAMSS yaml has been added. Right now
  no code has been changed in the PHY driver to support it as
  I don't have hardware to test. In principle though it can
  be supported. - Vladimir

- CSIPHY init sequences
  I left these as their "magic number formats". With my diminished
  status as a non-qcom VPN person - I can no longer see what the bits
  map to. Moreover this is the situation any non-VPN community member
  will be in when submitting CSIPHY sequences derived from downstream.

  I think it is perfectly reasonable to take public CSIPHY init sequences
  as magic numbers. If someone with bit-level access wants to enumerate
  the bits that's fine but, it shouldn't gate in the interim. - Konrad/bod

- Sensor endpoints
  I've stuck to the format used by every other CSIPHY in upstream.
  Sensor endpoints hit the CAMSS/CSID endpoint not a endpoint in the PHY.
  Given the proposed changes to CAMSS though to support "combo mode" I
  think this should achieve the same outcome - multiple sensors on the one
  PHY without introducing endpoints into the PHY that no other CSIPHY in
  upstream currently has.

- Bitmask of enabled lanes
  Work needs to be done in the v4l2 layer to really support this.
  I propose making a separate series dedicated to non-linear bit
  interpretation after merging this so as to contain the scope of the
  series to something more bite (byte haha) sized. - Konrad/bod

- Link to v1: https://lore.kernel.org/r/20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org

v1:
This short series adds a CSI2 MIPI PHY driver, initially supporting D-PHY
mode. The core logic and init sequences come directly from CAMSS and are
working on at least five separate x1e devices.

The rationale to instantiate CSI2 PHYs as standalone devices instead of as
sub-nodes of CAMSS is as follows.

1. Precedence
   CAMSS has a dedicated I2C bus called CCI Camera Control Interface.
   We model this controller as its own separate device in devicetree.
   This makes sense and CCI/I2C is a well defined bus type already modelled
   in Linux.

   MIPI CSI2 PHY devices similarly fit into a well defined separate
   bus/device structure.

   Contrast to another CAMSS component such as VFE, CSID or TPG these
   components only interact with other CAMSS inputs/outputs unlike CSIPHY
   which interacts with non-SoC components.

2. Hardware pinouts and rails
   The CSI2 PHY has its own data/clock lanes out from the SoC and indeed
   has its own incoming power-rails.

3. Other devicetree schemas
   There are several examples throughout the kernel of CSI PHYs modeled as
   standalone devices which one assumes follows the same reasoning as given
   above.

I've been working on this on-and-off since the end of April:
Link: https://lore.kernel.org/linux-media/c5cf0155-f839-4db9-b865-d39b56bb1e0a@linaro.org

There is another proposal to have the PHYs be subdevices of CAMSS but, I
believe we should go with a "full fat" PHY to match best practices in
drivers/phy/qualcomm/*.

Using the standard PHY API and the parameter passing that goes with it
allows us to move away from custom interfaces in CAMSS and to conform more
clearly to established PHY paradigms such as the QMP combo PHY.

Looking at existing compat strings I settled on
"qcom,x1e80100-mipi-csi2-combo-phy" deliberately omitting reference to the
fact the PHY is built on a four nano-meter process node, which seems to
match recent submissions to QMP PHY.

My first pass at this driver included support for the old two phase
devices:

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/commit/a504c28d109296c93470340cfe7281231f573bcb#b6e59ed7db94c9da22e492bb03fcda6a4300983c

I realised that the device tree schema changes required to support a
comprehensive conversion of all CAMSS to this driver would be an
almost certainly be unacceptable ABI break or at the very least an enormous
amount of work and verification so I instead aimed to support just one new
SoC in the submission.

I've retained the callback indirections give us scope to add in another type of
future PHY including potentially adding in the 2PH later on.

This driver is tested and working on x1e/Hamoa and has been tested as not
breaking sc8280xp/Makena and sm8250/Kona.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (2):
      dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
      phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver

 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 114 ++++++
 MAINTAINERS                                        |  11 +
 drivers/phy/qualcomm/Kconfig                       |  13 +
 drivers/phy/qualcomm/Makefile                      |   5 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 384 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 307 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 102 ++++++
 7 files changed, 936 insertions(+)
---
base-commit: c824345288d11e269ce41b36c105715bc2286050
change-id: 20250710-x1e-csi2-phy-f6434b651d3a

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
