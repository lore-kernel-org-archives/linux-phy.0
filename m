Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E2E8C83F11
	for <linux-phy@archiver.kernel.org>; Mon, 28 Aug 2023 15:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=33fwdcFxELr9t3x+BIg8PmjXFZcrhrMSrqbbjb07Ewg=; b=PaVnmRY12tCktO
	YC845baTy5oFqpzYrDREVVox/hYFybjoIOg/KERpAId7O1sRNm8IoJY6pWxLtor/eEQkKZqbS74K9
	S2d0p8o/pLmji3JVPmdB9C3+7Pys+tzfxuMrJqqPD7NNDiJsIMhBXUvSVUY8ejmkF9+KiwtzJ2q3/
	ojAo4mLPsT3DFVKohpQlwHU6B0mNY5t/+quDuJuhdGwgltIvsR2GVfVOvI27rXpiVsWbOAT25QTAI
	6/7AMv13wLFHe6wWYBEasKGXQxG9NQ8wTyvvvwRdhUhmDmT4B+1WD504v9klhFsPfXxCZvUudeB9W
	oM84msSGr2jzusKNsfGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qae6B-009n6w-16;
	Mon, 28 Aug 2023 15:24:15 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qae68-009n5d-2c
	for linux-phy@lists.infradead.org;
	Mon, 28 Aug 2023 15:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693236250;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fvt8AW+mIi2eZBWcexrLs2yuZIumHq8i5HiBkv83ZV4=;
	b=K5igcYLy/37xcb5t0RWbXkcY3MAZrI3cCXSuIscljNryspZnU3f0SNnefKVeswxsq1429c
	aV684XhvfnWsqgXXHe7XIQcv3gyzpPNY5nTDIxOdx26YaI9iYeY7VP0+CeRuUPlm1ijVuT
	01vc0vr60p3sS8hZVIyfep2XQ+K6Fus=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-nreybnmcMD25S4jlvHrhKA-1; Mon, 28 Aug 2023 11:24:08 -0400
X-MC-Unique: nreybnmcMD25S4jlvHrhKA-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-649fac91500so37300986d6.1
        for <linux-phy@lists.infradead.org>; Mon, 28 Aug 2023 08:24:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693236247; x=1693841047;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fvt8AW+mIi2eZBWcexrLs2yuZIumHq8i5HiBkv83ZV4=;
        b=lSMb5qpXpHwcGBRJhPdgvdrNZQGBtpnrUAYzIFkgAkOPS3jM+Sll21AGcT5fhJfnxZ
         p5chZ625NWcB7Wjf7utGuUgnGh70L9XDB3mAbGg3aWJhp/vwWmpz5DtzQw0glG6S15wE
         oW0hocmihHSBBWw7MFkjOWeDobHHJACDRnCxx7gLHeJxYuZPRo7HtsJGt6okP8VxRp9h
         QyUHmRPLjAevYZrk4h7X5PAFGW9cLt8yjAfW50LhRsntWYq33pVw12+GKhHRstgPm/pm
         a6EfzvIZAYg+NQj0DizQPXxyFF5OU04fHp3ZiN1iG84tAYIWs44N4cBykvOzEZaR9ogX
         Xlqg==
X-Gm-Message-State: AOJu0YwsJJqGO2g4XeqCZYo6vIyVa0dfwphGyZbEEZ1sUOTu4skyG3AF
	GDPogWKObL5SlWahTmOL0g4dTKor6rlOhXmlpxY0Duz36ElVgw9tYpPU+8U8nnafSmTB9lgO0XL
	WyoNdCSkxOU6JAuIfZEGie1k1SWOO/Zt2sg==
X-Received: by 2002:ad4:5d66:0:b0:647:225e:13cc with SMTP id fn6-20020ad45d66000000b00647225e13ccmr32576425qvb.31.1693236247640;
        Mon, 28 Aug 2023 08:24:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEl6XRmltSExgA8qzDmTIFQeCM0HRt2xpp2Va0ZoaBZdkg+stEwSFsNHM1N6xPTJIw21/P/hw==
X-Received: by 2002:ad4:5d66:0:b0:647:225e:13cc with SMTP id fn6-20020ad45d66000000b00647225e13ccmr32576403qvb.31.1693236247434;
        Mon, 28 Aug 2023 08:24:07 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id m9-20020a0cf189000000b0063fbfbde4adsm2632860qvl.129.2023.08.28.08.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 08:24:06 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Shazad Hussain <quic_shazhuss@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 0/2] phy: qcom-qmp-usb: fix initialization of PCS_USB
Date: Mon, 28 Aug 2023 11:23:49 -0400
Message-ID: <20230828152353.16529-1-athierry@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_082412_936986_A7E33E7C 
X-CRM114-Status: UNSURE (   8.71  )
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

This series attempts at making sure PCS_USB registers are properly
initialized. I tested it on the sa8775p. AFAICT there's no noticeable
change before/after the patch series: lsusb and dmesg output are the same.
USB is still working properly. I don't know what those PCS_USB registers
do exactly on the qmp PHY and I don't have access to the PHY datasheet, so
it's hard for me to tell the impact of them being initialized vs not.

v1 -> v2:
- Don't fallback to pcs for PCS_USB initialization (Dmitry Baryshkov)

Adrien Thierry (2):
  phy: qcom-qmp-usb: initialize PCS_USB registers
  phy: qcom-qmp-usb: split PCS_USB init table for sc8280xp and sa8775p

 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
