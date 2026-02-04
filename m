Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BADE9D401
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11pDMKhHCsKNKapfj2tzGo8s5tOzVq5WTQ361WVN4gU=; b=hwcywA/sgUTV1R
	t8kdtn5CmBd2bm3MtImI4u1VCnFAcYe62Xy4ATTrUcug9H5VQ+ExH9LgG1m759/FyjQ35CaWz/crV
	ag8cd5QGMasfP5maVVHESTfd/CqqP6jQiQxIKD6WaPRVSFHfyPsV4DqavB1DMc/1/ev/vEwJt7zGH
	QbY+ond1NCM6Lvyo2ZrTW/5y84duyTkqZZUs9NzdFf419TLz6nGoNO3f1vWE3M4N2m9PLfk8EJIUT
	+DR2skSiXk9E4EWItLGCaIEFOF0iYrKITwYkPDd9Hdb1DwwkU0q7I5irtr1JUZ/tAX6RVObLXqg2b
	UPi7xC9JvmwhZpkbY47w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vneth-00000008g2k-1Jzz;
	Wed, 04 Feb 2026 15:34:30 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnete-00000008g28-2Ees
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:34:28 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso10325112e87.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Feb 2026 07:34:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770219263; cv=none;
        d=google.com; s=arc-20240605;
        b=lIfDi8DQpxnxMVKToUEhQc6firSPHhpYeMFXHeX/y6kpyj0idXXmVzorUNtVNvGPrQ
         C6Bc09xunZ/mlxDe+KJM7Ke7m2aoMOBcFXc/KWfXyZpv8gjESIES7VTTM689Y7uFKDft
         JL2gR5+sDJeiErtiOz4fwmEvaNYojWIVnW3ILblDWuzky8qVqkNg2DNxI4+ecLrnwAEg
         Qcyr4/ndOKeQ0okjXCLJdVXUSEh+E4vPLGsR9pMyB7SJ28492+YWiuZ8swtjDDXw+O+T
         9YEXDgwE1gNQ03Luay/CgtlwBAO01pHqJBxqhl0zTquS9BUHoMzlXbCdz39C0ORQ8SO2
         bjkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qkOzGCctQL30LKjh61z23+b/2EwmO+vcdgiQ7sj0+R4=;
        fh=3VIkuYvibzYxDg+qDvRm/lqWFrGOOPf+oepHL8ZniCc=;
        b=I+SekNhdQDWgBveBsj9fprpI/245imeQeuhi3/MG0qvi0FcTVir/akj6XLnPqlGEHb
         HrXumkEz0Ee9whDoQ/+/HhocE/1bujun2IO5Zh2t0BwJC0lcWtLpwfmwMHIPGX9jpRQK
         g/SnjyM080FQqzsVytsVW/IOZlgLpvFnNTzFhfA+nKlQMhCa+rlLzdwo8ou+LSaHMsm9
         yr6AxA5ebdguIhUpJ0ZG//7biklnlqiqFwAtBRxJV4ZJRvtCo0AH0d48VBAaTXzjPRKH
         zC5jw7DpB5g4Uyi4RBzSMBJM6Ebp5wV+daCyTy0lc4wsMDE0eOLSfDWZ5lPWneu3W4HX
         G3Hg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770219263; x=1770824063; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qkOzGCctQL30LKjh61z23+b/2EwmO+vcdgiQ7sj0+R4=;
        b=r9X5vC8uCYtJv4l0uVFSD98ccIiCF9oT8Xhc8BlgMOkhzBrnzPRcm5cohuBzjshj86
         HNLy4Mqjn+RD8Bcl293eoMPn233q65Tv4vJOJhdV7glD/GG/kLnB1zrcWTGCXWK9Wx0q
         XtVUfj7JZU5GovLpp4zp5O/s0X/7kuPzH0820MbNTgZ9MdLwPaXhHjuiQtSi5JGNap5d
         lxxgM0FVzhdgU6YGPHkC4VqSbk3GirZY1O+taOpkD6Wxjvv6XS559zAoIorzFAtURwru
         nlqN62D1IrfUJfDELbVmMlwP+Q6e7w72mZK+alRK2odaAUbJArQUCSSvUddvE6mwNGrc
         pioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770219263; x=1770824063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qkOzGCctQL30LKjh61z23+b/2EwmO+vcdgiQ7sj0+R4=;
        b=O/KIepH48ZNH7PvC0iIIOxSM4bB2AZQvfa2qi896jPLlkQrxHMOYf234SJvOnPLkU6
         VnwHpiRusxbYsOyRNbmwXoDFmM0KI11Om/W8VIgA8h1Pn9MAzGGsc8ohsCLm8sccPfsM
         +QDK1oQ8xlOlwI4dbozq2rpCyAUM0kepVeaePf3yskXUJrTVPb6PbrIkl67EgKTceE/o
         ZXf/ILeD66jqIeEhGCf9yXE/jhEBiCWu+2OWz+O80f1qdmkbZWN1U860d96W2AtI+CA6
         oME/Zhub3fAXHy+3ea7hz2O5s6E12y8EBLTS4XlijS966clJo1Smd1vKdDBvP6S4xReX
         Dxcg==
