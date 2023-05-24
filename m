Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B7DFC7EE23
	for <linux-phy@archiver.kernel.org>; Wed, 24 May 2023 23:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMyDG1GtmgMERi316FdIjgQYpDmn3Y1fFXApqdmkSzA=; b=gUMjDRvppTBwpl
	Ljj0T2VgEUfWKTujO9abT3Tgk2dC2RzZb4iFkmSglGEzI4B/KIqUKmdMq2xRVMuEwCE3lJMmzCsva
	IkdckJmCfsig+nKgeIGZoTK9O+H0nr7WnHgLSjbUI/qMg++DDXu2t7YljtWS5495UNr6qyIJrOI1N
	4TH37t1gWg/8KZ5mZywcTx5IOGbEoxiQc2y9SId5w3Oe9RRGI/PWM2l2cXzijRe2qtMp4aUelHlox
	Q5qAEbDL2n3bGdijZ5aO08q18CfrLr2IJogHRGWd1hdRce3nhfx/gAK7aPBWNY/2GTtMoKpb/a8c5
	3E7laZw4TuxZC1WYA+7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1xXp-00EtN3-2M;
	Wed, 24 May 2023 23:05:25 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1xXn-00EtMZ-1J
	for linux-phy@lists.infradead.org;
	Wed, 24 May 2023 23:05:24 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-625bb54004dso209166d6.1
        for <linux-phy@lists.infradead.org>; Wed, 24 May 2023 16:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684969521; x=1687561521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rW2CrKLGtfK3/WozE3DOZxbIsLBJxAAhWX283Uru4C8=;
        b=OzNx7BVeM42NjPViQcoCO4ICFUvFxS8vMB21jAxRG2W5JwuxVVI7ap1HWuosq1zOz0
         G1bhODzV8OGn3ywWzEkvkbifK4T077CxlPBfwZyZ1GRHwIGb8sKf+MMnlTPVHYSIiXG3
         xToIo9MwCZgpirGggJnD+hlK1vCirnbuQEeWuFguy85I2l5S2tqONJKzfv3oZica+6Vk
         zTZFUOZyAIpiAPWTuTePI9oqifI3Pu8RdFzxpxR/XJurou0l0kYG3+5An4DiDJoROeAZ
         5xEd6H+m7d/HiA9MONbYJ5L265zOgzMMtv0NDBaE6SF4V1dxgMeNE6q9s+Lhu5mpq2ew
         a+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684969521; x=1687561521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rW2CrKLGtfK3/WozE3DOZxbIsLBJxAAhWX283Uru4C8=;
        b=KllGD7cR/McAkvuxPDIPoaSSszp65BeSjWtPFt2k4B7wqNyeLQTJOJ2ipMtvr7FMHk
         frfkkxzwLmFgnBUwXOGTzycs6p2kGqefBMFCqXNckUeQnkElC76Top0VNpuT67RckMSA
         7keeJtmv79NlmC1YZpwrLSooBOnzNDHhmsuDP4tIOfZJ9qNXy/qaSIP2K5Sw+U5m+fds
         ZbP2bNytaDUlUkRGtfctVaw1Oe2KyE8qFDjzaM1wBabERVH7XKuB+ie1N5V2dQtytC/Y
         EwNgOZK+AWcQu3wWEs+R6Qvw1f9lFp6dMyYjp0df9st5kMbMANGmfmDs6yeUyABqZFmb
         RSqQ==
X-Gm-Message-State: AC+VfDyjL/mP/qloEH8eLIrmdijHAjKGYrqcF8caSJDw0S8KeVRmWAPL
	dcHj1yK/82efX8i/Zh3331E=
X-Google-Smtp-Source: ACHHUZ4dLJsDB4W6zfZKOc22p48blzwNXfAkn0aNu8ORrhXHwjJEBD0PsEXK0LHYM45YzHExiKNt6Q==
X-Received: by 2002:a05:6214:c2d:b0:56e:c066:3cd2 with SMTP id a13-20020a0562140c2d00b0056ec0663cd2mr1112188qvd.2.1684969521170;
        Wed, 24 May 2023 16:05:21 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:650f:ad8b:38f6:d091])
        by smtp.gmail.com with ESMTPSA id ea15-20020ad458af000000b0062075f40f61sm3914019qvb.73.2023.05.24.16.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 16:05:20 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: david@ixit.cz,
	Rudraksha Gupta <guptarud@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] ARM: Add qcom,usb-hs-phy-msm8960 to qcom,usb-hs-phy.yaml
Date: Wed, 24 May 2023 19:04:56 -0400
Message-Id: <20230524230459.120681-3-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230524230459.120681-1-guptarud@gmail.com>
References: <20230524230459.120681-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_160523_448598_C0866588 
X-CRM114-Status: UNSURE (   8.01  )
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

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index aa97478dd016..6309c8e9d0b0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -40,6 +40,7 @@ properties:
           - qcom,usb-hs-phy-apq8064
           - qcom,usb-hs-phy-msm8226
           - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974
       - const: qcom,usb-hs-phy
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
