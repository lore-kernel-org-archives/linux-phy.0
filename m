Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FC49C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Mar 2022 09:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6y+qxXfnPnNtsSuskYz6gfNIGHmnxJ2c7gJfqQ1rWE=; b=N9aaRL+nrP7O7w
	YX/jm+GhUkK0wiODItFUM/nBKGyaMXyTjHI+nXIrp3dkU66FZbTYhN2PMTWp9rBdvvgjn6oIEzLIF
	JQp9yVvm7hgHUca4Ef87Kv9xFcBGTZccdQrOOwMnSeaJ//F6lcpvZSJLdYDMTHtD1Um4ytTJ5TAHg
	8ysJreylnGVBmjo/sUN8WOuEWFGFaL7KuDtYzDPBFJgV6dQOkwYwcSb8ErVOVMUW82uJR3pxVsybt
	BQ1yFGUMCgHVcB5rRzSZGeajRz4hyANwYb64+TrcfKV8tgJKr4R8J3wgQPFvQA5ucU4DfZGfCSh2R
	V7LkqdKADdKwa99rcDkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nV8WT-000vLH-OM; Fri, 18 Mar 2022 09:03:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nV8WI-000vIt-If
 for linux-phy@lists.infradead.org; Fri, 18 Mar 2022 09:03:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id i11so5825477plr.1
 for <linux-phy@lists.infradead.org>; Fri, 18 Mar 2022 02:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=odQm7JC7x6Af6z1xpDrwW1/gihmZD1Kc4UPnG+M8gbk=;
 b=Eadxx9IjG5BtCfRNZOsVfpiUvgX+GSL8Aib5ZyUV9lgIHPkzS++xIEPd8SQvD7dr4O
 lRMCKC3+HcqKnSO+owRwtnjwu+Szmu/11TRJ3PrQzIq5zE1TNLmIreTHFWMS5JFJw8+O
 paZrWzVmW1F4FOVuOGfDieu2E/8E8KMDToCKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=odQm7JC7x6Af6z1xpDrwW1/gihmZD1Kc4UPnG+M8gbk=;
 b=zU0D6weYsqDUGfw+4I2CtdXB5gaEcCybJjfy0FYQqygfYG1cI3iNyNYj/wgvJDL4Gh
 Ev+5CCJ536nJLzpvRvR37VWnOmtnBoDcyTqs+Oq4kaRf1aQUdJSdZTr+Qv9WRCEjH4wi
 tLY17j3rfAY92WX8xIr+o4llY0Ul7wtnPoicpXyc45SeQ/fu9G0w1ABuKHVKvepDg5Qw
 KtbGqQTED1QDC1kuS1w5KwBSxW7XmRjbNly4TU6rP8zxM0SogT8+1M9iupyjjQRKy5ns
 25pkdjwYR/dIIacxGeDqVJvZtnTfe2+AB6GiFZr8wgtZFV8Chh/A02QKNh5BL7rjt07s
 dovg==
X-Gm-Message-State: AOAM533dUDP0IdM7THEgGtszEIvd2PraZ3EJ+tT89pWXdj8RwG83Y6CP
 DKTrsCrw1d5WbCow/Aug9ctHD2SnUv+Jy17snqyDPw==
X-Google-Smtp-Source: ABdhPJypgGRBlo6a3uR28YkQzfvVWixDNkdtCp94bBE7F/dwhU59fOqpvNDP+GJghMH+n/vIuAJsfN6r7kejo1jOdfM=
X-Received: by 2002:a17:90b:4c08:b0:1c6:40e4:776c with SMTP id
 na8-20020a17090b4c0800b001c640e4776cmr9989598pjb.237.1647594215955; Fri, 18
 Mar 2022 02:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220218145437.18563-1-granquet@baylibre.com>
 <20220218145437.18563-18-granquet@baylibre.com>
In-Reply-To: <20220218145437.18563-18-granquet@baylibre.com>
From: Wei-Shun Chang <weishunc@chromium.org>
Date: Fri, 18 Mar 2022 17:03:24 +0800
Message-ID: <CAPrDo5ht246dgPJmJBx7Xc6e1kqdw54C1eDDqMA347ZwRtAO7w@mail.gmail.com>
Subject: Re: [PATCH v8 17/19] drm/mediatek: add hpd debounce
To: Guillaume Ranquet <granquet@baylibre.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie, 
 daniel@ffwll.ch, robh+dt@kernel.org, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, matthias.bgg@gmail.com, 
 chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org, deller@gmx.de, 
 ck.hu@mediatek.com, jitao.shi@mediatek.com, 
 angelogioacchino.delregno@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, linux-fbdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_020338_670367_121F7394 
X-CRM114-Status: UNSURE (   6.94  )
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

On Fri, Mar 18, 2022 at 4:49 PM Guillaume Ranquet <granquet@baylibre.com> wrote:
>
> From: Jitao Shi <jitao.shi@mediatek.com>
>
> Implement the DP HDP debounce described in DP 1.4a 3.3.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

Agree with Rex. The code is fine but I suggest including Rex's info in
the commit message for clarity.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
