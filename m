Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4D34103E168
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 12:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTApiumqCt/cwzuz6pwboJ404dMU0tdXu5wX/Uuh//Q=; b=RNPYlacDWc+Z3o
	peDfvPXtQq8NF/uIGizahv15bqRu6V5psj7XwZYUCs+JQ8cTta6i8ZgZ9OYy9GZqgmOHoT6tR4y5N
	3P8dLUaysdh2NeWz1tYfttZL16ORJaJ7szogslH857qJXt0nvnh34S9w6gMa16qcClgSxLyR+NOT6
	aufea7GYgAzzKgR5hDJmOwdXoZ/iAAB/bLESK6Clx638qdgzlvvYYt7aTCC/qWT68EXJ2qUADputX
	qzhWpREdSI3GMAti4RdJDMusb6pIPDeSGdUOHbAFQZJF9Nxb4RiKaJuQrASTpVhPLi8oR02MwK29b
	3nzCkw3NTlnEqsNUS3/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qJb-00000008QUi-1tJG;
	Wed, 18 Mar 2026 12:47:59 +0000
Received: from mail-vk1-f172.google.com ([209.85.221.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qJY-00000008QU6-2EWF
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 12:47:58 +0000
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-56b679e72d9so2072691e0c.3
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 05:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773838075; x=1774442875;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DCOIuBh8oPxYZvoMAhS74p7vRvZQwzuvijT9kB9rGXQ=;
        b=N6yJtICkvirT0jkNdetoL472SPn17ndfrjE3eKl6tVVfzhWCmf771wSZQeAQLkeEb1
         cwWpqJRBmg2vsTVyn4rZlSlFO6yV/TA3y1Uxkn/JLqJXkVDwwafAnCs51sQuJKK5NPz2
         nTqURJpIGta0yIXCMcuXcQ9IW1qpyHyYcrf1kz8FkrFBoqqZuD81Py9bKe0fs8qyJeEz
         qti7fDPB6/03IAYbf+KWnKqdlJKMSc/YYQgsBm64Mb3G9LEj6L/g0cVah6tKuH2ZzlHr
         PYpQ8lI5DxVnboybX/taprP1TpfK2s8XRaOmyYNKbyAWx3IM5BgRmbm7U3Bw3zcWY60T
         ZuNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqd/Id+BKU5gnYD29ZdJwAV6WB6lBsI6fv+wJzg9xOQrvhC+C2+oDbCpdwdcnDu9NdDBSF1rEaADk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywdj14dkgUVqMNjoNp2r99NEmSv+kT5v2Gclx89LCZ+c5h0FZb/
	Sgq24sTmzgsPu07lCAzNDplpUfsWO3Sic0uHFKSZCCRWsj8UN8eUW1h+xl8EuwYd3fg=
X-Gm-Gg: ATEYQzw2x53s0YVTy1tt3Wat5dMA6WUUOFkMlH17eOdExZBMWZTESOFDxyoQ/np1DTl
	5NzErsM53X+EOAIjgK/jbY0/84vLirf+b1co8RVKqhRlCp5gkFwyxbm7SJPSpSeXCRYSf7DN7Q8
	DpSanBLavpMj+Jy0KNhIJJ9oS8bsCP1fpOOpUCbaUS2/zyy8CRaEpMTKjdujjXZ3/T0sLLMxjCT
	A5ISaWbNasi+h5aqhjypmTORgbomMipZKcLW6J60bU+0ycvOakYCo4/DrqJ2hUOdoBqJnG0Gkum
	2y3lqwjnMuOxDfgFCgrXSLPOpmoANhE6ayw0VuZCJnH1DMQ+EBiwAIRWB2Vdu5vD7okifjUn7aJ
	P0BD4ptPpWmGu289VAnxkQqIObeHNm7qFl3ZtKFTDVUIO6Cq1vUIZvZQKGTjFIX/eG7JuxDr2MU
	dqqacVoOtroiV1L3kTTHK/cLK509Qiwitv9B/rhs8rq7esNKD1z50JRT1KsAK2xO+B
X-Received: by 2002:a05:6122:2a51:b0:566:eb31:4715 with SMTP id 71dfb90a1353d-56ba70677e8mr1776283e0c.8.1773838074782;
        Wed, 18 Mar 2026 05:47:54 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6e2f265sm1504904e0c.2.2026.03.18.05.47.53
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 05:47:54 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56b679e72d9so2072679e0c.3
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 05:47:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVyNbuyI+tOs4eT8nFm9Y8JnUhwULCho5pF7yBL0xPvmFieRcvQc2fKYzimcAnEbUFfvIIwwhv/z04=@lists.infradead.org
X-Received: by 2002:a05:6122:31a5:b0:56b:8023:b86e with SMTP id
 71dfb90a1353d-56ba713b035mr1941136e0c.11.1773838073393; Wed, 18 Mar 2026
 05:47:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260318120102.226118-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260318120102.226118-1-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 13:47:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW1ROF3VdKzXVNeKtPZPEwX4MHD-kqdunrNYKBprPgPWw@mail.gmail.com>
X-Gm-Features: AaiRm53ywqYqhV410sSvk0RbQ_hDYxt7FsUBR80-zy9YkZunCX5lwuW8kMg5KXw
Message-ID: <CAMuHMdW1ROF3VdKzXVNeKtPZPEwX4MHD-kqdunrNYKBprPgPWw@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR string
To: Biju <biju.das.au@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	Pavel Machek <pavel@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_054756_577705_8F1FA52A 
X-CRM114-Status: GOOD (  16.18  )
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

On Wed, 18 Mar 2026 at 13:01, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Fix a malformed MODULE_AUTHOR macro in the RZ/G3E USB3.0 PHY driver where
> the author's name and opening angle bracket were missing, leaving only the
> email address with a stray closing >. Correct it to the standard Name
> <email> format.
>
> Reported-by: Pavel Machek <pavel@nabladev.com>
> Closes: https://lore.kernel.org/cip-dev/abp4Y2FVspUgEpCT@duo.ucw.cz/T/#ma80454df129c8cfcbe48d75f3b4abe697925c6f8

The "/T/#..." suffix is not really needed.

> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
