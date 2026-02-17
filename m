Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5470EE909DE
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 17:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9OeJfr1BUe5eXXnQlNIPfqNxeR7HyD8F3vKtL99jW4=; b=39uaO1zRFYC1QM
	S4hj//JdApg31H9vTOnPdhzG+i1Y7P9ow2iVtBOF0BQSA87wSi4hAIpganGtbN1vrhNoio1ehiD6a
	bssClzi+h6N+vvD5NVZ/xys2sTPiSA3Xih+Foaq8qmCG+Cs3KH+DIOHkasMrBw2P1ddlnrpDfnsB3
	Y9ctKrPeH36UoAa+YaQl0fY74whJ5tsTxUev0CxtPpgS6yly9nO/e0S8CrjbRdLlmOsBAyFDSBMAO
	gCHyuZpnzIG86d+1zSu5mQuZieP2HDIfdVrRkUoYYIUCCeEhkKAsCk5pRy16pm+DLcCcYO2lSS0GO
	HJcYCBL7HLZp6ApLP/mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsOWQ-00000008d9G-3t2g;
	Tue, 17 Feb 2026 17:06:02 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsOW6-00000008d7Z-1Y7d
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 17:05:49 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-65815ec51d3so7306012a12.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 09:05:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771347940; cv=none;
        d=google.com; s=arc-20240605;
        b=IGrhPeSVP/k0iDgjpvMwWrFblBloWi6OUDZ+aH7/BdIDnkGA2C7dSCtCfzMOI04dtY
         Exhh555/DEHFvW+dhGfNk546ZcTCEIOl96InEtV7qD6n/d5xh1niJdYNUXp620b4b9nj
         XkFDCCz4kYSks/LGnUI6n9/LF3kKdB2+Y+PAws7zfbEUa25G01kT2sI27HV3ef1P16sO
         KyICAhON6QVnC44aaibpJhMsk/cj9U8mnJbcDyUSC0qdr6BW4RF+ZlNTG7msomhh7L4o
         2avAVVj2fyz/oaLCx6I3mNgwUhx5x8dC1BrVxcgVkp+VEl8aK57h+YY8Je0/1jzLpy+x
         QChA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zXuAzouuRg3toFw3pm0e1jWSf/XIYid2mK4BdyigN9M=;
        fh=fP6WaGOG3pnGNvAeq+PKnQDUNJ7B1VeQL3TzHjW+BPM=;
        b=IHvOvaPaUC76ghRwX4cbNnNvHTWZsBCcR7Dzd7sYnCfv/uRUEEdjCLxEJ/GzQE2Oz9
         5xIqBQ/IlS7Dcqm8iAjatFlDeDpBKzDeUBYnWDjDxMlIjVQYLO2u91ZRofR54XP9H7Kp
         xjpxl+b0+bov9hxzca4eipZjrxCC+Gm8DxswuswjRFQCiSucn7z1JzrgOro5RakJDtUF
         Kcw9lruhx+MaV8vR4h8VrMMA9xmZZnNA/6Ku7g3wVaajmS4e7R/NV7UZvYP3mzQBkgCa
         FwDMLSF5q2IFmBi40Ou8n1RR/sPhcdT3d5JrleJLJ9jUfjjxIoRqndIIHrlCEbtYGsNC
         MWZw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771347940; x=1771952740; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zXuAzouuRg3toFw3pm0e1jWSf/XIYid2mK4BdyigN9M=;
        b=abGbMoK5Q8svfnm42sM+D/yHw6Ta1IFEd2LcOGdPjUugiweo+BDgHuq6RzlJXxsuaq
         HlqAqrLcpfHtgTW0L75cXDh6MhU4CRVFimy6lbK8RbN6gZbfcU+qDOksDzUl3LvdcpHc
         g/C60jSMfM5Oq+GBV3GJmneAh6hikQ2tdWEUlUSUix5/waloKiJ/1S9r0erhEzUtC5P7
         0KceBHK14z08Qx4fHaNYafaIFBwWkoLf7ANzJL50AMhLXCB/7AvKckiQLzo3tqV0/3CL
         7GoNtguYnypQGgo+cPjhHyVCsJs7Ar3YaGGzQsRQH/fyliNo/WaAM1i2+p8pC2ihETgs
         9aEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771347940; x=1771952740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXuAzouuRg3toFw3pm0e1jWSf/XIYid2mK4BdyigN9M=;
        b=QPSAW+hVeDi4Q9/LUpykUWWtRDjbZ/WNnB8XFdpFvgWtHLnnEE2QJkr/Zr6rKRXmT6
         V4LXStl6I9DUb/WiYOkxVaER3CRBtjN+4MLAlyHgsUYOCKgitQyzM0lqhdN61i2LAxX5
         qi6CgyJvkdOVD3z/WHdAe6jSirjRj5GavNYwCFC4EJHv0n5Nz8Tc1+JwCtgJwOzy9ta+
         96Ab0uRu6JrfC5FOdSYcsItRMN26LvDuZx6JVoBLci662zqv/9mEB5/Swd8tbyf2b5LF
         rmn2+/zOKpgie69TksMO/cK3deDfvZgJrAUHq60gV6s9J/aULyOrHmbnjVjp+tSbGo9P
         kbPg==
