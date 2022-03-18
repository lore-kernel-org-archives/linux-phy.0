Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D33EC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 18 Mar 2022 18:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kZn+ttXm6n4sllbZi5+ozPXeBV9E3dy73iLeZt9372w=; b=Coc6wsNY9KeM0K
	2zKL/stWC4F24HVO4zCrJgTUcLs2KP3fKNFlAu5+5EZwx0iT8m/hL5Qkh9zboPoUA90O3jonSW1eH
	WUGidyZZgiLOI0QrUVF6MCdawk+lSX35iucAo67DJzHGvbZq2vf3Y8Bqs83ifJBuw0VmXNzYSXC6g
	GAPanVpdwkbFuEFBDDsG8brfe5BZlFS15iYLJTKfS1o3YUHAFpYe8yR3R5ipA2SHMjXvoesSGGuKe
	UjOg2RCge8etVPI8Scq6ox5mOL9W2Q0H7fSAfmlC7i7kgPFOWjQRpGJmpvW4O1daRgAsSUHr+CjIM
	v5SkkefNzrmoAFH6vPrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVHTT-002d1Z-Hz; Fri, 18 Mar 2022 18:37:19 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVHTK-002d1C-RM
 for linux-phy@lists.infradead.org; Fri, 18 Mar 2022 18:37:18 +0000
Received: by mail-lf1-x134.google.com with SMTP id p14so4113633lfe.4
 for <linux-phy@lists.infradead.org>; Fri, 18 Mar 2022 11:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zVqxXsnsA1LY8cZh5HtidQZ6OjQlcer9+l/ndoFCZzY=;
 b=0GPHb7LYcRvV0cYr619kgGkNXh29aZ1bBS0X1XqBJg22GVMGqMop/Fmcw2gghkOpLI
 TH/jF2MknNS+B7o+jM3fb31Yo/4amEjdUwNBwk6EwZxK4vP7a85oGidUknXa3fJrTk/N
 oSOlY4bYnplz7A11froxUMvRPhprEFwnN3F86raLG/Weq+cgRvZfTyCQprFm+rBApJCz
 SlbdZjwh7/y2bn2qlGW8+B4BdIvsZpj9qMtGugd4vQ1RIxIU7pbFhElFAe7r2OwNadgc
 VN+gIgADqpI2L5zSE+49UxIRfq50gAMqTWWITfBLv0MnFZjfMgFAcnn4mgbqSeSVgY2+
 Heug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zVqxXsnsA1LY8cZh5HtidQZ6OjQlcer9+l/ndoFCZzY=;
 b=qKOlKtsAIy8tTnI92KlGVVq1o3CaeTMwmZQZ6NuuIcDvJ1JblWVxt8qqR9vAHiW6iP
 cRbs5HL903g9/prVOvAnVuZEZHvwRm0aiBqIXNDTyC9p8lyRAwFdt8ll3a/ChVDSXHpH
 qCC04hl4mxw0pRC5OEf0UXkIsgaFcysl703qw9JAQpht7keHkD5ttARxCo7ry/OWujXH
 +yWbCoiRd/AvdiTZHN9Y2JbN80yExr9dgqaYoYHgIz2sml+xVkWJkjloAsOP9fXLC6uO
 o2tuGWauVD/Sq2blsSf0ve3D6I8i+R1GWC05IHueRyMhTtx0qtyAQAA/Ydd5smr0P98A
 BbXA==
X-Gm-Message-State: AOAM530aOenGXKohSyRDf9pKVLf37j21kloxmecynREa9AduVzkInjP3
 RyZ1vut56WpqeZoHzrBeznJ2apAzSgmFHQ==
X-Google-Smtp-Source: ABdhPJywc4UWZRd2+eQ+ys6dqt33WizzTPKOjPNdHSD5dskGiUT2AQqDpKCVX60LsFEPTMhbHNqHyg==
X-Received: by 2002:a05:6402:5173:b0:415:f1e2:8d53 with SMTP id
 d19-20020a056402517300b00415f1e28d53mr10822200ede.95.1647628225727; 
 Fri, 18 Mar 2022 11:30:25 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl.
 [62.163.246.182]) by smtp.gmail.com with ESMTPSA id
 y8-20020a50eb08000000b00418b114469csm4567551edp.52.2022.03.18.11.30.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 11:30:25 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Andy Gross <agross@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Avri Altman <avri.altman@wdc.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, devicetree@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 0/6] UFS support on SM6350 & FP4
Date: Fri, 18 Mar 2022 19:29:58 +0100
Message-Id: <20220318183004.858707-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_113711_854271_7C57412C 
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

This series adds support for UFS on SM6350 which is used for internal
storage.

Luca Weiss (6):
  scsi: ufs: dt-bindings: Add SM6350 compatible string
  dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY bindings
  phy: qcom-qmp: Add SM6350 UFS PHY support
  pinctrl: qcom: sm6350: fix order of UFS & SDC pins
  arm64: dts: qcom: sm6350: Add UFS nodes
  arm64: dts: qcom: sm7225-fairphone-fp4: Enable UFS

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  1 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  1 +
 arch/arm64/boot/dts/qcom/sm6350.dtsi          | 79 +++++++++++++++++++
 .../boot/dts/qcom/sm7225-fairphone-fp4.dts    | 18 +++++
 drivers/phy/qualcomm/phy-qcom-qmp.c           |  3 +
 drivers/pinctrl/qcom/pinctrl-sm6350.c         | 16 ++--
 6 files changed, 110 insertions(+), 8 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
