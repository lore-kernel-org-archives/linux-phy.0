Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 548CCC7EE22
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 15:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRMGTHPRa3dktsOJOgizQT59i0xJxjIXexw5sbaIUYo=; b=TOnankWgHytmjg
	VSaC1fE5ZmwXoIDLemOoOtsyDGPXOC+vRtwTJOU/JmleGzjIi4V/Ljq0u9pucW3pgKcC9+ikP5+Zi
	Onit7bDW63Uwrik/KN9eI+mTIuG/wnq0NnIBZQ5yh641ElpOQex1ld6U40e4TsJjOXoP2NotTNavp
	0CLS3xRaS4nIVsHcz7PjjIP59VAE6186UGVdUD/1e5w/ijl0bGycVMsW+B2/47C4DmwllEKLS0eqp
	UiBtKfy2QRtGpmOjTzj5aKv/e5hYyeP468V0hJRgd+/ZK65MnR3D4DSgdExMHDGKZXBtkuO/20iKB
	H/ixLDYddCgRVGmy6Idw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puxVB-00BD4M-2V;
	Fri, 05 May 2023 15:37:46 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puxV6-00BD1c-2v;
	Fri, 05 May 2023 15:37:42 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f199696149so13768015e9.0;
        Fri, 05 May 2023 08:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683301056; x=1685893056;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MMQANphqIg54PwzmueerEA1nz6ede73K9wjbTi5bw3k=;
        b=a3xV0hgeH2+HOW7KQ0n46spF34Mt6cZU8UE6reMTk2Op3pdqgwaIFTbRbmk+e/aQE5
         RYAMOUEy+fGor1eIm/k7tig6rEzQMOVfL+NVK1QXrIVSfsQt571I3B/Zi3VXe1weaVC/
         4eomzoHkj+3Vi/NW1q3m/SEAtqWO3jFWjEISvcnd6qBERWdECqpy2CgdFDUJ+tyIH+2S
         TPs5UtZBwBc/Fnz+SGWOVXs6AsnX8fEaUzPGEI3GH/eyteKctZoFKyigjIjqhB+FSMKh
         k/g9upF9q7vnODKBoVtt7O8XVD8aYy+d5l91r51H/v49ETPGi28RYnTNUroqmb/D0HmJ
         jaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683301056; x=1685893056;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MMQANphqIg54PwzmueerEA1nz6ede73K9wjbTi5bw3k=;
        b=ADh5dpvETmUK3aapYyi9YHsax71r46bG9ldBOicj14RpgCxQQ8ev365jllZzQjDRJM
         nHc+B0AAZQHmnR986hbS87uGgwbS+lTF6M3vqtwUN4FvLgBWDsXIJClezG2BdfZipcG/
         GctasBmeIfLxh05e9nc5obHSf5nk5PzKgoCM95gMpQ8KxWMt7zimL2O6RE+kbgU1xbGI
         x5HWbeWPEhabI7TSlvoOD6GAVVrJ20yhVDUYf2tJ8pZDc6X8b920vQWdCsmyqddBAgfV
         4nPm3ZXpDdp7QEFYWDovPTszx8skXRyRaN0Hx/ueQt45Uom8b0F1zpsy71jv8MN8kStt
         D9Iw==
X-Gm-Message-State: AC+VfDz6ToqngYeQJzS/GMRaS2xNiKoPjmOr8fSvKDrihJEGvymtU/VG
	swyXv/PvodgeR0coiq74zNQ=
X-Google-Smtp-Source: ACHHUZ6YF0JN2q50Mb4Rc5IWpAQlQaY8t82WbF1TW53ociZHjEHxERnMkxklnJoCQ9mt5l5ZwvQpug==
X-Received: by 2002:adf:f2c2:0:b0:306:3be9:6ab with SMTP id d2-20020adff2c2000000b003063be906abmr1905923wrp.54.1683301055966;
        Fri, 05 May 2023 08:37:35 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id l8-20020a5d4bc8000000b0030631f199f9sm2696499wrt.34.2023.05.05.08.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 08:37:34 -0700 (PDT)
Message-ID: <db9c3190-28d8-199f-f4f0-a12524d0451e@gmail.com>
Date: Fri, 5 May 2023 17:37:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] phy: mediatek: fix returning garbage
Content-Language: en-US, ca-ES, es-ES
To: Vinod Koul <vkoul@kernel.org>, Tom Rix <trix@redhat.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
 chunfeng.yun@mediatek.com, kishon@kernel.org,
 angelogioacchino.delregno@collabora.com, nathan@kernel.org,
 ndesaulniers@google.com, granquet@baylibre.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev
References: <20230414122253.3171524-1-trix@redhat.com>
 <ZFTMPWp8LhwA9uHz@matsya>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <ZFTMPWp8LhwA9uHz@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_083740_941010_B25BD7CC 
X-CRM114-Status: UNSURE (   9.05  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 05/05/2023 11:28, Vinod Koul wrote:
> On 14-04-23, 08:22, Tom Rix wrote:
>> clang reports
>> drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: error: variable
>>    'ret' is uninitialized when used here [-Werror,-Wuninitialized]
>>          if (ret)
>>              ^~~
>> ret should have been set by the preceding call to mtk_hdmi_pll_set_hw.
> 
> I have applied "phy: mediatek: hdmi: mt8195: fix uninitialized variable
> usage in pll_calc"

Thanks Vinod, that was on my list for today as well. I was a bit puzzled because 
you took the patch that added it, but I wasn't sure if you would take the fix. 
How do you want to handle things like this in the future?

Regards,
Matthias

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
