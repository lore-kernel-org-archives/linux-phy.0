Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1BFFCCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFwo4+0KlxJ0Lmz+AwvAriP+UmJ2oqoN/t03iZN2WxM=; b=aRr8hdLmTziJZT
	02jHriHuQAZIbLGAGVVpzvpahp1uqacQiot7H0sqWURmKts5et19yfgOU0630cjfZP3D84s2MW7eN
	3oTmkht1mcVMc1PUKmc2t69YBqJTxTY4uReqc8CAweer5zET5DkQFbUQXEikFEQD0TQTTvk9N2nMb
	Kpju0N6Ubs+isvawQbM2zTqE3tJ1Cs8GFF6rpaEUyjAuDgjVaz7VxSpEDhlJ+d/IH5q9vsa+vLpYC
	WsQp/kOk7tPEsun2wgl5xk5AMY1vC4y7REN5TjkY6UC+6UrbLD1Xh92LwZs2JiGkcnPLqEWmAxSAe
	uWLMEn1yHZESJY3fuD4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHepY-00000002ZSR-3izO;
	Fri, 16 Oct 2026 10:06:28 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHepW-00000002ZRr-0d0N
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:06:27 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4a17baef589so26806285e9.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 03:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792145184; x=1792749984; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kZIV8SpDryJCkEdmLv3viRxRvmm/nGJEMBGvh6BKJRw=;
        b=qTLpgpv9EKS/jdk6HyvMbdKTEBR3xVjmG+BK/UiJOxUWUh21P331ET5/Qk5flQySV3
         dT9Ip2EF2VRJp/96x1kP0KpHKAo08GDVAKn3Q+Z3RJp22ddHTsexRdSvJD+/O+3RrrNH
         1G2/uct7vR5Z4TXTT4PY4OhQZ5WWFuFvbVrxf8rbDE9N6qdSmmZkQd0cGZkSddgEStaN
         Au92qTxnLwzp2KdA+6WXTaPjHHj/khTDznKnJ42kXUvB3crthZt7PR/6DoSNS1Iyx8qF
         wJgACrJP7dPHPA0TvJQxCrPv6VHagIqr6yygRxg84IoruzJhZPh53Zqm3vd/OJ2jMFwU
         ZUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792145184; x=1792749984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kZIV8SpDryJCkEdmLv3viRxRvmm/nGJEMBGvh6BKJRw=;
        b=JOTwYmcgKj1GkChAVnDei8AgADH+EKEjfptalFLnADLjTqzUtaWSeMWYQc7Kad/Xcd
         mvgmF1MF5DD75wSw8bGTsDX58Ab4BdgQTYga6WIuJj7a6I0HObiofk7KVmnDmuQKLNjb
         Gz6Wt6KOplZx35WUD9DNkEq9TI4yngyaZI5jgOZxaueEsgHPvx0Cz6PsKBTWPG+OqvE9
         4WcvL2fruNNispfHOVoiB+cxsMlTT5v7QFYUhuEPtv0awKjzEoP+adw/UImUzG6hlEGp
         YG3QpFvsmnlDF33FCDqhT17MjL10GTsJ/A9txXo/kxqR3Ma3lzUk4AoDe24miSM1MKhY
         Vnqg==
X-Forwarded-Encrypted: i=1; AKwUvBybVlC/4gAoeGDXoRix4QR41RJCxySQJhm27C9bdi+Ade21G9uSNhejIeh+6xHWmdRNx2whCaoZNKY=@lists.infradead.org
X-Gm-Message-State: AFq9FYJJGJa5e31lX7gCyT6T6WKYmS+bDsFZT97jhKYMNZ8zbuThvr6d
	XrLqQ3DmmDt2gb/0e7jvGVVX4ejDTIXywf2idrPTRsXkL4OdMWNfYDU3UMX4GCpQ
