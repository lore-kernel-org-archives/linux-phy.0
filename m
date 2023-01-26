Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6F36C61DA2
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 12:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PaWFsqZuonGKSso9BFiGl0J4tuijzvOcg5O2MMmrlE=; b=3Z94/WDgHEorkd
	w/YFoPdFQbl/X08oWsZGx3zICbFr2VTcIA+j+5CMpkZDc9RklyY7zNZgFz/ENvfBt75KN4f7RuwWg
	aBoCkBLzbQNxuJL8TbJQzwt/Pn3w3Xvk1AK7xKKPEP1hUXxB4+Ar+lJgbsNo/ckKrOCmem947BsWv
	+rupaBgdvGbur3zXu2qmtapFZynUkTOWOifYoVs0X4xLzJkt4IJHfnI2pSxFEpVOHeNW+Ywepn1Vn
	Zrk1Qp5zphEt1fs+BfXoAe4cts5fYWOIC68dxFFSW/sSt8hECvgrjeTFy3xS6+NXds8/YpbORKd6W
	mMptdX60LAkI8YK6y+cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1eq-00AsD3-91; Thu, 26 Jan 2023 12:47:12 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1em-00As6A-5Q
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 12:47:10 +0000
Received: by mail-wr1-x42e.google.com with SMTP id h16so1627380wrz.12
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 04:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JyPrSMFBYn0iwPXiaB/l7uEf04HZxiQUDbWs+6Uo9Jg=;
        b=L/93Vwq2DYsH5Fuip7RMUioRoTbyGhTeZc6pIcvcX6EG8B1PKblZ72ENY5I19vMFz/
         E8/aoDWMUVqs8a4ku5sIL0NY+sfbQ8UP0Dzea37+wqAmg2rZxN4X72lzmuoZAKbG82BD
         vzaYZ1nXGC3jlpMxwowHhuX6ykVW/6WBikkoW87FcbDLKePYsFb1qKDncbv+4r0/4H/p
         VxDZiRC1jpQQFCm8OwvUKJC2qMvSJpSEF9r7+s67RZMVIecIWhMWd7WElaS5rWuwwDpo
         k3GpJfgqRMQ1ZDLlH9GUvh4DV+SfaTtga8Kj9TqkxTB0AggQiKEu08jCiEZAc1UwxQIa
         6HLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JyPrSMFBYn0iwPXiaB/l7uEf04HZxiQUDbWs+6Uo9Jg=;
        b=HsLreJ1ms26ZcQk/I+7bNH+eQcnbP0utR5iFllvLCUYIPsDiE015VggfRZbJA/03qZ
         56eAUTSrB8ve9bmdxckROqOk0SMhJ2g1K5UBYj7wRABoEyxLKIdEIqBuWJrOGNfA8kSE
         KQUWquUqsFOUwel5RRlh1UoedX6EMFvOZR1Hc/FhqSxsZE012jZQNQL1Ts1OGQ+W+yDn
         OgTTFxm01sRoboVjsIIkIfZfB9Dbh2Ts2Ph86PB9WTwMZR43PtfMRIPqFlAw4s4UUnNR
         VkHd3zKkBhHhuFZTQFkKmYEV8TV8PMl4iEGZpdzRVnjFfEBbLXKIsAOzVHQ6G1VGRSZ3
         q4AQ==
X-Gm-Message-State: AFqh2kr6kPXnNtQEAQU/PlcRyHRAkQlh3P0BZ/mGL/8zyAsdKMkoOiSE
	Du7KHjzMk3uv4lqHXdeojf9GQw==
X-Google-Smtp-Source: AMrXdXusIANBGuRNCiIv3AYVY08YeFBbvM0wB+jvBth6ndFnVBIuxxsdhLRclEefBlnylmVCUKZh1A==
X-Received: by 2002:adf:ec4f:0:b0:2bd:ffc1:3f16 with SMTP id w15-20020adfec4f000000b002bdffc13f16mr31317156wrn.8.1674737221442;
        Thu, 26 Jan 2023 04:47:01 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v11-20020adff68b000000b002bfb8f829eesm1198681wrp.71.2023.01.26.04.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 04:47:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 3/8] dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
Date: Thu, 26 Jan 2023 14:46:46 +0200
Message-Id: <20230126124651.1362533-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126124651.1362533-1-abel.vesa@linaro.org>
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_044708_269030_399A062F 
X-CRM114-Status: UNSURE (   8.93  )
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

Add the SM8550 compatible to the list.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v1 version of this patch was here:
https://lore.kernel.org/all/20221116120157.2706810-5-abel.vesa@linaro.org/

Changes since v1:
 * moved to sc8280xp bindings

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 6f31693d9868..ec00fbc06abe 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
+      - qcom,sm8550-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
