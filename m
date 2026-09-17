Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 185BBC982D2
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 18:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O77mPLWshkOxsUFjYQuEQ96/45WTOVXygF3pQ27/0lo=; b=UTDVmFJddALw/B
	CwLsq0qzWglqEf6DGGj6Shvd80roBM+EK75pfmMEBRgMLqrfF1n83ADuQSknSkl/I3GK3ko7tKSS7
	V0rmz7Ssxcldht2IRkpk4T8W6D09d+MtviTXD7jD6rtQAEHeCEwBSBm67molUwtHbCwEe/5FQcm1c
	fJ9eZNr7U0j/gZUrCTBnas4x6wJCa5ocMYrqhsyVAMG73dIGYlWRMC6UR0AgMBlUd6H/cCklN/G2x
	GSGmafcSYu3Y4ivTOIR1iYsUJtEpIP18UptAmOXR0wtPADIybvcvRwMRM50dOOAg6dgsQcuRVW1pe
	dBwpAXtGyWPbtJRJWFLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7GcL-0000000CC9S-2kme;
	Thu, 17 Sep 2026 18:13:53 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Gba-0000000CBye-3ESF
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 18:13:52 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912d8239so8598225e9.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 11:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789668785; x=1790273585; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rBWaCN814kHmYVV+q8AElI0MqDoPN0IJdHskleXzFrM=;
        b=NiqqOl40a7ltfTIGOIhGPGk3DbgxiMC2Slx7UBZ0PxXFUYlxXD2BaCfli5EYDxW6Vf
         oyCquPoEVZZrhVGgQ50Z4EvBbLuiqPgMDobvCGewjDVzZMtIAPvQWRWnsuqA9OCNZFrl
         sTSZy5UoHAp6XaVVVHdQeg/wvyv1a0kKTNA78tlzKepyQn3JrGzsqcmXbHsyR6yO3UvY
         7MIoXrFop0hsU+rvrM2tFEjJbhUyDJP9QcBOWyWxiJtcHJsJTsiWZWY3dfxc48Nk63K1
         OxSowiFieTHX/FbPyvn7gIvarMbVdeAB28AfQ1k+uQkv4D1GEjb/CirvjBQFvA3NO304
         Q16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789668785; x=1790273585;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rBWaCN814kHmYVV+q8AElI0MqDoPN0IJdHskleXzFrM=;
        b=nDEFhoyeObapqYWpIzDJmxTzQ6/wUykjim1ejEJweHejdm47Oih4bQN5KmAVw/m2bc
         e3TjTeP7fS5AnqyA8pX12iJ2HpAikTbah+1lBNyfKvCwQCIVRlm1/lhdKpzxsMR4YNU/
         4+8XhGiOzXtfuSuecCVKcy4vKks8vw7vflL/ZIDwNt/E1BgrvPRk11WIU4YJJMTg9icx
         pfW7GQUwfDkrI+7TNh+a9BIUNw2kL3llhm1aatqjfZ3CGusGyDT/ypAkh4Er38yNyVgo
         FlE7I2CCRvNS+Hw22cXcxBE5tXwA/e9mo4PStlYh32SNM8DV9iar6C24i0KJ56ozefgE
         vARw==
X-Forwarded-Encrypted: i=1; AKwUvBwo7tX5keYcjJqlGwhSymJ+HcpK2V8qKP6Nf0Ee2/8lfapWKbuNSNeEWpBMtKnnEG73mU+soqgTAPU=@lists.infradead.org
X-Gm-Message-State: AFuF++nwrRy9ibihnpWmKBARxl9VPrsBCEhed2Ej7nyXjlbsoX2vAd4X
	iVNNwsTWfl3oW8X6nUYqvZcaMgmDFrMjeSUHwJrl3B7T7sPlCDXxzGP5
X-Gm-Gg: AYBFou0+ntHcZqJ0dIkmriKybWd+y5FArbSd/W7C/gAdK6E9h7iDG7u/STa5vnEO8QW
	hzxH8a+AHpg5Hr0aCOKvTXtnorv3eR3RYwfendKTxpC99edzvv9rkImVvlmpZp3hLisNWIYbUZJ
	b9M5uN6fu0c17JsF3jYjcCdZXKQ/oBckNLA+rkLjeKm/1/0ybtbRj3HmFx6PBYBt05GnzPSEKSU
	WtgpYcNZQMtizAWnKxSfxlVa/hwX3NtsQJCLfs9mNIya5QYrvyHY2qdaB15j/cjlIbRqJKpvySK
	d8//87j4IFkDM2ue61PumAu9ae2rXK0bz65Us0x9F84vwwdxrSGbwWiyrnD2BTcl1rF2IiS1QoW
	Qe+dB4Bx1J9AvSegDEAWDh/kJTqJblLKfDboA3nQ5DBYULi4qTEWPb3kl0oli12QsgNpVjZuiRr
	qHKwTMlznX0rGDwr+31pfOt3NUDzfC7dj9SCAXWtyEvbUJ9HBjOviT+Yb70Sfkqql0Aj1Ij4Uul
	glfgi18
X-Received: by 2002:a05:600c:34c2:b0:49e:6c27:d093 with SMTP id 5b1f17b1804b1-49eb72f7043mr91713485e9.15.1789668784618;
        Thu, 17 Sep 2026 11:13:04 -0700 (PDT)
Received: from localhost.localdomain ([94.252.75.113])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49fc4855b92sm3165935e9.3.2026.09.17.11.13.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 11:13:04 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@ti.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v19 0/5] Add phy_get_by_of_node and devm helper
Date: Thu, 17 Sep 2026 20:12:54 +0200
Message-ID: <178966877406.2239.2890857291530516772@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_111306_826760_5AE44678 
X-CRM114-Status: UNSURE (   7.92  )
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

On Thu, Sep 17, 2026, Bryan O'Donoghue wrote:
> Add phy_get_by_of_node and devm helper

For the series:

Tested-by: Oleg Keri <okerixx@gmail.com> # Lenovo Yoga Slim 7x Gen 11 (Glymur)

ov08x40 on CSIPHY4 through the standalone CSI2 PHY, two data lanes,
data-lanes = <1 2> on both the PHY and the CAMSS endpoint, capturing with
libcamera on next-20260916 with the x1e-csi2-phy v18, Kaanapali v16,
SM8750 v6 and Nihal's Glymur CAMSS v3 series on top. Streams, including
after the sensor is unbound and rebound at runtime.

Thanks,
Oleg

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
