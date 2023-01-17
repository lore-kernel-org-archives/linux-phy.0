Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51493C63797
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 12:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu7ERK9rMPhPZdMdsVKXTnm5k3V56lgtZg7MuMelHqk=; b=M44qgYQsFKWoXj
	YcAdvs1glW8TsocYTNwHpKWeIhREecAx1HbqGN5XLJahPuwKjpn/4XdsRQwHuuu1Hc9nZQhAgstOC
	OLD549k5YbC7eAuemgbC408qyt8c25+DHMPsivrXQSM6PfJMi0jU802dIkgtssjfCwBea2yTfdQy/
	HevJ0ISWK3RH0evkrgyvReFEjo17pnk6YS/2xjIa8X/JQemqtjmR7hb6YHmdTrLEcPOwfPtd+EzSY
	sEe5coGKpL7HmUoNP7X+nAmREZNXmZ4wePUHnn3pifIKIl3I8B9DhvtVR95JQ+d5zRz8LkHtCn7VJ
	pOsqKIyr/h5UBJQCHrqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVm-00EGwR-Me; Tue, 17 Jan 2023 12:56:22 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVX-00EGms-96
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 12:56:12 +0000
Received: by mail-wm1-x329.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so20904893wma.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 04:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=buQY0571VmkhR16u9Ow/0LSNQ/qEjT04dxWSimZ2h3Q=;
        b=xgEsPfsOVcftDjdUJFmKJUC6KpSP8O+LKNlXe0lI5XURt7zsOULBR40aMQNEnK2L0G
         yr+NnXwmdnhjkfcnRX1LNRzLgIMRsAVKD81C1IU/YY16EEnslk1OVyBkFwFiPheo9XTC
         23/GnD3qOn1HrGPt9W44veVmFreIXqyKCIShXIEqoggU8nhdPnQFANYq+qzq00KtRno8
         OjJI3KAS2XJ3ZAE2T73HglQYiHTlRjWz17D9UerVGVGY1Fqx98xHFL4rAojxJJfgZUdv
         wlpE+/14yEckFOqtN8NICkpZs+WojeIUOwFm3f27UfMnCgSPuv5EMEuUQS0HK+KaHjzu
         Xkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=buQY0571VmkhR16u9Ow/0LSNQ/qEjT04dxWSimZ2h3Q=;
        b=tQhox4tmrC6XgGYgG0b//kgkivWQysXRowTZczIwhIdEKnGhKhFaj/6njQ2RIkUl+z
         DkzsYzBrtmhO83POVDgyGoZ1kpnpIZUu39+5ZclSq0c71Pxfpx5bQQismLCWCl+nolVo
         W8d4gCFtRN07oWibv/et0/ENpMA8Efi0oV+vcjGcJATKR3vfSHbSuuKbqohVzlGyQbcD
         DF20/DNCb/+o1SZnWT6m3ULytxgiPk1u/O2joWryV2WDxBDi+CFd4j5OQY9ydC0mJ4HJ
         dIvQ3lzLe6AS0knDrdjtCtW/tWpM0LkZcTZijg89YqMwc96FyCsV3K21iD84QRXL6i51
         BPRQ==
X-Gm-Message-State: AFqh2kqpUUSFSJC+IoVNph0igGuYmF8+6ivot39GXAiTRij8cTgMdcDM
	PEO6PLTbT4EB59OAU+QHOe1wqA==
X-Google-Smtp-Source: AMrXdXtkzS9kUkZ12Af2SW4It0OQMhjBk2A7TqVpLtKoAyJzrclkMqUGVQVXGASewTIiEncYTmkDiQ==
X-Received: by 2002:a05:600c:6001:b0:3da:f80a:5e85 with SMTP id az1-20020a05600c600100b003daf80a5e85mr2950758wmb.26.1673960162694;
        Tue, 17 Jan 2023 04:56:02 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g12-20020a05600c310c00b003c70191f267sm45069778wmo.39.2023.01.17.04.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 04:56:02 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
Date: Tue, 17 Jan 2023 14:55:50 +0200
Message-Id: <20230117125555.163087-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117125555.163087-1-abel.vesa@linaro.org>
References: <20230117125555.163087-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045607_361992_D2E62D9D 
X-CRM114-Status: UNSURE (   8.24  )
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

Document the QMP UFS PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 760791de0869..44745a5c64cd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sm8550-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
 
   reg:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