X-Forwarded-Encrypted: i=1; AJvYcCUGDK5z/QwapAeTAdkxj9xDWdK2MIbRnkcQsuHh0L0nZy9q/7mZYiLE4LzeTaMfIn+kU+waPCkkji4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhNS6Y1KjHhm7k7E9Fst0S3135LEqt6vN+Ne1KrVk84O1ejhLz
	6fl6F8D9elO/dvj+rggHVQlX4Uret1Ad91E6Mn9Fg7a0Mis7xSY88LKYHDAvoaM84cUe9kDvenM
	QmtLRDCHT1a/85efSJ/OtqBSFI4AVeZK8FAm8aWOR2LcgNB7UPwi0HiM=
X-Gm-Gg: AZuq6aIYp/mCxC7nsViFeuIVA8T1Ydwlk6x5iVpo82sQA8nksKosLS5qfMhtAMzea3J
	viEXTPZ3JftE64H64xMRDYqsNR+z6+QVpyuuWUeUMPzVgNvSadWVB9laNicDQV7s6WIjra/Ecmg
	+H2oxWBgiNc9cuhW+NS8/ItQCjDKC8DCt71oi1eFOXvvEQFsAf9f+97GXGXDHHy2Jagv1VvZ8Kv
	BNXrhT1Qbwd25EiNpkKXKMEmbeMNUpwmgE5CxpP5NATL1AS6keod/hY58nEV7cBbUxcVBTk
X-Received: by 2002:a05:6512:b87:b0:59e:161:652a with SMTP id
 2adb3069b0e04-59e38c27b46mr1376642e87.31.1770219263338; Wed, 04 Feb 2026
 07:34:23 -0800 (PST)
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
In-Reply-To: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Feb 2026 16:33:46 +0100
X-Gm-Features: AZwV_Qh7tniAwClRnk-rPGRk4VKw9IxuzE_pomII0cTXEalWLMydXWCz4mlcfmk
Message-ID: <CAPDyKFoeKCPbsaRh+0t7=naO0pFvFCD3NV9nA7a4UOjxj4aDwg@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_073426_640310_96D6107E 
X-CRM114-Status: GOOD (  25.06  )
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

