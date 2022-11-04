Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E18C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 13:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SsE3clRrbgHnY6HT3zKCUtE7l7yOqxYjXSDJce51VQ=; b=Vjskw4tpfdisCE
	vQzNPOtISjCA3OYH7KXcwjNHXsnrrPgDrgm+1s8bnBzfobBKOPxzr1zNoBHuT0rmT6XH4AZggjSMO
	DsuzFyPgxe7h/edYM/o3/TqimSHlXzzoiu1aiXIl+Tg7rhCXUZjwPOFgFNomTnww4R++P+5Vl1frE
	cC5IuNa3io6EloO/3e351vrupY87FG6G7gEI3V/x88bb8M/SfvTQGXXVnn0s73WJ+cRRrHTi+Hcx/
	K0nwz0JcNwLahesfHOffUpwtBpMGHn68f/clDF2KE/rqOBZF6nh4c+0n7LP+Ask1aK0d7+ZF9d0co
	s+UkRIpH9OOtD7xyQifA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqx1S-003mgh-W8; Fri, 04 Nov 2022 13:46:15 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqx1O-003mfP-Ex
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 13:46:12 +0000
Received: by mail-qt1-x82c.google.com with SMTP id h21so3038214qtu.2
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 06:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nNOoeyNPbk4klwxXRT+oWl+4JUP2MxkRrYLhtJXAbr8=;
        b=y5cyYq+ECxL6vl+kFY5grLw7dVgw/6YPqpqGm2pcr/O2va4IkgEIltfaC/1BQNhGCc
         5ns0noh2pnxhErcjx3BxpvpCdxpNsfKRsKnR5zz4HUkAmuV5Rg19f710w9L09LFzKec9
         r66nTrlfIBjRASVkCbiMJqPJ6u7fG0njn2PlFBnhxiMdG4Chuskz6flV1oYPCYXtVrGz
         XP/JHucGnGIoZu93Xif8VxKCEWeCBZyIIiFTjUxsozZM4w9xQB2J+43w0eX/vwWNNASp
         bL/7TcRZ00gPunemlpJP/K23L2MhR2cCV0uQ4oKeaDPBZmf2jV1LPZs20seYxmi+HcoW
         6nIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nNOoeyNPbk4klwxXRT+oWl+4JUP2MxkRrYLhtJXAbr8=;
        b=DBG4J7if9Iyatbo5p0dlsaVCI9097XE0T+mJRf3nw+66CZaf3/SXXXfh/RVgotkFPb
         kPGmH7QEXCRAdQySSYoKHqOHTKeUQ+C+a3S3MU7a0+YQd1V0v+eCEB22rBHqiKngSQKT
         wrOiYMI/vUzdgp9t1EpstZBAUNQ6bny0flObVgXPqH5qASXRVgmGwIozeZaguTL+1EZS
         SD7wqCCFGnaYIZC7oT5nmfBjs6unH3VmI/V7fj+fM8EeizjW8FhkwL+JSTrkvEd2MVun
         clhlk+o5JB60mkVTKn6cT9+QoNTjXso3kQ1IfTHvuTXn9RB8pAFGDlld81M08Gf2eUK9
         V/2A==
X-Gm-Message-State: ACrzQf0hX7w5CZQe3pYMrW/4onycarOd5RqE2fO3P9Iis4jQUGYG34Iq
	yL/hMTXk4NgYqVqgy4Kfnmjkyg==
X-Google-Smtp-Source: AMsMyM5z68VJ4ZL4fh0QWV5cz9FsjGkFdAAv2iMVmsPyBZltry4swkjwL6vej368Hj6i1GkOsBsxUA==
X-Received: by 2002:ac8:4a0a:0:b0:3a5:33cf:c1d2 with SMTP id x10-20020ac84a0a000000b003a533cfc1d2mr18416625qtq.548.1667569569695;
        Fri, 04 Nov 2022 06:46:09 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id bi11-20020a05620a318b00b006eeca296c00sm2851191qkb.104.2022.11.04.06.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:46:08 -0700 (PDT)
Message-ID: <9a6032c9-7784-3f64-fbaa-c18982d25a2d@linaro.org>
Date: Fri, 4 Nov 2022 09:46:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [v2 09/10] dts-bindings: phy: Add Cadence HDP-TX HDMI PHY
 bindings
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, kishon@ti.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
 javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org,
 jani.nikula@intel.com, maxime@cerno.tech,
 penguin-kernel@I-love.SAKURA.ne.jp, p.yadav@ti.com, oliver.brown@nxp.com
References: <cover.1667463263.git.Sandor.yu@nxp.com>
 <f1a558c1511f310475002ed7a18d4e0406318b63.1667463263.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f1a558c1511f310475002ed7a18d4e0406318b63.1667463263.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_064610_532662_CA7B9F09 
X-CRM114-Status: GOOD (  10.54  )
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

On 04/11/2022 02:44, Sandor Yu wrote:
> Add bindings for Cadence HDP-TX HDMI PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/phy-cadence-hdptx-hdmi.yaml  | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml
> new file mode 100644
> index 000000000000..edd7bf1c8920
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml

Same comments apply as for other bindings (also phy)

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
