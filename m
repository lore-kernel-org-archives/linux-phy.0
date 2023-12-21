Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE9AC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 16:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v389pmrihqshXZe+3d0193X5sSkSC9aDvR7S0mprr20=; b=hyFO9JayJlVbu4
	HPCKcIpdh0lv4HpDrCWouKcRClTcnVPMNl53PnOFfFeBY7Q6/U9f6mpuMCfrMpJ3uNlvXlMPIGpsI
	ZJ+6kA3uUNwLyt+Gs/39dz1iSPKdZfmVK9mH0PrC4AWBRT60Ajww26Li9GmvVNNAtxfCkpHEmQpvg
	tcu/F382b/wWCSa+CsdHZn3jeHQrElmlqjN0hT+sY9ecfTqiSQoKOAk/G4i52561ka6ArMrjNlaAf
	azj+Ysa7b2TmWstbGgv/go7YRbVEBhrVCAsTGgi9quoBVnzSNJ2Tfsyxp/rIrB2pkjHdMEO5QVr58
	jTTV07kPr2cm6pF6FJ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLvH-003Vbh-1M;
	Thu, 21 Dec 2023 16:29:23 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLvF-003Vab-0V
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 16:29:22 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-db3a09e96daso922901276.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Dec 2023 08:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703176160; x=1703780960; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BjPHcp5yMT17ibGa6gTs1FBCraAtjJ1c24ScrpYmDdA=;
        b=nS5R0mQokyNmS64CG8ZX0Ug29zF4KH+CVVOYQXmulm4SdnQgl8Fx7mFJXQCWbwKHK9
         pjOX3+UzqrIqqoMR9+Y7qpAMRNGVjHNvE9/m3DlHqnsRMjuBt9h29H3lCDypPt3vYtL/
         SMccIa/WYWF1c9HHhKUiBHdTAkRznKNzaoBFyqvCZC6dEusQgDyS56RmJ7ZUuPon7zRQ
         JJF+J2RY0aGLttUvamHJIq7wjPWOZbGUH1Uqe8yr3FEm/TTDgQlcWqIEHXZ4imsaIHgu
         E7sfymvBlbLmgwJcI70rUFQhHFaA4zvHanG3IFinMA5W4fuM+ik2pUj2Nfs1y8w5NlPh
         TI6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703176160; x=1703780960;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BjPHcp5yMT17ibGa6gTs1FBCraAtjJ1c24ScrpYmDdA=;
        b=oYIc0yrNl3T9uSfREJ9S2t/xThr4gP74mRD1em3xByVTPO8qTiuZXCbBseVRJ8nxh9
         AOlcGNpyLVjHjHtzynfTv5zzczYq3hXNi/fgeIIr7HhoYxnbC2GM/ObpxZVjZ0/orCuB
         ckaSu53Aer/kozRWLpsquLoG5txfEPQwRWU3zZB9Budfk1fnc/muwkurArBQLbe1kQHk
         2ZIVkOvjRFByvzzxv9GWR4QVvCrAhFr/Suz45uiA46/cK57gsxhGyJBZ98xOH52g5RC2
         JCR6WcfIcUREiv6+Cc1A+EIx+qLG4qm5cVXO7JDIyxL+bI1Jbmpi9QHjuOpJa6Am1Eor
         8RPA==
X-Gm-Message-State: AOJu0Yx8wdymazvWBhZotKbNJce4InHAdH3gVowDS0hWyUfZ79lqjG+1
	2FwY0THAdrGwjtdJ9troUUQNZH4+fu2Yzg02NxP7yw==
X-Google-Smtp-Source: AGHT+IGVLs+CQ+PdC7bTznaHnCI5bDzf2xPzHfAm2xC8pi3ssBDcAhHP2dXDVr6YIcp4bw0t0xdhtZqdeJkJ4bW6TGY=
X-Received: by 2002:a5b:4b:0:b0:dbd:4c39:30bf with SMTP id e11-20020a5b004b000000b00dbd4c3930bfmr1286372ybp.98.1703176159919;
 Thu, 21 Dec 2023 08:29:19 -0800 (PST)
MIME-Version: 1.0
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
 <20231219-x1e80100-phy-edp-compatible-refactor-v1-2-f9e77752953d@linaro.org>
In-Reply-To: <20231219-x1e80100-phy-edp-compatible-refactor-v1-2-f9e77752953d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Dec 2023 18:29:09 +0200
Message-ID: <CAA8EJpoZDJqJnCvPp2YJcCJd5a3Z3droe=F3oXkiAR-O8KDqGA@mail.gmail.com>
Subject: Re: [PATCH 2/3] phy: Add PHY Embedded DisplayPort mode
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_082921_207595_36B3CCA7 
X-CRM114-Status: GOOD (  12.01  )
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

On Tue, 19 Dec 2023 at 22:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add definition for Embedded DisplayPort (eDP) phy mode.

If we leave the DT property aside, is eDP a separate PHY mode, or a
submode? (in terms of phy_set_mode_ext).

> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  include/linux/phy/phy.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index f6d607ef0e80..bea532711906 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -42,7 +42,8 @@ enum phy_mode {
>         PHY_MODE_MIPI_DPHY,
>         PHY_MODE_SATA,
>         PHY_MODE_LVDS,
> -       PHY_MODE_DP
> +       PHY_MODE_DP,
> +       PHY_MODE_EDP
>  };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
