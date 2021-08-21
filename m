Return-Path: <SRS0=vXpx=NM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 376B9C41537
	for <linux-phy@archiver.kernel.org>; Sat, 21 Aug 2021 15:57:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F364E61262
	for <linux-phy@archiver.kernel.org>; Sat, 21 Aug 2021 15:57:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F364E61262
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfOYjTfk4W0JoTIPNGeUmdu6ggYZnq+cHUbD0nG0il0=; b=TtR7WE4McvtI+G
	1qGAEZKwTYlK6zi+APqpN1MWcvSTNqkKIobA7Tqt0BPV78/Ws3+lmvdvHXvdmRUyT+IFfwNhelIsM
	s3Gs+IuuKNAnMtpCvfqeAWy9HATkmV6WOQmhAfoKZf30l9E0CbUDn0fT6ZJI8XaAI7J5lp9tdUJKD
	+N3IeSnRxztsfEoPi4GU8PCo/wz527Xeb1xvpgbUODmltHtie4voDise5C0QbuQ0dMCN27a51vomc
	k2xRpF6mTq/UfMErjfBepbsiF4Y3yLH8kv0AqVMb7qcycKhAjgQKe8C2X2BQ2x1szOu337O8UvYDJ
	ty+LJk11HR7hIgNkh4yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHTMq-00CwOZ-Ds; Sat, 21 Aug 2021 15:57:08 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHTMo-00CwNu-5o
 for linux-phy@lists.infradead.org; Sat, 21 Aug 2021 15:57:07 +0000
Received: by mail-ed1-x532.google.com with SMTP id cn28so18672486edb.6
 for <linux-phy@lists.infradead.org>; Sat, 21 Aug 2021 08:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8sfYSq0QuAuGiLgWyWy2pME6Wr0TNS7JzIzhSD/njQs=;
 b=buZokTB5fj0w8ZJTpIpmGJFW6rEwfiVGxeZaf+UR3gAuOY+tsalBWXDcwWn3djt5MS
 TxFruofVy1VPoEFPx4QupzG/1fjdowdtbkGY6sUVT/E8T42R5j2o0khUOc4PDAGphRE0
 NMm7ZLkaF20VIyEObCFf1Lr6egjV7U2eFx5eFzAKsLtqcqbXUziWB7GahOZ/+wlYpO8A
 EVCekLIuB3imX4GXjg4USmKm+/2c6lY8gQVw8W00zwUMl+cjAqVAc/NM72gWUp5XExuo
 rV3+RW+wDB6TUwFMeyG6w28mCiz5eImm1IJRSkmn+BVrNs8A5xSfDiCMZK7PbTje6Vhq
 IO/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8sfYSq0QuAuGiLgWyWy2pME6Wr0TNS7JzIzhSD/njQs=;
 b=MxSYZ4BiKcAHTQQkKEHlw0KaDKjx7rpmNR39CC38mRJf3LHDXWGyPALh/Me48CETEy
 lUVqck2MFt7wJNM+P9X3RgvFVvWOxc9Eemy9i/kjcADvnE8eTplFCHTySTQ2BLYUKK/b
 iBdOH9RxkwkfgPh3L1UZ/kq6gLB741yaU8rVNZN9J6doGLDbAuysljj5qs07QTepQqlK
 ZK2NSK9J58OehP9ZBaauB0aHUiIVxMXtGrAhZBz7P52Xz3spz3QVpPOQs3MlT0UPLuNu
 IPmO9RgKoBr6oHThNFZgkY+obK/swrhsxP0mnp/Gd23S+6RVBNrFwzPKbcY5giUOAlE9
 uzKw==
X-Gm-Message-State: AOAM531guIQWyMyP5faKHjgY5M49p6T94bo3ztmyPpKpsRLDRSpA5WI4
 wC7VrRk8AoudL5KZfRsx/5Y=
X-Google-Smtp-Source: ABdhPJwmsn579dsB7JySTVOgC0bVnx9mICFsu1H6QttWRkMOiunB40d8dFJ+FPMFe2jfET4gn7bBfw==
X-Received: by 2002:a05:6402:215:: with SMTP id
 t21mr28368506edv.68.1629561424769; 
 Sat, 21 Aug 2021 08:57:04 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id ne22sm3423919ejc.113.2021.08.21.08.57.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 21 Aug 2021 08:57:04 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>, Rob Herring <robh@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,
 qmp: Add SM6115 UFS PHY bindings
Date: Sat, 21 Aug 2021 18:56:55 +0300
Message-Id: <20210821155657.893165-2-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210821155657.893165-1-iskren.chernev@gmail.com>
References: <20210821155657.893165-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210821_085706_237506_F56ED327 
X-CRM114-Status: UNSURE (   8.37  )
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
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 47d99001d2dd..75be5650a198 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -36,6 +36,7 @@ properties:
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
