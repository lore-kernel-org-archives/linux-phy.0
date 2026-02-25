Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54C6CFD3760
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 14:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AmKBAqrQtvwM0Xlsj1cWmJW6TxOEbNrJiQZHpfhQ//o=; b=pZP1RfnDbm3J8M
	NFCv/FuAKfl6vThY2wm5guVWBRDEE6vcj9xRObDLVI5xoxafH3TiSrYGsS61r1Wcwi21awpPEmTLQ
	Cy/Zi7tX7wwGuNKZhMCpG/+22GIP0ujMco6j/b90JkjXJYBsCpKW830MUWT+Wx11zC3Dl1SVBs2Mr
	rdKxIiuCbI44v96/dr547x3mCum85qnqqLoH7eOEtDxUvQZB2licyVOuxjLqJjjSZFz5wjVM4SktH
	0mXlq07Qr4fHTd7c/26dqZBQ/TkxOaawuSR70ENGMJNpW9crPZksAyjoipqWsaxh4TfTHkZswJIch
	jHnkEBaEyChtgWwnQ73Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGMJ-00000004Emv-0J5p;
	Wed, 25 Feb 2026 14:59:27 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGMG-00000004Eli-1tNH
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 14:59:25 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so74837855e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 06:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772031562; x=1772636362; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hq8KxqdAvH0aojAD9hbiZeV/R/k6KBkYIJUpttSiD3M=;
        b=T/Qwd2rqe4Sg20Eyt+fSYSyD/cey/mRycDAzJDAUx5zwgS/Q4hAbCiLebeLihtd96I
         nphmfZUvzIqjclDS/mViksxahkHp5kvaxXt1j57lc94COpWVo/WJQlyTj2dAnXvgnHte
         z6tjvcPaucy4CJSfUft09lBpJ5toAn7Jb/Y3NphUIqlpy9TF34/YsnQQWZCE+EWYA7tx
         orZa7siE7vNEg8LG1TEbsCB6gIEgwuN0l6i9L38dGv+i2GcxbDc8bnelEKUeLIBzm0KJ
         9DK1DG7AZLtqfVRTQ6tQPttQjqj6BD16tXOLFC47kfZE6QSfDeZqOJkWwg3vlOkA1HIC
         7hVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772031563; x=1772636363;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hq8KxqdAvH0aojAD9hbiZeV/R/k6KBkYIJUpttSiD3M=;
        b=BwubQP/3COdRLB3q8LYxyRr3mPyqYFifvS46Q4T78DjH8rAnHv+/4we6O2Y2qBTV9F
         zvKXk8/J8DQbHQROjmO/ZFvSFqyrfChmMmlh7cZjbnQN1l8XfTlqwPUyioFdc14b2f7C
         sqEl0Gstl+OdnR/DCJmzpaljfckKq+qaTTUidjGj3ZRGtqm0VCnCQQaPUc3+Fx5ZOUne
         9MqPPh80Z4GN51GbwGnlfZdq3kDb6zUXuKb7unDErhlksENKvKSdnuMkkIWVXlHf2LKd
         wpke2enxR0pqTwCLIZ1xWdtu6LT4wgale6bLYIwKGNVNNAsTv4SowGAX+MAybMXKMPgt
         hOnw==
X-Forwarded-Encrypted: i=1; AJvYcCXG5y1pIXZ9NJ8HC0A2bgVCwYs3mXCgxHGJzv/Ae7fPQZT/vIBcR93qhEdueE9D1Z4WLQr9l2DNuQY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjXJt4RP4qfpdzm3lG6cOTh/3n79xH2pazoYUn5XApWC8e+ol3
	hbgzn0ZogH6zSvcSJDfg59Mp3HKDv4Qw+J6ydv48caD2v4y6IrrCf/WwJDbI0EOrYyw=