On Tue, 3 Feb 2026 at 14:01, Josua Mayer <josua@solid-run.com> wrote:
>
> Some Renesas SoC based boards mux SD and eMMC on a single sdio
> controller, exposing user control by dip switch and software control by
> gpio.
>
> Purpose is to simplify development and provisioning by selecting boot
> media at power-on, and again before starting linux.
>
> Add binding and driver support for linking a (gpio) mux to renesas sdio
> controller.
>
> Introduce generic helper functions for getting managed and selected
> mux-state objects, and switch i2c-omap and phy-can-transceiver drivers.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
> Changes in v8:
> - Add defensive null checks for all non-optional calls to internal
>   mux_get function.
> - Document NULL return value on applicable functions.
> - Avoid IS_ERR_OR_NULL and ERR_PTR(0) to disarm smatch errors.
> - Link to v7: https://lore.kernel.org/r/20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com
>
> Changes in v7:
> - picked up reviewed-tags
> - fix Kconfig change to add the missing prompt for CONFIG_MULTIPLEXER,
>   and enable it by default when COMPILE_TEST is set.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - fix another kernel build robot warning: undocumented C struct member
> - Link to v6: https://lore.kernel.org/r/20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com
>
> Changes in v6:
> - replaced /* with /** for devm_mux_state_state function description.
> - collected review tags.
> - fixed checkpatch warnings (space-before-tab, void-return).
>   (Reported-by: Geert Uytterhoeven)
> - fixed use-after-free in mux core mux_get function.
>   (Reported-by: Geert Uytterhoeven)
> - fix mux helper error path uninitialised return code variable.
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v5: https://lore.kernel.org/r/20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com
>
> Changes in v5:
> - implemented automatic mux deselect for devm_*_selected.
>   (Reported-by: Wolfram Sang <wsa+renesas@sang-engineering.com>)
> - because of semantic changes I dropped reviewed and acks from omap-i2c
>   patch (Andreas Kemnade / Wolfram Sang).
> - fix invalid return value in void function for mux helper stubs
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v4: https://lore.kernel.org/r/20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com
>
> Changes in v4:
> - added MULTIPLEXER Kconfig help text.
> - removed "select MULTIPLEXER" from renesas sdhi Kconfig, as it is
>   not required for all devices using this driver.
> - added stubs for all symbols exported by mux core.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - refactored mux core logic to silence ENOENT errors only on optional
>   code paths, keeping error printing unchanged otherwise.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - picked up various reviewed- and acked-by tags
> - Link to v3: https://lore.kernel.org/r/20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com
>
> Changes in v3:
> - updated omap-i2c and phy-can-transceiver to use new helpers.
> - created generic helper functions for getting managed optional mux-state.
>   (Reported-by: Rob Herring <robh@kernel.org>)
> - picked up binding ack by Rob Herring.
> - replaced use of "SDIO" with "SD/SDIO/eMMC" in binding document and
>   commit descriptions.
>   (Reported-by: Ulf Hansson <ulf.hansson@linaro.org>)
> - Link to v2: https://lore.kernel.org/r/20251201-rz-sdio-mux-v2-0-bcb581b88dd7@solid-run.com
>
> Changes in v2:
> - dropped mux-controller node from dt binding example
>   (Reported-by: Conor Dooley <conor@kernel.org>
>    Reported-by: Krzysztof Kozlowski <krzk@kernel.org>)
> - Link to v1: https://lore.kernel.org/r/20251128-rz-sdio-mux-v1-0-1ede318d160f@solid-run.com
>
> ---
> Josua Mayer (7):
>       phy: can-transceiver: rename temporary helper function to avoid conflict
>       mux: Add helper functions for getting optional and selected mux-state
>       mux: add help text for MULTIPLEXER config option
>       phy: can-transceiver: drop temporary helper getting optional mux-state
>       i2c: omap: switch to new generic helper for getting selected mux-state
>       dt-bindings: mmc: renesas,sdhi: Add mux-states property
>       mmc: host: renesas_sdhi_core: support selecting an optional mux
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml      |   6 +
>  drivers/i2c/busses/i2c-omap.c                      |  24 +--
>  drivers/mmc/host/renesas_sdhi_core.c               |   6 +
>  drivers/mux/Kconfig                                |   8 +-
>  drivers/mux/core.c                                 | 205 +++++++++++++++++----
>  drivers/phy/phy-can-transceiver.c                  |  10 -
>  include/linux/mux/consumer.h                       | 108 ++++++++++-
>  7 files changed, 302 insertions(+), 65 deletions(-)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20251128-rz-sdio-mux-acc5137f1618
>
> Best regards,
> --
> Josua Mayer <josua@solid-run.com>
>
>

The series applied for next, thanks!

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
