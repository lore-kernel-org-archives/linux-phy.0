Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A37C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 20:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZnDUkpgT8ZlqmFTIxz0o8mvQqIFT94zAv4u7QPjdec=; b=wFlh3ebPeit78r
	gjKeQ0T9I9BLryBp2QD7fwiXQkJ8HP5AbQrc8Atu4B4KTBsWRzA76SDTbmaSfrSMhUUunC6ui9p+G
	jeuR9m9jAq2GKKRbTbpvCQf5RnXnbtj8W+Hhfwr2QS2kGcjBe0qK+nio5cNKOndeMeB2cRZ6pR3fJ
	zb1pEViyDI95pRZl+Qx5TxVCZT9N7iyZh922pQyEZjXyWKcFOaiuoGvZ+ZOmvUXj1IWbJCtNGdcQ6
	Ov2OYmTA3q9IKapkYna283B50AK3+WHXSaxWkPXUeYTVtF6q6QfqVphRnYjoFM1c3Gwvvz3sdq7g7
	7ivF+Sz2TMn7KNWdEKKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsqB-00FoYT-Vf; Tue, 17 Jan 2023 20:45:55 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsq9-00FoX0-8Q; Tue, 17 Jan 2023 20:45:54 +0000
Received: by mail-ej1-x62a.google.com with SMTP id tz11so13870662ejc.0;
        Tue, 17 Jan 2023 12:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ihL4wd9bgg0XP72Mx30UbJj4Y5l/3v2lnIC1mu3yIzM=;
        b=MeUY0XkAuz6KNgchkIQhLxnVvHN8NQSQ1bXfSzywL1h8nsxv1aVnohPQkesabBVQ3o
         HEQLkUz/2cPkAoeGlZIgBiUX1VvprhI0dM7JwK2lbzlk+i79ZDbd/X3mxMvQr9g5R073
         Rw5kD4UmpXFJIWdn+Fwj3Kkw45NSaBjvj2sc3b+vS96iNZf2aM9gq96bZG2b5GHRUz8w
         j5TJvHa9ApyEAe7JtTI72LaVdyrFpBDHmNUFHX9fa8WGVQ5kEcRIARlVNZQdh+mkWK3A
         Ql4mN8Vfe8dK3fx+jsfNHcwmNgiLFWOHd278LxCKCK2v4tGbQcvr3BCyT08HGOKSD1qg
         I74g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihL4wd9bgg0XP72Mx30UbJj4Y5l/3v2lnIC1mu3yIzM=;
        b=mIvsrHVDl/LsVsoDWvVcZo8RKQ8WmkOXrmeW0pgrp4RVWHkxXfUDamchFM1iChRtZi
         RpJNPROGsf/nAigVA/5Pg7DWKzIaPwD4cJBVp/vSSHQIGt1uUB9EJ9kQBppjVIH2sgZx
         TBDEunH49m1df1AJY0Vr3TNtz6+EnKL4pEID8XO4/rhk5KBRAlzRLeU2VcgO2gyeBvTY
         GUCIpQ5wQq0JgGIlvkp1HkczqLDG9JRL0L+hUujmJgjUAYsLMI+y6cjsrFAazwBM8qWj
         fgycPJRo87Yig/k1NWymaYmn006X7Y/EInjv/YmwjnyjcCl2sOx3MSg24egZ0FSWyKWt
         MpwA==
X-Gm-Message-State: AFqh2kprLHaLqZBaH7XOARz0fBd6jUlZ0SIIrAtISNhtK4Kn3sxbpjsA
	fO+YVAxagaS+VMtYhlqKheMbnw7IekG9DudSCg8=
X-Google-Smtp-Source: AMrXdXti88KkQz7vl1Pg56JPd5XOUBWWph8cF2lAvc07qS7pQ2SUYzYXymWhbvmLvwR8QGuubv2uDe+SaBq1Hqidu+k=
X-Received: by 2002:a17:906:5658:b0:84d:4d82:1101 with SMTP id
 v24-20020a170906565800b0084d4d821101mr348296ejr.77.1673988349950; Tue, 17 Jan
 2023 12:45:49 -0800 (PST)
MIME-Version: 1.0
References: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
In-Reply-To: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 17 Jan 2023 21:45:38 +0100
Message-ID: <CAFBinCD=RMR1Xv7+TKAqoipuNzA235Zf0oNH-xopUj2VEtV4tg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb2-phy: fix compatible string documentation
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, linux-phy@lists.infradead.org, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_124553_318923_418C57B0 
X-CRM114-Status: UNSURE (   9.11  )
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

On Mon, Jan 16, 2023 at 9:21 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
>
> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
