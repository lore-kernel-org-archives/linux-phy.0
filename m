Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40709C28B2E
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 10:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvmjfmOKrhaW+DhXUV4dY8tr7t9UKsj9UO5aCsAySok=; b=CoezXN6AoGWWbl
	3cpuHm/6YYBiDrUTrinaKWBofRXeKACM1Ahndvn6a6DtdpwmffgXwhEQnbC3RECJekl0SGguz33AT
	VQFWh0p0E62k+bJo4UmivsoJJ0kptZyQCDWfhS6HdYf0LKI1fuN0C8u+890gBfraFmsofVU/L3GRD
	uaj7fpEIxhVbw7K0QGbEs98mUyKAFQpfvrEmB0bTBzAL2jeKl5lGf3GjgrXXbJlpbp8YS2ZmNLw5O
	lyQiGrGHzEWFAo1U0zUmJe6G7w2FjZY6vwCYHo0qmW+toibiFwV5g0Lt6icI3DACYtT/7V3QEcSW9
	/KVi2K28A4qVdAlST9qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDdR-00000000Kf2-3dPC;
	Sun, 09 Mar 2025 10:11:53 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDcV-00000000KYB-2Kov
	for linux-phy@lists.infradead.org;
	Sun, 09 Mar 2025 10:10:56 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e573136107bso2701958276.3
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 03:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741515054; x=1742119854; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4BClW3AD5pwAP7HlEQggy/3PgguRjaaiqTnG6w3UH/Q=;
        b=r5kVOj5nS1WtVD30efoWSherxLG3Lgtt6QZQWAE5On9dNFSycyVA94TJYFUG97FETm
         pp0BnQb9L/P270kG8s+LkYSaS2eotC8ffiVeAHR2uSVZH7GxxBndIH2S5nsEAwXUp71W
         b474CEQbfIo8Vecml19gKDX/LlADFgv8Q2Q1CApHGUoECiQLEPVYjih/08K3r5LJFm9M
         4tErYCV6AmlP7z9WVdg7NVS7PB9i0w2QnRVPcKwLwEc7Dv5kXhPvG7YIny2nuj19p5hG
         ZlX7bN7RYY8ESVZmjdp+wmt2Be7aMMrSceif06OTd4xEA2W57zeY+C/tTxYH3QoVcVXF
         f0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741515054; x=1742119854;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4BClW3AD5pwAP7HlEQggy/3PgguRjaaiqTnG6w3UH/Q=;
        b=MbmvLxbz/nSa0ouQuW7buPXNhQhhr9kxv0Nzi1RTTwQqVHZzxcTlPjhSG2VM+mv8ZX
         yUBxFQOEfFXWj36G7czPfF9hJhapAYW7gQQaNODCQbuL/76R4byNf+/QrXnsf8Vk56XF
         caV9GD5mRfSfK8E26hBW3lRLIIvte5WQBkhUHPPeEGh0PfVp1hQipE6ITADT5W4Wl19Z
         YLr1b8hD5lEsgXYGdxZyf7j1EyWhdAxZXTcr6KCj6WKwyJAy35Dsnz+v0p0/+Stm/rXp
         qCV7LxMskrkZ79H4oxs7xbfq1Oi54WI50iLCJ+sBdE331TypOC46SAA3rfaahjWY5Bbe
         tujg==
X-Forwarded-Encrypted: i=1; AJvYcCXhTcniOQubOxK8Dw9oQm1SPeuOZ0cboTdewWCyAZ8knVlqjYA7JjzcAf+53+dHWMjTXVoOt7KjbFg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyfRdySSmCPEKlwPBAj0qKCPXpgqqc731VgLozTSKPTFJ1HpGi
	/JnLkXVCZY0s+kUsl0ggGhXzCPYvw174HbLshe07fvCFTO8Lk3PyQM4sW+PpyiHeXXweL8WUTJD
	xzss8uNCt+PtgRn/yoiDzKxFFSDkRdYOXw7MZOA==
X-Gm-Gg: ASbGnctamoWyu2356UmaGtsaqlg6NweuAsjk6uePHdwv6IV2UvSacvr8jHQUV8sYQE5
	lTaoZNYD7uP1/jWF2vpwGxYaQDZGHTSpuQOJwd3F7sOAhF3u5waSQhdXgRRk1CCke0lmigckDxt
	a5dfI4g7NANtFAlMyzTr+CHoQ7q3aVxk7DmB7lJDR3DNvmIAzdmAw=
X-Google-Smtp-Source: AGHT+IELHQ0fTEF6TQsCVADH9+2FjqIz2dd2lZgnP8p9HlYkvFgSHseJRTK4oPdwl0BlLmUYZqUu+3ES+J82wsobBT0=
X-Received: by 2002:a05:6902:1081:b0:e63:5be5:81a3 with SMTP id
 3f1490d57ef6-e635c121fe2mr12595424276.1.1741515054548; Sun, 09 Mar 2025
 03:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
 <20250308-phy-sam-hdptx-bpc-v5-2-35087287f9d1@collabora.com>
 <CAA8EJpqYE1drM6=C0AwPZ-e5RkWqjMTpWQiwhA64qby1mmVL1Q@mail.gmail.com> <22142c86-c8b5-4427-9764-a7daa4a005b1@collabora.com>
In-Reply-To: <22142c86-c8b5-4427-9764-a7daa4a005b1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 12:10:43 +0200
X-Gm-Features: AQ5f1JraoRZHEAAKtM_6fInxqSPprmQzLJINm38dwVXdhnnYMeLTS5kKKnY-1Ok
Message-ID: <CAA8EJpqCUWH95Ew57K_HKmPGhf40G_2n09SWKTonvyUn2vE4oQ@mail.gmail.com>
Subject: Re: [PATCH v5 02/12] phy: hdmi: Add color depth configuration
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031055_609293_5043AD58 
X-CRM114-Status: GOOD (  15.42  )
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

On Sun, 9 Mar 2025 at 12:10, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Hi Dmitry,
>
> On 3/9/25 11:16 AM, Dmitry Baryshkov wrote:
> > On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
> > <cristian.ciocaltea@collabora.com> wrote:
> >>
> >> Extend the HDMI configuration options to allow managing bits per color
> >> channel.  This is required by some PHY drivers such as
> >> rockchip-samsung-hdptx.
> >>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  include/linux/phy/phy-hdmi.h | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Just to confirm, are you passing TMDS char rate or pixel clock for
> > DeepColor (bpc > 8) modes?
>
> It's the TMDS char rate, but we still need the bpc info to program
> CMN_REG(0086) in PATCH 12.

Thanks for the confirmation.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