X-Forwarded-Encrypted: i=1; AJvYcCUgIsegQG9OxgvOpiY4lsL5B6AzYClxDGbSFqQWxIXeaGawSR0gLEpNV8IQdmdFciMhVZMywcPBtAw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9+U0TxAhuSp5kKLXyIwWBjxniwj2rkzwwLEjEeu3tM2GbkIUz
	yqWTuSuV+z5jEpI+ffAOBJed9Sxi4Jbesii7RgYtfh7Pye7EiSxvbnji/Zgl0yGsz/rK1lYdPDa
	S6ZfKd0yYrr7lKCbhPqt7D/2X5QbkrrY=
X-Gm-Gg: AZuq6aKWEDjwhpaRhPKK8+Nk4AR8CsFuY1FJ8lr1+vTA+Z85S7Wig/cU9oRK/IBxFTy
	HokmUT2pPVJVwY5TGcrK1zF6D1vQkGz3SvtWx3jR6Px5j5wtZ3Xd00FALnfiVmOgXDE1o2Q4/Vh
	CabGX6pilRvWN3ov3TdfAUk23x92ZkXRKU7xiZjVqNCzAlSNh/c/tAmS09QxBQh61aA6rmy1Hu1
	hLClBc1VwI5yWxFdJj5chp67WwQHWPxl/ToQwCLhPxBulukZgshG+kPH1ktN5n/fgyucRwPbFn7
	qOwaxQ==
X-Received: by 2002:a05:6402:3588:b0:659:3fca:24d0 with SMTP id
 4fb4d7f45d1cf-65bc7a8ae2dmr5047427a12.29.1771347939988; Tue, 17 Feb 2026
 09:05:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1771258407.git.l.scorcia@gmail.com> <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217-stereotyped-dazzling-loon-f06e18@quoll> <04a3d18b-80cc-4d1d-8657-cb35c4b5b797@collabora.com>
In-Reply-To: <04a3d18b-80cc-4d1d-8657-cb35c4b5b797@collabora.com>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Tue, 17 Feb 2026 18:05:28 +0100
X-Gm-Features: AaiRm53iuI7SH76CEM094B1BEHtAFaoag8i5brp7UnlMPcM5xtOtDulZoBRUZlM
Message-ID: <CAORyz2+MgywrE0v+_UYt8gewq_eZ=ZgTUR66tL8aBbBQU53sDA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_090542_458321_33DBC06D 
X-CRM114-Status: GOOD (  43.13  )
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

Thank you all for your feedback! As I just learnt about the
merge-window patch-freeze
period I'll wait until next Monday before submitting v3 including the
suggested changes.

Mmmh. Now I'm wondering if I should have added a Fixes tag to [1],
that's actually an
user-visible issue...

[1] https://patchwork.kernel.org/project/linux-mediatek/patch/20260209090516.14369-1-l.scorcia@gmail.com/

Il giorno mar 17 feb 2026 alle ore 10:03 AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> ha scritto:
>
> Il 17/02/26 08:58, Krzysztof Kozlowski ha scritto:
> > On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
> >> Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
> >> describe it as compatible with mt2701 instead. It is safe to do so because:
> >
> > You are not doing what you wrote. The dedicated mediatek,mt8167-dsi is
> > still there.
>  >
> > And if you want to describe mediatek,mt8167-dsi with OTHER
> > compatible (mt2701), it is a NAK. It is wrong and not allowed by writing
> > bindings doc.
>
> Sorry, that was my apparently very-bad advice - and I recognize that, as a
> maintainer, I should have given different advices.
>
> Still, check below the (bad, and not enough) reasons why I said that....
>
> >
> > You just added fallback, didn't you?
> >
> > Please wrap commit message according to Linux coding style / submission
> > process (neither too early nor over the limit):
> > https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> >
> > Please run scripts/checkpatch.pl on the patches and fix reported
> > warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> > patches and (probably) fix more warnings. Some warnings can be ignored,
> > especially from --strict run, but the code here looks like it needs a
> > fix. Feel free to get in touch if the warning is not clear.
> >
> >>
> >> - Bootloader doesn't rely on this single compatible; and
> >
> > Does not matter. You still CANNOT remove a compatible. If bootloader
> > starts to rely on this single compatible, you add it back? No.
> >
>
> The issue here is that "mediatek,mt8167-dsi" was never used anywhere, and that
> alone makes zero sense as it is - by hardware - identical to mt2701.
>
> That, leaving alone the fact that nothing anywhere can make use of a node with
> just `compatible = "mediatek,mt8167-dsi"`.
>
> If it is not acceptable to remove something that was never used and should've never
> been there "alone" without fallbacks, it's ok. I'm sure that avoiding to delete the
> one line is not a big deal there.
> Also remember that we are talking about an old SoC that will never see a bootchain
> overhaul, nor will it see new bootloaders.
>
> Though, just a small note - please please please: when we see new contributors,
> especially when they're community ones, can we try and encourage them to do the
> right things, and follow the right processes, without being harsh in any way?
>
> And P.S.: Yeah I know you haven't been as harsh as you can (rightfully) be, so
> thanks for that.
>
> Luca, I'm sorry again, at this point - it would be great if you could please send
> a v3 without the removal of that line. Just add the fallback and that's it :-)
>
> >> - There was never any upstreamed devicetree using this single compatible; and
> >> - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
> >>
> >> Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")
> >>
> >
> > There is never a blank line between tags.
>
> Yeah, agreed.
>
> Cheers,
> Angelo
>
> >
> >> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> >> ---
> >>   .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
> >>   1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > Best regards,
> > Krzysztof
> >
>


-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
