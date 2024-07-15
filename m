Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6469BC3DA59
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 13:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PyVWZlAEQcchgaBTi6NrcBQeCf1dkOmFVTY6oJVT5bM=; b=gMbqFIMh7bUyG1
	p2Rj9oe+wsjdf0P/ANdMRsKntn8RBsbvmfgasV7IXiiLOZ1VmZ2SE++YlGzQAuUKhLt0DI7RW58ZE
	gaq0BwiPILks4wM9+FO3xYr7UEKArSOPgsc1xbk/5QuGLM9f8h2aZDCUp6N0As/+YVu9Wr+4sMVj/
	sULFengq64dlJHooWvgarGGXvpu+HksWtl/Qz+z4fTUNiipsP45waYAsoXXnqcniYPWuZrvLKsyxO
	eguAC2ohFDxLqUtEc12V5cGMCKTLkWL3YKjcUsemnIBJJpyVJS6nDfmFMdgn0h4UpuImbdQxKHBN2
	65LRx99zUGHmBdR/Y73Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTLS6-000000079ed-0Hn5;
	Mon, 15 Jul 2024 13:09:14 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTLS3-000000079dI-3UzG
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 13:09:13 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-36786081ac8so2492662f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jul 2024 06:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721048949; x=1721653749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h4Cy762NHODqPEEZKK76RCvkyGJzJYGhxMZVjlQtC8w=;
        b=WeehSNI6/t/R0/dFjm/Ze5sI/0yvHZRieG4TNeQ9CLzOVnWNWzeIogwfpXbicr6PT/
         wzf153pfdLpM0aWr6Jaz3E59Eo7rGPExGtHwWoZFrpUayvuQIgvQTLdC+nsJFSELYkFR
         L13tzuJXvSuXvUjWpkT5rP3KZMeZOseBtA8osxofxKqYMOCfgBPAOov9KhOqvKgOkxdy
         dndyHTRIsgWupWBLrmvZt84HU7B5rzQmsiyaoYP1xzR37hwKgyffmmxp2X1g+MEbVtjn
         q2V4F08uDXdGwJ/sgLJ4L+GqNDTsGWNHjO3OpMo0ZpEMjEYY28+VG181cSEyK8hZEUS1
         RrZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721048949; x=1721653749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h4Cy762NHODqPEEZKK76RCvkyGJzJYGhxMZVjlQtC8w=;
        b=o5ltbjAEfnKfjodW335Wj/+jAUbuPy0D7FgAA2a5VxK8f7m3mLDUoPkr/LY9cfiJxs
         9bsKE5ar7GF+/2vv4TXm1tjaiS6lSnRkB7e4to3R6zChuUBeeUgIZFKbqGC7m8On+fxp
         VkB1Nyl30rLbwcNUNGtvrktrk/f42hAsGRQyNh+r6GgP+8sNLyi+hwHOs/tLdm1XsiHq
         KAGek9eeHfsXyWUVo2fbvlpgQFc7q8ASxXeQYSe2kccTlR9htmhhh7VDKbUSvjnv+Zsi
         yMbyBR2u3Y5YKJbuqziL6YBA42RVMwN3rHBBO5RV5Y0MUhhWPEr9U6P65IUGbdNwdIpm
         MavA==
X-Forwarded-Encrypted: i=1; AJvYcCXcw++dt8CAnbsSjZBA6TwDkDyD/O++6nXCZO57WcruirnypMSjOkIRV2H0qCY15AEHDVdf6JOTOvKwsJMlSmmupL6Q3cIQTD8pRceWsg==
X-Gm-Message-State: AOJu0YzUXRcFuh9fvL2dV6BlaX4RUQsKe1/COo63CqI22slRRM/jpoGF
	t6Fssf64j3T+xQNoR0h8cFGo8Vk/8rK00Buh6lF36Sz4b/QIgngnxuAHenivCTw=
X-Google-Smtp-Source: AGHT+IGKr51kKIeIqmt034nRc7HfCYRczHzCwLYmIb7rCOJa9a+MeLW5PmGUvpro7kxdQiOOqlQJyA==
X-Received: by 2002:adf:f348:0:b0:360:7887:31ae with SMTP id ffacd0b85a97d-367ceacb451mr12705003f8f.54.1721048949519;
        Mon, 15 Jul 2024 06:09:09 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccdffsm6417766f8f.54.2024.07.15.06.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 06:09:09 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 0/2] Convert Qualcomm SATA PHY bindings to dtschema
Date: Mon, 15 Jul 2024 14:01:05 +0100
Message-ID: <20240715130854.53501-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_060911_895291_1743807E 
X-CRM114-Status: UNSURE (   8.97  )
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

Hi,
The following patches:
- Convert the old apq8064 and ipq806x text bindings, to a new unified
  qcom,sata-phy binding in yaml.
- Remove reg-names from the SATA PHY node in apq8064.dtsi to conform to
  the bindings

Thanks,
Rayyan

Rayyan Ansari (2):
  dt-bindings: phy: qcom,sata-phy: convert to dtschema
  ARM: dts: qcom: apq8064: drop reg-names on sata-phy node

 .../bindings/phy/qcom,sata-phy.yaml           | 55 +++++++++++++++++++
 .../bindings/phy/qcom-apq8064-sata-phy.txt    | 24 --------
 .../bindings/phy/qcom-ipq806x-sata-phy.txt    | 23 --------
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi      |  1 -
 4 files changed, 55 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sata-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-apq8064-sata-phy.txt
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-ipq806x-sata-phy.txt

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
