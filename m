Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85ED8C4707C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlfFdaN20JmcPJUyxrK89BrDUARQuPPXddl8sveEVl8=; b=i1dwxZbh8ZuQE4
	YFx03pI7KUJ4L4pVG73xHvg6ab6lYM561EIEq+7qzwodshS0uMQZqtg3Gzpyr285qVVM0jds7Gk/J
	DHMvz2EtsPvi+xXOzyzDedbIyJjjjgcj32uF20r/raBlkeZVMVzG60+lnTEzA6YjUJKwBzh7fsVR6
	EF/lDsjplMRWkQOtF0GMNICoTOVkEGSwJIyQwmCztOMzN946Bmwr/YA/80eGwSfv90nzq89KL1JkX
	n5aHCnU2h726g+NHfVlAaDcl0eoMNq+6583y3DVqlzB67W8zwW0DTnb9IVIuYz0oBmPDsxV/sNvGH
	Aiot3Ve04TB590ABuF1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2y-005gjF-0T;
	Sat, 13 Jan 2024 20:56:04 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2t-005gft-05
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:00 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50e835800adso8131327e87.0
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179357; x=1705784157; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tOILqGWdvQGyp5yG9dNVVWooYzSrEZenpOm6yeqSMyQ=;
        b=yuoNk5Htf373c9sAQyhe9Qdl+DiNzUfgQw548YVxhCa9VY/CrAEY7em6evhr+sXeOh
         TBhhamjmdxvaK0ENfPLqVuU8yPYqWzOR/LAOIMS0kj+wV6Jg3DeaDwdkyt5kelVrAH0x
         O/USPMgUugo7V7uEhBT57gmMuV7jmWcP41HnXXs4CZZ4Yl3VevrP9Ms+rHTAX+cNMnNA
         /o5k1yl7la5u9G7jeGkuBsyTamqSpdHcAcLWEGg8XCxWugw1xJea3kKgFVi4jUHnvCtR
         NG0ZAx2DHzDHHMxCdTG9xeU2D67yHOv+V8WXVZCSQQZx15N2OM4Am24KJAt/Go1TwzGd
         hufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179357; x=1705784157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tOILqGWdvQGyp5yG9dNVVWooYzSrEZenpOm6yeqSMyQ=;
        b=Girj/5cY0G9M4by9GzSqtrH44UvuWhXaW/KwR5eAjVop4PXWHmrPx7MmSMfxadQxVg
         TCbi8fnY+/g9s/8PPqQl+RmNH3QIibjo7JFlenMshKfQIZihfwDdCdXdSXH4gs2KTcL7
         vHva4772EcvcRAAM9UVKAAnesQpCSyg70Gpd3aFko5B+652GXLB7QwE6ypn3iufToldt
         6cpjqmA5W9Bh5Hs5X2mRlTc/xqsG0Nnujp4/5z07u4jheWGTyc99OtvQyhHyR8uisoxI
         zY1qlBXsswZ34dSRse8rOka8xDm1QYMYK/RTu/TZDkSYXClsVtvRMYzKc1z5JvAbcPkC
         Tcmw==
X-Gm-Message-State: AOJu0YxkpyO1H0S7utm2a9pRLL5gz1aCO/nxEp/QO1nkxdY66h2ILiMv
	vONL31haZ19DG/dD6KHyH4FvMwlbRFMvlQ==
X-Google-Smtp-Source: AGHT+IGbBpFSRp/Rl6zlZ4fJ2bTh5KOLJ9A0MfJxpzIVB/9rSCLgY5y9Hre1H/aLuz0I9VnjnNeXdg==
X-Received: by 2002:a05:6512:694:b0:50e:ac0e:ad95 with SMTP id t20-20020a056512069400b0050eac0ead95mr1258023lfe.15.1705179357738;
        Sat, 13 Jan 2024 12:55:57 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:55:57 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:48 +0200
Subject: [PATCH v2 05/15] usb: typec: tcpm: fix the PD disabled case
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-5-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1623;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=th0VPhhVwgxzRi9BZeZWRGueot5zBad9lANgJUi6Tq0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjW6dxyBLqmgIkLKgBNIXZP2morYd4M6kKeF
 0II/6WztImJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL41gAKCRCLPIo+Aiko
 1XoOB/4qZ/5yHK3+7TdrBie0roUiq0G242K8R7XP22EtAdGvBmxWVzee55dJ3/+oHlrEWLpYiw2
 DHiVF7OJ/T04vnoqHN8vU0dEEcLmyBFKnkDWphBp4QAdHmbTg0iT+Mwu+2K9Uk8NaUK9mLk5OEU
 gImtz0ysLNcFI5mqe1mW4WPgD6QE5lMnn3wkNHC2DRpC7t0C+wv/DnjZGqO830bXqSBuzt9fg3s
 XHHZ8VZGmKb1ZoZZM6+GEtCj3ZooFds2sPN481vkCGiaIpPvuBzQSNtK9VbNuUb+0GSPopAiGhi
 C6Rc3vDxLup3pyubKVLVMyfD7EOZ5A7a0r8t2zlaWsVdn5RP
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125559_065833_BB98EAFE 
X-CRM114-Status: GOOD (  10.48  )
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

If the PD is disabled for the port, port->pds will be left as NULL,
which causes the following crash during caps intilisation. Fix the
crash.

Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
Call trace:
 tcpm_register_port+0xaec/0xc44
 qcom_pmic_typec_probe+0x1a4/0x254
 platform_probe+0x68/0xc0
 really_probe+0x148/0x2ac
 __driver_probe_device+0x78/0x12c
 driver_probe_device+0xd8/0x160
Bluetooth: hci0: QCA Product ID   :0x0000000a
 __device_attach_driver+0xb8/0x138
 bus_for_each_drv+0x80/0xdc
Bluetooth: hci0: QCA SOC Version  :0x40020150
 __device_attach+0x9c/0x188
 device_initial_probe+0x14/0x20
 bus_probe_device+0xac/0xb0
 deferred_probe_work_func+0x8c/0xc8
 process_one_work+0x1ec/0x51c
 worker_thread+0x1ec/0x3e4
 kthread+0x120/0x124
 ret_from_fork+0x10/0x20

Fixes: cd099cde4ed2 ("usb: typec: tcpm: Support multiple capabilities")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/usb/typec/tcpm/tcpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 5945e3a2b0f7..a0978ed1a257 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -6848,7 +6848,8 @@ struct tcpm_port *tcpm_register_port(struct device *dev, struct tcpc_dev *tcpc)
 	if (err)
 		goto out_role_sw_put;
 
-	port->typec_caps.pd = port->pds[0];
+	if (port->pds)
+		port->typec_caps.pd = port->pds[0];
 
 	port->typec_port = typec_register_port(port->dev, &port->typec_caps);
 	if (IS_ERR(port->typec_port)) {

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
