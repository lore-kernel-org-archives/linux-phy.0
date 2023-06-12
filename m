Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A58DC7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1mwWkYz9MaTW54I3dnqAXLnbddziq4KJw5rlrLS5/c=; b=PmQLchXCuppvp+
	KI73tzQm4YFaQIRoK4oH31F9YxAL0vj4VPhxHpWMDzQOsr/MU52Co/kgr1RhY9oDEjh9jaOtUcBHa
	TChrv7+0VvMIOh40uhedmQ6/siDi7Sk8yEsW68jEHBgYBBTOGIgnFPg75o/6MbG9+MdHgoIyYuzW7
	Fq/KSxgHbm7QrMecRynXz7wamM9fZk8mOvAqkgOluZbfVmey+Ae62KALwBC53o95f5haR5tKnwsZj
	HCV/d3b4PiutdYbbUUQ/pUxMT9rb3YWbwAHzverKvmlqKuSz/bHXTA65YyM0ojTDjpVCH7wFy2dYQ
	Bj2ntry9ZlSdvnxs+KFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eC3-003Muk-2G;
	Mon, 12 Jun 2023 09:50:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eC1-003MtJ-2l
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Jun 2023 09:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dryPugxzZVkqmEr4Pa67GWmkXSnMJtg4EXukR1I6igY=; b=SlyVoy7UHvEntF0kOF9gLWKkB/
	9zz23ZopmQ7TSA8Jm9qTarRKIJ3NUPZTofuEAKaKr0iHnb8mxCmilT1XhUDw9QU/f0POZ9WoAKaS3
	qYMDblnApwrVkFtOfpgny7B3pHIOHWqi9cokeqo8pIpNwsZMPtFR+AvQD8KLKJTk/xhcyud1CrF1D
	UqGnEFgSH7zf7Jat87o5QBot2Rv+/u2xtDnsT5xqWEzjJTL/8GStXGgqP3VGhBr6TMBlI41TG5sce
	VdC1NLsQaF5viob6z/hStZB+tNqysVtxes/qJ/VKMhswjrru9vrHfdWkvWm/VGa9FK3oPZ5VSY/DU
	zRuowSiA==;
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnH-008k6c-1N
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:25:01 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f70fc4682aso27842875e9.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561898; x=1689153898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dryPugxzZVkqmEr4Pa67GWmkXSnMJtg4EXukR1I6igY=;
        b=M5U/hsARaGla6BtHBrfakRsf8bgC4Xv7LPP5Nj/IRwkteEW4yhKwcSaFwSQ1iHYbWm
         Q0yiPLZAjS9ogGsUnUy/dhShfi9KcDvvB2h2CuruXjTqQF5VmqHPzqtBqySGi24k9f7c
         ZzcFGICrp8SyArBAwoabUFjTt474+VBi0upbh1KdppDpS2YwuCJH863C6jTtvXX93E3O
         RwShAOBQ99lfLQ8gcI9PTAVl4liqjyOogX/Z4fLNTj7ZrvRel3u6DlbW+ZTFUyxj/e0d
         +zcpbnQHWCVagDqk6GjVif26k6GX9dlAwxw6XZWdkX1DKUWy9b1/JZjtUV/uxvFF871x
         WYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561898; x=1689153898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dryPugxzZVkqmEr4Pa67GWmkXSnMJtg4EXukR1I6igY=;
        b=UbeEO47sI92lWkFkzzQ/GQhCmpfMY2c7pHKv5ttopA/fICKxVSF/AinfJwQWwCBxcl
         9gXEjbrItG6iY9NMooHKwYSfRDn4bHY7oKAEY/gM23wDapB7aq1RlJ0MXRIZ1y0i+e+0
         edDNRcBFVm8AWjJqkE4VX1BP5+eh+wi8NYl5hAHvAGXnotZWbLq9eO5E7wWjdI59qow1
         AYx1IBfCRauwSv0dSQgh8ARB/qx/oyAcNm+mJy5MYrDbaT5ND9CqlmArsuYeYGwODop3
         JHozQt1XB9eUC6P/a/pSYpq4XwpV16jur6Eg6dnua3OqKJnfP67f9b9/QQWNCe/wm9Iv
         g7zA==
X-Gm-Message-State: AC+VfDypQaCLc03bZDFAuZck17NpprqMozha+vn/98h1IGLQonHHr/1d
	h+en3iF+G2sno6IUXXS6VDBHuw==
X-Google-Smtp-Source: ACHHUZ6/WgeRAlOckrgLS0zRMcfX+zZiAUsCI9uNIKrNeiHrfd9lAY0ak9xFNLSV6WJDRUU7Ceefcg==
X-Received: by 2002:a7b:cd19:0:b0:3f7:536e:fff3 with SMTP id f25-20020a7bcd19000000b003f7536efff3mr5410313wmj.25.1686561897926;
        Mon, 12 Jun 2023 02:24:57 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:57 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 22/26] arm64: dts: qcom: sa8775p-ride: add the SGMII PHY node
Date: Mon, 12 Jun 2023 11:23:51 +0200
Message-Id: <20230612092355.87937-23-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_102459_742913_A2EE63CE 
X-CRM114-Status: UNSURE (   7.95  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the internal SGMII/SerDes PHY node for sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b130136acffe..0e59000a0c82 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -1837,6 +1837,15 @@ adreno_smmu: iommu@3da0000 {
 				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		serdes_phy: phy@8901000 {
+			compatible = "qcom,sa8775p-dwmac-sgmii-phy";
+			reg = <0 0x08901000 0 0xe10>;
+			clocks = <&gcc GCC_SGMI_CLKREF_EN>;
+			clock-names = "sgmi_ref";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sa8775p-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x30000>,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
