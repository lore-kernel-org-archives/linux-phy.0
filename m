Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A284C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 20:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bU7lYGTpE02Vgh9XeIX3JvRRvN2eF4dxdncmf6UwzZw=; b=ltVOy0gX9hMHLA
	Nsr9aSH0x4EdzIzm2eeDDZzqmT1weSdIiYmJEZV5hW8J4LkD7fGJOBX3F3TIQOA26iieek13HN3B+
	ZNkxh3drSrAQc3ewTogZN5T+91rW/pYy+WlcJsLLHDKVpWaBi60Mx38i8yW26jdKudSPMHytV0DsA
	0xI3/DJAz1cYX5TQpcrvZ6BVHVURx76uzWEu38VEsaRqPCM8vzD0atsE0A+tV134VizAlhJ5bQksU
	eFwoB3ObMdzzIVCVJwnlbpOzScRRrc95oLkfRI0ToOGFY+SJwFVJEM2OGFjq6RX7jsPFtyyOBkDAt
	DcWCZVJctatDnX7DyLIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsq3-00FoWJ-ET; Tue, 17 Jan 2023 20:45:47 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsq0-00FoV6-8J; Tue, 17 Jan 2023 20:45:45 +0000
Received: by mail-ej1-x62f.google.com with SMTP id bk15so20762501ejb.9;
        Tue, 17 Jan 2023 12:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eOm6YJiOLN3WpkUI18GnrhrupKVRnOUjPnLRzuUGs64=;
        b=aIxMaBf0KzVTDv9FoMrHxleI84HKCfCdzNFpu74oXRGRaf5jXwm2LvEG5wEAdiJbBN
         sPqJx995tjyKYdnAXzbgAGoenPX6ylkiYOIbB1aHdYg/3cRpf3zH8dX5799T2UyfaBZZ
         boC2STLUNGbM2VxiLCe8/tj0ARxlP1DmGz27ACoV9yOpQ/w+Py9GVr95V3LM/vr0fKQQ
         7qNx5bCRQaSpAyNxsqTV1sHeFf27x4dXH9cJMhYnOP1pF6nQIJ6pa1TSkSoc/6dfK0cr
         epeHAVej0mEeOvYO/W5auW3mlDAJMJJzv+AaYWIIYeICGjWnL2U3YsqmFloVxUFbBWCe
         afOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eOm6YJiOLN3WpkUI18GnrhrupKVRnOUjPnLRzuUGs64=;
        b=6QcuZUXM5EORlMzUastoDu/BTp3XUnBaOVv3ttsE39yPAnlV64Qk8mGJIhCD0BP/rv
         zZmZ0rpz5AHkdgOFB1psmcAVhS9SzcDr/Ho31pS2grEsx4qONZsu3zNXEg1k1/asBPwi
         1HH4CrfrblhTrEUroghqRjNkZ5oJpuTlXKm/26q3pURUJuA9sWeIhINRY3PR3lEohtBs
         JsmZ/YO172F7o3ZdN1FnhSgpYucuMRpATJZRQBt1/ZqFQPqyWQVNkmcHMtZ73zp3PD9D
         hSlLB8fL9QT7IANDvWFQ4dLR3E79PH/ueA4oTTn8udp18vaktmLPzg6UEq+/Q9crzHvB
         Q/GQ==
X-Gm-Message-State: AFqh2kpaH1C60KAUelMJx0mW5OrdDm/dijXHJ9eikAE9gwhuGpbr7p2j
	Jwh+77IJ7jGyhWpwYF67n+pXxjFv5DYFNhJAIn4=
X-Google-Smtp-Source: AMrXdXuyd/+CSRmDmzGaW7xRu4VtNyXtDT7t+cWyJHYLY0lq8YdNVQ9jTyxjw8s3Fbcf1573ngNc7XrLbSMJA+2FjxA=
X-Received: by 2002:a17:906:1dc9:b0:7c1:1f28:afed with SMTP id
 v9-20020a1709061dc900b007c11f28afedmr410539ejh.678.1673988339671; Tue, 17 Jan
 2023 12:45:39 -0800 (PST)
MIME-Version: 1.0
References: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
In-Reply-To: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 17 Jan 2023 21:45:28 +0100
Message-ID: <CAFBinCAYHQOrrjeWQZD2qjXMfSc-h6aQXDxEuKXqtqgGnXQQKA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
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
X-CRM114-CacheID: sfid-20230117_124544_328764_04E5A5F8 
X-CRM114-Status: UNSURE (   8.96  )
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
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
>
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
