Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8543DC64EC4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 20:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gu68vuCvG1ficgSYi3qZnrOOm5pDA0U+B3KOZ9oW4ww=; b=Ys49mdFBWq9Gim
	ypeJ+3mk6Qe/fqLy3HR1hqDPMP/6hojxdhDXNyye+jf2kflkZp+PIKYzjfCDTR856/WWsOmNFIZ+r
	v4Zy6xhBVAqteGCsTnIOvK+C4dgisXbOXkshAKAy15kmEoJBiR2evQyFtOdlEColiEcMbUL25oXaV
	W2l1lzJAJkUdk5scPIKJTXbm5SOVmuNyTtX9gAUWom30tjTDnrZz7Tvm3ifVXvByqXCm4ruFZFizh
	Vq9LTkYPGs43dQHlvLWLCb4bqKQiBFeb+KzVRm7zgvMHrfpaJPsd2pTWhLiaKS5MJQcQJuNtraAi3
	QGFl+0RTxmEdb8MHq+6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZHod-00F0c7-OC; Mon, 06 Mar 2023 20:52:16 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZHoa-00F0av-6Y; Mon, 06 Mar 2023 20:52:14 +0000
Received: by mail-pl1-x62e.google.com with SMTP id p20so11829023plw.13;
        Mon, 06 Mar 2023 12:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678135929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Oux/kKp1lM08/7grSN0HZ+znLDUrmAGftfv0brXoKpo=;
        b=dWF4gRYqHh/tEVbtpDIt+W9gf8vs0vpmqkEL7vgV5h8ShMeeeBg4DOA0W0i7Uw27bC
         fEf2Lwmy99mkXcmn73y7yx3d4WfSl9zmySPV0R19eyzphnQkN7He+pu27N7EX1Ty+B6B
         g2hfm0rRk1aUdaZjK8wN/CJLg5PEiANFT1ecUTf3aMAv+mxEvvDKt1npJEmSw1qiLilj
         rdtQ5ihSPW2hH7xDajrfobWXVZMs3iwwLO5+pOExqhIbGSoD1e5Vpg04/8nkj0ltH6nW
         1v2F/Pd87PpqVvsP4WH9PQqOqZ/K1KobwyEnqw1oIcAJnQdw8+WkovpEtLR72XacW0HB
         MAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678135929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oux/kKp1lM08/7grSN0HZ+znLDUrmAGftfv0brXoKpo=;
        b=Mqj7ycczxz1UMfjke6cKlT+Z/md291wkucU8yeRH+bVtDFC8pIlCI5UmxBKG9IlJy+
         J0shfndf1oXDeiptKF2zgD2HgPArXXI4z2s1oy8TuuWcVVknjay0YXH+odTR4DekV8sX
         gRK/HHZX/Ph0aoG4q0u5DMDkOQBiyhykzXsHZnCbX0s4OLvS/4BZAqgEFjvkBiPMiKlw
         fkY9WaVAvaw3FZkZIo04XLQ36YVgwFfPNg5EepfZ7WuJBfSJSNE+1p83em+VryE/wj6C
         66mGgPIdoYeg6fAljXk+gy7xOIEPMz5HKWK9QGtX9VpeYpN4fP0g6tJ7+ANh9eLxCKoV
         f5Ow==
X-Gm-Message-State: AO0yUKUl/riqz2heq2YlTL32VEILbBvOCgG0Qx3tBZOFDMRmyr5Fq+x/
	ok3/GiLRWoaIItya9FGFM9P95TbSrzCI9W4d4vA=
X-Google-Smtp-Source: AK7set+U7+BjxK9GuSOyIzk3Mz6GfIoDtNlvzdJ3Qf8VW2ImDlI8u9ebqH7AKGbq+b723nC8ffejrhUx8OcOTjAw69s=
X-Received: by 2002:a17:903:31d5:b0:19a:f9d9:28d4 with SMTP id
 v21-20020a17090331d500b0019af9d928d4mr4768103ple.3.1678135929039; Mon, 06 Mar
 2023 12:52:09 -0800 (PST)
MIME-Version: 1.0
References: <20230306191535.1917656-1-sean.anderson@seco.com> <20230306191535.1917656-4-sean.anderson@seco.com>
In-Reply-To: <20230306191535.1917656-4-sean.anderson@seco.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Mon, 6 Mar 2023 21:51:57 +0100
Message-ID: <CAOiHx=mcANqHTk9=b0TGHa2rk9nppnKa2EB1v05uHb5jhzoawA@mail.gmail.com>
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
	Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org, 
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Rob Herring <robh+dt@kernel.org>, Camelia Alexandra Groza <camelia.groza@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_125212_868986_BA55B560 
X-CRM114-Status: GOOD (  15.63  )
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

Hi,

On Mon, 6 Mar 2023 at 20:16, Sean Anderson <sean.anderson@seco.com> wrote:
>
> This is a generic binding for simple MMIO GPIO controllers. Although we
> have a single driver for these controllers, they were previously spread
> over several files. Consolidate them. The register descriptions are
> adapted from the comments in the source. There is no set order for the
> registers, so I have not specified one.
>
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
>
> Changes in v10:
> - New
>
>  .../bindings/gpio/brcm,bcm6345-gpio.yaml      |  16 +--
>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 136 ++++++++++++++++++
>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 -----
>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 -----
>  4 files changed, 137 insertions(+), 91 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
>
> diff --git a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> index 4d69f79df859..e11f4af49c52 100644
> --- a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml

You are (re-)moving the compatible this file is named after, you might
want to rename the file as well then. Going by age bcm6358 would be
the next oldest one (bcm6318 would be the newest, despite the lowest
number).

Regards
Jonas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
