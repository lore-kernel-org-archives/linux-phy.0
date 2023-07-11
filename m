Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6070C001DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OgY7CnLsqya7poRTYDgNG7c9FC+BvBGs5z0FOctRJs=; b=BisBPSJ9AriF32
	151+Znv+1Bogk1dDG/9fsajV+pTWJb9GHWyw+WfzHhTQENGOWMqwWnag465bkc9hRmQd/tkDS6TX9
	eBeWxwqvHpUPDvg0B63PRqAcyvuRJgQtDNpdl4EKwlqMh7BJixR6/9fqUIxhNBPqg26Xn0F3O4OJ5
	mG2sgqEXrAzFNZ3BsrxaZZCj45uK59CbAQPZN3PdFLAFhlMt7mihrExZxb5XfM8ioFts/VYW4qybv
	hRQMfDy4tEmMzsCS0HkglvuRvOPKtpOrIdQZVI5nruwQ/QHYL8Zz+dCdQycRNZVVknjhGB9R7b71Q
	M6PtmCDxBj7tpz+LEUwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBK-00Epq6-1m;
	Tue, 11 Jul 2023 12:09:26 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBG-00Epm1-35
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:09:24 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fb960b7c9dso8943829e87.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077360; x=1691669360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKy1B9p7DH6xQE/2oUDFVqP6OaI090XvdmNMy3z1j5Y=;
        b=RtIpyBb/OSHr2WGL9B+RJ/L8TN2ZmA2S6spFsZAL9YbtOiIERdFzXqyvXf+4uEV5v+
         PZ8zrI6DPFtgBe1evZV0nQIEbpiJ7xXaCbz6jI0nE62/IXR2o+SbUE2W9E9vd2zK/tTe
         INKPq8uqTZnCiIGw5hMr15J9sh7swgFrWS+TsmaHnL2JaR5n+9pFAHwXYvZ3abd1mnPN
         M2oepcBr0oKv+uiltOdyVryHAMmD9SFhMVzEaSiEfsMk8uHfI6GzlDYJmgDhv81XqiD8
         Ib7vSlgOlKc08Wj8sE0OkZdocfgUUlSE2DXcxEPipUn3BCdkcgNBkuPG9I182efQMR+z
         6SOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077360; x=1691669360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKy1B9p7DH6xQE/2oUDFVqP6OaI090XvdmNMy3z1j5Y=;
        b=aLTyIBlQsZUZwGR9kbxMhVQexp6E65KpNkRFZlWWSY28MqFLspCHFwV8ozYwBeXyEs
         0NrZdMQlJaooMVLhvOtDJjDs8iVevRBagapMjGWd3Da8xsd8Irp3aVql+8x0weCwt6m4
         fM0QweGP4vdMdeRbRjr9VA05LoAkbYX5zTVZh1K5pLUAsT7i7bTLdeUDRJ6KNY79VmKm
         XLpK2mN+m4hU/bN9fLTvi/ZOZQe8mMtQN5+orHXWI/C2l5lKpo6LPGx5C+EUipR1NMz1
         PZGeC7HV2fC2EDaoOKbu7n1S2gv9q+JxvfhnVkoYzJhmEVMGi0z77uH3CV17qSKsQKi4
         t8FQ==
X-Gm-Message-State: ABy/qLbtmCcKOBnF1Ltcrlye+uNOaE9YvJgnk3aZU5pmWM01lxx/AlRX
	IH6675WE/pxZvtoVq0bwKbScqA==
X-Google-Smtp-Source: APBJJlFRqvEzXAlf+Yk09isQF+YTEbaDa58Zj0a//2UkQIgs1JYmeMcJaNPZydutci8AVSClG7njDg==
X-Received: by 2002:a05:6512:3682:b0:4f9:92c7:401d with SMTP id d2-20020a056512368200b004f992c7401dmr10787610lfs.30.1689077360107;
        Tue, 11 Jul 2023 05:09:20 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 04/10] phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
Date: Tue, 11 Jul 2023 15:09:10 +0300
Message-Id: <20230711120916.4165894-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_050922_990928_F544CCE5 
X-CRM114-Status: UNSURE (   9.27  )
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

Add separate device entry for Combo USB+DP QMP PHY on sc7280 platform.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7558a8407b9d..530d171e456e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3515,6 +3515,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		.data = &sc7180_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sc7280-qmp-usb3-dp-phy",
+		.data = &sm8250_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
 		.data = &sc8180x_usb3dpphy_cfg,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
