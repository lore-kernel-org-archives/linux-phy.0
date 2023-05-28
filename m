Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEE4CC7EE32
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 00:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/C+km0tFcOw41tUq9Fb9myYfoWbaTakmw40uLPqzbs=; b=GtS35+lluoKtKQ
	MlZKx4ZiVbQh26KscSFBye8+PdBUDsH4Xa2k0fYXoQWr3vtBNv6Wb554FZPtA2+iDlqvXdr8WjKK/
	uf88WwTOZ26g8JSNE187jQvGM3XWSZ5HTpx4qmjxe0oIIAFGM9PLlWtzWyOV6XHaCHICAwQcZSwt2
	xlGICZ8Ku4eyUhVpDluZTUSbsT4mV0ablnG4nx9ldxR2oiQNk07EVbJOdDAvcu1u+rtnznyYRGuyq
	4DCUcBcOO4CahkAM79PlnX84LL+MHV6sk4My3qvoS5/KHIAoQ+rFbIYPeC4Hw1RHd1qP0DRs4V/C2
	Gx17ElwMKsTIuCgAZJ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q33ze-006Zke-11;
	Sun, 28 May 2023 00:10:42 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zb-006Zk1-0S;
	Sun, 28 May 2023 00:10:40 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-3f6b9ad956cso11034591cf.1;
        Sat, 27 May 2023 17:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685232636; x=1687824636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMCsGvkoxWSUFyaRQ4KyoqEeH9gxDpYDK1XiImU4CBA=;
        b=r18LUXZbEyf295PSaklp4P9NGUmzPbTYzCAwdHwZtRNoSN4MoWP2YuVp0GrIvexMeR
         0dvZK3/dzViFqtqSyIVKcS75h47Z0HTRdZULgLqHn2pijGNSXfYcVcXPL0hrV6LrRbm7
         IX8y8whrqzZgXL+eL5zMEHBOGAGQtjUhnaRSRsbI9xAtH6fwP4sRU+lNPC64EJu6xyVN
         EDKroP22n1mKX+NLw59ouc86TefbafTsydeKStJtYZOP8nCuX96jJIMZJft6AfGIcFcd
         iOlQpbN0xsl0XMoaCYaseu5Hk9mHZgNMJPIabNvxynvvt+MYt2fjdaILPYyFh4JA3DMm
         1phw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685232636; x=1687824636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lMCsGvkoxWSUFyaRQ4KyoqEeH9gxDpYDK1XiImU4CBA=;
        b=I2vqCkOh+lq1z2X9bF1gDLxBT77xNHxxUHVyT86w+sst2mPBvGAFM0LOdbXX+NfGfE
         /Z340x25X4YY60epQxdX4sOPvQ1KF94KcSyJZhZXhacxH4f8TNA66XHAAJGrzhDMiDem
         vjgRTzI8LoAF9RHNFDxfHIhUkRXjwmFh35htcSKFSGVLEnrkBGLFBYuVAWOE0EHwuzJj
         7rhFRUSbXhreeWB+F22ArJyZt0ojUAdMk5PE0HhQnG3JSwc/KXkNAx7zHjOcjCEYiF9N
         sw26skcVqW5MoP04F+d1ytk5zDLsz9hlRd03IhZGmhT6k+I+vFC1wrOAfhROy3wGP7sm
         mb9A==
X-Gm-Message-State: AC+VfDwjMU1nwUF8Lz63Hl7qmaMSsGlNDbbAt4GKsrhWxBBHi7lrNAFI
	fDJMPDba3TA/th0hLj0oZMg=
X-Google-Smtp-Source: ACHHUZ7MIP/VcIjwshjdNl1IQZV0vU+2dA96XzmQnwrcz12nJc3u2smpOSknIIHBeMqz6BwKzt6pug==
X-Received: by 2002:a05:622a:3d1:b0:3f2:f35:8e6f with SMTP id k17-20020a05622a03d100b003f20f358e6fmr6671214qtx.25.1685232636346;
        Sat, 27 May 2023 17:10:36 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:28b2:2867:6311:b7d0])
        by smtp.gmail.com with ESMTPSA id t18-20020ac865d2000000b003f6a7ab1450sm2518454qto.30.2023.05.27.17.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 17:10:35 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rudraksha Gupta <guptarud@gmail.com>
Subject: [PATCH v2 0/4] Samsung Galaxy Express SGH-I437 Support
Date: Sat, 27 May 2023 20:10:05 -0400
Message-Id: <20230528001010.47868-1-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527040905.stmnoshkdqgiaex6@ripper>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230527_171039_195092_36400237 
X-CRM114-Status: GOOD (  13.62  )
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

This patch series adds support for the Samsung Galaxy Express SGH-I437.
Currently the following things work on this phone: UART, eMMC, SD Card, and USB.

version 2:
- Combined patch 1 into patch 4, as the sleep_clk label is specifically needed for the USB node.
- Reformatted the commit messages to align with the style used in other commit messages that modify the same files.
- Included a cover letter to provide an overview of the patch series.
- Slight refactoring of the device tree source (DTS) file.

Rudraksha Gupta (4):
  dt-bindings: arm: qcom: Add Samsung Galaxy Express
  dt-bindings: Add qcom,usb-hs-phy-msm8960
  ARM: dts: qcom: msm8960: Add USB node
  ARM: dts: qcom: Add Samsung Galaxy Express support

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../bindings/phy/qcom,usb-hs-phy.yaml         |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 .../dts/qcom-msm8960-samsung-expressatt.dts   | 334 ++++++++++++++++++
 arch/arm/boot/dts/qcom-msm8960.dtsi           |  35 +-
 5 files changed, 371 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/qcom-msm8960-samsung-expressatt.dts

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
