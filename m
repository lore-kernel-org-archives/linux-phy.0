Return-Path: <SRS0=nKrG=M4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F25CEC4320A
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 09:17:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2C7A610CC
	for <linux-phy@archiver.kernel.org>; Thu,  5 Aug 2021 09:17:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C2C7A610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMm6x2xGz0Kojt0PCr8O4BzaqjTNSrMS0szfhWGP8Kg=; b=ru5PLNiF0BqYjD
	jiHFdg8HpDpD7Pv1M6gCAluVK3lgkqEbN/e13zrQQQ8FOhgzVhVthp92bN4kG/px9st0b2Mcq3tQ/
	SNVrO7ZZ+Ez2zb6ggqfq17XWh7iqvYTcjIa3P7+HCEFYx0VvbKlMbN7n9AO9K/UJqUVsLLapvfVyQ
	Agp+yCEksIZg1DmUAAdkkj9fa6NoGyLPRhxCvSYa0jhvlT6+rlW2dv1Mm60N3DTvPmz0UcaJlW6dB
	DFNDdCS6dr1duZx8a69nsc3Pb7/wYtkKXoCFyO5xlmYI2K40KEijvS6cekoTmmVLJXFAUJpsG42PZ
	nS5/oFjdfezUCMRI9nNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBZVl-008q8R-83; Thu, 05 Aug 2021 09:17:57 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBZVQ-008pyi-9U
 for linux-phy@lists.infradead.org; Thu, 05 Aug 2021 09:17:37 +0000
Received: by mail-wm1-x32c.google.com with SMTP id
 l8-20020a05600c1d08b02902b5acf7d8b5so2471984wms.2
 for <linux-phy@lists.infradead.org>; Thu, 05 Aug 2021 02:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cGMIv5wQ+fS4t14WDHHMzzSo5Nn0QlXBj1nNDFCAyqE=;
 b=uHeZLDXa0DOJWSuPktLqTfXk/HKBBSdsUPS7ydH2wxaBf3oNxQjI/iWsNT4VUPiDVK
 /dzuK+u8m96o5IvI33IAB1SlfYMCx+V1WXZ4JF2+2qOL2Rv6EHg67/lkHWpy44+7h+nL
 laxfHKipnzIPKCoBnKAE8n0fseqWaDCAUBh0eZtLKJtJiRBNPGBnDIWlvbsVIhsNm7It
 JbqzccVt+OjtBxWrPdLOucRYR7bjk4S5M1R93gW6elbdPG3N+HuusnUJXoIyOqztbxoe
 1DHxS+iJrSRYEn4PPYIBPhGjbI869Kb6ti5O9YKjO0hHEKbLMyDXzoITNDIplcCz35U+
 l7xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cGMIv5wQ+fS4t14WDHHMzzSo5Nn0QlXBj1nNDFCAyqE=;
 b=W3U1bZ4FF3NfKpW2dbsn2rcpq7Na8NP4yM+Ega6iXaFda1YFjtxIrl3Gz/ztleyxSm
 XT+9SnKCARw+3spes+4Gpr9SD/0PvrZl8SBFwQ2WbhE21Ga558HeWfYy3cyx4u3c4bg4
 86Cmu9BTgFz4ODWGtIuZDiJvUnl1j8nb0fZE9W0Mue06QOruHoplKenhEGTphF6nZ1Ck
 9pHzSX5TjtMj+EOe6l8JIY3z7fw3fBdxBiM2GwO5trlaA/dK6umbAR9YSyyQ+9sL7poQ
 euLap8cSMzn/gS2c/n/0X1leaU1GCFV2ZqUSjrYgZcePtKixShON66+JrBqRKeB+qpg3
 hJCA==
X-Gm-Message-State: AOAM532KTYj12v8yi8rGDffW5CPlP+7zep1H/wKsoaSQL9GO4EZhfen4
 fiL0GB1h9rqDj3gX8aeqmFo=
X-Google-Smtp-Source: ABdhPJytpTUc9Q+2xehehY/aDRl3Rjixc0hPG17Y+H447NiUsdc00NB2AsLwQF9y+++KT9/htGI2Vw==
X-Received: by 2002:a05:600c:28b:: with SMTP id
 11mr13700248wmk.6.1628155054609; 
 Thu, 05 Aug 2021 02:17:34 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id g138sm5995720wmg.32.2021.08.05.02.17.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Aug 2021 02:17:34 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v1 1/2] dt-bindings: phy: qcom,
 qmp: Add SM6115 UFS PHY bindings
Date: Thu,  5 Aug 2021 12:17:26 +0300
Message-Id: <20210805091727.942471-2-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805091727.942471-1-iskren.chernev@gmail.com>
References: <20210805091727.942471-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_021736_405450_A08FA884 
X-CRM114-Status: UNSURE (   9.22  )
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

Add the compatible strings for the UFS PHY found on SM4250/6115 SoC.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 242560ff52a4..7c3c8710ab47 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -35,6 +35,7 @@ properties:
       - qcom,sdm845-qmp-ufs-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
+      - qcom,sm6115-qmp-ufs-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