X-Gm-Gg: AYBFou1Z5NPsptiSaRKkPGGiGDQSWzdi7d6VCfogApd5sF1ZtW/47zp96nwsO25qB5T
	vEk0xE9KCcTh2T/YHfjIhGogSVXRt3YFvf4e2yOlc/ZAW/siDjf6txDct+EfYb7gd5Ozbk+9jam
	SaSbcVSI7RSi8PlhZHFpR/r+PJ3QWJAIlcK/jsvlgOojsP/FMLxD+HGCxY1EfT5+kXRl/ye0QBo
	sF7rKst6oKdhNQgc1KhEtPOLcXBoBnqcj7XQxPBmYBF/FQaBgAyHjtCpF5RtOJ6P1KpPRmD3F7q
	CTQyzWRMeJV4O/bbPpQyvM4K1STugElcLW5KI5xXSmeLNtm0k1xZd/QPfChIja8qh5TN8g9xUYW
	Syn9tSvdoe0GUHgcaJynKUezs55K8vfUxSvlgRZb5p9DHwZi2DzlbuYXXBUI9CwzQ+aeCHbY7Lc
	sITOBNd1xQvM0hUIrnrqiytdLW5H0ccdzb1enASKlcn1aAk9Tm5ai4roAACjBCkOA6vq+WIggYx
	jesWw+S1eFxSNdZgXcGhLuL43bZYeqIKzrjc2dtcq16w4/ypHxjCACBPT4b0qR3ruLwyXU9rtp6
	UgFl9CM=
X-Received: by 2002:a05:600c:8208:b0:4a0:1b14:d00c with SMTP id 5b1f17b1804b1-4a18e446f55mr452412475e9.3.1792145183665;
        Fri, 16 Oct 2026 03:06:23 -0700 (PDT)
Received: from SP11X1e.cable.virginm.net (cpc99340-croy26-2-0-cust244.19-2.cable.virginm.net. [80.193.62.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1c8de7230sm45403835e9.14.2026.10.16.03.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 03:06:23 -0700 (PDT)
From: George Neacsu <geocausa@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	David Heidelberg <david@ixit.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 2/4] phy: qcom-mipi-csi2: Add C-PHY support for X1E80100
Date: Fri, 16 Oct 2026 11:06:21 +0100
Message-ID: <20261016100621.427612-1-geocausa@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <7aed254e-18c5-481b-a77f-576944fff1d4@kernel.org>
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com> <20261015-x1e-cphy-rfc-v1-2-1f3fa9af940a@gmail.com> <7aed254e-18c5-481b-a77f-576944fff1d4@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_030626_202094_35A1437F 
X-CRM114-Status: UNSURE (   9.39  )
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

Hi Bryan,

Thanks for the reviews, and thanks to Loic as well.

The series is on next-20261015. There, phy-qcom-mipi-csi2-3ph-dphy.c is
blob 966d79c98, the same as on the media-committers next branch, so I
think your tree has a different revision of the CSI2 PHY driver. 3/4 and
4/4 also sit on top of David's "C-PHY configuration on Qualcomm
platforms" v9 [1], for phy_sel and the C-PHY link frequency, which is not
in -next yet.

Which base would you like v2 on? If your branch is public I will rebase
onto it. Otherwise I will use -next plus David's series and spell the
dependency out in the cover letter.

For v2 I have:

- 1/4: lanes -> trios, and a PHY-layer helper for the C-PHY symbol rate,
  the analogue of phy_mipi_dphy_get_default_config_for_hsclk()
- 2/4: dphy_/cphy_ naming for the init sequences, if/else instead of the
  ternaries, the D-PHY and C-PHY lane setup split into helpers instead of
  the goto, and the helper in configure()
- 3/4: FIELD_PREP() with a mask for the PHY type select
- 4/4: the helper, and an enum phy_mode variable passed straight to
  phy_set_mode()

[1] https://lore.kernel.org/all/20260617-qcom-cphy-v9-0-83da8a8e4e44@ixit.cz/

Thanks,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