X-Gm-Gg: ATEYQzyhLbvJyU4DSHXQHkmZctPizi0EhyxDTfexUqIdLV72vAtDr+K1gjhDvm+J8Fc
	8cmeRLHaD8zFArRNrfJx8oLuk5016gdZsE5H/at/eA4gtuW8Ei6rrYgA56X+TfENQd/kVgq/Ydn
	S93Z4nec5PxqF8qSzZGbDjVwrkArw+UoONOJVyWqg/cotAEEXjf/k5VvI2BsWg307hbcQLGE/4S
	eStySeyMbJcbwgzsecfGi+6jSY+kNS5RDqlfEEUNyEVDcPkXDCTLlBIWLnKtRVi+yxq8yjKSUIN
	Wyj5GTW+7rka0MTBUwVSEArZnu7OhuM+sxkqgovshzImEVmLmjQdO/ChYMP/JG/t4r+2HhcHDQr
	2K5QxhcedwKLSN3YpfGz98XXCdt+w4uh5fzCQ0tRxRCei6zB1jMRLfnv50TJ+PQR8giPaZGTYtf
	GHaxk6hIPwJbI2LNnPn2Us8aO39YUguTbDH2OPTCgp6GYl1UyAC7e5u1D6MDfTLoD1
X-Received: by 2002:a05:600c:608f:b0:480:32da:f338 with SMTP id 5b1f17b1804b1-483a95bea87mr282568735e9.14.1772031562471;
        Wed, 25 Feb 2026 06:59:22 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d3fc12sm32445600f8f.24.2026.02.25.06.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 06:59:21 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Date: Wed, 25 Feb 2026 14:59:11 +0000
Message-Id: <20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD8On2kC/3XMQQrDIBCF4auEWXeKmmigq96jZKHGxIGiQYskB
 O9em32X/4P3nZBdIpfh0Z2QXKFMMbQQtw6s12F1SHNrEExINnKGO3doMwnc/IGLGvrBKMnnXkO
 7bMkttF/ca2rtKX9iOi698N/6ByocGY6DtsZIw5UwzzcFneI9phWmWusXVoP0qKkAAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5411;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=fMTA3sLJwsFCCO9nzl5zSAQh7ZOHaKO036sg3jssVD8=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpnw5J25IxQblEmAmzMWBos+VFUlDikOk2AjfBL
 l31pkE54aaJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaZ8OSQAKCRAicTuzoY3I
 OpyXD/43OI2XbELfg2+Q+zUX1Ls4+vhfwvH+6HBPNkV5m8eO5XFHx1rYOavF/LcIyI+bYMbQnl9
 llHZU80unxJZBIAnvz+PmgdHxlYYgXf11Xn1CErRi007z9oTtrrvM2e1AqpJY/cQAkEuIWD3UxP
 4hu4pMTwcJ/QSDCrY2aMRponNVxjxrFq+Ex401YSno4/iO7Bn5ullEhAlXMoBNi7WHTtd5e8fYl
 p2Gs1dwunRXPahwoJMUPE6qWLT87NRefVGWj27c7goNCZET8WRud99AFbcdhMMKI3HV6CD74k3E
 kL1f0i2Oa+pcNkBlrMUvx3dMG6cinYPTdSH6N1+BV9ljs0wrJIJC9R7ZiXWq7rdDVduCT3PyG3u
 t1YeSZGL5O+Cxwv2ivkmgoG2IlnKT6FBKFIufSwR0gvycIblDtpGcbjhJs5cm+kbZHZJsM9RwoZ
 CLwsbiHA0fJIS/grP03eZpl2dSaaSInFhgkdbGufx+Cpr39/wkvKRlYlg4EmDha/03bWL4c6yO+
 2PdJlia0Fa9r+9VMbV/ZQ5ktFnSn3IqaRTfQ7nN8fcXyR9y92+bW7EieviJEg3XypbXJZmRHkAz
 ysNycPxNUEuYIZvZUrPtoLhJbZoUjixXWYoyRUh5U7EUpn/xh2kFMmdEUpdQsO6TKYZfg6D+V8o
 E55nqx9o0yAWM+Q==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_065924_546918_B99C010A 
X-CRM114-Status: GOOD (  22.11  )
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
