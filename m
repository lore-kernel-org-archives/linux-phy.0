Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AAAAC61DC4
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 19:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iKePJUHFD72KCIEPPHRVsJx9li6WcqaOUBN2elY7eA=; b=onaibfIkik3jQm
	Vd7e2BgFQjkdDpDjG/67Q6OSNr45gaWu+/0dF2rS3mlxY/Qf32lVm6zjCuKgoc5gtObxl5YI+7adG
	RZ/5DHIZKvAe8p7zK08bZ9cvKjVpzPbpGEaaliGB5iNQSVJTyFeUz3beyuj27BvfW1eZWHpGCF1LH
	v0G3amObioXqBWnsR/E7bCiS6oe/DqNG7REcd/i2mhTNXeqAwk3VAE7/QBbPNNfms4tP0fVbGala5
	aMnqfj6bp4qk55P9krQLzVBrKtETxJ/0RGNnlBzm7vwx0heKpvgl85zpCUYLgRLiXJSrATiQnMJ70
	Br2uEkEmIMkQM+4LYiyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzfRG-00000004g0d-1vf1;
	Thu, 27 Aug 2026 19:07:02 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzfRE-00000004g0C-0cVU
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 19:07:01 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-482e2fdf6ebso167164f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 12:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787857616; x=1788462416; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ye/9ulKBaC7alnS77GSpaMa7bLzaEniiM9r+DAjS4/o=;
        b=i7oYcUHnYeiMoF2isz456CjW+E/npKrSGDgJAkf8bGLg+NUFe87KcfSpJKx3krCqOc
         wjU58BgdbONYLs8nbLmycpZkREsCNBTGFqdB3N8RPjZbLJ9GpniCh2WscM5qzzhyrDB9
         36WN4amGXpQF3wN/HfPJfnBL0IRZtHd703bdS1LLy36Bm5dHLv9rdCG1MuG6ziAzpweE
         sJxDSgB7/zkKKAUl+pWq2b26znAD8XStC5oO1rQ9oneilKaEjjeCQDDB2ImpJdja6DIn
         WW7y/DdUhFxVib9XEmh/cUfzX03nRmgbhZEK3oC7MCS3yNoSmQKRY4zKI9RX5ttyF2Xs
         lZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787857616; x=1788462416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ye/9ulKBaC7alnS77GSpaMa7bLzaEniiM9r+DAjS4/o=;
        b=DULSvQ2r7v/4GwjQCTKay5kyW2EYCyTs6NjK+H8W7fa/wP1y2F7hnAOZ6mAb2Zd9My
         eRd9uunmqMsiquOo1si7PWu8AxNy+AyKlrHo4OKexBF69lCxBMq5LEheDP9JTGyiECdJ
         zdEYSmyEYOQ7Cna4qrwyQyox2Hm18gVEp5LAPAZxykJtW0w4VKWmXNQg01o6WBmRa4V1
         HokQCOqNLGg/pd9cf7N6hzAWLhfOCYLSrAZ2/tOY1W9nqz2GCcr4H9us9G/TnYVsxr+X
         GL4Act8DTBwjHcimJ/LckMcDSeHwV0mZ6Qu+1EyC0JXzQL44X5dLZyMkI1R44wwWhfuE
         akyg==
X-Forwarded-Encrypted: i=1; AHgh+Rp+5OTOiv23bH2G+tP6uV1mYBrURkqSsprqWymNgOxzLQI+Fg2NFbRJP4tNLr3/AEtb6WCFPg8/LI0=@lists.infradead.org
X-Gm-Message-State: AFuF++nevtpPaSOtuspHY2RnK3gHBoNle7R/qNapPJ4iEgiqgqlIlW3i
	/y7NgaH6wtWPXz+tMRv1j8/2YhEQq1BfpuUFxTKDfYIhJVvGabfTpJ2k
X-Gm-Gg: AR+sD12IaIeFxe+2kt8v2QQHXzklZtnQnHizQ7moRRGd6GDZTPortlrkz6rOQUJ9ked
	iBgH4r7EZao/sV/LSL0F2NhcgRBluE8cusVfp2HCldrHFphc2a3xRqRQR4c/KCp5z7e26uQkycP
	KFe49s3xAiUHS+RqH9HBC2EkxJThPiMstuKsVJkAhz7ILZTn5iA82RzDnC4oRWfXQQPTn/fE57E
	bCnqTkqlwdv4CkERo9LpbrcPdswcLcuHhI5SrbFrpmsBKm27Rp+lFyYmg7YXr2/0nZkrVcuRwu7
	+OZY2QD82AEaO+tdukf3EDHIquU4KVxmLuT0C9e64yKCa1uH0vyWnpYVhqr3dsAd1umVZCXr7yA
	pwYuFSOiVYqUcgobKtxUbcsW2ATm9iptH198MRbOuuNtBU+AP6kTOuJ/AjqmAuC4MaIwOV/Zm9+
	hpeAB4O7FwiAGnULvWjUH6+eWGfa9dOl+iNOMnXxHO94/ZnGycgYtZqLmxjATgu1H+0LTv9eQxP
	nQqmMfv4w==
X-Received: by 2002:adf:e00f:0:10b0:482:a9d7:7ced with SMTP id ffacd0b85a97d-482f79b2420mr1034763f8f.14.1787857616265;
        Thu, 27 Aug 2026 12:06:56 -0700 (PDT)
Received: from VivoBook-ASUS-X712UA-M712UA.lan ([2a00:f44:c90:ce5e:8e8e:8023:a4fb:572e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482e2756112sm11992439f8f.0.2026.08.27.12.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2026 12:06:55 -0700 (PDT)
From: Stanislaw Pal <kuncy7@gmail.com>
To: George Moussalem <george.moussalem@outlook.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/12] Enable USB3 for Qualcomm IPQ5018
Date: Thu, 27 Aug 2026 21:06:47 +0200
Message-ID: <20260827190647.807193-1-kuncy7@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_120700_231693_8E941BED 
X-CRM114-Status: GOOD (  10.23  )
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

Tested this revision on IPQ5018 hardware - a TP-Link Archer AX55 v1,
backported onto 6.18.44. Both radios on this board are on AHB and PCIe
is unused, so nothing else contends for the SS PHY; the combo driver is
exercised purely on its USB3 side here.

Two USB 3.2 gen 1 sticks, all enumerating SuperSpeed (speed=5000,
version=3.20, 5000M in lsusb -t):

  - hot-plug, both sticks;
  - warm reboot with the stick inserted - SuperSpeed 0.8 s after xHCI
    registers;
  - cold power-on with the stick inserted - same, no fall back to
    480M;
  - 130 MB/s sustained over a 3 GB raw read, unchanged from the
    previous revision on the same stick;
  - no USB or xHCI error in dmesg across the whole run.

I also exercised the vdd-supply path that patch 12 adds to the RDP432-C2,
since enable/disable sits in phy_init/phy_shutdown and that is the code
this revision rewrites: unbinding dwc3-qcom drops the port's 5 V rail and
the device disappears, re-binding brings it back at SuperSpeed 1.8 s
later. Works on this board too.

I do not have an IPQ5332, so the combo PHY's PCIe side and the 5332
instance are untested by me.

Tested-by: Stanislaw Pal <kuncy7@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
