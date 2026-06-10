Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D830CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HnEeOVl+G0p28UgC2L3B9Yg+o5OtYlM2OojliC0t2Q=; b=sPSvrZUShGIXas
	VMp/RXcGTl812GUyAGYLXRn7inRDIrxr0U8AImTJpULAHw3F/feu2c4FIfj9C9u3jUeKrM5POgmBm
	0EajzsMmcIsZU7drajTacuX6Wn7EPwwqv8si7QlG07FB70Ec91sR4KHA74fJ2d6A+v4BuEqT2KDLf
	WiwxFiSawTohG5a5ZhajMtUCmC0yPl7GrVpnsewYRHZpF2VbS4oAWm4BX2VPLK/OYUV67HrkT/yOm
	WOIVc2iQAioUA8zvQ7HCFIUAOKlQ0JU4V5/I6jgGH4a6bHweha2bt/68CWxNljcGpx3vo8KSm4ant
	fIxZOdYvHAyiKzWQdQug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGqe-00000007V29-0qje;
	Wed, 10 Jun 2026 11:11:52 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGqc-00000007V1f-17Mh
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:11:51 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2c0c2d8b95bso47688915ad.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089909; x=1781694709; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jxy+/rJ2nBiXps0IHi4kt0tmpzHJC70O0pAZEhcagdg=;
        b=kvBZJm2vn+FWZ3NQMjqcohgC1JNE+hvwGd6DR/1XkChrOjecCwLtkqKOzNT3E+jg3K
         kuh5K/AntZhi7YxPBF+NkFOCLjTgN/exFBCL48bo9XBEP6TGx5gD3laoCLICwt/wB10D
         0dN9+UwGLweQRt3VnnLi0LWLRgE9UEqErtW3thZxHYBupYGfBcZwFfTvVC5+bSZLTR8y
         +vTg34tkiKPj6sCHPFNuuzaCwylby2o1vo/7ikQ2WHBXxTzXyXtKEz269adNOQEAmk/9
         ljdNqzBCFlixweUpOewf+God+o3BV2q5VCca+DpOri2KXmgeKWT62WJ8XVEt0JjULKrp
         q1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089909; x=1781694709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jxy+/rJ2nBiXps0IHi4kt0tmpzHJC70O0pAZEhcagdg=;
        b=nd+lrGy4imd1W//PtYhdveCffJN7gcdUvL2Ow56rcTSU9UL9MaQ+LlzBLUj/qNdZmx
         c2MwBoG70xav0pAJWsuX9xSE19cgUlUjcyOMFTU8vnKdlyOdzk6VoxL2d4c/msBlrmcq
         5aFpm+aO34k9yPtwW3IzvLQEW6fS+N++SfPa1ArEjxU1FKQM8fwyQJoD69tsmdGbLD5t
         8ARSwVMi8NsMo/MbAEfpR6atj33lnGOOPK7tBoWw+ZU/iBrryC+bNFSGo34XkvjPUnQD
         pjiAlfxQa9cTzBXAO1lbOQO+/3lf2nsGDWkcAtZxKAPsLsikp90L7RR6pLSpoiZ3Dshz
         ycIA==
X-Forwarded-Encrypted: i=1; AFNElJ/0l/uUK4Y3N911RyLh49DDTvq+fLn0UBW7rK3RWENFeCOSXZhJhJCHcEiCKYQ56Or8YkYgdJSQivk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqMMGTG5OFfwLDB9l/mrUNs+jICqA7qhYFvfv/7RmZum8oPURy
	Zvkl4nkdkg+kDdvGTi5TPQUIj79uWFBAtDtUrQ1vlC4k55I8/Byd5xX4
X-Gm-Gg: Acq92OFrVa309hrJDuMltk3C/CYZHmMZCIdH5Z2l0QVWYOm5KI5ubV/aLelhpNnnPK1
	QJeo+FifsOPxMzp9r8aHPyE+ZlDw+5FE79vu4bfDuRvBCsBlIZMYhqg/4G0RAj47ipCE22/v65t
	WMSXZeR9zkiX8YeqazxM2nwVoJ+Xu6XCJOXW8f19hWsYyl2971j1QMa1yxjkal4AO94iYMn3U9U
	oGoPdWuXdNEqjtX80iK4ueizrzOPBjMj4sLGgFEduF8Eqpj6kxvGfumom/hdbjVi8VY+rkMpKrG
	IVpuAPgBykiH4mS0R4W1B3OkTaoI+xAEPLkjjBtWffsMJXTNEAjF4p21KtqcoCgT+0pzc42QMR1
	U0qf7gGSiBm5EUWOtIqyG9+YZx013xI7hyxQptAhxwg6jSP3dwybVvL5YO5oKjJvhSwPZPA8DXL
	iqHMfUmZG+qgKlpJONTAOtumPZTJ3YzQv7yGP2PSKPRXsG5E9+
