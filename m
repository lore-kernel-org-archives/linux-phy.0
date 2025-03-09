Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A08D3C28B2E
	for <linux-phy@archiver.kernel.org>; Sun,  9 Mar 2025 09:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATjYnJRqNEYlNMLHh9YNV1y4TdHw0AQ2RyCDnz0clJ4=; b=I0Qg7LpOFQZQd/
	MowcYS3D/1qMblE/rD3GeuPYSj8AlTE5w6ch4tfP/qIXmzHVwfo1v1oPEDzXeNroNOIlCbleFpZGi
	+VlCcm3Zn38uYgznwbDbH7QcDderI4TKXT9ficKpiVQQqd/Kan/B3EYdQujc2AhzgDP8RWLsl+o0I
	PRfHlYizBWLoHO9IldL7qPacQt3/muxW7iIiAu/JSwYoF4zWrJr3OOsfhun2mnj7P4ZMPmyTESRjf
	CBJwTyX4krrX0EB3bjfhVuc2PbFea7SC+mmJNq8TCJPGDo4v2mDs4asie3qRriwFOMzFbkKP5gscs
	b/C2SrbLiDchzV9Wqrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCqn-00000000Gtb-1hqW;
	Sun, 09 Mar 2025 09:21:37 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCo3-00000000GVE-19UX
	for linux-phy@lists.infradead.org;
	Sun, 09 Mar 2025 09:18:48 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-e53ef7462b6so2751326276.3
        for <linux-phy@lists.infradead.org>; Sun, 09 Mar 2025 01:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511926; x=1742116726; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NjoirmZ/5qUE6QTY9P4KcVvh5GMm6iUYiIH5ki0k/yU=;
        b=VlI1+4iDWcNVmArg4ZzNUfpAfnSsS8JYXRj9rR6wYdQVFLFzILJxAJDsqouzNZxW7/
         KiEkX00RcgUeN2rHuJmr5dpaX9Wg38PZCfZYgAfvTmYJ8nocFHjkH9LF4RBkQ7sEndTt
         hAP5UqgyrPQWzZnJRawub9WLr6DkolEsflJorDUrTvvrd4LFmrwLJNadivNTpDqN4A8V
         rGo7bFbi3q+M7rH5P8zBPQvl7r/7RXKKVM8MMlQbFwwRWo+cqQ8Iq3n6XFAyyFyOjAgp
         4NVOO1XPpPErGjVDaP130ta2nvOEqVQmIZgBwg6xUw3jJP2UeJE6UeVK+TpA3H9jDqPc
         J7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511926; x=1742116726;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NjoirmZ/5qUE6QTY9P4KcVvh5GMm6iUYiIH5ki0k/yU=;
        b=Fn8b8FyJtticQitfe8IKltfuWKWbRAdmLuayck+K2a6ZEcEwjQRxyHX4vA16ezL3Rl
         6jMOYoveg2PvC/EecS30jkMefd7wOpYbl1ap/kFdyhVT1z6dd3WRN1s5FEp3OjHh70jX
         k78Fz4nWHvYNnbeakdtC//un9sRWdHsnI7FrAb570ZOrvldMlAOcfspwuf0H7uOrF45t
         22nw2h5zZR6ppUxALiR0TYf/HUOBd5TG1pavAf5ZXR9ukXSDmHSTcDnP67Bde+4eBkvs
         IFiR7gMDbjWVXj6ljBW9yVvHZOZhYTbUNvrmAkc4Kmo6X9TR+b7dx9oesIT+iDFCvEv8
         mn2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWK7aKRkmfASatCFbMjAGvRBqNz2OhU9Q6uIRkzOqCITSMFc98Ep2+RSJl5pp1ulYF/ajcCyL7NtgI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzwDFn7IsJtzTEY+bMVWQ5/wg+JJ9f0E/8H0SGit/7pjemSGX/3
	9cqMaaE0f0kbtFRZEejdbGToDRTIW46ysyHcQNQxOT5JdcznHVDu2yU8u71f8IDIl52bHiM/vWg
	X1eKVya7wdRRoGXWmR8YHBwF2COwM7pU9LB9JZQ==
X-Gm-Gg: ASbGncsYf1THFFJ5HAuvoRX7hKZm0DsgZkqk6T2SHFDt9BTjw9mZ5wYtFxK7GZHcWyu
	6ZKqTOAMlbvQpVmwKzfO6k7WnA/5bys5XNWmPofzbPtNxPpxQLiJTXGeosNp1rGq8I0GQqU51f0
	8qG6xTqal4Fb68Lc9USwa4ATRmBNokiCdYNuZ88VC6
X-Google-Smtp-Source: AGHT+IH4XPDX1sv9v/O4fHv7FdLtDOK1nSH/pYUTyPU6X3cGpWa7GU9Du4h4efF7cwLgeAUNmZ/eF/AUnWn6NuP38pQ=
X-Received: by 2002:a05:6902:1ac4:b0:e60:99e3:f8c with SMTP id
 3f1490d57ef6-e635c2fea74mr12941522276.46.1741511926194; Sun, 09 Mar 2025
 01:18:46 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-5-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-5-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:18:34 +0200
X-Gm-Features: AQ5f1JoYXHeMEkeI_3Qn-eZRDS7BsRAZP2eXaZlYLUfhSvlvlxiajsqE4pYYYnE
Message-ID: <CAA8EJpoqRbTgkvQz8E2PpgC9QAsQBHvedY8=xH4haMVMjNbSuA@mail.gmail.com>
Subject: Re: [PATCH v5 05/12] phy: rockchip: samsung-hdptx: Drop unused
 phy_cfg driver data
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011847_315320_D6DD05E1 
X-CRM114-Status: UNSURE (   9.94  )
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
> There is no usage of phy_cfg in the upstream driver data, nor in the
> downstream one, hence remove it.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 1 -
>  1 file changed, 1 deletion(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
