Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E56A2C25B07
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yqNnpRPDRrjUFIMfdXg9anRhJkp0eaBkkYMGoT0Xh0A=; b=spnvY/+2QpSCNP
	6e4gv7RXgfGUzHQ6Ni4R8cdjboQL6kfpAhc2eOf9zLzrfywbMUa4wl0SVtjlOU77VYIpRBReR09jy
	uOQedS9qWG6EyZqfCOSDFGwkejI13LZQE0x71wyI6q6S7X0Ei+Bw99JLyrz8lGNsWv49wKOV4vOOZ
	QgUWS85Nno6ivwVKxXRNUC1IfyjZil6tYHAlgr3sOP84+jrD2drUeTyAkQN3az8VGGzrlb6SVCv6u
	0HAvzdQXlc5x7G1jcS4voFf1AiUv24VDWJCaBwaMFQy4hDq6YQQUUCmhO9EVO5W/2ctBX6xVvfMhg
	Gb2j7WLnLMJMdRzK7STg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy0-0090RW-05; Wed, 10 Aug 2022 04:05:12 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcxx-0090Ok-H9
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:05:11 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-10ea7d8fbf7so16423666fac.7
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=Vlw+TzWyPgd12y2oMgL4R4HJ50qc9vxXJ8xI2NT6Tgg=;
        b=Mk4YfbNfP4qekf3kspd/n/RA9L1SskyD7kfFxDIvLgVsj2TsbRdfY9nGNc329hUhxM
         eA770fwsJI+gDIGmLiCNVDI4QiLq09juBYN2Gg0yQaLti5RIWuYKIGRXUn5nzqhhEKp0
         eVvmNbyWIknpUporgF1/3gI8g2AxZuGpSNmrdn+DXZTjKC/D3HpET2yvcNmjLeYHVtn8
         0LOA6D4zDQxKayH5LiH56wboTQcGwYtKG+Wkmlf603G8zHCfU2Om2CggUrEGDE3ubMdY
         PJq7XIh/n7nrB5ke+cEDQ5/FhTlIzlV82aEOzs01o11XKmdRyhXUrSu8tUvhsX/dO4v/
         TOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=Vlw+TzWyPgd12y2oMgL4R4HJ50qc9vxXJ8xI2NT6Tgg=;
        b=kF/O88juqUhEeKnCLlci6IlAnmjznv5cLWZRgQHcd8x4Ia3JJ1AGK/a3N4jDYZsw8S
         DuKt+ixgS4KEp2r7On5uM8ZR4AS5pCMvf9NfJ/LyUlQOvzuXflX+NiYSAlmfB05M0bso
         UeOnBU5XwbMYUCvxNgQxUQqo1nrIZBZWXJYW07CVqpJC6ERFpqjZxUXInww74q0I4sBe
         4Cj8NJrfo5KeuxdMGG7bH2/t/+C9H7q/SiXG9GVFmXvFibgO9H/bZwqdR0f0sljo9mQy
         rv7SzuSVfAXotlDwTUQD6z66EK5PtE9u/85athArTSJ1pK/Wri9uehFsc1WVzl3Ir4bq
         QPcA==
X-Gm-Message-State: ACgBeo2dfcIKphYFxOhqoJHCiE4KR7tUHz8vgUrKBAj7aNEz85Ly03Ps
	j28qmxHtmZ8E9UvEYmX5zQizvw==
X-Google-Smtp-Source: AA6agR4LektJYrndrjLttwdRSjj4K+7Ffy786YpK2tM5CGpnIvHPzcP5IYgpUzjroGVsdFZZ8NUYCg==
X-Received: by 2002:a05:6870:f203:b0:108:4a52:da42 with SMTP id t3-20020a056870f20300b001084a52da42mr663381oao.59.1660104307980;
        Tue, 09 Aug 2022 21:05:07 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:07 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] phy: qcom: edp: Introduce SC8280XP support
Date: Tue,  9 Aug 2022 21:07:40 -0700
Message-Id: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_210509_619183_BBE13F7D 
X-CRM114-Status: UNSURE (   6.26  )
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

What the subject says.

Bjorn Andersson (5):
  dt-bindings: phy: qcom-edp: Add SC8280XP PHY compatibles
  phy: qcom: edp: Generate unique clock names
  phy: qcom: edp: Perform lane configuration
  phy: qcom: edp: Introduce support for DisplayPort
  phy: qcom: edp: Add SC8280XP eDP and DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c           | 193 +++++++++++++++++-
 2 files changed, 184 insertions(+), 11 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