X-Received: by 2002:a17:903:1a10:b0:2bd:606d:b342 with SMTP id d9443c01a7336-2c1e881ff09mr286316365ad.26.1781089909338;
        Wed, 10 Jun 2026 04:11:49 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:11:48 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Date: Wed, 10 Jun 2026 16:39:34 +0530
Subject: [PATCH 9/9] phy: qcom-mipi-csi2: accept PHY_QCOM_CSI2_MODE_DPHY
 phy-cell
MIME-Version: 1.0
Message-Id: <20260610-a14-himax-hm1092-v1-9-0c9907da47ed@gmail.com>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1334; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=uO7dmp+7kXXq35mabsz2m2dY+q1mTPopJfhyX1CU2yw=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYRSIMMjLHMhkZR5dO4CGE49UyTRGGP49w1C
 ttyD41c+g+JAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGEQAKCRAVlYpeERwF
 3pYHD/4uAmyfmypJaZPNO+fgd9CIEWOXJil30ot5bQFVpCScoYrN+SscUOUg/0WkUll4bJ3+x07
 4lUTL1vAUQBwAXx8sO3k6nnEfy/hQdIYedpATkAFsq1TeLYKhyCamempsswk31EIAiFcJUOC79n
 G117fd0WQzZq4hF5qG6DyZNmNWEreZZDdi7dNVXHQXgIkV0R+M28rvqsmNYiT2SztbFYux4Gusl
 9+bTO20QltCUmvr5DjhjtUpxrwJYZZ8vnVr3BSM6YaQsxq/I4tuT99q/1tWt+Mtb5H6I+9MCw0F
 dljQE7+DpI96IW1gHamorEK3exUeCkUc4MWz/ulGJmgcKZVlDDkl0lVoUUwEHhaQZ/M/6MybnAC
 4C56VRCpTM0y9lfjzrdvU+P8ZIOnbR7A26lMQhHeiGb9twCX9jHX76cpPgQBJetyUlJuxkQG1js
 neA6ecvVxK0t1kiV0kiP8K4LFIxXFRrQ9gqE9BrvROicKC6dq3YuzXzsMW3Y7vVcuoII/O+I3JD
 BcYF1fft05FfNsxqDNVRd+6CMwBGXFf+hBjCsELVOJIzG1zipThLmpLhzLuuiP/nk9zOdVSpSI0
 y8SAVNMGxwOW14k1IkqCE7g8TxwH4bj660ix4jD3y12u74goy2RB0wLdkqojUUM+1Tl06JsG10W
 /trux3pAPFc86QQ==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041150_313939_4D77934D 
X-CRM114-Status: GOOD (  10.41  )
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

qcom_csi2_phy_xlate() validates the phy-cell against the generic
PHY_TYPE_DPHY (10) instead of PHY_QCOM_CSI2_MODE_DPHY (0), so a correct
DPHY request from the camss DTSI is rejected with -EOPNOTSUPP and camss
probe fails with -95.

Include the CSI2 mode header and check the phy-cell against
PHY_QCOM_CSI2_MODE_DPHY.

Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index dfeff863a406..857c54cbaea6 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2025, Linaro Ltd.
  */
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/phy/phy-qcom-mipi-csi2.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>
@@ -188,7 +189,7 @@ static struct phy *qcom_csi2_phy_xlate(struct device *dev,
 {
 	struct mipi_csi2phy_device *csi2phy = dev_get_drvdata(dev);
 
-	if (args->args[0] != PHY_TYPE_DPHY) {
+	if (args->args[0] != PHY_QCOM_CSI2_MODE_DPHY) {
 		dev_err(csi2phy->dev, "mode %d -EOPNOTSUPP\n", args->args[0]);
 		return ERR_PTR(-EOPNOTSUPP);
 	}

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
