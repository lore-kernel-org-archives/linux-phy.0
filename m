Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BE27C282D1
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 09:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU0Fvs/Npdnkh1QCcu7n8G9O6S80Ge+89wqepiOLmmY=; b=aoDv32czcReruQ
	i0qCsIWkwjowlE5c3E1XFbONhnHcpP+HrIXYfBnmhBuB4yT/nkEzRUN5dnLCJ7Vmi7GOrOSYCN66W
	rGigVHG/ncJ9Uw5+HKvm8WXeWnD3jNXs/zFQSntnZ/J7jiw0vpsJ+jcc9WyUBSt0ccpfwcwzyP8Dn
	DrwPZ+7EJ8H54bufoFNd9WO1HF55O3deoYSFOu21TpRKy74cHc6riUv2uToxnvSmzOdGmcSYN5hYu
	/CeK87dLloqGP/eJtnzVISQUFqAWO8YbmvXb6+sidFmPhYcwLp1dUSYeVcM7FmUA8xyCf5VR/Dsz1
	V1vvwhmX5F3BOZM/6osw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCqn-00000000GtR-0YNP;
	Sun, 09 Mar 2025 09:21:37 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCni-00000000GNp-3Jt8
	for linux-phy@lists.infradead.org;
	Sun, 09 Mar 2025 09:18:28 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-e611ebd9a61so2721076276.1
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 01:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511905; x=1742116705; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wS4IhIBI1yx2mGgdeLumrUYH4CZGsZF+Y3g2R+4QCNM=;
        b=RAH2jFgkVu62N8oTRlyx05CTRknJ2ENS5SSRa3MLnXWYvYOoW6iyPJj2HLKJ1IcR+U
         PRPUwxkbPXDtIGoeA/Ou3rk0M/nS3mKAcErE0RdLY97ZOjyoy1YAiC/x+Sn4nz0YOMlK
         4vz5uvM8+qZmqlQKn/vlc1mPg3hspk7QIod/2GjKXSW2ORyxMYMvuaWqKUeKRan+bdlv
         tz8NXBum+839/amWka+NAkeLzWk+RsEXGkvHHPScTqovSTB7NZDUf9i4s4KuVgbntHRE
         OTrxF/N7j/7Jqe8RMsjavdt8t5QJOoUPPZdPSKYSmL20kGv75efifIc5gaR8p5xzdG6a
         j00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511905; x=1742116705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wS4IhIBI1yx2mGgdeLumrUYH4CZGsZF+Y3g2R+4QCNM=;
        b=ANCEUOK0Hzz3ZlTmti6h9QJhFqL8gZA7kYtizCd3gOHymxS8GKHiyX91V7UZrqoSjO
         9lXJjMNGdspgptEqgu0HOEl3AV/MXLeNoT+lOgF1lAydL2vF1+vv97m5lSEyYy4RNpsX
         9tE1pu9aXAifrUZAC6+kprnmjsRu1EYaTDAWPGBBzpH68O88x7tEF7Vsy0FoP0Z2qjvg
         2rZ0R55/E+Jv7teG1P4kiQPauK7Tk34/qFWFJeZcdRxb7vUdek2oLmXEDNOCtrKTqB62
         fBjprnetSa2fRG2UE90jhxAG2/KzuN9o1AQQEI2nHvTzieKCfkVyFqjfiUFBHLYqTIa4
         H/Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXaLBvfxvZEMWNb5ekYjHOhJ8fnR6abXF7Gya2QLBLb8AtNYIGiFHN5COjCu8R7NexOr8JIF47d5hM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVGcZdkn6IGo8YKNNoq78nwMJNDlhnafDC7hCsfrBkqioGCrgz
	zbn+Ll7oe04IMjPnLIsKC3mXuKlIgmqX1g7Jkzlh3XLhR24VflYkzr1Loli5qgGG96HvmA+y4qV
	WIPjUmTT2Rn3r7Pe/NpcbjgfqU24mvHfPSQV70w==
X-Gm-Gg: ASbGncvz8VlYAfv7iBJoQLkzTUBzzEjuHGBjgy7gzXQRL0gQ6mi4/gZk4E9KgqEJKSW
	kGazvgFI4X9+J85pPolXuaSHVehGcB84ngihBmE9cNuZhhbPkJjeiNxs4FUgZmov8xZ+V6iXSnT
	32e2PZxvqlBsQW0Se//AghPi8L2eL3JYe7oLe62Buy1iuWRSbl2+A=
X-Google-Smtp-Source: AGHT+IHmsF91K1D6VLx4YvpkoZQQE1k1xzhlV0FUEYyz+Ynn23igUj9beuV6WExyljR4D+jdGEc0UrQaoLqBGQ5Y8I4=
X-Received: by 2002:a5b:f4f:0:b0:e63:7084:fc01 with SMTP id
 3f1490d57ef6-e637084fc04mr5253669276.0.1741511905671; Sun, 09 Mar 2025
 01:18:25 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-4-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-4-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:18:14 +0200
X-Gm-Features: AQ5f1JqwlpVv48DTqejukDRuK53dcVgbu-cHC1EtLzGRaEU0x0TorpoDNNMztSM
Message-ID: <CAA8EJpo0073Ub-WNdQoAq0=Zvet8M9aan3e6v9cnKORCTkqMKw@mail.gmail.com>
Subject: Re: [PATCH v5 04/12] phy: rockchip: samsung-hdptx: Drop unused struct lcpll_config
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011826_851520_01E0B5A9 
X-CRM114-Status: UNSURE (   8.00  )
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
> This is just a leftover from downstream support for HDMI 2.1.
> Remove the unused struct for now.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 31 -----------------------
>  1 file changed, 31 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
