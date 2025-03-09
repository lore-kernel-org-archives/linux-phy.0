Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D02C282D1
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 09:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EX5tW7Mbyg4U6rEe2GH97k5cvsqTgELqo/LvboubOs8=; b=lA/unaBri6b0cf
	OaV8a2BXJY1jEtode3OAVLAU9zyqS2OEedN+9Inhf4k7CH3GH47thp8WKv855Uzu4Q0HaDQXy02jf
	/BHbM58r5EjxO6J+gWOGIKoF7MNRw8sqvIPRg+YWDFjEAOOt6Pni4Zsa5W2qjIKl8+Cbh8VgqbnII
	hmExFq3hec9OiSqJUx0QCEAMmungNYQq5TxLEErxtbIHDSKuPP8Cqa/0m199+kK9m9+mKAdyuz//9
	AuljSBnDsWBJoWncIbB0B07PD/S084963/8KnLNxW66IfEo1RaxME5BPhYUTMES92yWKbFrYhYvmv
	n/gobqyXGDQz/ZNxYIKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCzS-00000000Hsf-09WK;
	Sun, 09 Mar 2025 09:30:34 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCwC-00000000Has-0GIk
	for linux-phy@lists.infradead.org;
	Sun, 09 Mar 2025 09:27:14 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e62d132a6a7so2283733276.3
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 01:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741512431; x=1742117231; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8MzFqTYg/ttLX5uoaIbZhu+X3rO/zERjBLQIlgSQny4=;
        b=dOxa4arFWnUgO1W63EWsD3XJi7Hp09q8UEmKFVVAcgzkqP2VcmVumuXowPsGZ/ewzj
         8JR+SBGefY6r3oVw1ASQKCB9Q7Dj50WcHs/TaN8l8Obm+dDrb2eL5R09AY/iTTJCghXV
         r0ckT0FjOfhJmG69fyeEF9tfKFL8I196GqMjB9gjP7PJNRgUt9q028oLRXpJGGYeh9Iv
         w0pn7+trws+5F1zjbbOoas9SCl40yaxtjTIBCZMaE6l3A+8eicM7Gt+Cq84Pcc9uv0+C
         Kx4W2cVMoJfhiMvs0MtXfY+1aLOIGZFTo2C67kmWTo39JINWGm/8VQ18UhaoaU5a75fA
         xWxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741512431; x=1742117231;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8MzFqTYg/ttLX5uoaIbZhu+X3rO/zERjBLQIlgSQny4=;
        b=eAM5AZ2Hm2HkHJ22/BcXqkrpPlC9kqae/w/z2Yn9XcXUDkjLFosEvErF44E1HwaFNy
         QW2CbIMV6X5PffoZUEXp6yUj0nTcnZ8irlfjBt1Euy3pKmtwUrvgNlITStdy16AVnPbD
         I7MWHasqjB/489Nv3ZYk8hefAJy6SRgrVg4aYLTrgznHyd7y/3xaZXv0lEb8C06Yuu7M
         AYlpPL70SnUyN5NurMPZqeReDbg9wDASpuq0XIPpEGiMhc3DpireC28U3wDf8OHccgrm
         PGb5rIV8UUqXBHRqVCll9r0Z/ymSVNONKf00v/1oAG1ANg+mp8WklFw8TGDun2KEFlZZ
         SFEw==
X-Forwarded-Encrypted: i=1; AJvYcCWqxOc1TDk6KDhXBLcEjzgpmLAZyRIaNDrBrmun0t81zxVxZyvBoQUlbqSD8Hlym4+JuRyo9QRFz6I=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrBrQsxYWXD42dvCcG0lv7rCEafz1mtIK+uQ2kn0l6KCv39gFG
	cnYs806k45lMAwLAovjg0XoiEHYz8G5oQkGDv7aN6NtN3S73eFGoRhJ4usXcFOa4WvuDIGnLtfI
	GG8UBfjeDLwSNlDOuTwvLrlPPVjujfOcXXiDYLQ==
X-Gm-Gg: ASbGnctqtPds7xfX0/FNc60LCxm5FRWDe39nmsFkxWDYdXl/fFAbgx5kN22V9Mfi06t
	oicQu8AlOi0FSW/L34M+Ke7fiZDr2MrM3meUiCPEffRZ/U5SA/4eGAGXzk5G47eJjXvOZXkxC6k
	6Gcn3hy5K8qJ1+fxKZ3pdgiN0CHkoR64HCnQ67RiHA
X-Google-Smtp-Source: AGHT+IFA76leXty/jcWXJzC9DDrnbvcXI51BQa5AVFEVNQnlG4hIa3hv03b3Pkk5R9S7knKinfGf9iLV/UMM6mz9Jyk=
X-Received: by 2002:a05:6902:110b:b0:e63:326a:3acb with SMTP id
 3f1490d57ef6-e635c1e4bdbmr10097346276.40.1741512431172; Sun, 09 Mar 2025
 01:27:11 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-9-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-9-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:27:00 +0200
X-Gm-Features: AQ5f1Jr0o-mNk31NaHNXGWXnai6sEVvAhCvxPdtXNqLeXppZC3-JsMDZY-z7vX4
Message-ID: <CAA8EJpoCMp1Hk7K=OTgR8BW=tncRFTYBKndw9UG-rS3JYyO3gg@mail.gmail.com>
Subject: Re: [PATCH v5 09/12] phy: rockchip: samsung-hdptx: Provide config
 params validation support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_012712_099719_147C4094 
X-CRM114-Status: UNSURE (   7.55  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Implement the phy_ops.validate() callback to allow checking the PHY
> configuration parameters without actually applying them.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
