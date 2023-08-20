Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19F92EE49A6
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 15:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwjoj7YZ06Gt0jUFNjoJESYVeI+Hv3C+E4/e/GLCE04=; b=r+5XxVAbypY9+6
	/H/U9+ZWZj10OgUha77lN8IDi/+5tvIILarqSHbI6KrmgkTRfHHcE7iwr2ZhD+eCbMpBQa2z52zMe
	5+JrVNyeLHVX46RgfWi6nlRIX3pgOKr1/mtvK/OG9ebYsa9DjrlseplTjnDOwp/WeHt2Q/n9rT/s1
	AefkvuPgWAAP2olUj/7B6pz0glbu+cYs44jg0JYRcIbhwgsQxhVcUJ4YacC4kGyXxwP2pSPvmURs0
	/7qw7O2BqyLybkVUYvXqraPeU8KqvWxqmpfqTS27iFcC+cN2RpIveJQSD1RZaHqY+/wSqODZAfeMM
	uhRSzIYGK0k6fMJf2/SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXkNX-00C6jX-2Q;
	Sun, 20 Aug 2023 15:30:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIP-00C1BZ-1X
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RvOFn83uvDLvxypbQV4yA9YZmZPvjQ28Rts4dfTJ0UU=; b=rMsODvKfRZnTBqc9PNfQeuHK4H
	ZTXi/Pf2qB/gzksbAUkxAxb1AnueMm0AqLu6bceag0X3PhfrrLxqb3n5NsR/LpDfZ3SamEFKvTddr
	n0X83BfUy62cc9oAMSnL0K941PK/2zSOp22wtCR8KBHgQaoEWRnsnp11Oyqz7vm4N302qPDaF9+/w
	H+1GRFfKK7GzT37PLxISeh5tZ2V7slKC8zMtb9J7V6FsjXrQRrj0phVmXzMdSdFfddgEbT8IGSol5
	uPaGD8f0LxNbzm+4XslG+wB72nc/9lfIEvC0o/CZ7mEIGRQlG01AVo45g1pv4KfSHzg91dL3JLkgG
	s2y2w9FQ==;
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIL-000XrX-30
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:48 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2bcb89b476bso6502351fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541243; x=1693146043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RvOFn83uvDLvxypbQV4yA9YZmZPvjQ28Rts4dfTJ0UU=;
        b=udWICl/vgzADjnkEGf4lYpn5AYLR/ed6MKD0MohoZl+bOStRaWKRXuSD9UcdEbc2Y3
         kBXJJq4uo1BWjY1dBcD+elA3vQ0P3yKCFlJ63HeqaS3EdAGAMNsCbi2VaAZS+vSAPPsE
         tVRm8z83FUKH7ijZa9OIe94/cDrVXF7oSP5Kxry7OhhYMn1YF/AXX2rsskxSagtIX4R0
         X154vhlGHSvbgcFImC0b6zkNe8JTBjDu48vngLLs+47U7n7bThocyVVb5kVPCDeYWvxg
         b7qS8zkUgPk85TiHDudJPFYDeNNglkB8+8/idbXwlT5jHlul/99/YzyBaEMtacEAJWyR
         WLJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541243; x=1693146043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RvOFn83uvDLvxypbQV4yA9YZmZPvjQ28Rts4dfTJ0UU=;
        b=dqhD11w9sJ7XHGHoJON7gONQ4CP1PLRNV3Ay4IIvNrYMdXHuVrcWPkvZHpY6r3P3Ff
         NkE4Cyl00WqahE2P4DMz6ixI1Mdn9Ffn6lPovc9RSz9axuNKMuGIYOOKD3ps1wS6b1Me
         Gymm7T4SDwiz2quE7NJhPtnnGCml9VcCV6ihCtV9n3EOZj0Udg4Dz8iELvMdYXcw4I3K
         RkKbGWZ/b3a1QnARUqq+52hrstgb+luYNdoxUJRKkmHXbLV+ZMa7IQdfTeh5ApXDnvX3
         4T9I4J6/1eOS0CUdtPiRvHUDt5ybI4YPe2PXVM51mphZpa687/TVQcTY/qwLrpGT/XNO
         mlLg==
X-Gm-Message-State: AOJu0YyebpuuciqvKdVbNrR1H0htUfz0Cvb4qSol6HK+ZNJPBOtS8lpO
	U51vaDYqNBfY6jb/YP5hdCYZtQ==
X-Google-Smtp-Source: AGHT+IGVYD8bjwArB6f+SD9KJklho+KRKO6hgA0zrJLE1RLH5+FTMvLtY6pVHGO++5Zc+8QpxPEEcg==
X-Received: by 2002:a2e:918a:0:b0:2b9:bd23:947e with SMTP id f10-20020a2e918a000000b002b9bd23947emr3064041ljg.27.1692541243272;
        Sun, 20 Aug 2023 07:20:43 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 07/18] phy: qcom-qmp-pcie: support SM8150 PCIe QMP PHYs
Date: Sun, 20 Aug 2023 17:20:24 +0300
Message-Id: <20230820142035.89903-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152046_069631_CDAC2429 
X-CRM114-Status: UNSURE (   9.02  )
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

Reuse sm8250 configuration to add support for both single lane and dual
lane PCIe PHYs on the Qualcomm SM8150 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 565764c5ffeb..a63ca7424974 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3750,6 +3750,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdx65-qmp-gen4x2-pcie-phy",
 		.data = &sdx65_qmp_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8150-qmp-gen3x1-pcie-phy",
+		.data = &sm8250_qmp_gen3x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8150-qmp-gen3x2-pcie-phy",
+		.data = &sm8250_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sm8250-qmp-gen3x1-pcie-phy",
 		.data = &sm8250_qmp_gen3x1_pciephy_cfg,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
